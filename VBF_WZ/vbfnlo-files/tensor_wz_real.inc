c  lepton spinors and polarization vectors
c
c  precalculated lepton tensors for WZ --> l v l' lbar' 
c	always write we (zu) for the W (Z) which goes to e ve (mu+mu-)
c
c helicity identifiers for decay leptons
      integer hminr,hmaxr,hstepr
      parameter(hminr=1,hmaxr=2,hstepr=1)
c
c  lepton spinors and V polarization vectors:

      double complex wl_real(6,hminr:hmaxr),wn_real(6,hminr:hmaxr),
     &	             lp_real(6,hminr:hmaxr),lm_real(6,hminr:hmaxr),
     &		     zbbar_real(6,hminr:hmaxr),zb_real(6,hminr:hmaxr)     
      common /lspinor_real/ wl_real,wn_real,lp_real,lm_real,zbbar_real,
     #		zb_real
      
      integer ie_real,iu_real
      
      double complex we_real(6,hminr:hmaxr),au_real(6,hminr:hmaxr),
     &	     zu_real(6,hminr:hmaxr),
     #	     xxew_real, xxua_real,xxuz_real,
     #       wet_real(6,hminr:hmaxr),zut_real(6,hminr:hmaxr),
     &	     aut_real(6,hminr:hmaxr)
      double precision qe_real(0:4), qu_real(0:4)
      common /wzspinor_real/ we_real,au_real,zu_real,qe_real,qu_real,
     #	      wet_real,zut_real,aut_real,xxew_real,xxua_real,xxuz_real

c
c  leptonic tensors
      double complex zwwv_real(0:3,0:3,3,hminr:hmaxr),
     #		     awwv_real(0:3,0:3,3,hminr:hmaxr),
     #		     wzwv_real(0:3,0:3,3,hminr:hmaxr),
     #		     wawv_real(0:3,0:3,3,hminr:hmaxr),
     #		     aauu_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     azuu_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     zauu_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     zzuu_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     wwuu_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     awen_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     zwen_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     waen_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     wzen_real(0:3,0:3,2,3,hminr:hmaxr),
     #		     wwv_real(0:5,hminr:hmaxr)
      logical lws_real(8)
      common /tenswz_real/ zwwv_real,awwv_real,wzwv_real,wawv_real,
     #		     aauu_real,azuu_real,zauu_real,zzuu_real,wwuu_real,
     #		     awen_real,zwen_real,waen_real,wzen_real,wwv_real,
     #		     lws_real
