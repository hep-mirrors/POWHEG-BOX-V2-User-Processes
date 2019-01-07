c9  lepton spinors and polarization vectors
c
c  precalculated lepton tensors for WZ --> l v l' lbar' 
c	always write we (zu) for the W (Z) which goes to e ve (mu+mu-)
c
c helicity identifiers for decay leptons
      integer hminb,hmaxb,hstepb
      parameter(hminb=1,hmaxb=2,hstepb=1)
c
c  lepton spinors and V polarization vectors:

      double complex wl_born(6,hminb:hmaxb),wn_born(6,hminb:hmaxb),
     #	             lp_born(6,hminb:hmaxb),lm_born(6,hminb:hmaxb),
     #		     zbbar_born(6,hminb:hmaxb),zb_born(6,hminb:hmaxb)
      common /lspinor_born/ wl_born,wn_born,lp_born,lm_born,zbbar_born,
     #       zb_born
      
      integer ie_born,iu_born
      
      double complex we_born(6,hminb:hmaxb),au_born(6,hminb:hmaxb),
     #		    zu_born(6,hminb:hmaxb),
     #	     xxew_born, xxua_born,xxuz_born,
     #       wet_born(6,hminb:hmaxb),zut_born(6,hminb:hmaxb),
     #		    aut_born(6,hminb:hmaxb)
      double precision qe_born(0:4), qu_born(0:4)
      common /wzspinor_born/ we_born,au_born,zu_born,qe_born,qu_born,
     #	      wet_born,zut_born,aut_born,xxew_born,xxua_born,xxuz_born

c
c  leptonic tensors
      double complex zwwv_born(0:3,0:3,3,hminb:hmaxb),
     #		    awwv_born(0:3,0:3,3,hminb:hmaxb),
     #		     wzwv_born(0:3,0:3,3,hminb:hmaxb),
     #		    wawv_born(0:3,0:3,3,hminb:hmaxb),
     #		     aauu_born(0:3,0:3,2,3,hminb:hmaxb),
     #		    azuu_born(0:3,0:3,2,3,hminb:hmaxb),
     #		     zauu_born(0:3,0:3,2,3,hminb:hmaxb),
     #		    zzuu_born(0:3,0:3,2,3,hminb:hmaxb),
     #		     wwuu_born(0:3,0:3,2,3,hminb:hmaxb),
     #		     awen_born(0:3,0:3,2,3,hminb:hmaxb),
     #		    zwen_born(0:3,0:3,2,3,hminb:hmaxb),
     #		     waen_born(0:3,0:3,2,3,hminb:hmaxb),
     #		    wzen_born(0:3,0:3,2,3,hminb:hmaxb),
     #		     wwv_born(0:5,hminb:hmaxb)
      logical lws_born(8)
      common /tenswz_born/ zwwv_born,awwv_born,wzwv_born,wawv_born,
     #		     aauu_born,azuu_born,zauu_born,zzuu_born,wwuu_born,
     #		     awen_born,zwen_born,waen_born,wzen_born,wwv_born,
     #		     lws_born
