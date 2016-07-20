#!/bin/bash -f
xv_path="/data/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Column_TB_behav -key {Behavioral:sim_1:Functional:Column_TB} -tclbatch Column_TB.tcl -view /net/home/ppd/nlk16165/AM/AM-HoughFilter/Column_TB_behav.wcfg -view /net/home/ppd/nlk16165/AM/AM-HoughFilter/Cell_TB_behav.wcfg -view /net/home/ppd/nlk16165/AM/AM-HoughFilter/Filter_TB_behav.wcfg -log simulate.log
