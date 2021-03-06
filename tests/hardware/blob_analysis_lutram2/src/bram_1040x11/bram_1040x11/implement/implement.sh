
 
 
 




#!/bin/sh

# Clean up the results directory
rm -rf results
mkdir results

#Synthesize the Wrapper Files

echo 'Synthesizing example design with XST';
xst -ifn xst.scr
cp bram_1040x11_exdes.ngc ./results/


# Copy the netlist generated by Coregen
echo 'Copying files from the netlist directory to the results directory'
cp ../../bram_1040x11.ngc results/

#  Copy the constraints files generated by Coregen
echo 'Copying files from constraints directory to results directory'
cp ../example_design/bram_1040x11_exdes.ucf results/

cd results

echo 'Running ngdbuild'
ngdbuild -p xc5vfx100t-ff1136-1 bram_1040x11_exdes

echo 'Running map'
map bram_1040x11_exdes -o mapped.ncd -pr i

echo 'Running par'
par mapped.ncd routed.ncd

echo 'Running trce'
trce -e 10 routed.ncd mapped.pcf -o routed

echo 'Running design through bitgen'
bitgen -w routed

echo 'Running netgen to create gate level Verilog model'
netgen -ofmt verilog -sim -tm bram_1040x11_exdes -pcf mapped.pcf -w -sdf_anno false routed.ncd routed.v
