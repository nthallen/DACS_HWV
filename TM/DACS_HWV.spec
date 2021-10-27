tmcbase = types.tmc
tmcbase = /usr/local/share/huarp/flttime.tmc
tmcbase = AI.tmc
tmcbase = AO.tmc
tmcbase = PTRH.tmc
tmcbase = ptrhm.cc
tmcbase = qcli.tmc
tmcbase = waves0.tmc
tmcbase = digio.tmc
tmcbase = idx64.tmc
tmcbase = idx64col.tmc
tmcbase = ctr.tmc
tmcbase = pwrmon.tmc
cmdbase = /usr/local/share/huarp/root.cmd
cmdbase = /usr/local/share/huarp/getcon.cmd
cmdbase = cmdenbl.cmd
cmdbase = AI.cmd
cmdbase = AO.cmd
cmdbase = qcli.cmd
cmdbase = qclis.cmd
cmdbase = waves0.cmd
cmdbase = digio.cmd
cmdbase = /usr/local/share/huarp/idx64.cmd
cmdbase = idx64drv.cmd

SCRIPT = interact digio.dccc idx64.idx64
SCRIPT = waves0.out
TGTDIR = $(TGTNODE)/home/DACS_HWV

DACS_HWVsrvr : -lsubbus
DACS_HWVcol : /usr/local/share/huarp/DACS_ID.tmc AI_col.tmc AO_col.tmc ptrhm_col.cc PTRH_col.tmc qcli_col.tmc ctr_col.tmc -lsubbus
DACS_HWVdisp :  PTRH_conv.tmc qcli_conv.tmc digio_conv.tmc idx64flag.tmc ctr_conv.tmc pwrmon_conv.tmc  AI.tbl AO.tbl PTRH.tbl qcli.tbl digio.tbl idx64.tbl ctr.tbl pwrmon.tbl
DACS_HWValgo : DACS_HWV.tma
doit : DACS_HWV.doit
%%
waves0.cmd waves0.out waves0.tmc waves0.m : waves0.qcli
	qclicomp -o waves0.out -c waves0.cmd -d waves0.tmc \
	  -v waves0.log -m waves0.m waves0.qcli || \
	  ( rm -f waves0.out waves0.cmd waves0.tmc waves0.log waves0.m; false )
