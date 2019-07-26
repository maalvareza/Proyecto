Revision 3
; Created by bitgen P.20131013 at Thu Jul 25 20:14:23 2019
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Info STARTSEL0=1
Bit 18433990 0x00401a9f   1894 Block=SLICE_X84Y79 Latch=AMUX Net=TX/BAUD0/n0017[14:0]<0>
Bit 18434006 0x00401a9f   1910 Block=SLICE_X84Y79 Latch=BMUX Net=TX/BAUD0/n0017[14:0]<1>
Bit 18434025 0x00401a9f   1929 Block=SLICE_X84Y79 Latch=CMUX Net=TX/BAUD0/n0017[14:0]<2>
Bit 18434035 0x00401a9f   1939 Block=SLICE_X84Y79 Latch=DMUX Net=TX/BAUD0/n0017[14:0]<3>
Bit 18434054 0x00401a9f   1958 Block=SLICE_X84Y80 Latch=AMUX Net=TX/BAUD0/n0017[14:0]<4>
Bit 18434070 0x00401a9f   1974 Block=SLICE_X84Y80 Latch=BMUX Net=TX/BAUD0/n0017[14:0]<5>
Bit 18434071 0x00401a9f   1975 Block=SLICE_X85Y80 Latch=BMUX Net=TX/BAUD0/divcounter<10>
Bit 18434077 0x00401a9f   1981 Block=SLICE_X85Y80 Latch=BQ Net=TX/BAUD0/divcounter<0>
Bit 18434082 0x00401a9f   1986 Block=SLICE_X85Y80 Latch=CQ Net=TX/BAUD0/divcounter<2>
Bit 18434089 0x00401a9f   1993 Block=SLICE_X84Y80 Latch=CMUX Net=TX/BAUD0/n0017[14:0]<6>
Bit 18434090 0x00401a9f   1994 Block=SLICE_X85Y80 Latch=CMUX Net=TX/BAUD0/divcounter<3>
Bit 18434099 0x00401a9f   2003 Block=SLICE_X84Y80 Latch=DMUX Net=TX/BAUD0/n0017[14:0]<7>
Bit 18434100 0x00401a9f   2004 Block=SLICE_X85Y80 Latch=DMUX Net=TX/BAUD0/divcounter<5>
Bit 18434107 0x00401a9f   2011 Block=SLICE_X85Y80 Latch=DQ Net=TX/BAUD0/divcounter<4>
Bit 18434118 0x00401a9f   2022 Block=SLICE_X84Y81 Latch=AMUX Net=TX/BAUD0/n0017[14:0]<8>
Bit 18434134 0x00401a9f   2038 Block=SLICE_X84Y81 Latch=BMUX Net=TX/BAUD0/n0017[14:0]<9>
Bit 18434153 0x00401a9f   2057 Block=SLICE_X84Y81 Latch=CMUX Net=TX/BAUD0/n0017[14:0]<10>
Bit 18434163 0x00401a9f   2067 Block=SLICE_X84Y81 Latch=DMUX Net=TX/BAUD0/n0017[14:0]<11>
Bit 18434182 0x00401a9f   2086 Block=SLICE_X84Y82 Latch=AMUX Net=TX/BAUD0/n0017[14:0]<12>
Bit 18434198 0x00401a9f   2102 Block=SLICE_X84Y82 Latch=BMUX Net=TX/BAUD0/n0017[14:0]<13>
Bit 18550147 0x00401b1f   1699 Block=SLICE_X86Y76 Latch=AQ Net=TX/state_FSM_FFd1
Bit 18550172 0x00401b1f   1724 Block=SLICE_X86Y76 Latch=BQ Net=TX/state_FSM_FFd2
Bit 18550211 0x00401b1f   1763 Block=SLICE_X86Y77 Latch=AQ Net=TX/bitc<0>
Bit 18550230 0x00401b1f   1782 Block=SLICE_X86Y77 Latch=BMUX Net=TX/bitc<2>
Bit 18550236 0x00401b1f   1788 Block=SLICE_X86Y77 Latch=BQ Net=TX/bitc<1>
Bit 18550241 0x00401b1f   1793 Block=SLICE_X86Y77 Latch=CQ Net=TX/bitc<3>
Bit 18550275 0x00401b1f   1827 Block=SLICE_X86Y78 Latch=AQ Net=TX/shifter<9>
Bit 18550364 0x00401b1f   1916 Block=SLICE_X86Y79 Latch=BQ Net=TX/shifter<7>
Bit 18550403 0x00401b1f   1955 Block=SLICE_X86Y80 Latch=AQ Net=TX/BAUD0/divcounter<6>
Bit 18550406 0x00401b1f   1958 Block=SLICE_X86Y80 Latch=AMUX Net=TX/BAUD0/divcounter<7>
Bit 18550422 0x00401b1f   1974 Block=SLICE_X86Y80 Latch=BMUX Net=TX/BAUD0/divcounter<9>
Bit 18550428 0x00401b1f   1980 Block=SLICE_X86Y80 Latch=BQ Net=TX/BAUD0/divcounter<8>
Bit 18550433 0x00401b1f   1985 Block=SLICE_X86Y80 Latch=CQ Net=TX/BAUD0/divcounter<11>
Bit 18550441 0x00401b1f   1993 Block=SLICE_X86Y80 Latch=CMUX Net=TX/BAUD0/divcounter<12>
Bit 18550451 0x00401b1f   2003 Block=SLICE_X86Y80 Latch=DMUX Net=TX/BAUD0/divcounter<1>
Bit 18550458 0x00401b1f   2010 Block=SLICE_X86Y80 Latch=DQ Net=TX/BAUD0/divcounter<13>
Bit 18550497 0x00401b1f   2049 Block=SLICE_X86Y81 Latch=CQ Net=TX/shifter<0>
Bit 18550522 0x00401b1f   2074 Block=SLICE_X86Y81 Latch=DQ Net=TX/shifter<1>
Bit 18550531 0x00401b1f   2083 Block=SLICE_X86Y82 Latch=AQ Net=TX/shifter<2>
Bit 18550556 0x00401b1f   2108 Block=SLICE_X86Y82 Latch=BQ Net=TX/shifter<3>
Bit 18550561 0x00401b1f   2113 Block=SLICE_X86Y82 Latch=CQ Net=TX/shifter<8>
Bit 18550595 0x00401b1f   2147 Block=SLICE_X86Y83 Latch=AQ Net=TX/shifter<6>
Bit 18550625 0x00401b1f   2177 Block=SLICE_X86Y83 Latch=CQ Net=TX/shifter<4>
Bit 18550650 0x00401b1f   2202 Block=SLICE_X86Y83 Latch=DQ Net=TX/shifter<5>
Bit 18666500 0x00401b9f   1700 Block=SLICE_X89Y76 Latch=AQ Net=RX/raw_data<5>
Bit 18666525 0x00401b9f   1725 Block=SLICE_X89Y76 Latch=BQ Net=RX/raw_data<6>
Bit 18666530 0x00401b9f   1730 Block=SLICE_X89Y76 Latch=CQ Net=RX/raw_data<7>
Bit 18666555 0x00401b9f   1755 Block=SLICE_X89Y76 Latch=DQ Net=RX/raw_data<8>
Bit 18666564 0x00401b9f   1764 Block=SLICE_X89Y77 Latch=AQ Net=RX/raw_data<9>
Bit 18666692 0x00401b9f   1892 Block=SLICE_X89Y79 Latch=AQ Net=RX/raw_data<1>
Bit 18666717 0x00401b9f   1917 Block=SLICE_X89Y79 Latch=BQ Net=RX/raw_data<2>
Bit 18666722 0x00401b9f   1922 Block=SLICE_X89Y79 Latch=CQ Net=RX/raw_data<3>
Bit 18666747 0x00401b9f   1947 Block=SLICE_X89Y79 Latch=DQ Net=RX/raw_data<4>
Bit 18666839 0x00401b9f   2039 Block=SLICE_X89Y81 Latch=BMUX Net=RX/baudgen0/divcounter<10>
Bit 18666845 0x00401b9f   2045 Block=SLICE_X89Y81 Latch=BQ Net=RX/baudgen0/divcounter<0>
Bit 18666850 0x00401b9f   2050 Block=SLICE_X89Y81 Latch=CQ Net=RX/baudgen0/divcounter<2>
Bit 18666858 0x00401b9f   2058 Block=SLICE_X89Y81 Latch=CMUX Net=RX/baudgen0/divcounter<3>
Bit 18666868 0x00401b9f   2068 Block=SLICE_X89Y81 Latch=DMUX Net=RX/baudgen0/divcounter<5>
Bit 18666875 0x00401b9f   2075 Block=SLICE_X89Y81 Latch=DQ Net=RX/baudgen0/divcounter<4>
Bit 18666886 0x00401b9f   2086 Block=SLICE_X88Y82 Latch=AMUX Net=RX/baudgen0/n0017[14:0]<0>
Bit 18666902 0x00401b9f   2102 Block=SLICE_X88Y82 Latch=BMUX Net=RX/baudgen0/n0017[14:0]<1>
Bit 18666903 0x00401b9f   2103 Block=SLICE_X89Y82 Latch=BMUX Net=N12
Bit 18666921 0x00401b9f   2121 Block=SLICE_X88Y82 Latch=CMUX Net=RX/baudgen0/n0017[14:0]<2>
Bit 18666931 0x00401b9f   2131 Block=SLICE_X88Y82 Latch=DMUX Net=RX/baudgen0/n0017[14:0]<3>
Bit 18666948 0x00401b9f   2148 Block=SLICE_X89Y83 Latch=AQ Net=RX/baudgen0/divcounter<6>
Bit 18666949 0x00401b9f   2149 Block=SLICE_X89Y83 Latch=AMUX Net=RX/baudgen0/divcounter<7>
Bit 18666950 0x00401b9f   2150 Block=SLICE_X88Y83 Latch=AMUX Net=RX/baudgen0/n0017[14:0]<4>
Bit 18666966 0x00401b9f   2166 Block=SLICE_X88Y83 Latch=BMUX Net=RX/baudgen0/n0017[14:0]<5>
Bit 18666967 0x00401b9f   2167 Block=SLICE_X89Y83 Latch=BMUX Net=RX/baudgen0/divcounter<9>
Bit 18666973 0x00401b9f   2173 Block=SLICE_X89Y83 Latch=BQ Net=RX/baudgen0/divcounter<8>
Bit 18666978 0x00401b9f   2178 Block=SLICE_X89Y83 Latch=CQ Net=RX/baudgen0/divcounter<11>
Bit 18666985 0x00401b9f   2185 Block=SLICE_X88Y83 Latch=CMUX Net=RX/baudgen0/n0017[14:0]<6>
Bit 18666986 0x00401b9f   2186 Block=SLICE_X89Y83 Latch=CMUX Net=RX/baudgen0/divcounter<12>
Bit 18666995 0x00401b9f   2195 Block=SLICE_X88Y83 Latch=DMUX Net=RX/baudgen0/n0017[14:0]<7>
Bit 18666996 0x00401b9f   2196 Block=SLICE_X89Y83 Latch=DMUX Net=RX/baudgen0/divcounter<1>
Bit 18667003 0x00401b9f   2203 Block=SLICE_X89Y83 Latch=DQ Net=RX/baudgen0/divcounter<13>
Bit 18667012 0x00401b9f   2212 Block=SLICE_X89Y84 Latch=AQ Net=RX/bitc<0>
Bit 18667014 0x00401b9f   2214 Block=SLICE_X88Y84 Latch=AMUX Net=RX/baudgen0/n0017[14:0]<8>
Bit 18667030 0x00401b9f   2230 Block=SLICE_X88Y84 Latch=BMUX Net=RX/baudgen0/n0017[14:0]<9>
Bit 18667037 0x00401b9f   2237 Block=SLICE_X89Y84 Latch=BQ Net=RX/bitc<1>
Bit 18667049 0x00401b9f   2249 Block=SLICE_X88Y84 Latch=CMUX Net=RX/baudgen0/n0017[14:0]<10>
Bit 18667059 0x00401b9f   2259 Block=SLICE_X88Y84 Latch=DMUX Net=RX/baudgen0/n0017[14:0]<11>
Bit 18667078 0x00401b9f   2278 Block=SLICE_X88Y85 Latch=AMUX Net=RX/baudgen0/n0017[14:0]<12>
Bit 18667094 0x00401b9f   2294 Block=SLICE_X88Y85 Latch=BMUX Net=RX/baudgen0/n0017[14:0]<13>
Bit 18667106 0x00401b9f   2306 Block=SLICE_X89Y85 Latch=CQ Net=RX/bitc<2>
Bit 18667114 0x00401b9f   2314 Block=SLICE_X89Y85 Latch=CMUX Net=RX/bitc<3>
Bit 18667140 0x00401b9f   2340 Block=SLICE_X89Y86 Latch=AQ Net=RX/state_FSM_FFd2
Bit 18667332 0x00401b9f   2532 Block=SLICE_X89Y89 Latch=AQ Net=RX/state_FSM_FFd3
Bit 18667333 0x00401b9f   2533 Block=SLICE_X89Y89 Latch=AMUX Net=RX/state_FSM_FFd1
Bit 18667351 0x00401b9f   2551 Block=SLICE_X89Y89 Latch=BMUX Net=N8
Bit 18667357 0x00401b9f   2557 Block=SLICE_X89Y89 Latch=BQ Net=RX/state_FSM_FFd4
