      subroutine set_strong_params
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'strongcorr.h'
      real * 8 pwhg_alphas
      external pwhg_alphas
      real * 8 muf,mur
      real * 8 powheginput
      external powheginput

c.....mauro-pair b
      include 'pwhg_em.h'
      real*8 saveaem0
      common/csaveaem0/saveaem0
c.....mauro-pair e      
      
      call set_fac_ren_scales(muf,mur)
      st_mufact2= muf**2*st_facfact**2
      st_muren2 = mur**2*st_renfact**2
      if(.not.strongcorr) then
c cannot be set to 0; the stupid gymnastics POWHEG does
c with it prevents it.
         st_alpha = 1d-17
      else
         st_alpha  = pwhg_alphas(st_muren2,st_lambda5MSB,st_nlight)
      endif

c.....mauro-pair e            
      em_alpha=saveaem0
c.....mauro-pair b      
      
      end

      subroutine setscalesbtilde
      implicit none
      include 'pwhg_flg.h'
c signal we will begin by computing Born type contributions
      flg_btildepart='b'
      call set_strong_params
      end

      subroutine setscalesbtlreal
      implicit none
      include 'pwhg_flg.h'
      logical ini
      data ini/.true./
      save ini
      real * 8 powheginput
      external powheginput
      if(ini) then
         if(powheginput("#btlscalereal").eq.1d0) then
            flg_btlscalereal=.true.
         else
            flg_btlscalereal=.false.
         endif
         ini=.false.
      endif
      if(flg_btlscalereal) then
c if this is active we may compute scales that depends upon
c the real kinematics; the user routine set_fac_ren_scales
c should test the flag flg_btildepart to see if this is the case
         flg_btildepart='r'
         call set_strong_params
      endif
      end

      subroutine setscalesbtlct
      implicit none
      include 'pwhg_flg.h'
      logical ini
      data ini/.true./
      save ini
      real * 8 powheginput
      external powheginput
      if(ini) then
         if(powheginput("#btlscalereal").eq.1d0) then
            flg_btlscalereal=.true.
         else
            flg_btlscalereal=.false.
         endif
         if(powheginput("#btlscalect").eq.1d0) then
            flg_btlscalect=.true.
         else
            flg_btlscalect=.false.
         endif
      endif
      if(flg_btlscalereal.and.flg_btlscalect) then
c signal we will begin by computing counterterm contributions, in cases
c when it is desirable to have the scales of the counterterm differ from
c those of the real term (the token btlscalect selects this case)
c The user routine should test the flag flg_btildepart to see if
c we are in a counterterm.
         flg_btildepart='c'
         call set_strong_params
      endif
      end

      subroutine set_rad_scales(ptsq)
      implicit none
      real * 8 ptsq
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
      include 'pwhg_rad.h'
      include 'pwhg_flg.h'
      include 'pwhg_pdf.h'
c.....mauro-pair b
      include 'pwhg_em.h'
      real*8 running_aem
c.....mauro-pair e      
      real * 8 pwhg_alphas
      integer nf
      external pwhg_alphas
ccccccccccccccccccccccccccccccccc
c     SAER FIX
      real * 8 q2min
      character * 3 whichpdfpk
      external whichpdfpk
      integer ini,mem
      data ini/0/
      save ini,q2min
c.....mauro-pair b
      real*8 saveaem0
      common/csaveaem0/saveaem0
c.....mauro-pair e      


      
      if (ini.eq.0) then
         if( whichpdfpk().eq.'lha') then
            continue
         elseif( whichpdfpk().eq.'mlm') then    
            continue
         else
            write(*,*) ' unimplemented pdf package',whichpdfpk()
            call exit(-1)
         endif 
        ini=1
      endif

      st_mufact2=max(pdf_q2min,ptsq) 

cccccccccccccccccccccccccccccccccc
c     In case of final-state radiation, Born and real PDF's
c     should always cancel out in the ratio R/B. If the radiation scale
c     is too low, this cancellation can be spoilt because PDF's can vanish,
c     typically when a heavy flavour is present as initial state.
c     To prevent this, we use a scale higher than the heavy-flavour
c     threshold, so that PDF's are evaluated with a safe value for
c     mufact (50 is an arbitrary choice).
      if(rad_kinreg.ge.2) st_mufact2=50.**2
      st_muren2=ptsq
c.....mod: taken from res (for )
c      st_alpha = pwhg_alphas(st_muren2,st_lambda5MSB,-1)
      if (flg_em_rad) then
c     any value will do: in the R/B ratio, it will cancel
         st_alpha = pwhg_alphas(rad_ptsqmin,st_lambda5MSB,-1)
c.....mauro-pair b
         if(rad_kinreg.ge.2) then
            call running_aem_lep(ptsq,running_aem)
            em_alpha=running_aem
         else ! running alpha only for the FSR
            em_alpha=saveaem0
         endif
c.....mauro-pair e         
      else
         st_alpha = pwhg_alphas(st_muren2,st_lambda5MSB,-1)
      endif
c.....mod      
      if(st_muren2.lt.rad_charmthr2) then
         nf=3
      elseif(st_muren2.lt.rad_bottomthr2) then
         nf=4
      else
         nf=5
      endif
      st_alpha = st_alpha *
     #   (1+st_alpha/(2*pi)*((67d0/18-pi**2/6)*ca-5d0/9*nf))
      end

      subroutine init_rad_lambda
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'pwhg_pdf.h'
      real * 8 b0,mu0sq,as,pwhg_alphas
      external pwhg_alphas
      b0=(33-2*5)/(12*pi)
      mu0sq=(2*st_lambda5MSB)**2
c.....mauro-lhapdfAS-b
ccccccccccccc
c                         !: 20-05-2016: Improvement: rather than freezing CMW alphas, in
c     order to avoid that aCMW/alphas0 exceeds 1 (which creates an
c     upper-bound violation when generating ISR), it's enough to just
c     increase a bit the scale at which aCMW (computed starting from the
c     running of LHAPDF) is matched to alphas0. This scale is mu0sq.
c     Using 4*lambda rather than 2*lambda was found empirically. Notice
c     that this should not affect physics result, since the cutoff on
c     radiation is above mu0sq, i.e. rad_ptsqmin > mu0sq.
      if(pdf_alphas_from_PDF) then
         mu0sq=(4*st_lambda5MSB)**2
      else
         mu0sq=(2*st_lambda5MSB)**2
      endif
c     Moreover, pwhg_alphas0 can be called always with nlc=5, so
c     changing nlc in this file and in gen_radiation.f is not needed
c     anymore. Recall that alphas0 is just used as a function that
c     should be bigger than aCMW through all the pt region that can be
c     probed when generating ISR (BOX paper, E.2). For single top, I
c     have kept these changes, but there was no real reason to do so.

c     Notice that in this way we can reproduce exactly what we run for the
c     WWJ-MiNLO paper, as well as for the WW@NNLOPS paper
ccccccccccc
c.....mauro-lhapdfAS-e      
c running value of alpha at initial scale (see notes: running_coupling)
      as=pwhg_alphas(mu0sq,st_lambda5MSB,-1)
c for better NLL accuracy (FNO2006, (4.32) and corresponding references)
      as=as*(1+as/(2*pi)*((67d0/18-pi**2/6)*ca-5d0/9*3))
      rad_lamll=sqrt(exp(-1/(b0*as))*mu0sq)
      end

      function pwhg_alphas0(q2,xlam,inf)
      implicit none
      real * 8 pwhg_alphas0,q2,xlam
      integer inf
      real * 8 pi
      parameter (pi=3.141592653589793d0)
      real * 8 b0
      b0=(33-2*inf)/(12*pi)
      pwhg_alphas0=1/(b0*log(q2/xlam**2))
      end
      
C----------------------------------------------------------------------------
C-------------------------------------------------------------------
C------- ALPHA QCD -------------------------------------
c Program to calculate alfa strong with nf flavours,
c as a function of lambda with 5 flavors.
c The value of alfa is matched at the thresholds q = mq.
c When invoked with nf < 0 it chooses nf as the number of
c flavors with mass less then q.
c
      function pwhg_alphas(q2,xlam,inf)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'pwhg_pdf.h'
      real * 8 pwhg_alphas,q2,xlam
      integer inf
      real * 8 pi
      parameter (pi=3.141592653589793d0)
      real * 8 olam,b5,bp5,b4,bp4,b3,bp3,xlc,xlb,xllc,xllb,c45,c35,
     # xmc,xmb
      real * 8 q,xlq,xllq
      integer nf
      data olam/0.d0/
      save olam,b5,bp5,b4,bp4,b3,bp3,xlc,xlb,xllc,xllb,c45,c35,xmc,xmb

c.....mauro-lhapdfAS-b
      real*8 alphasfrompdf
      external alphasfrompdf
      logical ini
      data ini/.true./
      save ini

      if(ini) then
         if(pdf_alphas_from_PDF) then
            write(*,*) '********************************'
            write(*,*) '    Using alpha_s from LHAPDF'
            write(*,*) '    alphas(mz=91.1876) = ',alphasfrompdf(91.1876d0)
            write(*,*) '********************************'
         endif
         ini=.false.
      endif

      
c.....mauro-lhapdfAS-e            
c      logical ini
c      data ini/.true./
c      save ini
c      pwhg_alphas = 30d0
c      if (ini) then
c         write(*,*) '****************************************'
c         write(*,*) '****************************************'
c         write(*,*) '      RETURN alpha_s = ',pwhg_alphas
c         write(*,*) '****************************************'
c         write(*,*) '****************************************'
c         ini = .false.         
c      endif           
c      return

      if(xlam.ne.olam) then
        olam = xlam
        xmc=sqrt(rad_charmthr2)
        xmb=sqrt(rad_bottomthr2)
        b5  = (33-2*5)/pi/12
        bp5 = (153 - 19*5) / pi / 2 / (33 - 2*5)
        b4  = (33-2*4)/pi/12
        bp4 = (153 - 19*4) / pi / 2 / (33 - 2*4)
        b3  = (33-2*3)/pi/12
        bp3 = (153 - 19*3) / pi / 2 / (33 - 2*3)
        xlc = 2 * log(xmc/xlam)
        xlb = 2 * log(xmb/xlam)
        xllc = log(xlc)
        xllb = log(xlb)
        c45  =  1/( 1/(b5 * xlb) - xllb*bp5/(b5 * xlb)**2 )
     #        - 1/( 1/(b4 * xlb) - xllb*bp4/(b4 * xlb)**2 )
        c35  =  1/( 1/(b4 * xlc) - xllc*bp4/(b4 * xlc)**2 )
     #        - 1/( 1/(b3 * xlc) - xllc*bp3/(b3 * xlc)**2 ) + c45
      endif
      q   = sqrt(q2)
      xlq = 2 * log( q/xlam )
      xllq = log( xlq )
      nf = inf
c.....mauro-lhapdfAS-b
      if(pdf_alphas_from_PDF) then
         pwhg_alphas=alphasfrompdf(q)
      else
c.....mauro-lhapdfAS-e      
         if( nf .lt. 0) then
            if( q .gt. xmb ) then
               nf = 5
            elseif( q .gt. xmc ) then
               nf = 4
            else
               nf = 3
            endif
         endif
         if    ( nf .eq. 5 ) then
            pwhg_alphas = 1/(b5 * xlq) -  bp5/(b5 * xlq)**2 * xllq
         elseif( nf .eq. 4 ) then
            pwhg_alphas =
     #1/( 1/(1/(b4 * xlq) - bp4/(b4 * xlq)**2 * xllq) + c45 )
         elseif( nf .eq. 3 ) then
            pwhg_alphas =
     #1/( 1/(1/(b3 * xlq) - bp3/(b3 * xlq)**2 * xllq) + c35 )
         else
            print *,'error in alfa: unimplemented # of light flavours',nf
            call exit(1)
         endif
c.....mauro-lhapdfAS-b
      endif
c.....mauro-lhapdfAS-e      
      return
      end

c.....mauro-pair b
      subroutine running_aem_lep(ptsq,out)
      implicit none
      real*8 ptsq,out
      real*8 saveaem0
      common/csaveaem0/saveaem0
      real*8 vpol
      external vpol
c balpha b
      real*8 ame,ammu,convfac,balpha,pi     
      common/parameters/ame,ammu,convfac,balpha,pi
      save /parameters/
      integer iarun
      common/ialpharunning/iarun
      save /ialpharunning/
      real*8 q2,pippo
      integer ini
      data ini/0/
      save ini
      real * 8 powheginput
      external powheginput
      include 'pwhg_physpar.h'
      if(ini.eq.0) then
         ini=1
         iarun = 0
         if(powheginput("#emalpharunnning").eq.1d0) iarun  = 1
         ame    =me
         ammu   =mm
         convfac=389379.65999999997d0
         pi     =3.1415926535897931d0
      endif
      balpha  =saveaem0
c qui solo per il debug       
c      out = saveaem0


      out  = vpol(ptsq)*saveaem0

c      write(*,*)'end q2,a0,a',ptsq,saveaem0,out

      
      end subroutine running_aem_lep
c.....mauro-pair e      
c.....below the routines for the running of alpha_elm

* VACUUM POLARIZATION: ALPHA(0)->ALPHA(0)*VPOL(Q2)
      FUNCTION VPOL(Q2) 
!     essentially from BABAYAGA
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION AMASSES(4)
      common/parameters/ame,ammu,convfac,balpha,pi     
      common/ialpharunning/iarun

      vpol = 1.d0
      if (iarun.eq.0) return

      amasses(1) = ame
      amasses(2) = ammu

      SOMMA=0.D0
      DO I=1,2
         SOMMA=SOMMA+SUMMA(AMASSES(I),Q2,I)
      ENDDO

      DBALPHA=BALPHA/PI*SOMMA 
      VPOL=1.D0/(1.D0-DBALPHA)      


      
      
      RETURN
      END
*----------------------------------------------------------
* LEPTONIC AND TOP CONTRIBUTION TO VACUUM POLARIZATION
      FUNCTION SUMMA(AM,Q2,I)
! from BABAYAGA, previous releases
      IMPLICIT REAL*8 (A-H,O-Z)
      REAL*8 NC(4),QF2(4)
      data nc  /1.d0,1.d0,1.d0,3.d0/
      data qf2 /1.d0,1.d0,1.d0,0.44444444444444444444d0/
* NC AND QF ARE COLOR FACTOR (1 FOR LEPTONS, 
* 3 FOR TOP) AND CHARGE**2
      AM2=AM**2
      IF (Q2.GE.0.D0.AND.Q2.LT.(4.D0*AM2)) THEN
         SQ=SQRT(4.D0*AM2/Q2-1.D0)     
         SUMMA=NC(I)*QF2(I)*(-5.D0/9.D0-(4.D0/3.D0)*(AM2/Q2)+
     >        (4.D0/3.D0*(AM2/Q2)**2+1.D0/3.D0*AM2/Q2-1.D0/6.D0)*
     >        4.D0/SQ*ATAN(1.D0/SQ))
      ELSE
         SQ=SQRT(1.D0-4.D0*AM2/Q2)
         ARGLOG=ABS((1.D0-SQ)/(1.D0+SQ))
         SUMMA=NC(I)*QF2(I)*(-5.D0/9.D0-(4.D0/3.D0)*(AM2/Q2)+
     >        (4.D0/3.D0*(AM2/Q2)**2+1.D0/3.D0*AM2/Q2-1.D0/6.D0)*
     >        2.D0/SQ*LOG(ARGLOG))
      ENDIF
      RETURN
      END


      
c alpha e
