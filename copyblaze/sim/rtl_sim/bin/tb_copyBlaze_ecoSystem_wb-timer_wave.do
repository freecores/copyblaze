onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {WISHBONE timer}
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/clk
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/reset
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_adr_i
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_dat_i
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_dat_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_cyc_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_stb_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_ack_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_we_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_irq0_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wb_irq1_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/wbactive
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/counter0
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/counter1
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/compare0
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/compare1
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/en0
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/en1
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/ar0
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/ar1
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/trig0
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/trig1
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/irq0en
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/wb_timer/irq1en
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/tcr0
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/wb_timer/tcr1
add wave -noupdate -divider COPYBLAZE
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/clk_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/rst_i_n
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/address_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/instruction_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/interrupt_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/interrupt_ack_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/in_port_i
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/out_port_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/port_id_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/read_strobe_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/write_strobe_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/freeze_i
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/adr_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/dat_i
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/dat_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/we_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/sel_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/stb_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ack_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/cyc_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iphase1
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iphase2
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iaaa
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/ikk
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iss
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/ipp
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iz
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ic
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/izi
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ici
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/ialuresult
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/isxdatain
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/isxdata
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/isydata
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/isxptr
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/isyptr
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iscratchptr
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iscratchdataout
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ibancwriteop
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ibancwrite
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iscratchwrite
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ifetch
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iinput
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iouput
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/ioperationselect
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ioperandselect
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iarithoper
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/ilogicoper
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/ishiftbit
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ishiftsens
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iflagswrite
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iflagspush
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iflagspop
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iconditionctrl
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ijump
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/icall
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ireturn
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ireturni
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ipcenable
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iievent
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iiewrite
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iievalue
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/ifreeze
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbadr_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbdat_i
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbdat
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbdat_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbwe_o
add wave -noupdate -radix hexadecimal /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbsel_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbstb_o
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwback_i
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbcyc
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbwrsing
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwbrdsing
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwb_validhandshake
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwb_validpc
add wave -noupdate /tb_copyblaze_ecosystem_wb_timer/uut/processor/iwb_validoperand
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {76250000 ps} 0}
configure wave -namecolwidth 400
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {248760331 ps}
