//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      autopilot.v
//  /   /        Date Created:  December 25, 2006
// /___/   /\    Last Modified: December 25, 2006
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-3 Generation FPGA
// Purpose:   Autopilot data storage
// Contact:   crabill@xilinx.com
// Reference: None
//
// Revision History:
//   Rev 1.0.0 - (crabill) First created December 25, 2006.
//
//////////////////////////////////////////////////////////////////////////////
//
// LIMITED WARRANTY AND DISCLAIMER. These designs are provided to you "as is".
// Xilinx and its licensors make and you receive no warranties or conditions,
// express, implied, statutory or otherwise, and Xilinx specifically disclaims
// any implied warranties of merchantability, non-infringement, or fitness for
// a particular purpose. Xilinx does not warrant that the functions contained
// in these designs will meet your requirements, or that the operation of
// these designs will be uninterrupted or error free, or that defects in the
// designs will be corrected. Furthermore, Xilinx does not warrant or make any
// representations regarding use or the results of the use of the designs in
// terms of correctness, accuracy, reliability, or otherwise.
//
// LIMITATION OF LIABILITY. In no event will Xilinx or its licensors be liable
// for any loss of data, lost profits, cost or procurement of substitute goods
// or services, or for any special, incidental, consequential, or indirect
// damages arising from the use or operation of the designs or accompanying
// documentation, however caused and on any theory of liability. This
// limitation will apply even if Xilinx has been advised of the possibility
// of such damage. This limitation shall apply not-withstanding the failure
// of the essential purpose of any limited remedies herein.
//
//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2006 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps

module autopilot
  (
  input  wire [10:0] timestep,
  output wire  [3:0] auto_pos,
  output wire  [1:0] auto_rot,
  output wire  [1:0] auto_scl,
  input  wire        clk
  );

  //******************************************************************//
  // Behavioral BlockRAM description.  At each address (timestep) the //
  // memory contains instructions for position, rotation, and scale   //
  // in a format that should be easy to substitute for actual user    //
  // interaction with the controls.  This is intended to be stepped   //
  // through no faster than once per frame.                           //
  //******************************************************************//

  reg   [7:0] rompilot;

  assign auto_pos = rompilot[7:4];
  assign auto_rot = rompilot[3:2];
  assign auto_scl = rompilot[1:0];

  always @(posedge clk)
  begin
    // Position bits are compass directions N, E, S, and W.
    // Rotation bits are L (rotate ccw) and R (rotate cw).
    // Scale bits are X (zoom-out, ccw) and Z (zoom-in, cw).
    // rompilot <= 8'bNESW_LR_XZ;
    casez (timestep)
      // The first 512 steps are associated with a given
      // bitmap.  This autopilot sequence simply zooms out
      // to an acceptable level and then zooms in.
      0: rompilot <= 8'b0000_00_00;
      0001, 0002, 0003, 0004, 0005, 0006, 0007, 0008, 0009, 0010: rompilot <= 8'b0000_00_10;
      0011, 0012, 0013, 0014, 0015, 0016, 0017, 0018, 0019, 0020: rompilot <= 8'b0000_00_10;
      0021, 0022, 0023, 0024, 0025, 0026, 0027, 0028, 0029, 0030: rompilot <= 8'b0000_00_10;
      0031, 0032, 0033, 0034, 0035, 0036, 0037, 0038, 0039, 0040: rompilot <= 8'b0000_00_10;
      0041, 0042, 0043, 0044, 0045, 0046, 0047, 0048, 0049, 0050: rompilot <= 8'b0000_00_10;
      0051, 0052, 0053, 0054, 0055, 0056, 0057, 0058, 0059, 0060: rompilot <= 8'b0000_00_10;
      0061, 0062, 0063, 0064, 0065, 0066, 0067, 0068, 0069, 0070: rompilot <= 8'b0000_00_10;
      0071, 0072, 0073, 0074, 0075, 0076, 0077, 0078, 0079, 0080: rompilot <= 8'b0000_00_10;
      0081, 0082, 0083, 0084, 0085: rompilot <= 8'b0000_00_10;
      0427, 0428, 0429, 0430, 0431: rompilot <= 8'b0000_00_01;
      0432, 0433, 0434, 0435, 0436, 0437, 0438, 0439, 0440, 0441: rompilot <= 8'b0000_00_01;
      0442, 0443, 0444, 0445, 0446, 0447, 0448, 0449, 0450, 0451: rompilot <= 8'b0000_00_01;
      0452, 0453, 0454, 0455, 0456, 0457, 0458, 0459, 0460, 0461: rompilot <= 8'b0000_00_01;
      0462, 0463, 0464, 0465, 0466, 0467, 0468, 0469, 0470, 0471: rompilot <= 8'b0000_00_01;
      0472, 0473, 0474, 0475, 0476, 0477, 0478, 0479, 0480, 0481: rompilot <= 8'b0000_00_01;
      0482, 0483, 0484, 0485, 0486, 0487, 0488, 0489, 0490, 0491: rompilot <= 8'b0000_00_01;
      0492, 0493, 0494, 0495, 0496, 0497, 0498, 0499, 0500, 0501: rompilot <= 8'b0000_00_01;
      0502, 0503, 0504, 0505, 0506, 0507, 0508, 0509, 0510, 0511: rompilot <= 8'b0000_00_01;

      // The next 512 steps are associated with a given
      // bitmap.  This autopilot sequence zooms out, then
      // zooms in, and rotates the whole time.
      11'b010_0???_????: rompilot <= 8'b0000_01_10;
      11'b010_1???_????: rompilot <= 8'b0000_01_00;
      11'b011_0???_????: rompilot <= 8'b0000_10_00;
      11'b011_1???_????: rompilot <= 8'b0000_10_01;

      // The next 512 steps are associated with a given
      // bitmap.  This autopilot sequence simply zooms out
      // to an acceptable level and then zooms in.  This is
      // the same sequence as the first one, and currently
      // not used in this demo.
      1024: rompilot <= 8'b0000_00_00;
      1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034: rompilot <= 8'b0000_00_10;
      1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044: rompilot <= 8'b0000_00_10;
      1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054: rompilot <= 8'b0000_00_10;
      1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064: rompilot <= 8'b0000_00_10;
      1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074: rompilot <= 8'b0000_00_10;
      1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084: rompilot <= 8'b0000_00_10;
      1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094: rompilot <= 8'b0000_00_10;
      1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104: rompilot <= 8'b0000_00_10;
      1105, 1106, 1107, 1108, 1109: rompilot <= 8'b0000_00_10;
      1451, 1452, 1453, 1454, 1455: rompilot <= 8'b0000_00_01;
      1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465: rompilot <= 8'b0000_00_01;
      1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475: rompilot <= 8'b0000_00_01;
      1476, 1477, 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485: rompilot <= 8'b0000_00_01;
      1486, 1487, 1488, 1489, 1490, 1491, 1492, 1493, 1494, 1495: rompilot <= 8'b0000_00_01;
      1496, 1497, 1498, 1499, 1500, 1501, 1502, 1503, 1504, 1505: rompilot <= 8'b0000_00_01;
      1506, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1514, 1515: rompilot <= 8'b0000_00_01;
      1516, 1517, 1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525: rompilot <= 8'b0000_00_01;
      1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535: rompilot <= 8'b0000_00_01;

      // The next 512 steps are associated with a given
      // bitmap.  This autopilot sequence zooms out, then
      // zooms in, and rotates the whole time.  This is
      // the opposite direction from the second one, and
      // currently not used in this demo.
      11'b110_0???_????: rompilot <= 8'b0000_01_10;
      11'b110_1???_????: rompilot <= 8'b0000_01_00;
      11'b111_0???_????: rompilot <= 8'b0000_01_00;
      11'b111_1???_????: rompilot <= 8'b0000_01_01;

      // This covers all the unlisted (stationary) cases.
      default: rompilot <= 8'b0000_00_00;
    endcase
  end
 
  //******************************************************************//
  //                                                                  //
  //******************************************************************//

endmodule