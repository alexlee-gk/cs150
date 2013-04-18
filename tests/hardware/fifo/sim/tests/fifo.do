set MODULE FifoTestbench
start $MODULE
add wave $MODULE/*
add wave $MODULE/fifo/*
run 100us
