library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity VGA is
    Port ( clk50 : in  STD_LOGIC;
			  RGB: in STD_LOGIC_VECTOR(2 downto 0);
           vga_red : out  STD_LOGIC;
           vga_green : out  STD_LOGIC;
           vga_blue : out  STD_LOGIC;
           vga_hsync : out  STD_LOGIC;
           vga_vsync : out  STD_LOGIC
			  );
end VGA;

architecture Behavioral of VGA is

	constant hRez       : natural := 800;
	constant vRez       : natural := 600;
	
	constant hMaxCount  : natural := 1040;
   constant hStartSync : natural := 856;
   constant hEndSync   : natural := 976;
	
   constant vMaxCount  : natural := 666;
   constant vStartSync : natural := 637;
   constant vEndSync   : natural := 643;
	
	signal horizontalCounter : unsigned(10 downto 0) := (others => '0');
   signal verticalCounter : unsigned(9 downto 0) := (others => '0');

begin

	process(clk50)
	begin 
		if rising_edge(clk50) then
			if horizontalCounter = hMaxCount-1 then
            horizontalCounter <= (others => '0');
            if verticalCounter = vMaxCount-1 then
               verticalCounter <= (others => '0');
            else
               verticalCounter <= verticalCounter+1;
            end if;
         else
            horizontalCounter <= horizontalCounter+1;
         end if;
			
			--and verticalCounter >37
			if verticalCounter < vStartSync  and horizontalCounter>56 and horizontalCounter < hStartSync then
				--wyswielic ramke
				vga_red <= RGB(0);
				vga_green <= RGB(1);
				vga_blue <= RGB(2);
			else
				vga_red <= '0';
				vga_green <= '0';
				vga_blue <= '0';
			end if;
			
			if horizontalCounter >= hStartSync and horizontalCounter < hEndSync then
            vga_hsync <= '0';
         else
            vga_hsync <= '1';
         end if;
         if verticalCounter >= vStartSync and verticalCounter < vEndSync then
            vga_vsync <= '0';
         else
            vga_vsync <= '1';
         end if;
		
		end if;
	end process;
end Behavioral;

