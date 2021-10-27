%{
  #ifdef SERVER
    hsatod_setup_t QCLI_0_Waves[] = {
      {4000000, 4444, 1111, 4, 900, 900, QCLI_0_ICOS, 56},
      {50000000, 52600, 1052, 50, 799, 799, QCLI_0_ICOS, 26},
      {50000000, 106000, 2120, 50, 429, 429, QCLI_0_ICOS, 53},
      {10000000, 21200, 2120, 10, 450, 429, QCLI_0_ICOS, 53},
      {10000000, 198000, 198000, 1, 1, 50, QCLI_0_ICOS, 100000}
    };
  #endif
%}
&QCLI_0_Wave <int>
	: QCLI_0_slow { $0 = 0; }
	: QCLI_0 { $0 = 1; }
	: QCLI_0_full { $0 = 2; }
	: QCLI_0_10MHz { $0 = 3; }
	: QCLI_0_ConstantI { $0 = 4; }
	: Number %d {
	    if ( $2 < 0 || $2 >= 5 ) {
	      msg(2, "Specified waveform number %d out of range", $2 );
	      CANCEL_LINE;
	    } else $0 = $2;
	  }
	;
