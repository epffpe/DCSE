--
-- Definition of a single port ROM for KCPSM3 program defined by picocode.psm
--
-- Generated by KCPSM3 Assembler {timestamp}. 
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
-- The Unisim Library is used to define Xilinx primitives. It is also used during
-- simulation. The source can be viewed at %XILINX%\vhdl\src\unisims\unisim_VCOMP.vhd
--  
library unisim;
use unisim.vcomponents.all;
--
--
entity picocode is
    Port (      address : in std_logic_vector(9 downto 0);
            instruction : out std_logic_vector(17 downto 0);
                    clk : in std_logic);
    end picocode;
--
architecture low_level_definition of picocode is
--
-- Attributes to define ROM contents during implementation synthesis. 
-- The information is repeated in the generic map for functional simulation
--
attribute INIT_00 : string; 
attribute INIT_01 : string; 
attribute INIT_02 : string; 
attribute INIT_03 : string; 
attribute INIT_04 : string; 
attribute INIT_05 : string; 
attribute INIT_06 : string; 
attribute INIT_07 : string; 
attribute INIT_08 : string; 
attribute INIT_09 : string; 
attribute INIT_0A : string; 
attribute INIT_0B : string; 
attribute INIT_0C : string; 
attribute INIT_0D : string; 
attribute INIT_0E : string; 
attribute INIT_0F : string; 
attribute INIT_10 : string; 
attribute INIT_11 : string; 
attribute INIT_12 : string; 
attribute INIT_13 : string; 
attribute INIT_14 : string; 
attribute INIT_15 : string; 
attribute INIT_16 : string; 
attribute INIT_17 : string; 
attribute INIT_18 : string; 
attribute INIT_19 : string; 
attribute INIT_1A : string; 
attribute INIT_1B : string; 
attribute INIT_1C : string; 
attribute INIT_1D : string; 
attribute INIT_1E : string; 
attribute INIT_1F : string; 
attribute INIT_20 : string; 
attribute INIT_21 : string; 
attribute INIT_22 : string; 
attribute INIT_23 : string; 
attribute INIT_24 : string; 
attribute INIT_25 : string; 
attribute INIT_26 : string; 
attribute INIT_27 : string; 
attribute INIT_28 : string; 
attribute INIT_29 : string; 
attribute INIT_2A : string; 
attribute INIT_2B : string; 
attribute INIT_2C : string; 
attribute INIT_2D : string; 
attribute INIT_2E : string; 
attribute INIT_2F : string; 
attribute INIT_30 : string; 
attribute INIT_31 : string; 
attribute INIT_32 : string; 
attribute INIT_33 : string; 
attribute INIT_34 : string; 
attribute INIT_35 : string; 
attribute INIT_36 : string; 
attribute INIT_37 : string; 
attribute INIT_38 : string; 
attribute INIT_39 : string; 
attribute INIT_3A : string; 
attribute INIT_3B : string; 
attribute INIT_3C : string; 
attribute INIT_3D : string; 
attribute INIT_3E : string; 
attribute INIT_3F : string; 
attribute INITP_00 : string;
attribute INITP_01 : string;
attribute INITP_02 : string;
attribute INITP_03 : string;
attribute INITP_04 : string;
attribute INITP_05 : string;
attribute INITP_06 : string;
attribute INITP_07 : string;
--
-- Attributes to define ROM contents during implementation synthesis.
--
attribute INIT_00 of ram_1024_x_18  : label is "5056404250284045002001B10F3E02130213021302C102190213C001019A0025";
attribute INIT_01 of ram_1024_x_18  : label is "400701B101B101B10F3F021350034048513240495113405250E04057508C4050";
attribute INIT_02 of ram_1024_x_18  : label is "028A021354544F5901B1019F03540213A000C0080006A00001BE10F001B1019F";
attribute INIT_03 of ram_1024_x_18  : label is "07AA080A016A018007AA080A016A015507550805016A01AA07AA080A09000213";
attribute INIT_04 of ram_1024_x_18  : label is "019A01B10F2E545120800160016A011007AA080A016A015507550805016A01AA";
attribute INIT_05 of ram_1024_x_18  : label is "0213028A021354694F5901B1019F03540213090540070371400702AD0213404A";
attribute INIT_06 of ram_1024_x_18  : label is "080A090014701580169040070371400702AD5C62C901006B01B10F2E07000800";
attribute INIT_07 of ram_1024_x_18  : label is "0805016A01AA07AA080A016A018007AA080A016A015507550805016A01AA07AA";
attribute INIT_08 of ram_1024_x_18  : label is "02AD0091026302134088B40020800160016A0130174018501960016A01550755";
attribute INIT_09 of ram_1024_x_18  : label is "549D4F3A019F0E2B409100BC6A2B021301ED50914B04B0004B0100AC009C4007";
attribute INIT_0A of ram_1024_x_18  : label is "7BD08D037CD00D2B40A08E01F0E001F412F0019F13F0B0004F0AB0004F0D019F";
attribute INIT_0B of ram_1024_x_18  : label is "870100C67B30032FA00078D0CD0177D0CD01A00079D08D02B4004B0450B74B00";
attribute INIT_0C of ram_1024_x_18  : label is "07550805016A01AA07AA080A0900147015801690A00054BDCA018301A900A800";
attribute INIT_0D of ram_1024_x_18  : label is "A00054DB2080F0B00160016A11B0174018501960016A01A007AA080A016A0155";
attribute INIT_0E of ram_1024_x_18  : label is "020D037E016A01A007AA080A016A015507550805016A01AA07AA080A09000213";
attribute INIT_0F of ram_1024_x_18  : label is "11000160016A11001E0058F8020D0390170058EE020D180058EE020D190058EE";
attribute INIT_10 of ram_1024_x_18  : label is "1100016A0140400702AD02134007016A01F002B4021350FE2020510A2180F1E0";
attribute INIT_11 of ram_1024_x_18  : label is "02AD0121021317005913020D18005913020D19005913020D037EA0000177016A";
attribute INIT_12 of ram_1024_x_18  : label is "5522C6015526C50101E7A900A8008701016002160510021601ED021306104007";
attribute INIT_13 of ram_1024_x_18  : label is "080A0900016A0155075508050900016A01AA07AA080A090003460213A0000213";
attribute INIT_14 of ram_1024_x_18  : label is "039A016A01F0021301E701600702021601E70160070008000900016A019007AA";
attribute INIT_15 of ram_1024_x_18  : label is "4007016A01F00213555647C1C701021601E7016007C9016A019807AA08000900";
attribute INIT_16 of ram_1024_x_18  : label is "C1080100C110C720C840C980A000C108400201060106C1080105C720C840C980";
attribute INIT_17 of ram_1024_x_18  : label is "A0000174517920800160AE008D010D000E00A000016A01F0A000C10801060106";
attribute INIT_18 of ram_1024_x_18  : label is "A000558CC10101870128A0005588C001000BA000021301E710D001E710E00213";
attribute INIT_19 of ram_1024_x_18  : label is "C000A000559BC40101950414A0005596C30101900314A0005591C201018B0219";
attribute INIT_1A of ram_1024_x_18  : label is "51A04F114F0141A955AD20084000A000C00151A94F134F0141A055A420084000";
attribute INIT_1B of ram_1024_x_18  : label is "B8004061A000803AC1015DB8C00A81010130A000CF0441B151B52001400041A9";
attribute INIT_1C of ram_1024_x_18  : label is "02069200020602061200B80001C47010A000C0F6B80080C6A000A0DFBC00407B";
attribute INIT_1D of ram_1024_x_18  : label is "01E2A00F1010120001E2000E000E000E000E1100A0009200B80001C470108101";
attribute INIT_1E of ram_1024_x_18  : label is "108001E71090A00001B11F1001B11F2001D6A000803A800759E5C00AA0001100";
attribute INIT_1F of ram_1024_x_18  : label is "D030B8000201102003060306030603061300B80002011030A00001E7107001E7";
attribute INIT_20 of ram_1024_x_18  : label is "002013000020A000800AA000C0F6B80080075E0BC011B800C0E9B80080B9A000";
attribute INIT_21 of ram_1024_x_18  : label is "0F6301B10F6901B10F5002130213A00001B10F20A00001B10F0DA00001F41200";
attribute INIT_22 of ram_1024_x_18  : label is "01B10F46021601B10F6501B10F7A01B10F6101B10F6C01B10F4201B10F6F01B1";
attribute INIT_23 of ram_1024_x_18  : label is "0F6701B10F6F01B10F7201B10F50021601B10F6801B10F7301B10F6101B10F6C";
attribute INIT_24 of ram_1024_x_18  : label is "01B10F76021601B10F7201B10F6501B10F6D01B10F6D01B10F6101B10F7201B1";
attribute INIT_25 of ram_1024_x_18  : label is "0F4F01B10F4D01B10F4501B10F44021601B10F3001B10F3001B10F2E01B10F31";
attribute INIT_26 of ram_1024_x_18  : label is "0F6701B10F6E01B10F6901B10F7401B10F6901B10F6101B10F57A000021301B1";
attribute INIT_27 of ram_1024_x_18  : label is "021601B10F5301B10F4301B10F4D021601B10F7201B10F6F01B10F66021601B1";
attribute INIT_28 of ram_1024_x_18  : label is "021601B10F6E01B10F6902A1A000021301B10F6501B10F6C01B10F6901B10F46";
attribute INIT_29 of ram_1024_x_18  : label is "021301B101B10F7301B10F6501B10F7201B10F6701B10F6F01B10F7201B10F50";
attribute INIT_2A of ram_1024_x_18  : label is "01B10F4F0213A000021601B10F6501B10F7301B10F6101B10F7201B10F45A000";
attribute INIT_2B of ram_1024_x_18  : label is "021301B10F3F01B10F6C01B10F6901B10F6101B10F460213A000021301B10F4B";
attribute INIT_2C of ram_1024_x_18  : label is "0F2D01B10F42021301B101B10F6C01B10F6102A101B10F2D01B10F450213A000";
attribute INIT_2D of ram_1024_x_18  : label is "0F30021601B10F7301B10F6B01B10F6301B10F6F01B10F6C01B10F6202A101B1";
attribute INIT_2E of ram_1024_x_18  : label is "01B10F6F01B10F7201B10F5001B10F2D01B10F50021301B10F3501B10F2D01B1";
attribute INIT_2F of ram_1024_x_18  : label is "0F7201B10F5701B10F2D01B10F57027801B10F6D01B10F6101B10F7201B10F67";
attribute INIT_30 of ram_1024_x_18  : label is "01B10F5201B10F2D01B10F520213034B021601B10F6501B10F7401B10F6901B1";
attribute INIT_31 of ram_1024_x_18  : label is "0F73034B021601B10F3601B10F3501B10F32021601B10F6401B10F6101B10F65";
attribute INIT_32 of ram_1024_x_18  : label is "01B10F6301B10F6901B10F7601B10F6501B10F4401B10F2D01B10F49021301B1";
attribute INIT_33 of ram_1024_x_18  : label is "01B10F6501B10F4801B10F2D01B10F48021301B10F4401B10F49021601B10F65";
attribute INIT_34 of ram_1024_x_18  : label is "0F7401B10F7901B10F62438B01B10F4401B10F49A000021301B10F7001B10F6C";
attribute INIT_35 of ram_1024_x_18  : label is "0F7201B10F6901B10F6601B10F6E01B10F6F01B10F430213A00001B10F6501B1";
attribute INIT_36 of ram_1024_x_18  : label is "021601B10F2901B10F6E01B10F2F01B10F5901B10F2802A1021601B10F6D01B1";
attribute INIT_37 of ram_1024_x_18  : label is "0F610213A000021301B10F7401B10F7201B10F6F01B10F6201B10F410213A000";
attribute INIT_38 of ram_1024_x_18  : label is "A000021601B10F3D021601B101B10F7301B10F6501B10F7201B101B10F6401B1";
attribute INIT_39 of ram_1024_x_18  : label is "01B10F7201B10F6501B10F53438B01B10F6101B10F7401B10F6101B10F640213";
attribute INIT_3A of ram_1024_x_18  : label is "0F6501B10F6201B10F6D01B10F7501B10F4E021601B10F6C01B10F6101B10F69";
attribute INIT_3B of ram_1024_x_18  : label is "000000000000000000000000000000000000000000000000438B01B10F7201B1";
attribute INIT_3C of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3D of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3E of ram_1024_x_18  : label is "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_3F of ram_1024_x_18  : label is "43F580016000C004001143FC001353FB20104000E00000000000000000000000";
attribute INITP_00 of ram_1024_x_18 : label is "30303030003FF7C0FF7FCFFFF37C0C0C0C0C0C03FDFFA2CFFF3DDDDDDDF3FFFF";
attribute INITP_01 of ram_1024_x_18 : label is "3C3F3CF3FC0C0C03B4F00C0C0C000B557084619D10DB3267DCF3F67FFFE7C030";
attribute INITP_02 of ram_1024_x_18 : label is "BDD42CA08AAA022AF3D7F300F3F3F0300C0300FBDDD5F3F3FCF3CFEF33FF3F74";
attribute INITP_03 of ram_1024_x_18 : label is "2CAA2CB332CCE5D8C0EA89B19A2C998999752BD3D3D2F4F4EDCB72DCB72D2F33";
attribute INITP_04 of ram_1024_x_18 : label is "F333CCCF3333332F3333CCCCCF3333333333CCCCCF333333333ECB2CCE667666";
attribute INITP_05 of ram_1024_x_18 : label is "3333CCCCCCCCCF333CCCCCCF33F33CCEF33333BCCEF33332FCCCCCCCF33BCCCC";
attribute INITP_06 of ram_1024_x_18 : label is "3BCCCCCEF33333F3333333B3333CCBCCCCCCF33CCCCCCCCF3F333CCCCCCFF333";
attribute INITP_07 of ram_1024_x_18 : label is "F2334800000000000000000000000000000000F333333CCCCCCF3333BCFCCCF3";
--
begin
--
  --Instantiate the Xilinx primitive for a block RAM
  ram_1024_x_18: RAMB16_S18
  --synthesis translate_off
  --INIT values repeated to define contents for functional simulation
  generic map ( INIT_00 => X"5056404250284045002001B10F3E02130213021302C102190213C001019A0025",
                INIT_01 => X"400701B101B101B10F3F021350034048513240495113405250E04057508C4050",
                INIT_02 => X"028A021354544F5901B1019F03540213A000C0080006A00001BE10F001B1019F",
                INIT_03 => X"07AA080A016A018007AA080A016A015507550805016A01AA07AA080A09000213",
                INIT_04 => X"019A01B10F2E545120800160016A011007AA080A016A015507550805016A01AA",
                INIT_05 => X"0213028A021354694F5901B1019F03540213090540070371400702AD0213404A",
                INIT_06 => X"080A090014701580169040070371400702AD5C62C901006B01B10F2E07000800",
                INIT_07 => X"0805016A01AA07AA080A016A018007AA080A016A015507550805016A01AA07AA",
                INIT_08 => X"02AD0091026302134088B40020800160016A0130174018501960016A01550755",
                INIT_09 => X"549D4F3A019F0E2B409100BC6A2B021301ED50914B04B0004B0100AC009C4007",
                INIT_0A => X"7BD08D037CD00D2B40A08E01F0E001F412F0019F13F0B0004F0AB0004F0D019F",
                INIT_0B => X"870100C67B30032FA00078D0CD0177D0CD01A00079D08D02B4004B0450B74B00",
                INIT_0C => X"07550805016A01AA07AA080A0900147015801690A00054BDCA018301A900A800",
                INIT_0D => X"A00054DB2080F0B00160016A11B0174018501960016A01A007AA080A016A0155",
                INIT_0E => X"020D037E016A01A007AA080A016A015507550805016A01AA07AA080A09000213",
                INIT_0F => X"11000160016A11001E0058F8020D0390170058EE020D180058EE020D190058EE",
                INIT_10 => X"1100016A0140400702AD02134007016A01F002B4021350FE2020510A2180F1E0",
                INIT_11 => X"02AD0121021317005913020D18005913020D19005913020D037EA0000177016A",
                INIT_12 => X"5522C6015526C50101E7A900A8008701016002160510021601ED021306104007",
                INIT_13 => X"080A0900016A0155075508050900016A01AA07AA080A090003460213A0000213",
                INIT_14 => X"039A016A01F0021301E701600702021601E70160070008000900016A019007AA",
                INIT_15 => X"4007016A01F00213555647C1C701021601E7016007C9016A019807AA08000900",
                INIT_16 => X"C1080100C110C720C840C980A000C108400201060106C1080105C720C840C980",
                INIT_17 => X"A0000174517920800160AE008D010D000E00A000016A01F0A000C10801060106",
                INIT_18 => X"A000558CC10101870128A0005588C001000BA000021301E710D001E710E00213",
                INIT_19 => X"C000A000559BC40101950414A0005596C30101900314A0005591C201018B0219",
                INIT_1A => X"51A04F114F0141A955AD20084000A000C00151A94F134F0141A055A420084000",
                INIT_1B => X"B8004061A000803AC1015DB8C00A81010130A000CF0441B151B52001400041A9",
                INIT_1C => X"02069200020602061200B80001C47010A000C0F6B80080C6A000A0DFBC00407B",
                INIT_1D => X"01E2A00F1010120001E2000E000E000E000E1100A0009200B80001C470108101",
                INIT_1E => X"108001E71090A00001B11F1001B11F2001D6A000803A800759E5C00AA0001100",
                INIT_1F => X"D030B8000201102003060306030603061300B80002011030A00001E7107001E7",
                INIT_20 => X"002013000020A000800AA000C0F6B80080075E0BC011B800C0E9B80080B9A000",
                INIT_21 => X"0F6301B10F6901B10F5002130213A00001B10F20A00001B10F0DA00001F41200",
                INIT_22 => X"01B10F46021601B10F6501B10F7A01B10F6101B10F6C01B10F4201B10F6F01B1",
                INIT_23 => X"0F6701B10F6F01B10F7201B10F50021601B10F6801B10F7301B10F6101B10F6C",
                INIT_24 => X"01B10F76021601B10F7201B10F6501B10F6D01B10F6D01B10F6101B10F7201B1",
                INIT_25 => X"0F4F01B10F4D01B10F4501B10F44021601B10F3001B10F3001B10F2E01B10F31",
                INIT_26 => X"0F6701B10F6E01B10F6901B10F7401B10F6901B10F6101B10F57A000021301B1",
                INIT_27 => X"021601B10F5301B10F4301B10F4D021601B10F7201B10F6F01B10F66021601B1",
                INIT_28 => X"021601B10F6E01B10F6902A1A000021301B10F6501B10F6C01B10F6901B10F46",
                INIT_29 => X"021301B101B10F7301B10F6501B10F7201B10F6701B10F6F01B10F7201B10F50",
                INIT_2A => X"01B10F4F0213A000021601B10F6501B10F7301B10F6101B10F7201B10F45A000",
                INIT_2B => X"021301B10F3F01B10F6C01B10F6901B10F6101B10F460213A000021301B10F4B",
                INIT_2C => X"0F2D01B10F42021301B101B10F6C01B10F6102A101B10F2D01B10F450213A000",
                INIT_2D => X"0F30021601B10F7301B10F6B01B10F6301B10F6F01B10F6C01B10F6202A101B1",
                INIT_2E => X"01B10F6F01B10F7201B10F5001B10F2D01B10F50021301B10F3501B10F2D01B1",
                INIT_2F => X"0F7201B10F5701B10F2D01B10F57027801B10F6D01B10F6101B10F7201B10F67",
                INIT_30 => X"01B10F5201B10F2D01B10F520213034B021601B10F6501B10F7401B10F6901B1",
                INIT_31 => X"0F73034B021601B10F3601B10F3501B10F32021601B10F6401B10F6101B10F65",
                INIT_32 => X"01B10F6301B10F6901B10F7601B10F6501B10F4401B10F2D01B10F49021301B1",
                INIT_33 => X"01B10F6501B10F4801B10F2D01B10F48021301B10F4401B10F49021601B10F65",
                INIT_34 => X"0F7401B10F7901B10F62438B01B10F4401B10F49A000021301B10F7001B10F6C",
                INIT_35 => X"0F7201B10F6901B10F6601B10F6E01B10F6F01B10F430213A00001B10F6501B1",
                INIT_36 => X"021601B10F2901B10F6E01B10F2F01B10F5901B10F2802A1021601B10F6D01B1",
                INIT_37 => X"0F610213A000021301B10F7401B10F7201B10F6F01B10F6201B10F410213A000",
                INIT_38 => X"A000021601B10F3D021601B101B10F7301B10F6501B10F7201B101B10F6401B1",
                INIT_39 => X"01B10F7201B10F6501B10F53438B01B10F6101B10F7401B10F6101B10F640213",
                INIT_3A => X"0F6501B10F6201B10F6D01B10F7501B10F4E021601B10F6C01B10F6101B10F69",
                INIT_3B => X"000000000000000000000000000000000000000000000000438B01B10F7201B1",
                INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
                INIT_3F => X"43F580016000C004001143FC001353FB20104000E00000000000000000000000",    
               INITP_00 => X"30303030003FF7C0FF7FCFFFF37C0C0C0C0C0C03FDFFA2CFFF3DDDDDDDF3FFFF",
               INITP_01 => X"3C3F3CF3FC0C0C03B4F00C0C0C000B557084619D10DB3267DCF3F67FFFE7C030",
               INITP_02 => X"BDD42CA08AAA022AF3D7F300F3F3F0300C0300FBDDD5F3F3FCF3CFEF33FF3F74",
               INITP_03 => X"2CAA2CB332CCE5D8C0EA89B19A2C998999752BD3D3D2F4F4EDCB72DCB72D2F33",
               INITP_04 => X"F333CCCF3333332F3333CCCCCF3333333333CCCCCF333333333ECB2CCE667666",
               INITP_05 => X"3333CCCCCCCCCF333CCCCCCF33F33CCEF33333BCCEF33332FCCCCCCCF33BCCCC",
               INITP_06 => X"3BCCCCCEF33333F3333333B3333CCBCCCCCCF33CCCCCCCCF3F333CCCCCCFF333",
               INITP_07 => X"F2334800000000000000000000000000000000F333333CCCCCCF3333BCFCCCF3")
  --synthesis translate_on
  port map(    DI => "0000000000000000",
              DIP => "00",
               EN => '1',
               WE => '0',
              SSR => '0',
              CLK => clk,
             ADDR => address,
               DO => instruction(15 downto 0),
              DOP => instruction(17 downto 16)); 
--
end low_level_definition;
--
------------------------------------------------------------------------------------
--
-- END OF FILE picocode.vhd
--
------------------------------------------------------------------------------------
