( Hardware port assignments )
h# FF00 constant mult_a  \ no cambiar estos tres
h# FF02 constant mult_b  \ hacen parte de otras
h# FF04 constant mult_p  \ definiciones

\ memory map multiplier:
h# 6700 constant multi_a	
h# 6702 constant multi_b
h# 6704 constant multi_init
h# 6706 constant multi_done
h# 6708 constant multi_pp_high
h# 670A constant multi_pp_low

\ memory map i2s_tx
h# 6800 constant i2s_load
h# 6802 constant i2s_left
h# 6804 constant i2s_right
h# 6806 constant i2s_empty
h# 6808 constant i2s_full

\ memory map i2c
\ h# 6900 constant ...

\ memory map spi
\ h# 6A00 constant ...

\ memory map uart
h# 6B00 constant uart_datatx
h# 6B02 constant uart_start
h# 6B04 constant uart_ready
h# 6B06 constant uart_rcv
h# 6B08 constant uart_datarx

\ memory map board
h# 6C00 constant board_n
h# 6C00 constant board_init

\ memory map bcd
h# 6D00 constant bcd_init
h# 6A00 constant bcd_n

