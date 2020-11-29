LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
PORT( Op_code : IN STD_LOGIC_VECTOR( 2 DOWNTO 0 );
A, B : IN STD_LOGIC_VECTOR( 31 DOWNTO 0 );
Y : OUT STD_LOGIC_VECTOR( 31 DOWNTO 0 ) );
END ALU;
architecture behv of ALU is
begin
process(Op_code,A,B)
begin
case Op_code is
when "000" => y<=A;
when "001" => y<=A+B;
when "010" => y<=A-B;
when "011" => y<=A and B;
when "100" => y<=A or B;
when "101" => y<=A+1;
when "110" => y<=A-1;
when "111" => y<=B;
when others => y<=A;
end case;
end process;
end behv;