      subroutine ww_init_couplings(perform_test)
      implicit none
      include 'ww_PhysPars.h'
      include 'ww_constants.f' 
      include 'ww_zcouple.f'  
      include 'ww_wcouple.f'  
      include 'ww_ewcharge.f'
      include 'ww_qcdcouple.f'
      include 'ww_anomcoup.f'
      include 'pwhg_st.h'
      include 'pwhg_physpar.h'
      logical verbose, perform_test
      parameter(verbose=.true.)
c$$$      physpar_ml(1)=0.511d-3
c$$$      physpar_ml(2)=0.1057d0
c$$$      physpar_ml(3)=1.777d0
c$$$      physpar_mq(1)=0.33d0     ! up
c$$$      physpar_mq(2)=0.33d0     ! down
c$$$      physpar_mq(3)=0.50d0     ! strange
c$$$      physpar_mq(4)=1.50d0     ! charm
c$$$      physpar_mq(5)=4.80d0     ! bottom

      if(physpar_ml(1).eq.0d0.or.physpar_ml(2).eq.0d0.or.
     $   physpar_ml(3).eq.0d0) then
         write(*,*) ''
         write(*,*) 'WARNING!'
         write(*,*) 'ww_init_couplings.f: some lepton masses are zero'
         write(*,*) ''
      endif
      if(physpar_mq(1).eq.0d0.or.physpar_mq(2).eq.0d0.or.
     $   physpar_mq(3).eq.0d0.or.physpar_mq(4).eq.0d0.or.
     $   physpar_mq(5).eq.0d0) then
         write(*,*) ''
         write(*,*) 'WARNING!'
         write(*,*) 'ww_init_couplings.f: some quark masses are zero'
         write(*,*) ''
      endif

c     number of light flavors used in evolution of alpha and in PDFs
c      st_nlight = 5
      st_nlight = 4 !PM hack to test nf=4 in pdfs

      if (perform_test) then
         call ww_smcouplings_test
      else
         call ww_smcouplings
      end if

      ! -- EW couplings
      ww_esq     = ww_ph_unit_e**2
      ww_gw      = ww_ph_unit_e/ww_ph_sthw
      ww_xw      = ww_ph_sthw2

      ! -- masses 
      ww_zmass  = ww_ph_Zmass
      ww_zwidth = ww_ph_Zwidth
      ww_wmass  = ww_ph_Wmass
      ww_wwidth = ww_ph_Wwidth

      
      ww_mp=(/-1d0,+1d0,-1d0,+1d0/)

      ww_Q=(/-2d0,1d0,-2d0,1d0,0d0,-1d0,2d0,-1d0,2d0/)
      ww_Q = ww_Q/3d0 

      ww_tau=(/-1d0,1d0,-1d0,1d0,0d0,-1d0,1d0,-1d0,1d0/)
      
c --- set W/Z couplings
      call ww_couplzw(ww_ph_sthw2)

c --- set anomalous couplings
      call ww_setanomcoup

      if (ww_anomtgc) then
         write(*,*) 'Anomalous couplings used:'
         write(*,*) 'Delta_g1(Z)', ww_delg1_z
         write(*,*) 'Delta_g1(Gamma)', ww_delg1_g
         write(*,*) 'Lambda(Z)', ww_lambda_z
         write(*,*) 'Lambda(Gamma)', ww_lambda_g
         write(*,*) 'Delta_K(Gamma)', ww_delk_g
         write(*,*) 'Delta_K(Z)', ww_delk_z
      endif

      if(verbose) then
      write(*,*) '*************************************'
      write(*,*) 'Z mass = ',ww_ph_Zmass
      write(*,*) 'Z width = ',ww_ph_Zwidth
      write(*,*) 'W mass = ',ww_ph_Wmass
      write(*,*) 'W width = ',ww_ph_Wwidth
      write(*,*) '1/alphaem = ',1d0/ww_ph_alphaem
      write(*,*) 'sthw2 = ',ww_ph_sthw2
      write(*,*) 'e**2  = ',ww_ph_unit_e**2
      write(*,*) '*************************************'
      endif

      end



      subroutine ww_setwzcoupl(a1,a2,id1,id2)
      implicit none
      include 'ww_vvsettings.f'
      include 'ww_PhysPars.h'
      integer a1,a2,id1,id2
      logical ww_isquark
      ww_idpart1=a1
      ww_idpart2=a2
      ww_normbr=1
      if(ww_isquark(id1)) then
         ww_normbr = ww_normbr*(1+ww_ph_deltas)*3
      endif
      if(ww_isquark(id2)) then
         ww_normbr = ww_normbr*(1+ww_ph_deltas)*3
      endif
      end
