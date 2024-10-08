library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    generic (
        WIDTH : integer := 10
    );
    Port ( input0 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           input1 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           input2 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           input3 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           output : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end mux4;

architecture RTL of mux4 is
begin
    process(input0, input1, input2, input3, sel)
    begin
        case sel is
            when "00" => output <= input0;
            when "01" => output <= input1;
            when "10" => output <= input2;
            when "11" => output <= input3;
            when others => output <= (others => '0');
        end case;
    end process;
end RTL;