%INTERFACE <SSP_0>
%INTERFACE <QCLI_0>

%{

#ifdef SERVER
  #include "hsatod.h"
  #define QCLI_ICOS \
      (HSAD_OPT_A|HSAD_OPT_B|HSAD_OPT_C|HSAD_TRIG_3|HSAD_TRIG_RISING)
  #define QCLI_0_ICOS QCLI_ICOS
  hsatod_setup_t SSP_0_setup;

  static struct sspqcli_s {
    hsatod_setup_t *setup;
    cmdif_rd *if_ssp;
  } sspqcli_bd[1] = {
    { &SSP_0_setup, &if_SSP_0 },
  };

#endif

%}
# &SSP returns an index into sspqcli_bd[]
&SSP <int>
  : SSP_0 { $0 = 0; }
  ;
# &QCLI returns an inteface
&QCLI <cmdif_rd *>
  : QCLI_0 { $0 = &if_QCLI_0; }
  ;
&command
  : Select QCLI_0 Waveform &QCLI_0_Wave * {
      *sspqcli_bd[0].setup = QCLI_0_Waves[$4];
      if_QCLI_0.Turf( "SW:%d\n", $4 );
    }
  ;
