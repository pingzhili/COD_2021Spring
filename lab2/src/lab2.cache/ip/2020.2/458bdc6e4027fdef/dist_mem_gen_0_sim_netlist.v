// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 12 21:43:25 2021
// Host        : DESKTOP-S1AKLFP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    dpra,
    clk,
    we,
    dpo);
  input [5:0]a;
  input [15:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  output [15:0]dpo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]dpo;
  wire [5:0]dpra;
  wire we;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [15:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "1" *) 
  (* C_HAS_DPRA = "1" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_QSPO = "0" *) 
  (* C_HAS_QSPO_RST = "0" *) 
  (* C_HAS_QSPO_SRST = "0" *) 
  (* C_HAS_SPO = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[15:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12880)
`pragma protect data_block
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
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
