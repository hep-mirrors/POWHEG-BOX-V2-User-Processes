c  precalculated lepton tensors for ZZ --> l lbar l' lbar' 
c  with real-emission kinematics
c
c  [ always write ze (zu) for the Z which goes to e+e- (mu+mu-) ]
c
c helicity identifiers for decay leptons
      integer hminr,hmaxr,hstepr
      parameter(hminr=1,hmaxr=4,hstepr=1)

c  lepton spinors and Z polarization vectors:
      double complex lep_real(6,hminr:hmaxr),lem_real(6,hminr:hmaxr),
     &               lup_real(6,hminr:hmaxr),lum_real(6,hminr:hmaxr)
      common /lspinor_real/ lep_real,lem_real,lup_real,lum_real
      
      double complex zep_real,zem_real,zup_real,zum_real,
     &               ze_real,zu_real,ae_real,au_real,
     &               xxea_real,xxua_real,
     &		     xxez_real,xxuz_real,
     &               zet_real,zut_real,aet_real,aut_real
      double precision qe_real, qu_real

      common/zemspinor_real/
     &       ze_real(6,hminr:hmaxr),zu_real(6,hminr:hmaxr), 
     &       ae_real(6,hminr:hmaxr),au_real(6,hminr:hmaxr), 
     &       qe_real(0:4),qu_real(0:4),
     &       xxea_real,xxua_real,xxez_real,xxuz_real,
     &       zet_real(6,hminr:hmaxr),zut_real(6,hminr:hmaxr),
     &       aet_real(6,hminr:hmaxr),aut_real(6,hminr:hmaxr)

c  leptonic tensors:
      double complex aazz_real,azzz_real,zazz_real,zzzz_real,
     &               wwzz5_real,wwzz6_real, 
     &		     aaee_real,azee_real,zaee_real,zzee_real,
     &               aauu_real,azuu_real,zauu_real,zzuu_real,
     &		     CCee_real,CCuu_real,CCee6_real,CCuu6_real,
     &		     azz_real,zzz_real
      common /tenszz_real/
     &               aazz_real(0:3,0:3,3,hminr:hmaxr),
     &               azzz_real(0:3,0:3,3,hminr:hmaxr),
     &  	     zazz_real(0:3,0:3,3,hminr:hmaxr),
     &               zzzz_real(0:3,0:3,3,hminr:hmaxr),
     &  	     wwzz5_real(0:3,0:3,3,hminr:hmaxr),
     &  	     wwzz6_real(0:3,0:3,3,hminr:hmaxr),
     &		     aaee_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     azee_real(0:3,0:3,2,3,hminr:hmaxr),
     &		     zaee_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     zzee_real(0:3,0:3,2,3,hminr:hmaxr),
     &		     aauu_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     azuu_real(0:3,0:3,2,3,hminr:hmaxr),
     &		     zauu_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     zzuu_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     CCee_real(0:3,0:3,2,3,hminr:hmaxr), 
     &  	     CCuu_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     CCee6_real(0:3,0:3,2,3,hminr:hmaxr),
     &  	     CCuu6_real(0:3,0:3,2,3,hminr:hmaxr),
     &		     azz_real(0:5,hminr:hmaxr),
     &               zzz_real(0:5,hminr:hmaxr)
