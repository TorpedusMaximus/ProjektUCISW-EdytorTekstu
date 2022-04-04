VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL Clk_50MHz
        SIGNAL BTN_SOUTH
        SIGNAL PS2_Data
        SIGNAL PS2_Clk
        SIGNAL LED_0
        SIGNAL LCD_E
        SIGNAL LCD_RS
        SIGNAL LCD_RW
        SIGNAL LCD_D(3:0)
        SIGNAL SF_CE
        SIGNAL Blank(15:0)
        SIGNAL Line(63:0)
        SIGNAL Line(63:56)
        SIGNAL Line(51:44)
        SIGNAL Line(39:32)
        SIGNAL Line(15:0)
        SIGNAL Blank(13)
        SIGNAL Blank(10)
        SIGNAL XLXN_34
        SIGNAL Blank(7)
        SIGNAL Blank(6)
        SIGNAL Blank(5)
        SIGNAL Blank(4)
        PORT Input Clk_50MHz
        PORT Input BTN_SOUTH
        PORT BiDirectional PS2_Data
        PORT BiDirectional PS2_Clk
        PORT Output LED_0
        PORT Output LCD_E
        PORT Output LCD_RS
        PORT Output LCD_RW
        PORT BiDirectional LCD_D(3:0)
        PORT Output SF_CE
        BEGIN BLOCKDEF LCD1x64
            TIMESTAMP 2008 9 19 11 10 5
            LINE N 352 -288 416 -288 
            LINE N 64 -32 0 -32 
            LINE N 352 -224 416 -224 
            LINE N 352 -160 416 -160 
            RECTANGLE N 352 -108 416 -84 
            LINE N 352 -96 416 -96 
            LINE N 352 -32 416 -32 
            RECTANGLE N 64 -320 352 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PS2_Mouse
            TIMESTAMP 2008 9 19 9 34 13
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF cb16re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -32 64 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 384 -256 320 -256 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 PS2_Mouse
            PIN PS2_Data PS2_Data
            PIN PS2_Clk PS2_Clk
            PIN InitOK LED_0
            PIN DataRdy XLXN_4
            PIN B1_Status(7:0) Line(63:56)
            PIN B2_X(7:0) Line(51:44)
            PIN B3_Y(7:0) Line(39:32)
            PIN Clk_50MHz Clk_50MHz
            PIN Reset BTN_SOUTH
            PIN Clk_Sys Clk_50MHz
        END BLOCK
        BEGIN BLOCK XLXI_5 cb16re
            PIN C Clk_50MHz
            PIN CE XLXN_4
            PIN R BTN_SOUTH
            PIN CEO
            PIN Q(15:0) Line(15:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_1 LCD1x64
            PIN Clk_50MHz Clk_50MHz
            PIN Reset BTN_SOUTH
            PIN Line(63:0) Line(63:0)
            PIN Blank(15:0) Blank(15:0)
            PIN LCD_D(3:0) LCD_D(3:0)
            PIN LCD_E LCD_E
            PIN LCD_RW LCD_RW
            PIN LCD_RS LCD_RS
            PIN SF_CE SF_CE
        END BLOCK
        BEGIN BLOCK XLXI_6 buf
            PIN I XLXN_34
            PIN O Blank(13)
        END BLOCK
        BEGIN BLOCK XLXI_8 buf
            PIN I XLXN_34
            PIN O Blank(10)
        END BLOCK
        BEGIN BLOCK XLXI_9 buf
            PIN I XLXN_34
            PIN O Blank(7)
        END BLOCK
        BEGIN BLOCK XLXI_10 buf
            PIN I XLXN_34
            PIN O Blank(6)
        END BLOCK
        BEGIN BLOCK XLXI_11 buf
            PIN I XLXN_34
            PIN O Blank(5)
        END BLOCK
        BEGIN BLOCK XLXI_12 buf
            PIN I XLXN_34
            PIN O Blank(4)
        END BLOCK
        BEGIN BLOCK XLXI_13 vcc
            PIN P XLXN_34
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 832 1056 R0
        END INSTANCE
        BEGIN BRANCH XLXN_4
            WIRE 1216 1024 1328 1024
            WIRE 1328 1024 1328 1440
            WIRE 1328 1440 1408 1440
        END BRANCH
        BEGIN BRANCH Clk_50MHz
            WIRE 576 1760 736 1760
            WIRE 736 1760 1328 1760
            WIRE 1328 1760 2256 1760
            WIRE 736 960 736 1024
            WIRE 736 1024 832 1024
            WIRE 736 1024 736 1760
            WIRE 736 960 832 960
            WIRE 1328 1504 1408 1504
            WIRE 1328 1504 1328 1760
            WIRE 2256 1024 2256 1760
            WIRE 2256 1024 2352 1024
        END BRANCH
        INSTANCE XLXI_5 1408 1632 R0
        BEGIN BRANCH PS2_Data
            WIRE 1216 640 1584 640
            WIRE 1584 384 2960 384
            WIRE 1584 384 1584 640
        END BRANCH
        BEGIN BRANCH PS2_Clk
            WIRE 1216 704 1520 704
            WIRE 1520 448 1520 704
            WIRE 1520 448 2960 448
        END BRANCH
        BEGIN BRANCH LED_0
            WIRE 1216 768 1456 768
            WIRE 1456 512 1456 768
            WIRE 1456 512 2960 512
        END BRANCH
        BEGIN INSTANCE XLXI_1 2352 1056 R0
        END INSTANCE
        BEGIN BRANCH LCD_E
            WIRE 2768 768 2960 768
        END BRANCH
        BEGIN BRANCH LCD_RS
            WIRE 2768 832 2960 832
        END BRANCH
        BEGIN BRANCH LCD_RW
            WIRE 2768 896 2960 896
        END BRANCH
        BEGIN BRANCH LCD_D(3:0)
            WIRE 2768 960 2960 960
        END BRANCH
        BEGIN BRANCH SF_CE
            WIRE 2768 1024 2960 1024
        END BRANCH
        BEGIN BRANCH Blank(15:0)
            WIRE 2192 832 2352 832
            WIRE 2192 832 2192 1856
            WIRE 2192 1856 2192 1920
            WIRE 2192 1920 2192 1984
            WIRE 2192 1984 2192 2048
            WIRE 2192 2048 2192 2112
            WIRE 2192 2112 2192 2176
            WIRE 2192 2176 2192 2224
        END BRANCH
        BEGIN BRANCH Line(63:0)
            WIRE 2128 768 2352 768
            WIRE 2128 768 2128 832
            WIRE 2128 832 2128 896
            WIRE 2128 896 2128 960
            WIRE 2128 960 2128 1376
            WIRE 2128 1376 2128 1424
        END BRANCH
        BUSTAP 2128 1376 2032 1376
        BUSTAP 2128 832 2032 832
        BUSTAP 2128 896 2032 896
        BUSTAP 2128 960 2032 960
        BEGIN BRANCH Line(63:56)
            WIRE 1216 832 1904 832
            WIRE 1904 832 2032 832
            BEGIN DISPLAY 1904 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Line(51:44)
            WIRE 1216 896 1904 896
            WIRE 1904 896 2032 896
            BEGIN DISPLAY 1904 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Line(39:32)
            WIRE 1216 960 1904 960
            WIRE 1904 960 2032 960
            BEGIN DISPLAY 1904 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Line(15:0)
            WIRE 1792 1376 1904 1376
            WIRE 1904 1376 2032 1376
            BEGIN DISPLAY 1904 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2192 1856 2096 1856
        BUSTAP 2192 1920 2096 1920
        BUSTAP 2192 1984 2096 1984
        BUSTAP 2192 2048 2096 2048
        BUSTAP 2192 2112 2096 2112
        BUSTAP 2192 2176 2096 2176
        BEGIN BRANCH Blank(13)
            WIRE 1984 1856 2064 1856
            WIRE 2064 1856 2096 1856
            BEGIN DISPLAY 2064 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_6 1760 1888 R0
        BEGIN BRANCH Blank(10)
            WIRE 1984 1920 2064 1920
            WIRE 2064 1920 2096 1920
            BEGIN DISPLAY 2064 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 1760 1952 R0
        BEGIN BRANCH XLXN_34
            WIRE 1616 2016 1616 2048
            WIRE 1616 2048 1712 2048
            WIRE 1712 2048 1760 2048
            WIRE 1712 2048 1712 2112
            WIRE 1712 2112 1760 2112
            WIRE 1712 2112 1712 2176
            WIRE 1712 2176 1760 2176
            WIRE 1712 1856 1760 1856
            WIRE 1712 1856 1712 1920
            WIRE 1712 1920 1760 1920
            WIRE 1712 1920 1712 1984
            WIRE 1712 1984 1760 1984
            WIRE 1712 1984 1712 2048
        END BRANCH
        BEGIN BRANCH Blank(7)
            WIRE 1984 1984 2064 1984
            WIRE 2064 1984 2096 1984
            BEGIN DISPLAY 2064 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1760 2016 R0
        BEGIN BRANCH Blank(6)
            WIRE 1984 2048 2064 2048
            WIRE 2064 2048 2096 2048
            BEGIN DISPLAY 2064 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1760 2080 R0
        BEGIN BRANCH Blank(5)
            WIRE 1984 2112 2064 2112
            WIRE 2064 2112 2096 2112
            BEGIN DISPLAY 2064 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 1760 2144 R0
        BEGIN BRANCH Blank(4)
            WIRE 1984 2176 2064 2176
            WIRE 2064 2176 2096 2176
            BEGIN DISPLAY 2064 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 1760 2208 R0
        INSTANCE XLXI_13 1552 2016 R0
        IOMARKER 2960 768 LCD_E R0 28
        IOMARKER 2960 832 LCD_RS R0 28
        IOMARKER 2960 896 LCD_RW R0 28
        IOMARKER 2960 960 LCD_D(3:0) R0 28
        IOMARKER 2960 1024 SF_CE R0 28
        IOMARKER 2960 384 PS2_Data R0 28
        IOMARKER 2960 448 PS2_Clk R0 28
        IOMARKER 2960 512 LED_0 R0 28
        IOMARKER 576 1696 BTN_SOUTH R180 28
        IOMARKER 576 1760 Clk_50MHz R180 28
        BEGIN DISPLAY 1620 2328 TEXT "LCD: B1-B2-B3----Cnt4"
            FONT 52 "Courier New"
        END DISPLAY
        BEGIN BRANCH BTN_SOUTH
            WIRE 576 1696 800 1696
            WIRE 800 1696 1392 1696
            WIRE 1392 1696 2320 1696
            WIRE 800 896 832 896
            WIRE 800 896 800 1696
            WIRE 1392 1600 1408 1600
            WIRE 1392 1600 1392 1696
            WIRE 2320 960 2352 960
            WIRE 2320 960 2320 1696
        END BRANCH
        BEGIN DISPLAY 2772 2384 TEXT "J. Sugier, 2008"
            FONT 56 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2772 2304 TEXT Test_PS2Mouse
            FONT 56 "Arial"
        END DISPLAY
    END SHEET
END SCHEMATIC
