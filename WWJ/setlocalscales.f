      subroutine setlocalscales(iuborn,imode,rescfac)
c returns the rescaling factor including sudakov form factors and
c coupling rescaling, for Born (imode=1) and NLO corrections (imode=2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      include 'pwhg_math.h'
      integer iuborn,imode
      real * 8 rescfac,expsudakov,expsud,sudakov,pwhg_alphas
      real * 8 ptww2,mww2,mu2,alphas,b0,optww2,omww2,orescfac,omuf2
      real * 8 pww(0:3)
      integer oimode,i,flav
      save optww2,omww2,orescfac,oimode,omuf2
      data optww2/-1d0/
      logical ini
      data ini/.true./
      save ini
      real * 8 powheginput,factsc2min,frensc2min,as,y,b1
      save factsc2min,frensc2min,b0,b1
      integer imax
c      real * 8 rescfac1,rescfac2
c      common /crescfac/rescfac1,rescfac2
      real*8   p_in(0:3,nlegborn)
      integer  flavs_in(nlegborn)
      real*8   p_out(0:3,nlegborn-1)
      integer  flavs_out(nlegborn-1)
      integer  ixx,mu
      logical  seen_before
      real*8   prev_p_out(0:3,nlegborn-1)
      integer  prev_flavs_out(nlegborn-1)
      save     prev_p_out
      save     prev_flavs_out
      real*8   B2correction

      if(ini) then
         factsc2min = powheginput("#factsc2min")
         frensc2min = powheginput("#frensc2min")
         if(factsc2min.lt.0) factsc2min = 0
         if(frensc2min.lt.0) frensc2min = 1
         b0=(33d0-2d0*st_nlight)/(12*pi)
         b1=(153d0-19d0*st_nlight)/(24*pi**2)
         ini = .false.
      endif



      rescfac = 1

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCC   These lines are process dependent!!!!!!
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      if (flst_born(3,iuborn).eq.25 .and. abs(flst_born(4,iuborn)).le.6) 
     $     then
c     gg -> H production
c     Sudakov for a gluon 
         flav=0
      else  
c     Sudakov for a quark
         flav=1  ! any value different from zero
      endif

c     pww(0:3) is the colourless "boson" momentum
      pww(:)=0d0
c     sum over colourless particles (they must all come from boson decays)
      do i=3,nlegborn
c     the sequence of colourless particles is unchanged in the Born and in the real flavour list
         if (abs(flst_born(i,iuborn)).gt.6) then
            if(flg_minlo_real) then
               pww(:)=pww(:) + kn_cmpreal(:,i)
            else
               pww(:)=pww(:) + kn_cmpborn(:,i)
            endif
         endif
      enddo

      ptww2 = pww(1)**2 + pww(2)**2 ! transverse momentum squared
      mww2  = pww(0)**2 - pww(3)**2 - ptww2 ! invariant mass squared

      p_in=kn_pborn
      flavs_in(:)=flst_born(:,iuborn)
      call getWWprojection(p_in,flavs_in,p_out,flavs_out)
      seen_before=.true.
      do ixx=1,nlegborn-1
         do mu=0,3
            if(p_out(mu,ixx).ne.prev_p_out(mu,ixx)) then
               seen_before=.false.
            endif
         enddo
         if(prev_flavs_out(ixx).ne.flavs_out(ixx)) then
            seen_before=.false.
         endif
      enddo

      if(imode.eq.oimode.and.ptww2.eq.optww2.and.mww2.eq.omww2
     $        .and.seen_before) then
         rescfac=orescfac
         st_mufact2=omuf2
         return
      else
         optww2=ptww2
         omww2=mww2
         oimode=imode
         prev_p_out=p_out
         prev_flavs_out=flavs_out
      endif
c      if(st_renfact**2*ptww2.lt.frensc2min*st_lambda5MSB**2) then
c         rescfac=0
c         return
c      endif

      call computeB2correction(p_out,flavs_out,B2correction)
      
      if (abs(B2correction).gt.100d0) then
         rescfac=sqrt(-p_out(0,1)**2) ! set rescfac to NaN if B2 is too large
         return
      end if

      as=pwhg_alphas(mww2,st_lambda5MSB,st_nlight)
      y = -as*b0*log(st_renfact**2*ptww2/mww2)

      if(y.ge.1) then
         rescfac = 0d0
         orescfac = 0d0
c         rescfac1 = rescfac
         return
      endif
      
      if(ptww2.gt.mww2) then
         rescfac = 1d0
         expsud = 0d0
      else
         rescfac = sudakov(ptww2,mww2,flav,B2correction)**2
         expsud  = 2 * expsudakov(ptww2,mww2,flav)
      endif

c      rescfac1 = rescfac


c     alpha_s reweighting
      mu2=ptww2*st_renfact**2
      st_mufact2=max(ptww2*st_facfact**2,factsc2min)
      omuf2=st_mufact2
      alphas=as/(1-y)-as**2*b1*log(1-y)/(b0*(1-y)**2) 

c      write(*,*) "ratio ==>",alphas/pwhg_alphas(st_renfact**2*ptww2,
c     $      st_lambda5MSB,st_nlight)

      if(imode.eq.2) then
         rescfac = rescfac * (alphas/st_alpha)**2
      else
         rescfac = rescfac * (alphas/st_alpha)
         if(.not.flg_bornonly) then
            rescfac = rescfac * 
     1           (1+alphas*(expsud+b0*log(mu2/st_muren2)))
         endif
      endif
      orescfac=rescfac

c      rescfac2 = rescfac

      end


C     Inputs:                                      
C     *******                                      
C     q2h  - Upper node scale / bound on Sudakov   
C     q20  - Lower node scale / bound on Sudakov   
C     flav - flavour index for the evolving parton 
C                                                  
C     Outputs:                                     
C     ********                                     
C     sudakov - The Sudakov form factor         
      function sudakov(q20,q2h,flav,B2correction)
      implicit none
      real * 8 sudakov,q2h,q20
      integer flav
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      include 'pwhg_math.h'
      real * 8 lam2,b0,y,as,pwhg_alphas
      logical isQuark
      real * 8 theExponentN
      real * 8 powheginput
      logical ini,sudscalevar
      data ini/.true./
      save ini,sudscalevar,b0
      real * 8 B2correction

      if(ini) then
         if(powheginput("#sudscalevar").eq.0) then
            sudscalevar = .false.
         else
            sudscalevar = .true.
         endif
         b0 = (11*CA-2d0*st_nlight)/(12*pi)
         ini = .false.
      endif
      if(sudscalevar) then
         lam2=st_lambda5MSB**2 / st_renfact**2
      else
         lam2=st_lambda5MSB**2
      endif

c     running coupling coefficients 
      as=pwhg_alphas(q2h,st_lambda5MSB,st_nlight)
      y = -as*b0*log(q20*st_renfact**2/q2h)

      if (y .ge. 1) then 
         sudakov = 0d0 
         return 
      endif

      if(sudscalevar) then
         if(q2h.le.q20*st_renfact**2) then
            sudakov=1
            return
         endif
      else
         if(q2h.le.q20) then
            sudakov=1
            return
         endif
      endif
      if(flav.eq.0) then
         isQuark=.false.
      else
         isQuark=.true.
      endif

      if(flg_minlo_nnll) then
         call sudakov_exponent(q20,q2h,theExponentN,isQuark,1,
     $                         B2correction)
      else
         call sudakov_exponent(q20,q2h,theExponentN,isQuark,2,
     $                         B2correction)
      endif

      sudakov=exp(theExponentN)

      end

C     Inputs:                                      
C     *******                                      
C     q2h  : Upper node scale / bound on Sudakov   
C     q20  : Lower node scale / bound on Sudakov   
C     flav : flavour index for the evolving parton 
C                                               
C     Outputs:                                     
C     ********                                     
C     expsudakov : the expansion at order alpha_s of the exponent of the Sudakov form factor
c                  with a minus sign in front, without the alpha_s factor.
c     See Eq. (2.9) of arXiv:1212.4504
      function expsudakov(q20,q2h,flav)
      implicit none
      real * 8 expsudakov,q2h,q20
      integer flav
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'pwhg_flg.h'
      real * 8 b0,logf,m2,a1,b1,llog
      real * 8 powheginput
      logical ini,sudscalevar
      data ini/.true./
      save ini,sudscalevar,b0

      if(ini) then
         if(powheginput("#sudscalevar").eq.1) then
            sudscalevar = .true.
         else
            sudscalevar = .false.
         endif
         b0=(11*CA-2*st_nlight)/(12*pi)
         ini = .false.
      endif

      if(sudscalevar) then
         logf = log(st_renfact)
         m2 = q20*st_renfact**2
      else
         logf = 0
         m2 = q20
      endif

      if(q2h.le.m2.or.flg_bornonly) then
         expsudakov=0
         return
      endif

      if(flav.eq.0) then
         A1 =  CA
         B1 = -(11d0*CA-2d0*st_nlight)/6 
      else
         A1 = CF 
         B1 = -3d0/2*CF
      endif

c     we need the coefficients for A(as) and B(as) written as
c     A(as) = sum_n A_n (as)^n,     B(as) = sum_n B_n (as)^n,   i.e. no "pi" factors
      A1 = A1/pi
      B1 = B1/pi
c     introduce scale dependence
      B1 = B1 + 2*A1*logf 
c     Add an extra 1/2 in front of the expansion, since this is the sqrt of the final Sudakov
c     Add an overall minus sign, since this is to be subtracted to the Bbar function 
      llog = log(m2/q2h)
      expsudakov = -1d0/2 * (-1d0/2 * A1 * llog**2 + B1 * llog) ! Eq. (2.9) of arXiv:1212.4504
      end



C     The integral of the Sudakov exponent. See appendix A and B of arXiv:1212.4504      
C     isQuark = .true. for a quark propagator                        
C     theAccuracy = 0 for 1-loop alphaS and A2=B2=0,                 
C                 = 1 for 2-loop alphaS and Powheg A & B coeffs      
C                 = 2 for 2-loop alphaS and NLL A & B coeffs         
C                                                                     
      subroutine sudakov_exponent(q20,q2h,theExponent,
     $     isquark,theAccuracy,B2correction)
      implicit none 
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      logical isQuark 
      integer theAccuracy
      real * 8 q2h,q20,theExponent
      real * 8 b0,be1,be2
      real * 8 A1,A2,A3
      real * 8 B1,B2
      real * 8 y, as
      real * 8 nf,K,logf,q20_lcl  
      real * 8 EulerGamma,zeta3  
      real * 8 f0,f1,f2,omy,lomy
      real * 8 pwhg_alphas,powheginput
      external pwhg_alphas,powheginput
      logical ini,sudscalevar
      data ini/.true./
      save ini,sudscalevar
      parameter (zeta3 = 1.2020569031595942854d0)
      parameter (EulerGamma = 0.57721566490153286061d0)
      real * 8 B2correction

      if(ini) then
         if(powheginput("#sudscalevar").eq.1) then
            sudscalevar = .true.
         else
            sudscalevar = .false.
         endif
         ini = .false.
      endif

      if(sudscalevar) then
         logf = log(st_renfact)
         q20_lcl = q20*st_renfact**2
      else
         logf = 0d0
         q20_lcl = q20 
      endif


      nf = st_nlight         
c     running coupling coefficients 
c     d alpha/d log mu^2=-b0 alpha^2 - be1 alpha^3 -be2 alpha^4
      b0 = (11d0*CA-2d0*nf)/(12*pi)
      be1 = (153d0 - 19d0*nf)/(24*pi**2)
      be2 = 0d0                 ! not needed 
      K = (67d0/18d0-Pi**2/6d0)*CA-5d0/9d0*nf

      as=pwhg_alphas(q2h,st_lambda5MSB,st_nlight)
      y = -as*b0*log(q20_lcl/q2h)

      if (y .ge. 1) then 
         write(*,*) '-------> y',y
         theExponent = -1000d0 
         return 
      endif

c     Sudakov exponent coefficients for 
c     A(as) = sum_n A_n (as/pi)^n,     B(as) = sum_n B_n (as/pi)^n,    
c     A1, A2, B1, B2 taken from Catani, de Florian, Grazzini, hep-ph/0008184
      if (isQuark) then 
         A1 = CF  
         A2 = CF*K/2
         A3 = 0d0 ! not needed 
         B1 = -3d0/2*CF 
         B2 =  (CF**2 * (Pi**2-3d0/4-12*zeta3)
     $        + CF*CA * (11d0*Pi**2/9-193d0/12+6*zeta3)
     $        + CF*nf*0.5 * (17d0/3-4d0/9*Pi**2))/4
      else
         A1 = CA
         A2 = CA*K/2
         A3 = 0d0 ! not needed 
         B1 = -(11d0*CA-2d0*nf)/6
         B2 = ( CA**2 * (23d0/6+22*Pi**2/9-6*zeta3)
     $        + 2*CF*nf
     $        - CA*nf*(1d0/3+4d0*Pi**2/9) - 11d0/2*CA*CF)/4
      endif

c     we need the coefficients for A(as) and B(as) written as
c     A(as) = sum_n A_n (as)^n,     B(as) = sum_n B_n (as)^n,   i.e. no "pi" factors
      A1 = A1/pi
      B1 = B1/pi
      A2 = A2/pi**2
      B2 = B2/pi**2

c     qT space conversion
      B2 = B2 + 2*A1**2*zeta3

c     add logf dependence 
      B2 = B2 + 2*A2*logf + 2*b0*A1*logf**2 
      A2 = A2 + 2*b0*A1*logf
      B1 = B1 + 2*A1*logf 

c     scale variation induced by the scale variation of the H factor 
      B2 = B2 + 2*(st_bornorder-1)*b0**2*logf

C - Correct process dependent bit of B2 from W to WW
      B2correction=b0/(2d0*pi)*(-cf*(pi**2-8d0)+B2correction)
      B2 = B2 + B2correction

c     switch off some coefficients according to accuracy wanted 
      if(theAccuracy.eq.0) then
         A2  = 0d0 ! NLL coefficient
         B2  = 0d0 ! NNLL coefficient
      elseif(theAccuracy.eq.2) then
         B2  = 0d0 ! NNLL coefficient
      elseif(theAccuracy.eq.3) then
         B1  = 0d0 ! NLL coefficient
         A2  = 0d0 ! NLL coefficient
         B2  = 0d0 ! NNLL coefficient
      endif

      omy = 1-y 
      lomy=log(omy)

      f0 = A1/b0**2*(y+lomy)

      f1=A1*be1/b0**3*(lomy**2/2+y/omy+lomy/omy)
     $     -A2/b0**2*(lomy+y/omy)+B1/b0*lomy  

      f2 = -B2/b0*y/omy+B1*be1/b0**2*(y+lomy)/omy
     $     -A3/(2*b0**2)*(y/omy)**2
     $     +A2*be1/(2*b0**3)*(3*y**2-2*y+(4*y-2)*lomy)/omy**2
     $     + A1/(2*b0**4)/omy**2*(
     $     be1**2*(1-2*y)*lomy**2
     $     +2*(b0*be2*omy**2+be1**2*y*omy)*lomy
     $     -3*b0*be2*y**2+be1**2*y**2+2*b0*be2*y)

      theExponent = 1d0/as*f0+f1+as*f2 

c     The Sudakov form factor computed up to now is the boson Sudakov form factor,
c     obtained in MiNLO by squaring the one returned by this subroutine.
c     For this reason, we have to divide the argument of the exponent by a factor of 2
      theExponent =  theExponent/2

      end




      subroutine getWWprojection(p_in,flavs_in,p_out,flavs_out)
      implicit none
      include 'nlegborn.h'
      real*8   p_in(0:3,nlegborn)
      integer  flavs_in(nlegborn)
      real*8   p_out(0:3,nlegborn-1) ! Assuming nlegborn-1=6 !
      integer  flavs_out(nlegborn-1) ! Assuming nlegborn-1=6 !

      real*8   p_ww(0:3),m_ww,y_ww,pT_ww
      real*8   p_ww_orig(0:3),m_ww_orig,y_ww_orig,pT_ww_orig ! For debug only !
      real*8   p_incoming(0:3),m_incoming,y_incoming ! For debug only

      integer  ixx
      real*8   vec(3),betaL,betaT
      real*8   dotp
      external dotp

      p_out(:,:)=0d0
      flavs_out(:)=0

      p_ww(:)=0d0
      p_ww_orig(:)=0d0  ! Used for debug only
      p_incoming(:)=0d0 ! Used for debug only

      do ixx=3,nlegborn-1
         p_out(:,ixx)=p_in(:,ixx) ! Assuming WW decay prods are in ixx=3,4,5,6
         p_ww(:)=p_ww(:)+p_in(:,ixx)
      enddo

C - Construct longitudinal boost to frame of y(WW)=0 ...
      vec(1)=0d0
      vec(2)=0d0
      vec(3)=1d0
      betaL =-p_ww(3)/p_ww(0)
C - Apply it ...
      call mboost(1,vec,betaL,p_ww,p_ww)
      call mboost(nlegborn-1,vec,betaL,p_out(:,:),p_out(:,:))

C - Construct transverse boost to frame of pT(WW)=0 ...
      pT_ww=sqrt(p_ww(1)**2+p_ww(2)**2)
      vec(1)=p_ww(1)/pT_ww
      vec(2)=p_ww(2)/pT_ww
      vec(3)=0d0
      m_ww=sqrt(dotp(p_ww,p_ww))
      betaT=-pT_ww/sqrt(m_ww**2+pT_ww**2)
C - Apply it ...
      call mboost(1,vec,betaT,p_ww,p_ww)
      call mboost(nlegborn-1,vec,betaT,p_out(:,:),p_out(:,:))

C - Construct incoming momenta
      p_out(0,1)=  m_ww/2d0
      p_out(1,1)=  0d0
      p_out(2,1)=  0d0
      p_out(3,1)=  m_ww/2d0
      p_out(0,2)=  m_ww/2d0
      p_out(1,2)=  0d0
      p_out(2,2)=  0d0
      p_out(3,2)= -m_ww/2d0

C - Construct inverse longitudinal boost to frame of y(WW)=y(WW) ...
      vec(1)=0d0
      vec(2)=0d0
      vec(3)=1d0
      betaL =-betaL
C - Apply it ...
      call mboost(1,vec,betaL,p_ww,p_ww)
      call mboost(nlegborn-1,vec,betaL,p_out(:,:),p_out(:,:))

C - OK momenta are done, now work out flavours ...

C - If underlying Born is qq' -> WW + g
      if((flavs_in(1).ne.0).and.(flavs_in(2).ne.0).and.
     $   (flavs_in(nlegborn).eq.0)) then
         flavs_out(1:6)=flavs_in(1:6)
C - If underlying Born is gq' -> WW + q
      elseif((flavs_in(1).eq.0).and.(flavs_in(2).ne.0).and.
     $   (flavs_in(nlegborn).ne.0)) then
         flavs_out(1:6)=flavs_in(1:6)
         flavs_out(1)=-flavs_in(nlegborn)
C - If underlying Born is qg -> WW + q'
      elseif((flavs_in(1).ne.0).and.(flavs_in(2).eq.0).and.
     $   (flavs_in(nlegborn).ne.0)) then
         flavs_out(1:6)=flavs_in(1:6)
         flavs_out(2)=-flavs_in(nlegborn)
      else
         write(*,*) 'getWWprojection: ERROR'
         write(*,*) 'Unacceptable list of incoming flavours:'
         write(*,*) flavs_in(:)
         write(*,*) 'Quitting ...'
         stop
      endif

C - Debugger ...

c$$$      write(*,*) ''
c$$$      write(*,*) ''
c$$$      write(*,*) ''
c$$$      write(*,*) ''
c$$$      write(*,*) '...................................'
c$$$      write(*,*) '.... getWWprojection DEBUGGING ....'
c$$$      write(*,*) '...................................'
c$$$      write(*,*) ''
c$$$      write(*,*) 'Original WW system kinematics ...'
c$$$      p_ww_orig=0d0
c$$$      do ixx=3,6
c$$$         p_ww_orig(:)=p_ww_orig(:)+p_in(:,ixx)
c$$$      enddo
c$$$      m_ww_orig=sqrt(dotp(p_ww_orig,p_ww_orig))
c$$$      y_ww_orig=0.5d0*log((p_ww_orig(0)+p_ww_orig(3))
c$$$     $                   /(p_ww_orig(0)-p_ww_orig(3)))
c$$$      pT_ww_orig=sqrt(p_ww_orig(1)**2+p_ww_orig(2)**2)
c$$$      write(*,*) 'm_ww  = ',m_ww_orig
c$$$      write(*,*) 'y_ww  = ',y_ww_orig
c$$$      write(*,*) 'pt_ww = ',pT_ww_orig
c$$$      write(*,*) ''
c$$$      write(*,*) 'New WW system kinematics ...'
c$$$      p_ww=0d0
c$$$      do ixx=3,6
c$$$         p_ww(:)=p_ww(:)+p_out(:,ixx)
c$$$      enddo
c$$$      m_ww=sqrt(dotp(p_ww,p_ww))
c$$$      y_ww=0.5d0*log((p_ww(0)+p_ww(3))/(p_ww(0)-p_ww(3)))
c$$$      pT_ww=sqrt(p_ww(1)**2+p_ww(2)**2)
c$$$      write(*,*) 'm_ww  = ',m_ww
c$$$      write(*,*) 'y_ww  = ',y_ww
c$$$      write(*,*) 'pt_ww = ',pT_ww
c$$$      p_incoming(:)=p_out(:,1)+p_out(:,2)
c$$$      m_incoming=sqrt(dotp(p_incoming,p_incoming))
c$$$      y_incoming=0.5d0*log((p_incoming(0)+p_incoming(3))
c$$$     $                    /(p_incoming(0)-p_incoming(3)))
c$$$      write(*,*) ''
c$$$      write(*,*) 'New incoming partons kinematics ...'
c$$$      write(*,*) 'm_incoming  = ',m_incoming
c$$$      write(*,*) 'y_incoming  = ',y_incoming
c$$$      write(*,*) ''
c$$$      write(*,*) ''
c$$$      write(*,*) 'Flavours ...'
c$$$      write(*,*) 'Before :',flavs_in(:)
c$$$      write(*,*) 'After  :',flavs_out(:)

      end



      subroutine computeB2correction(p_out,flavs_out,B2correction)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      real*8   p_out(0:3,nlegborn-1) ! Assuming nlegborn-1=6 !
      integer  flavs_out(nlegborn-1) ! Assuming nlegborn-1=6 !
      real*8   B2correction
      logical ini
      data ini/.true./
      save ini

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C ------------------------------------------------------------------- C
C --------------------------- TEST CODE ----------------------------- C
C ------------------------------------------------------------------- C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      integer  iun
      integer  ios
      integer  ixx
      character*(100) theEvents
      character*(100) tmpLine
      real*8   read_virtual,read_born,read_ason2pi,read_mur,read_rts
      integer  ntotal,nbad
      real*8   tol,fracdiff
      logical  bad_read
      real*8   sclchk1,sclchk2,sclchk3,sclchk4
      include 'ww_PhysPars.h'
      include 'pwhg_st.h'
      include 'ww_nlegborn.h'
      include 'pwhg_rad.h'
      real * 8 powheginput
      external powheginput
      real * 8 check_fixed_scale
      integer ipos
      real * 8 pwhg_alphas
      external pwhg_alphas
      real * 8 pin(0:3,ww_nlegborn)
      integer  vflav(ww_nlegborn)
      real * 8 ww_virtual,ww_born,ww_stmuren2_saved
      logical perform_test

      integer idummy
      real * 8 dummy(0:3)

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C ------------------------------------------------------------------ C
C ------------------------- END TEST CODE -------------------------- C
C ------------------------------------------------------------------ C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      ! set to true if testing the virtual against ww results
      perform_test=.false.
C - Initialize WW virtual/Born stuff here now ( _SAVE_related_vars_ !!!)
      if(ini) then
         write(*,*) ''
         write(*,*) ' computeB2correction --- initializing ... '
         call ww_init_couplings(perform_test)
         ini=.false.


      if (perform_test) then
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C ------------------------------------------------------------------- C
C --------------------------- TEST CODE ----------------------------- C
C ------------------------------------------------------------------- C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C - Everything from here to "END TEST CODE" is only needed for      - C
C - testing purposes. It can be omitted when implementing the WW    - C
C - virtual in the MiNLO code's B2. Because all variables being     - C
C - set in here will have been (or should be!) set elsewhere in     - C
C - that context. Other things are specific to the test code alone  - C
C - e.g. obviously the filename of virtual events, etc etc.         - C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C
C - Initialise counter for tracking no. good comparisons vs good ones.
         ntotal = 0
         nbad   = 0
         tol    = 1d-9
C
C - Get local alphaS code to function properly ... 
C - Will have already been set in init_phys.f in WWJ-POWHEG-MiNLO context.
      rad_charmthr2=powheginput('#charmthr')
      if(rad_charmthr2.lt.0) rad_charmthr2=1.5d0
      rad_charmthr2=rad_charmthr2**2
      rad_bottomthr2=powheginput('#bottomthr')
      if(rad_bottomthr2.lt.0) rad_bottomthr2=5d0
      rad_bottomthr2=rad_bottomthr2**2
C
C - Event file to read and compare results with ...
C - Totally irrelevant obviously in WWJ-POWHEG-MiNLO context.
      theEvents = 'ww_virtual_test_inputs_1.txt'
      call newunit(iun)
      open(unit=iun,file=trim(theEvents),status='old',iostat=ios)
C
C - Get st_lambda5MSB and renscfact from event file header 
C - (i.e. initial part of Powheg-Box screen output) ...
C - Will have already been initialised long before any MiNLO code enters
C - the game in WWJ-POWHEG-MiNLO context.
      st_lambda5MSB=-1d0
      do while(ios.eq.0)
         read(iun,fmt='(a)',iostat=ios) tmpLine
         if(tmpLine(1:13).eq.'  Lambda 5 is') then
            tmpLine=adjustl(tmpLine(14:))
            read(tmpLine,*) st_lambda5MSB
         endif
         call ww_init_couplings(perform_test)
         ipos=index(tmpLine,'renscfact')
         if(ipos.ne.0) then
            ipos=index(tmpLine,'set to')
            tmpLine=adjustl(tmpLine(ipos+7:))
            read(tmpLine,*) st_renfact
            if(st_renfact.lt.0d0) st_renfact=1d0
         endif
         ipos=index(tmpLine,'fixedscale')
         if(ipos.ne.0) then
            ipos=index(tmpLine,'set to')
            tmpLine=adjustl(tmpLine(ipos+7:))
            read(tmpLine,*) check_fixed_scale
            if(check_fixed_scale.eq.1d0) then
               write(*,*) ''
               write(*,*) 'Detected that fixedscale set to 1 in'
               write(*,*) 'input WW virtual events. Quitting.'
               stop
            endif
         endif
      enddo

      rewind(iun)
      write(*,*) 'st_lambda5MSB  set as ',st_lambda5MSB
      write(*,*) 'renscfact      set as ',st_renfact
      if(st_lambda5MSB.le.0d0) then
         write(*,*) 'st_lambda5MSB <= 0! Quitting.'
         stop
      endif
      ios=0
C - Event file to read and compare results with ...
C - Totally irrelevant obviously in WWJ-POWHEG-MiNLO context.
         !theEvents = 'ww_virtual_test_inputs_1.txt'
         !call newunit(iun)
         !open(unit=iun,file=trim(theEvents),status='old',iostat=ios)
         if(ios.ne.0) then
            write(*,*) ' Could not find file of virtual events:'
            write(*,*) theEvents
            write(*,*) ' Skipping associated consistency tests!'
            goto 777
         endif
C
         write(*,*) 'st_lambda5MSB  set as ',st_lambda5MSB
         write(*,*) 'renscfact      set as ',st_renfact
         if(st_lambda5MSB.le.0d0) then
            write(*,*) 'st_lambda5MSB <= 0! Quitting.'
            stop
         endif
C
C - Start reading events and computing and comparing virtuals ...
         ios=0
         do while(ios.eq.0)
            read(iun,fmt='(a)',iostat=ios,END=200,ERR=200) tmpLine
            if(trim(adjustl(tmpline)).eq.'*** setvirtual') then
C - Read in current event ...
               call read_virtual_event(iun,vflav,pin,read_virtual,
     $              read_born,read_ason2pi,read_mur,read_rts,bad_read)
               if(bad_read) goto 200 ! Exit gracefully ...
               ntotal=ntotal+1 ! Count how many events we read so far ...
               if(ntotal.le.2000) cycle ! Skip 2000 due to sigvirtual equivto
C - Compute virtual!
               ww_stmuren2_saved = st_muren2 ! save original st_muren2    !
               st_muren2 = ( (pin(0,3)+pin(0,4)+pin(0,5)+pin(0,6))**2
     $                     - (pin(1,3)+pin(1,4)+pin(1,5)+pin(1,6))**2
     $                     - (pin(2,3)+pin(2,4)+pin(2,5)+pin(2,6))**2
     $                     - (pin(3,3)+pin(3,4)+pin(3,5)+pin(3,6))**2 )
     $                     * st_renfact**2
               st_alpha  =
     $                 pwhg_alphas(st_muren2,st_lambda5MSB,st_nlight)
               call ww_setvirtual(pin,vflav,ww_virtual,ww_born,.false.)
               st_muren2 = ww_stmuren2_saved ! restore original st_muren2 !
               st_alpha  =                   ! restore original st_alpha  !
     $                 pwhg_alphas(st_muren2,st_lambda5MSB,st_nlight)

C - Check read-in virtual & indep. computation agree, if not print infos ...
               fracdiff=max(abs((read_virtual-ww_virtual)/ww_virtual),
     $                      abs((read_born   -ww_born   )/ww_born   )) 
               if(fracdiff.gt.tol) then
                  write(*,*) ''
                  write(*,*) 'Found disagreement frac.diff. ',
     $                        fracdiff,' > ',tol
                  write(*,*) 'No.events checked so far   ',ntotal-2000
                  write(*,*) 'ww_setvirtual virtual  was ',ww_virtual
                  write(*,*) 'virtual read from file was ',read_virtual
                  write(*,*) 'ww_setvirtual born     was ',ww_born
                  write(*,*) 'born read from file    was ',read_born
                  write(*,*) 'ason2pi read from file was ',read_ason2pi
                  write(*,*) 'ww mur computed as ',sqrt(st_muren2)
                  write(*,*) 'mur     read    as ',read_mur
                  write(*,*) 'sqrt(s) in test code   was ',
     $                 sqrt( (pin(0,3)+pin(0,4)+pin(0,5)+pin(0,6))**2
     $                     - (pin(1,3)+pin(1,4)+pin(1,5)+pin(1,6))**2
     $                     - (pin(2,3)+pin(2,4)+pin(2,5)+pin(2,6))**2
     $                     - (pin(3,3)+pin(3,4)+pin(3,5)+pin(3,6))**2 )
                  write(*,*) 'sqrt(s) read from file was ',read_rts
                  nbad=nbad+1
               else
C - If the basic test worked, then check muR scaling as indicated in notes ...
                  do ixx=1,10
C - Loop over muR scaling factors computing explicit virtual and expected
C - shift relative to nominal scale setting based on the notes ...
                     ww_stmuren2_saved = st_muren2 ! save orig. st_muren2    !
                     st_muren2 =
     $                     ( (pin(0,3)+pin(0,4)+pin(0,5)+pin(0,6))**2
     $                     - (pin(1,3)+pin(1,4)+pin(1,5)+pin(1,6))**2
     $                     - (pin(2,3)+pin(2,4)+pin(2,5)+pin(2,6))**2
     $                     - (pin(3,3)+pin(3,4)+pin(3,5)+pin(3,6))**2 )
     $                     * st_renfact**2
                     sclchk1   = ixx*1d0
                     st_muren2 = sclchk1*st_muren2
                     sclchk2   =-4d0*log(sclchk1)-4d0/3*log(sclchk1)**2
                     st_alpha  =pwhg_alphas(st_muren2,
     $                                      st_lambda5MSB,st_nlight)
                     call ww_setvirtual(pin,vflav,
     $                                  sclchk3,sclchk4,.true.)
                     st_muren2 = ww_stmuren2_saved ! restore original st_muren2 !
                     st_alpha  =                   ! restore original st_alpha  !
     $                 pwhg_alphas(st_muren2,st_lambda5MSB,st_nlight)
C - Now check muR scaling worked as expected ...
                     if(abs( ( ww_virtual/ww_born
     $                       - (sclchk3/sclchk4-sclchk2)
     $                       )/(sclchk3/sclchk4-sclchk2)).gt.1d-8) then
                        write(*,*) ''
                        write(*,*) 'Failed check muR scal. dependence:'
                        write(*,*) 'Event number ',ntotal-2000
                        write(*,*) 'muR scaling behaviour not perfect:'
                        write(*,*) 'muR scaling ',sclchk1
                        write(*,*) 'virtual/born (muR=',
     $                     sqrt(st_muren2),') = ',ww_virtual/ww_born
                        write(*,*) 'virtual/born (muR=',
     $                     sqrt(sclchk1*st_muren2),') =',sclchk3/sclchk4
                        write(*,*) 'Expected difference    =',-sclchk2
                     endif
                     ww_stmuren2_saved = st_muren2 ! save orig. st_muren2 !
                     st_muren2=
     $                      ( (pin(0,3)+pin(0,4)+pin(0,5)+pin(0,6))**2
     $                      - (pin(1,3)+pin(1,4)+pin(1,5)+pin(1,6))**2
     $                      - (pin(2,3)+pin(2,4)+pin(2,5)+pin(2,6))**2
     $                      - (pin(3,3)+pin(3,4)+pin(3,5)+pin(3,6))**2 )
     $                      * st_renfact**2
                     st_muren2 = st_muren2
                     st_alpha  =pwhg_alphas(st_muren2,
     $                                      st_lambda5MSB,st_nlight)
                     call ww_setvirtual(pin,vflav,sclchk3,sclchk4,.true.)
                     st_muren2 = ww_stmuren2_saved ! restore orig. st_muren2 !
                     st_alpha  =                   ! restore original st_alpha  !
     $                 pwhg_alphas(st_muren2,st_lambda5MSB,st_nlight)
                  enddo
               endif
            endif
         enddo

 200     close(iun)
         write(*,*) ' No. events read   =',ntotal-2000,
     $              ' No. disagreements =',nbad

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C ------------------------------------------------------------------ C
C ------------------------- END TEST CODE -------------------------- C
C ------------------------------------------------------------------ C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      end if
 777  endif

C - Compute WW virtual/WW Born ...
      ww_stmuren2_saved=st_muren2
      st_muren2 = ( (p_out(0,3)+p_out(0,4)+p_out(0,5)+p_out(0,6))**2
     $     - (p_out(1,3)+p_out(1,4)+p_out(1,5)+p_out(1,6))**2
     $     - (p_out(2,3)+p_out(2,4)+p_out(2,5)+p_out(2,6))**2
     $     - (p_out(3,3)+p_out(3,4)+p_out(3,5)+p_out(3,6))**2 )

ccccccccccccccccccccccccccccccc
c     Flip p3 and p4, to match mcfm conventions:
c     powheg list:                p1 p2 -> lbar nu   l nubar ...
c     mcfm list (ww_ routines):   p1 p2 -> nu   lbar l nubar ...
      dummy(:)=p_out(:,3)
      p_out(:,3)=p_out(:,4)
      p_out(:,4)=dummy(:)
      idummy=flavs_out(3)
      flavs_out(3)=flavs_out(4)
      flavs_out(4)=idummy
ccccccccccccccccccccccccccccccc

      call ww_setvirtual(p_out,flavs_out,ww_virtual, ww_born,.false.)
      B2correction=ww_virtual/ww_born
      st_muren2=ww_stmuren2_saved
      end



      subroutine read_virtual_event(iun,vflav,pin,read_virtual,
     $                              read_born,read_ason2pi,read_mur,
     $                              read_rts,bad_read)
      implicit none
      include 'ww_nlegborn.h'
      integer  ios,iun,ixx
      character*(100) tmpLine
      integer  vflav(ww_nlegborn)
      real * 8 pin(0:3,ww_nlegborn)
      real * 8 read_virtual,read_born,read_ason2pi,read_mur,read_rts
      logical bad_read
      bad_read=.false.
C - Read in event!
      read(iun,'(6(1x,i5))',END=99,ERR=99) vflav
      do ixx=1,ww_nlegborn
         read(iun,*,END=99,ERR=99) pin(0:3,ixx)
      enddo
      read(iun,'(a)',END=99,ERR=99) tmpLine
      tmpLine=trim(tmpLine(11:))
      read(tmpLine,*) read_virtual
      read(iun,'(a)',END=99,ERR=99) tmpLine
      tmpLine=trim(tmpLine(11:))
      read(tmpLine,*) read_born
      read(iun,'(a)',END=99,ERR=99) tmpLine
      tmpLine=trim(tmpLine(11:))
      read(tmpLine,*) read_ason2pi
      read(iun,'(a)',END=99,ERR=99) tmpLine
      tmpLine=trim(tmpLine(11:))
      read(tmpLine,*) read_mur
      read(iun,'(a)',END=99,ERR=99) tmpLine
      tmpLine=trim(tmpLine(11:))
      read(tmpLine,*) read_rts
      goto 100
 99   bad_read=.true.
 100  continue
      end

