c  precalculated lepton tensors for ZZ --> l lbar l' lbar' 
c  with Born kinematics
c
c  [ always write ze (zu) for the Z which goes to e+e- (mu+mu-) ]
c
c helicity identifiers for decay leptons
      integer hminb,hmaxb,hstepb
      parameter(hminb=1,hmaxb=4,hstepb=1)

c  lepton spinors and Z polarization vectors:
      double complex lep_born(6,hminb:hmaxb),lem_born(6,hminb:hmaxb),
     &               lup_born(6,hminb:hmaxb),lum_born(6,hminb:hmaxb)
      common /lspinor_born/ lep_born,lem_born,lup_born,lum_born
      
      double complex zep_born,zem_born,zup_born,zum_born,
     &               ze_born,zu_born,ae_born,au_born,
     &               xxea_born,xxua_born,
     &		     xxez_born,xxuz_born,
     &               zet_born,zut_born,aet_born,aut_born
      double precision qe_born, qu_born

      common/zemspinor_born/
     &                 ze_born(6,hminb:hmaxb),zu_born(6,hminb:hmaxb), 
     &                 ae_born(6,hminb:hmaxb),au_born(6,hminb:hmaxb), 
     &                 qe_born(0:4),qu_born(0:4),
     &                 xxea_born,xxua_born,xxez_born,xxuz_born,
     &                 zet_born(6,hminb:hmaxb),zut_born(6,hminb:hmaxb),
     &                 aet_born(6,hminb:hmaxb),aut_born(6,hminb:hmaxb)

c  leptonic tensors:
      double complex aazz_born,azzz_born,zazz_born,zzzz_born,
     &               wwzz5_born,wwzz6_born, 
     &		     aaee_born,azee_born,zaee_born,zzee_born,
     &               aauu_born,azuu_born,zauu_born,zzuu_born,
     &		     CCee_born,CCuu_born,CCee6_born,CCuu6_born,
     &		     azz_born,zzz_born
      common /tenszz_born/
     &               aazz_born(0:3,0:3,3,hminb:hmaxb),
     &               azzz_born(0:3,0:3,3,hminb:hmaxb),
     &  	     zazz_born(0:3,0:3,3,hminb:hmaxb),
     &               zzzz_born(0:3,0:3,3,hminb:hmaxb),
     &  	     wwzz5_born(0:3,0:3,3,hminb:hmaxb),
     &  	     wwzz6_born(0:3,0:3,3,hminb:hmaxb),
     &		     aaee_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     azee_born(0:3,0:3,2,3,hminb:hmaxb),
     &		     zaee_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     zzee_born(0:3,0:3,2,3,hminb:hmaxb),
     &		     aauu_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     azuu_born(0:3,0:3,2,3,hminb:hmaxb),
     &		     zauu_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     zzuu_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     CCee_born(0:3,0:3,2,3,hminb:hmaxb), 
     &  	     CCuu_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     CCee6_born(0:3,0:3,2,3,hminb:hmaxb),
     &  	     CCuu6_born(0:3,0:3,2,3,hminb:hmaxb),
     &		     azz_born(0:5,hminb:hmaxb),
     &               zzz_born(0:5,hminb:hmaxb)
