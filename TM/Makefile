# Makefile Generated Wed Oct 27 11:05:25 EDT 2021
MNC=DACS_HWV
SPECFILE=DACS_HWV.spec
PCMFILE=DACS_HWV.pcm
SRC=/usr/local/share/huarp/root.cmd
SRC+=/usr/local/share/huarp/getcon.cmd cmdenbl.cmd AI.cmd AO.cmd
SRC+=qcli.cmd qclis.cmd waves0.cmd digio.cmd
SRC+=/usr/local/share/huarp/idx64.cmd idx64drv.cmd -lsubbus types.tmc
SRC+=/usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc
SRC+=ptrhm.cc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc
SRC+=ctr.tmc pwrmon.tmc /usr/local/share/huarp/DACS_ID.tmc AI_col.tmc
SRC+=AO_col.tmc ptrhm_col.cc PTRH_col.tmc qcli_col.tmc ctr_col.tmc
SRC+=PTRH_conv.tmc qcli_conv.tmc digio_conv.tmc idx64flag.tmc
SRC+=ctr_conv.tmc pwrmon_conv.tmc AI.tbl AO.tbl PTRH.tbl qcli.tbl
SRC+=digio.tbl idx64.tbl ctr.tbl pwrmon.tbl DACS_HWV.tma
SRC+=DACS_HWV.doit DACS_HWV.pcm
TOOL=DACS_HWV.spec Makefile
SCRIPT=interact digio.dccc idx64.idx64 waves0.out
OBJ=DACS_HWVcmd.cc DACS_HWVcmd.dat DACS_HWVsrvr.o DACS_HWVsrvroui.c
OBJ+=DACS_HWVsrvroui.o DACS_HWVcol.cc tm.dac DACS_HWVcoloui.c
OBJ+=DACS_HWVcoloui.o DACS_HWVcol.o ptrhm.o ptrhm_col.o AItbl.tmc
OBJ+=AOtbl.tmc PTRHtbl.tmc qclitbl.tmc digiotbl.tmc idx64tbl.tmc
OBJ+=ctrtbl.tmc pwrmontbl.tmc DACS_HWVdisp.cc DACS_HWVdispoui.c
OBJ+=DACS_HWVdispoui.o DACS_HWVdisp.o AItblnc.tmc AOtblnc.tmc
OBJ+=PTRHtblnc.tmc qclitblnc.tmc digiotblnc.tmc idx64tblnc.tmc
OBJ+=ctrtblnc.tmc pwrmontblnc.tmc DACS_HWVdispnc.cc
OBJ+=DACS_HWVdispncoui.c DACS_HWVdispncoui.o DACS_HWVdispnc.o
OBJ+=DACS_HWValgoa.tmc DACS_HWValgo.cc DACS_HWValgooui.c
OBJ+=DACS_HWValgooui.o DACS_HWValgo.o doit.dep DACS_HWVclt.o
OBJ+=DACS_HWVcltoui.c DACS_HWVcltoui.o DACS_HWVcltnc.o
OBJ+=DACS_HWVcltncoui.c DACS_HWVcltncoui.o AItbl.tmc.dep
OBJ+=AOtbl.tmc.dep PTRHtbl.tmc.dep qclitbl.tmc.dep digiotbl.tmc.dep
OBJ+=idx64tbl.tmc.dep ctrtbl.tmc.dep pwrmontbl.tmc.dep
OBJ+=AItblnc.tmc.dep AOtblnc.tmc.dep PTRHtblnc.tmc.dep
OBJ+=qclitblnc.tmc.dep digiotblnc.tmc.dep idx64tblnc.tmc.dep
OBJ+=ctrtblnc.tmc.dep pwrmontblnc.tmc.dep
TGT=DACS_HWVsrvr DACS_HWVcol DACS_HWVdisp DACS_HWVdispnc
TGT+=DACS_HWValgo doit DACS_HWVclt DACS_HWVcltnc
IGNORE=
DISTRIB=DACS_HWV.pcm tm.dac
IDISTRIB=Experiment.config VERSION doit
SRCDIST=AI.tbl AO.tbl PTRH.tbl qcli.tbl digio.tbl idx64.tbl ctr.tbl
SRCDIST+=pwrmon.tbl DACS_HWV.tma types.tmc
SRCDIST+=/usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc
SRCDIST+=ptrhm.cc qcli.tmc waves0.tmc digio.tmc idx64.tmc
SRCDIST+=idx64col.tmc ctr.tmc pwrmon.tmc
TMCBASE=types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc
TMCBASE+=PTRH.tmc ptrhm.cc qcli.tmc waves0.tmc digio.tmc idx64.tmc
TMCBASE+=idx64col.tmc ctr.tmc pwrmon.tmc
CMDBASE=/usr/local/share/huarp/root.cmd
CMDBASE+=/usr/local/share/huarp/getcon.cmd cmdenbl.cmd AI.cmd AO.cmd
CMDBASE+=qcli.cmd qclis.cmd waves0.cmd digio.cmd
CMDBASE+=/usr/local/share/huarp/idx64.cmd idx64drv.cmd
COLBASE=
SWSBASE=
QCLIBASE=
GENUIBASE=
EXTBASE=
SPECDEPBASE=
SPECTGTBASE=
SPECTGTMISS:=$(foreach file,$(SPECTGTBASE),$(if $(wildcard $(file)),,$(file)))
AG_CPPFLAGS=
PHTGT=AItbl.tmc AOtbl.tmc PTRHtbl.tmc qclitbl.tmc digiotbl.tmc
PHTGT+=idx64tbl.tmc ctrtbl.tmc pwrmontbl.tmc
SOURCE=$(SRC) $(TOOL) $(SCRIPT)
OBJECT=$(OBJ) *.err
TARGET=$(TGT)
DSTRB=$(TGT) $(DISTRIB) $(SCRIPT)
TGTDIR= $(TGTNODE)/home/DACS_HWV
include /usr/local/share/huarp/appgen.mk

.PHONY : all all-dist extdistribution distribution clean clean-dist check_photon

IGNOREFILE=.gitignore
all : check_photon $(TGT) $(IGNOREFILE)
all-dist : all $(DSTRB) $(SRCDIST) VERSION
Makefile $(SPECTGTMISS) : DACS_HWV.spec $(SPECDEPBASE)
	appgen DACS_HWV.spec
VERSION=`cat VERSION`
extdistribution : all-dist
	@[ -d $(TGTDIR)/bin ] || mkdir $(TGTDIR)/bin
	@[ -d $(TGTDIR)/bin/$(VERSION) ] || mkdir $(TGTDIR)/bin/$(VERSION)
	@[ -d $(TGTDIR)/bin/$(VERSION)/Base ] || mkdir $(TGTDIR)/bin/$(VERSION)/Base
	@[ ! -f $(TGTDIR)/bin/$(VERSION)/$(PCMFILE) ] || \
	  cmp -s $(TGTDIR)/bin/$(VERSION)/$(PCMFILE) $(PCMFILE) || \
	  ( echo "$(PCMFILE) changed without VERSION update"; false )
	@distribute $(FORCE) $(TGTDIR)/bin/$(VERSION) $(DSTRB)
	@distribute $(FORCE) $(TGTDIR)/bin/$(VERSION)/Base $(SRCDIST)
distribution : extdistribution
	@distribute $(FORCE) $(TGTDIR) $(IDISTRIB)
check_photon :
ifeq ($(WPHOTON),YES)
	@for tgt in $(PHTGT); do \
	  cmp -s $$tgt /usr/local/share/huarp/nulltbl.tmc && echo Remaking $$tgt && rm -f $$tgt; \
	done; true
endif
DACS_HWVsrvr : DACS_HWVsrvr.o DACS_HWVsrvroui.o
	$(LINK.privCXX) DACS_HWVsrvr.o DACS_HWVsrvroui.o -lsubbus -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWVsrvroui.c
	$(PROMOTE) DACS_HWVsrvr
DACS_HWVcol : DACS_HWVcol.o ptrhm.o ptrhm_col.o DACS_HWVcoloui.o
	$(LINK.privCXX) DACS_HWVcol.o ptrhm.o ptrhm_col.o DACS_HWVcoloui.o -lsubbus -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWVcoloui.c
	$(PROMOTE) DACS_HWVcol
DACS_HWVdisp : DACS_HWVdisp.o ptrhm.o DACS_HWVdispoui.o
	$(LINK.normCXX) DACS_HWVdisp.o ptrhm.o DACS_HWVdispoui.o -ldisp -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWVdispoui.c
DACS_HWVdispnc : DACS_HWVdispnc.o ptrhm.o DACS_HWVdispncoui.o
	$(LINK.normCXX) DACS_HWVdispnc.o ptrhm.o DACS_HWVdispncoui.o -ldispnc -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWVdispncoui.c
DACS_HWValgo : DACS_HWValgo.o ptrhm.o DACS_HWValgooui.o
	$(LINK.normCXX) DACS_HWValgo.o ptrhm.o DACS_HWValgooui.o -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWValgooui.c
doit : DACS_HWV.doit
	mkdoit3 -o doit  DACS_HWV.doit
DACS_HWVclt : DACS_HWVclt.o DACS_HWVcltoui.o
	$(LINK.normCXX) DACS_HWVclt.o DACS_HWVcltoui.o -ltmph -lph -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWVcltoui.c
DACS_HWVcltnc : DACS_HWVcltnc.o DACS_HWVcltncoui.o
	$(LINK.normCXX) DACS_HWVcltnc.o DACS_HWVcltncoui.o -ltmnc -lncurses -ltmpp -ltm -lnort
	$(OUIUSE) DACS_HWVcltncoui.c
DACS_HWVcmd.cc : /usr/local/share/huarp/root.cmd /usr/local/share/huarp/getcon.cmd cmdenbl.cmd AI.cmd AO.cmd qcli.cmd qclis.cmd waves0.cmd digio.cmd /usr/local/share/huarp/idx64.cmd idx64drv.cmd
	$(CMDGEN) -d DACS_HWVcmd.dat /usr/local/share/huarp/root.cmd /usr/local/share/huarp/getcon.cmd cmdenbl.cmd AI.cmd AO.cmd qcli.cmd qclis.cmd waves0.cmd digio.cmd /usr/local/share/huarp/idx64.cmd idx64drv.cmd
DACS_HWVsrvr.o : DACS_HWVcmd.cc
	$(COMPILE.srvr) DACS_HWVcmd.cc
DACS_HWVsrvroui.c : $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/subbus.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/cis.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/subbus.oui $(OUIDIR)/msg.oui
DACS_HWVsrvroui.o : DACS_HWVsrvroui.c
DACS_HWVcol.cc : types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc /usr/local/share/huarp/DACS_ID.tmc AI_col.tmc AO_col.tmc PTRH_col.tmc qcli_col.tmc ctr_col.tmc VERSION
	$(TMC.col) types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc /usr/local/share/huarp/DACS_ID.tmc AI_col.tmc AO_col.tmc PTRH_col.tmc qcli_col.tmc ctr_col.tmc
DACS_HWVcoloui.c : $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/subbus.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/collect.oui $(OUIDIR)/seteuid.oui $(OUIDIR)/subbus.oui $(OUIDIR)/msg.oui
DACS_HWVcoloui.o : DACS_HWVcoloui.c
DACS_HWVcol.o : DACS_HWVcol.cc
ptrhm.o : ptrhm.cc
ptrhm_col.o : ptrhm_col.cc
AItbl.tmc : AI.tbl
-include AItbl.tmc.dep
AOtbl.tmc : AO.tbl
-include AOtbl.tmc.dep
PTRHtbl.tmc : PTRH.tbl
-include PTRHtbl.tmc.dep
qclitbl.tmc : qcli.tbl
-include qclitbl.tmc.dep
digiotbl.tmc : digio.tbl
-include digiotbl.tmc.dep
idx64tbl.tmc : idx64.tbl
-include idx64tbl.tmc.dep
ctrtbl.tmc : ctr.tbl
-include ctrtbl.tmc.dep
pwrmontbl.tmc : pwrmon.tbl
-include pwrmontbl.tmc.dep
DACS_HWVdisp.cc : types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc PTRH_conv.tmc qcli_conv.tmc digio_conv.tmc idx64flag.tmc ctr_conv.tmc pwrmon_conv.tmc AItbl.tmc AOtbl.tmc PTRHtbl.tmc qclitbl.tmc digiotbl.tmc idx64tbl.tmc ctrtbl.tmc pwrmontbl.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc PTRH_conv.tmc qcli_conv.tmc digio_conv.tmc idx64flag.tmc ctr_conv.tmc pwrmon_conv.tmc AItbl.tmc AOtbl.tmc PTRHtbl.tmc qclitbl.tmc digiotbl.tmc idx64tbl.tmc ctrtbl.tmc pwrmontbl.tmc
DACS_HWVdispoui.c : $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
DACS_HWVdispoui.o : DACS_HWVdispoui.c
DACS_HWVdisp.o : DACS_HWVdisp.cc
AItblnc.tmc : AI.tbl
-include AItblnc.tmc.dep
AOtblnc.tmc : AO.tbl
-include AOtblnc.tmc.dep
PTRHtblnc.tmc : PTRH.tbl
-include PTRHtblnc.tmc.dep
qclitblnc.tmc : qcli.tbl
-include qclitblnc.tmc.dep
digiotblnc.tmc : digio.tbl
-include digiotblnc.tmc.dep
idx64tblnc.tmc : idx64.tbl
-include idx64tblnc.tmc.dep
ctrtblnc.tmc : ctr.tbl
-include ctrtblnc.tmc.dep
pwrmontblnc.tmc : pwrmon.tbl
-include pwrmontblnc.tmc.dep
DACS_HWVdispnc.cc : types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc PTRH_conv.tmc qcli_conv.tmc digio_conv.tmc idx64flag.tmc ctr_conv.tmc pwrmon_conv.tmc AItblnc.tmc AOtblnc.tmc PTRHtblnc.tmc qclitblnc.tmc digiotblnc.tmc idx64tblnc.tmc ctrtblnc.tmc pwrmontblnc.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc PTRH_conv.tmc qcli_conv.tmc digio_conv.tmc idx64flag.tmc ctr_conv.tmc pwrmon_conv.tmc AItblnc.tmc AOtblnc.tmc PTRHtblnc.tmc qclitblnc.tmc digiotblnc.tmc idx64tblnc.tmc ctrtblnc.tmc pwrmontblnc.tmc
DACS_HWVdispncoui.c : $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/nctable.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
DACS_HWVdispncoui.o : DACS_HWVdispncoui.c
DACS_HWVdispnc.o : DACS_HWVdispnc.cc
DACS_HWValgoa.tmc : DACS_HWV.tma DACS_HWVsrvr
	$(SERVER) ./DACS_HWVsrvr
	$(TMCALGO) -V "`./DACS_HWVsrvr -R`" DACS_HWV.tma
DACS_HWValgo.cc : types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc DACS_HWValgoa.tmc VERSION
	$(TMC) types.tmc /usr/local/share/huarp/flttime.tmc AI.tmc AO.tmc PTRH.tmc qcli.tmc waves0.tmc digio.tmc idx64.tmc idx64col.tmc ctr.tmc pwrmon.tmc DACS_HWValgoa.tmc
DACS_HWValgooui.c : $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/tma.oui $(OUIDIR)/dc.oui $(OUIDIR)/msg.oui
DACS_HWValgooui.o : DACS_HWValgooui.c
DACS_HWValgo.o : DACS_HWValgo.cc
doit.dep : DACS_HWV.doit
	mkdoit3 -M -o doit  DACS_HWV.doit
-include doit.dep
DACS_HWVclt.o : DACS_HWVcmd.cc
	$(COMPILE.clt) DACS_HWVcmd.cc
DACS_HWVcltoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/msg.oui
DACS_HWVcltoui.o : DACS_HWVcltoui.c
DACS_HWVcltnc.o : DACS_HWVcmd.cc
	$(COMPILE.cltnc) DACS_HWVcmd.cc
DACS_HWVcltncoui.c : $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
	$(OUI) $(OUIDIR)/kbdclt.oui $(OUIDIR)/nctable.oui $(OUIDIR)/msg.oui
DACS_HWVcltncoui.o : DACS_HWVcltncoui.c

tidy :
	rm -f $(OBJECT)
clean : tidy
	rm -f $(TARGET)
clean-dist : clean
$(IGNOREFILE) : Makefile
	@for i in $(OBJECT) $(IGNORE) $(TARGET); do echo "$$i"; done >$(IGNOREFILE)
waves0.cmd waves0.out waves0.tmc waves0.m : waves0.qcli
	qclicomp -o waves0.out -c waves0.cmd -d waves0.tmc \
	  -v waves0.log -m waves0.m waves0.qcli || \
	  ( rm -f waves0.out waves0.cmd waves0.tmc waves0.log waves0.m; false )
