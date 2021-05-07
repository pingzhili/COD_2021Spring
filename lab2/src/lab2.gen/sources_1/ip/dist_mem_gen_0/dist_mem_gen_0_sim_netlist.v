// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 12 21:51:49 2021
// Host        : DESKTOP-S1AKLFP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/COD/lab2/lab2.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    spo);
  input [3:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;

  wire [3:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9488)
`pragma protect data_block
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
tnBhCBW85oRNfwrc+fSfYW5V5VTRw0lpx24=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
