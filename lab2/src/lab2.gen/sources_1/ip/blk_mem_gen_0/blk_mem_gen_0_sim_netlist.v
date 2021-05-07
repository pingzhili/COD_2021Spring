// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 12 22:08:36 2021
// Host        : DESKTOP-S1AKLFP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/COD/lab2/lab2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20592)
`pragma protect data_block
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
4FMhtn5aRpAs5YR9clWp
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
