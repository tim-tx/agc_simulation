`timescale 1ns/1ps
`default_nettype none

module main;
    reg VCC = 1;
    reg GND = 0;
    reg SIM_RST = 1;
    reg SIM_CLK = 1;
    reg ALGA = 0;
    reg C24A = 0;
    reg C25A = 0;
    reg C26A = 0;
    reg C27A = 0;
    reg C30A = 0;
    reg C37P = 0;
    reg C40P = 0;
    reg C41P = 0;
    reg C42P = 0;
    reg C43P = 0;
    reg C44P = 0;
    reg CDUSTB_n = 1;
    reg CH01 = 0;
    reg CH02 = 0;
    reg CH03 = 0;
    reg CH04 = 0;
    reg CH05 = 0;
    reg CH06 = 0;
    reg CH07 = 0;
    reg CH08 = 0;
    reg CH09 = 0;
    reg CH10 = 0;
    reg CH11 = 0;
    reg CH12 = 0;
    reg CH13 = 0;
    reg CH14 = 0;
    reg CH16 = 0;
    reg CHINC = 0;
    reg CHINC_n = 1;
    reg CLOCK = 0;
    reg DINC = 0;
    reg DINC_n = 1;
    reg EB9 = 0;
    reg EB10 = 0;
    reg EB11_n = 1;
    reg FETCH0 = 0;
    reg FETCH0_n = 1;
    reg FETCH1 = 0;
    reg G16SW_n = 1;
    reg INCSET_n = 1;
    reg INKL = 0;
    reg INKL_n = 1;
    reg INOTLD = 0;
    reg MAMU = 0;
    reg MCDU = 0;
    reg MDT01 = 0;
    reg MDT02 = 0;
    reg MDT03 = 0;
    reg MDT04 = 0;
    reg MDT05 = 0;
    reg MDT06 = 0;
    reg MDT07 = 0;
    reg MDT08 = 0;
    reg MDT09 = 0;
    reg MDT10 = 0;
    reg MDT11 = 0;
    reg MDT12 = 0;
    reg MDT13 = 0;
    reg MDT14 = 0;
    reg MDT15 = 0;
    reg MDT16 = 0;
    reg MINC = 0;
    reg MNHRPT = 0;
    reg MNHSBF = 0;
    reg MONPAR = 0;
    reg MONPCH = 0;
    reg MONWBK = 0;
    reg MON_n = 1;
    reg MSTP = 0;
    reg MSTRTP = 0;
    reg MTCSAI = 0;
    reg OVNHRP = 0;
    reg PCDU = 0;
    reg PIPPLS_n = 1;
    reg RCHAT_n = 1;
    reg RCHBT_n = 1;
    reg RUPTOR_n = 1;
    reg SA01 = 0;
    reg SA02 = 0;
    reg SA03 = 0;
    reg SA04 = 0;
    reg SA05 = 0;
    reg SA06 = 0;
    reg SA07 = 0;
    reg SA08 = 0;
    reg SA09 = 0;
    reg SA10 = 0;
    reg SA11 = 0;
    reg SA12 = 0;
    reg SA13 = 0;
    reg SA14 = 0;
    reg SA16 = 0;
    reg SAP = 0;
    reg SBY = 0;
    reg SHANC_n = 1;
    reg SHIFT = 0;
    reg SHIFT_n = 1;
    reg STFET1_n = 1;
    reg STORE1_n = 1;
    reg STRT1 = 0;
    reg STRT2 = 0;
    wire MGOJAM;
    wire MT01;
    wire MT02;
    wire MT03;
    wire MT04;
    wire MT05;
    wire MT06;
    wire MT07;
    wire MT08;
    wire MT09;
    wire MT10;
    wire MT11;
    wire MT12;

    always #488.281 CLOCK = !CLOCK;

`ifdef TARGET_FPGA
    always #10 SIM_CLK = !SIM_CLK;
    
    fpga_agc
`else
    agc
`endif
        AGC(VCC, GND, SIM_RST, SIM_CLK, ALGA, C24A, C25A, C26A, C27A, C30A, C37P, C40P, C41P, C42P, C43P, C44P, CDUSTB_n, CH01, CH02, CH03, CH04, CH05, CH06, CH07, CH08, CH09, CH10, CH11, CH12, CH13, CH14, CH16, CHINC, CHINC_n, CLOCK, DINC, DINC_n, EB10, EB11_n, EB9, FETCH0, FETCH0_n, FETCH1, G16SW_n, INCSET_n, INKL, INKL_n, INOTLD, MAMU, MCDU, MDT01, MDT02, MDT03, MDT04, MDT05, MDT06, MDT07, MDT08, MDT09, MDT10, MDT11, MDT12, MDT13, MDT14, MDT15, MDT16, MINC, MNHRPT, MNHSBF, MONPAR, MONPCH, MONWBK, MON_n, MSTP, MSTRTP, MTCSAI, OVNHRP, PCDU, PIPPLS_n, RCHAT_n, RCHBT_n, RUPTOR_n, SA01, SA02, SA03, SA04, SA05, SA06, SA07, SA08, SA09, SA10, SA11, SA12, SA13, SA14, SA16, SAP, SBY, SHANC_n, SHIFT, SHIFT_n, STFET1_n, STORE1_n, STRT1, STRT2, MGOJAM, MT01, MT02, MT03, MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12);


    initial begin
        $dumpfile("dump.lxt");
        $dumpvars(0, main);
        #5000 SIM_RST = 0;
        #50000 STRT1 = 1;
        #5000 STRT1 = 0;
        #200000 SA13 = 1;
        SA14 = 1;
        SA12 = 1;
        #200000 SA13 = 0;
        SA14 = 0;
        SA12 = 0;
        #400000 $finish;
    end
endmodule
