// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 12 22:08:35 2021
// Host        : DESKTOP-S1AKLFP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20608)
`pragma protect data_block
+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
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
