      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'pwhg_flg.h'
      include 'pwhg_physpar.h'
c     to define here rad_bottomthr2
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'pwhg_par.h'
      include 'minnlo_flg.h'
      real * 8 masswindow_low,masswindow_high,zmasslow,zmasshigh
      real *8 powheginput,pwhg_alphas
      external powheginput,pwhg_alphas
      logical verbose
      parameter(verbose=.true.)

      flg_minnlo=powheginput('#minnlo').eq.1
      flg_uubornonly=powheginput('#uubornonly').eq.1
c$$$      if (flg_uubornonly) then
c$$$         flg_bornonly = .true.
c$$$      endif
c     If minlo is not present in the input card, but minnlo is,
c     then set also flg_minlo to true, so that we are sure all is done
c     properly in setlocalscales and for all other occurencies of
c     flg_minlo.
      if(flg_minnlo) flg_minlo=.true.


      if(powheginput("#par_isrtinycsi").gt.0) 
     $     par_isrtinycsi = powheginput("#par_isrtinycsi")

      if(powheginput("#par_fsrtinycsi").gt.0) 
     $     par_fsrtinycsi = powheginput("#par_fsrtinycsi")

      if(powheginput("#par_isrtinyy").gt.0) 
     $     par_isrtinyy = powheginput("#par_isrtinyy")

      if(powheginput("#par_fsrtinyy").gt.0) 
     $     par_fsrtinyy = powheginput("#par_fsrtinyy")


      flg_withdamp=.true.
      flg_bornzerodamp=.true.
      if(powheginput('#withdamp').eq.0) then
         flg_withdamp=.false.
         flg_bornzerodamp=.false.
      endif




cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.398d0     
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.141d0
      ph_alphaem = powheginput("#alphaem")
      if (ph_alphaem.le.0d0) ph_alphaem = 1d0/128.89d0
      ph_Zmass = powheginput("#Zmass")
      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0     
      ph_Zwidth = powheginput("#Zwidth")
      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4952d0
      ph_sthw2 = powheginput("#sthw2")
      if (ph_sthw2.le.0d0) ph_sthw2 = abs(1d0-(ph_Wmass/ph_Zmass)**2)

c     number of light flavors
      st_nlight = 5
c Masses of light leptons for Z decays:
c     masses for reshuffling procedure of
c     outgoing particles.
c     If no keywords, will use old defaults, so
c     that backward compatibility is preserved
      physpar_ml(1)=powheginput('#lhfm/emass')
      if(physpar_ml(1).lt.0) physpar_ml(1)=0.000511d0
      physpar_ml(2)=powheginput('#lhfm/mumass')
      if(physpar_ml(2).lt.0) physpar_ml(2)=0.1057d0
      physpar_ml(3)=powheginput('#lhfm/taumass')
      if(physpar_ml(3).lt.0) physpar_ml(3)=1.777d0
ccccccccccccccccccccccccccccccc
c     to include Z->bbar
c     old defaults for b and c are 0 GeV, and they are
c     set in init_phys.f. We want now that 
c     - if vdecaymode=5, the bottom mass has always to be set 
c     to a nonzero value (and also the default value has to be
c     nonzero).
c     In this case, we also want to add a correction (1+as/pi).
c     By default this is switched on (ZbbNLO keyword).
c     - if vdecaymode is not 5, we want backward compatibility,
c     (as of revision 2364 this means that there is no reshuffling at all
c     for b and c quarks)
      ZbbNLO=.false.
      if(powheginput("#vdecaymode").eq.5) then
         ZbbNLO=powheginput('#ZbbNLO').ne.0
         if(ZbbNLO) then
            ZbbNLOfac=1+pwhg_alphas(ph_Zmass**2,st_lambda5MSB,5)/pi
            write(*,*) '*****************************************'
            write(*,*) 'Factor (1+as/pi) included for Z->bb decay'
            write(*,*) 'Numerical values is ',ZbbNLOfac
            write(*,*) '*****************************************'
         endif
c$$$  physpar_mq(4)=powheginput('#lhfm/cmass')
c$$$  if(physpar_mq(4).lt.0) physpar_mq(4)=1.5
         physpar_mq(5)=powheginput('#lhfm/bmass')
         if(physpar_mq(5).lt.0) physpar_mq(5)=5.0
c     to improve a bit on splittings that cannot be reshuffled...
         rad_bottomthr2=(2*physpar_mq(5))**2
      endif
ccccccccccccccccccccccccccccccc

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)
      ph_Zmass2 = ph_Zmass**2

c     set mass windows around Z-mass peak in unit of ph_Zwidth
c     It is used in the generation of the Born phase space
      zmasslow = powheginput("#min_Z_mass")
      zmasshigh = powheginput("#max_Z_mass")
      if(zmasslow.gt.0) then
         ph_Zmass2low=zmasslow**2
      else
         masswindow_low = 15
         ph_Zmass2low=max(0d0,ph_Zmass-masswindow_low*ph_Zwidth)
         ph_Zmass2low=ph_Zmass2low**2
      endif
      if(zmasshigh.gt.0) then
         ph_Zmass2high=zmasshigh**2
      else
         masswindow_high = 15
         ph_Zmass2high=(ph_Zmass+masswindow_high*ph_Zwidth)**2
      endif

      ph_ZmZw = ph_Zmass * ph_Zwidth

      ph_unit_e = sqrt(4*pi*ph_alphaem)

      if(verbose) then
      write(*,*) '*************************************'
      write(*,*) 'Z mass = ',ph_Zmass
      write(*,*) 'Z width = ',ph_Zwidth
c      write(*,*) 'W mass = ',ph_Wmass
c      write(*,*) 'W width = ',ph_Wwidth
      write(*,*) '1/alphaem = ',1d0/ph_alphaem
      write(*,*) 'alphaem = ',ph_alphaem
      write(*,*) 'sthw2 = ',ph_sthw2
      write(*,*) '(unit_e)^2 = ',ph_unit_e**2   
      write(*,*) '(g_w)^2 = ',ph_unit_e*ph_unit_e/ph_sthw2   
      write(*,*) '*************************************'
      write(*,*)
      write(*,*) '*************************************'
      write(*,*) sqrt(ph_Zmass2low),'< M_Z <',sqrt(ph_Zmass2high)
      write(*,*) '*************************************'
      endif

      end



