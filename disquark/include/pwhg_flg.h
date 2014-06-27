c -*- Fortran -*-

c flg_nlotest: perform calls to outfun for testing NLO output
c flg_withsubtr: counterterms are included in NLO test
c flg_withdamp: Born zero procedure
c flg_withreg: if regular regions exist or not
c flg_smartsig: remember or not equal squared amplitude
c flg_in_smartsig: set to true when the program is comuputing
c                  amplitudes to determine identical ones.
c                  Can be use to turn off kinematical cuts
c                  in the amplitudes
c flg_bornonly: do the Born contribution only
c flg_LOevents: generate events using only the Born. Real and virtual contributions
c               are identically zero

c CH: added the following flags: 
c flg_colsupp: use 1/N_c terms, too?
c flg_cc: consider the cc-process(es) as well
c flg_ownRCF: if true, the implemented CF-routine for the real-CFs is used, else the Powheg-one
c flg_gauge: if own-routines for real-qg used: choose LC or Feynman-gauge
c flg_keepdir: in the CS-like reshuffling-routine: either keep sq or antiq direction
c flg_restrict: restrict phase-space for the subtracted residuum
c flg_split: if =1, split the real-ME for qg in the IR-sing, non-res part and the res.part, which will be treated as regular; if =2, the interference-terms will be attributed to the regular part, too
c flg_submethod: method to use for on-shell-intermed. gluinos (0-> no subtraction, 1-> DS, 2-> DR, 3-> only res ME^2)
c flg_qgunexp: use the expansion for M_qg^2 or the unexpanded one
c flg_rad: when subtracting: for radiation-generation and modified reals: R might turn negative-> cut around the resonant gluino-mass 
c for sqantisq: flg_btilde: if flg_split!=0: distinguish real contributions for btilde and remnants...

c flg_lightpart_check: in genflavreglist perform or not perform the check
c                     that there are no coloured light partons before flst_lightpart

c flg_debug: outputs extra infos for radiation region and randon numbers on the LHEF   
c flg_withnegweights: allows negative weighted events
c flg_jacsing:  importance sampling for singular jacobians in case of massless FSR
c flg_weightedev:  allows weighted events
c flg_pdfreweight: outputs extra infos useful for pdf's reweighting on the LHEF
c flg_collremnsamp:  importance sampling for collinear remnants
c flg_reweight: outputs extra infos for reweighting LH events

      logical flg_nlotest,flg_withsubtr,flg_withdamp,flg_withreg,
     1     flg_smartsig,flg_in_smartsig,flg_bornonly,flg_debug,
     2     flg_withnegweights,
     3     flg_jacsing,flg_weightedev,flg_pdfreweight,flg_collremnsamp,
     4     flg_lightpart_check,flg_btlscalereal,flg_btlscalect,
     5     flg_bornzerodamp,flg_ckkwscalup,
     6     flg_minlo,flg_minlo_nnll,flg_minlo_real,
     7     flg_reweight,flg_newweight,flg_fastbtlbound,
     8     flg_storemintupb,flg_doublefsr,flg_monitorubound,
     9     flg_drscheme,flg_withresrad,flg_with_em,flg_em_rad,
     $     flg_LOevents,flg_evenmaxrat,flg_novirtual,
     $     flg_colsupp,flg_decay,
     4     flg_cuts,flg_cc,flg_ownRCF,flg_restrict,
     6     flg_btilde,flg_qgunexp,flg_rad
      integer flg_gauge,flg_keepdir, flg_submethod,flg_split


      character * 1 flg_btildepart
      character * 20 flg_processid
      common/pwhg_flg/flg_nlotest,flg_withsubtr,flg_withdamp,
     1     flg_withreg,flg_smartsig,flg_in_smartsig,
     2     flg_bornonly,flg_debug,flg_LOevents,
     3     flg_withnegweights,flg_jacsing,flg_weightedev,
     4     flg_pdfreweight,flg_collremnsamp,flg_lightpart_check,
     5     flg_btlscalereal,flg_btlscalect,
     6     flg_bornzerodamp,flg_ckkwscalup,
     7     flg_minlo,flg_minlo_nnll,flg_minlo_real,
     8     flg_reweight,flg_newweight,flg_fastbtlbound,
     9     flg_storemintupb,flg_doublefsr,flg_monitorubound,
     1     flg_drscheme,flg_withresrad,flg_with_em,flg_em_rad,
     2     flg_evenmaxrat,flg_novirtual,flg_colsupp,flg_decay,
     4     flg_cuts,flg_cc,flg_ownRCF,flg_restrict,
     6     flg_btilde,flg_qgunexp,flg_rad,
     6     flg_gauge,flg_keepdir, flg_submethod,flg_split,
     2     flg_btildepart,flg_processid
      save /pwhg_flg/
