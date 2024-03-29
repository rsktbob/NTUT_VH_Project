onerror {exit -code 1}
vlib work
vcom -work work lab9_01.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax lab9_01_vhd_vec_tst/i1=lab9_01_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.lab9_01_vhd_vec_tst
vcd file -direction lab9_01.msim.vcd
vcd add -internal lab9_01_vhd_vec_tst/*
vcd add -internal lab9_01_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f



