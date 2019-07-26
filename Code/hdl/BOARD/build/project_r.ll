Revision 3
; Created by bitgen P.20131013 at Wed Jul 24 18:30:03 2019
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
Bit 13276483 0x0040039f   2659 Block=SLICE_X8Y91 Latch=AQ Net=s/out<0>
Bit 13276503 0x0040039f   2679 Block=SLICE_X9Y91 Latch=BMUX Net=N2
Bit 13276508 0x0040039f   2684 Block=SLICE_X8Y91 Latch=BQ Net=s/out<1>
Bit 13276513 0x0040039f   2689 Block=SLICE_X8Y91 Latch=CQ Net=s/out<2>
Bit 13276538 0x0040039f   2714 Block=SLICE_X8Y91 Latch=DQ Net=s/out<3>
Bit 13392579 0x0040041f   2403 Block=SLICE_X10Y87 Latch=AQ Net=s/count<0>
Bit 13392604 0x0040041f   2428 Block=SLICE_X10Y87 Latch=BQ Net=s/count<1>
Bit 13392609 0x0040041f   2433 Block=SLICE_X10Y87 Latch=CQ Net=s/count<2>
Bit 13392709 0x0040041f   2533 Block=SLICE_X11Y89 Latch=AMUX Net=s/count[32]_GND_2_o_add_1_OUT<0>
Bit 13392727 0x0040041f   2551 Block=SLICE_X11Y89 Latch=BMUX Net=s/count[32]_GND_2_o_add_1_OUT<1>
Bit 13392746 0x0040041f   2570 Block=SLICE_X11Y89 Latch=CMUX Net=s/count[32]_GND_2_o_add_1_OUT<2>
Bit 13392756 0x0040041f   2580 Block=SLICE_X11Y89 Latch=DMUX Net=s/count[32]_GND_2_o_add_1_OUT<3>
Bit 16882903 0x0040139f   2167 Block=SLICE_X63Y83 Latch=BMUX Net=rows[3]_GND_1_o_equal_9_o
Bit 16882931 0x0040139f   2195 Block=SLICE_X62Y83 Latch=DMUX Net=rows[3]_GND_1_o_equal_1_o
Bit 17231914 0x0040151f   2122 Block=SLICE_X69Y82 Latch=CMUX Net=cols[3]_GND_1_o_equal_6_o
Bit 17231923 0x0040151f   2131 Block=SLICE_X68Y82 Latch=DMUX Net=Mmux_n[3]_n[3]_MUX_103_o21
Bit 17671363 0x0040171f   2019 Block=SLICE_X74Y81 Latch=AQ Net=n_2
Bit 17671418 0x0040171f   2074 Block=SLICE_X74Y81 Latch=DQ Net=n_3
Bit 17671428 0x0040171f   2084 Block=SLICE_X75Y82 Latch=AQ Net=n_0
Bit 17671458 0x0040171f   2114 Block=SLICE_X75Y82 Latch=CQ Net=n_1
