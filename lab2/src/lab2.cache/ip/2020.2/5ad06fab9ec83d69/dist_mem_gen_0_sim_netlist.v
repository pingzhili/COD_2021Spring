// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 12 21:51:48 2021
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
bhkZsC5gq732flnLHatiZxqofqIzwn+onbM=
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
