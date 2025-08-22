--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity HA is
    Port (KEY1,KEY2: in STD_LOGIC; LED1,LED2: out STD_LOGIC);
end HA;

architecture RTL of HA is
component AND2 port(I0,I1:in std_logic; O:out std_logic); end component;
component XOR2 port(I0,I1:in std_logic; O:out std_logic); end component;
begin
D1: XOR2 port map(KEY1,KEY2,LED1);
D2: AND2 port map(KEY1,KEY2,LED2);
end RTL;
