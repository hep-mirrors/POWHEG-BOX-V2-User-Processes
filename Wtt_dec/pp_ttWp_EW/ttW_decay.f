c------------------------------------------------------------------------------
c     Start from 
c       parton parton -> t tbar W+ or
c       parton parton -> t tbar W+ parton
c     and add top and W decays
c------------------------------------------------------------------------------
      SUBROUTINE ttW_decay
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'LesHouches.h'
      include "pwhg_physpar.h"
      logical, save :: firstcall = .true.
      logical, save :: decayselected = .true.
      logical, save :: zerowidth = .false.
      logical, save :: correlated = .true.
      real(kind(1d0)), external :: powheginput
      real(kind(1d0)) :: wme
      logical :: fail

      ! I. Inititalization
      if( firstcall ) then 
        firstcall = .false.

        ! Do nothing if no decays are selected
        if( powheginput('topdecaymode') .le. 0d0 ) decayselected = .false.

        if( decayselected ) then
          ! Switch on/off Breit-Wigner smearing
          zerowidth = powheginput('zerowidth') .eq. 1
          correlated = powheginput('correlations') .eq. 1
          if( zerowidth ) then 
            print*, "POWHEG: top and W on mass shell during decay"
          else 
            print*, "POWHEG: top and W off mass shell during decay"
          endif

          ! Set MadGraph parameters
          call set_MG5_parameter('MDL_MB', physpar_mq(5))
          call set_MG5_parameter('MDL_MT', ph_tmass)
          call set_MG5_parameter('MDL_MW', ph_Wmass)
          call set_MG5_parameter('MDL_MZ', ph_Zmass)
          call set_MG5_parameter('MDL_MH', ph_Hmass)
          call set_MG5_parameter('MDL_MTA', 0d0)
          call set_MG5_parameter('MDL_WT', ph_twidth)
          call set_MG5_parameter('MDL_WW', ph_Wwidth)
          call set_MG5_parameter('MDL_WZ', ph_Zwidth)
          call set_MG5_parameter('MDL_WH', ph_Hwidth)
          call set_MG5_parameter('MDL_GF', ph_gfermi)
          call set_MG5_parameter('AEWM1', 1d0/ph_alphaem)
        endif
      endif

      if( .NOT.decayselected ) return

      ! II. Perform Hit and miss for a given decay signature to obtain momenta  

      ! compute the on-shell ttW matrix element
      if( nup == 5 ) then 
        call born_undecayed(wme)
      elseif ( nup == 6 ) then 
        call real_undecayed(wme)
      else 
        print*, nup, " > 6 !!!"
        stop
      endif

      ! Set alphaS point by point and update couplings
      call set_MG5_parameter('AS', st_alpha)
      call coup()

      ! Always assume fail
      fail = .true.

      if( zerowidth ) then 
        do while ( fail ) 
          call NWAdecay(fail,correlated,wme)
        enddo
      else
        do while ( fail ) 
          call Offshelldecay(fail,correlated,wme)
        enddo
      endif

      END SUBROUTINE

c------------------------------------------------------------------------------
c     Pick W decay particles
c     Output:
c       - flv_dec  - 6 flavours of the 3W decays
c       - mass_dec - the masses of the decay particles
c       - totbr    - total branching ratio
c
c     This routine uses the Branching-ratios Br(W -> X_i) to obtain a density
c     matrix rho_{ijk} = Br(W^+ -> X_i)*Br(W^- -> X_j)*Br(W^+ -> X_k)
c     and picks a decay channel according to its probability.
c
c     CKM transitions between the first two generations are taken into 
c     account for hadronic W decays
c------------------------------------------------------------------------------
      SUBROUTINE pickwdecays(flv_dec,mass_dec,BRtot)
      implicit none
      include 'pwhg_physpar.h'
      include 'PhysPars.h'
      include "pwhg_math.h"
      integer, intent(out) :: flv_dec(6)
      real(kind(1d0)), intent(out) :: mass_dec(6), BRtot
      logical, save :: firstcall = .true.
      real(kind(1d0)), save :: Br(5), BrWlep, BrWlv, BrWqq
      real(kind(1d0)), save :: mass(16), sin2cabibbo, rho(5,5,5), totbr
      real(kind(1d0)) :: y, r
      real(kind(1d0)), external :: powheginput, random
      integer :: i, j, k, imode
      ! pdg id's of 1st and 2nd W+ decay products for e,mu,tau,up and charm 
      ! decays (ignoring CKM)
      integer, save :: iwp(5,2), ii(5)
      data ((iwp(j,k),k=1,2),j=1,5) /-11,12, -13,14, -15,16, -1,2, -3,4/

      if( firstcall ) then
        firstcall = .false.
        imode = powheginput('#topdecaymode')
        ii(1) = imode/10000
        imode = imode-ii(1)*10000
        ii(2) = imode/1000
        imode = imode-ii(2)*1000
        ii(3) = imode/100
        imode = imode-ii(3)*100
        ii(4) = imode/10
        imode = imode-ii(4)*10
        ii(5) = imode

        ! The total leptonic Branching ratio for W bosons
        BrWlep = powheginput('#BrWlep')
        if( BrWlep < 0d0 ) BrWlep = 1d0/3d0
        BrWlv = BrWlep/3d0
        BrWqq = (1d0 - BrWlep)/2d0

        ! Compute Branching ratios Br(W -> X_i)
        do i = 1,5
          if( ii(i) == 0 ) then 
            Br(i) = 0d0
          else
            if( i <= 3 ) Br(i) = BrWlv ! Br(W -> l nu)
            if( i > 3 )  Br(i) = BrWqq ! Br(W -> qqb')
          endif
        enddo

        ! Fill Density matrix
        do i = 1,5
          do j = 1,5
            do k = 1,5
               if( i == j .AND. j == k .AND. ii(k) < 3) then 
                 rho(i,j,k) = 0d0
               else if( i == j .AND. ii(j) < 2 ) then 
                 rho(i,j,k) = 0d0
               else if( i == k .AND. ii(k) < 2 ) then 
                 rho(i,j,k) = 0d0
               else if( j == k .AND. ii(k) < 2 ) then 
                 rho(i,j,k) = 0d0
               else
                 rho(i,j,k) = Br(i)*Br(j)*Br(k)
               endif
            enddo
          enddo
        enddo

        ! choose same sign leptons signature 
        ! W_i^+ = { e+ ve, mu+ vm } and W^- = { ub d, cb s }
        if( powheginput('#samesignleptons') == 1 ) then 
          rho(1:5,1:5,1:5) = 0d0
          rho(1:2,4:5,1:2) = BrWlv**2*BrWqq
        endif

        ! Total branching ratio ( can be less than 1 )
        totbr = sum(rho)

        if( totbr == 0d0 ) then
          write(*,*) 'pickwdecays: the input parameters are such'
          write(*,*) 'that no decays are possible:'
          write(*,*) 'topdecaymode=',nint(powheginput('topdecaymode'))
          write(*,*) 'Halting execution'
          stop
        endif

        ! mass of decay products. For internal consistency, here one should
        ! use the masses assumed by the shower. Leptonic W decay products
        ! masses have to be assigned here. The 3 light quarks are assumed
        ! massless. 
        mass(11) = physpar_ml(1)
        mass(13) = physpar_ml(2)
        mass(15) = physpar_ml(3)
        mass(12) = 0d0
        mass(14) = 0d0
        mass(16) = 0d0 
        mass(1) = physpar_mq(1)
        mass(2) = physpar_mq(2)
        mass(3) = physpar_mq(3)
        mass(4) = physpar_mq(4)  
        mass(5) = physpar_mq(5)  
        ! CAVEAT: only 2 generation mixing in W decay implemented
        sin2cabibbo=ph_CKM(1,2)**2 
      endif

      ! Pick a decay mode according to probability
      r = random()*totbr
      y = 0d0
      do i = 1,5
        do j = 1,5
          do k = 1,5
            y = y + rho(i,j,k)
            if( r < y ) goto 1
          enddo
        enddo
      enddo
 
      ! If code reaches this then no rho_ijk has been picked!
      print*, "No decay channel has been picked!"
      print*, "r = ",r
      do i = 1,5
        do j = 1,5
          do k = 1,5
            print*, i,j,k,rho(i,j,k)
          enddo
        enddo
      enddo
      stop 
 
 1    continue

      ! Flavours of decay particles
      flv_dec(1:2) = iwp(i,1:2)  ! W+
      flv_dec(3:4) = -iwp(j,1:2) ! W-
      flv_dec(5:6) = iwp(k,1:2)  ! W+

      ! Take CKM matrix into accoutn (d -> s) or (s -> d)
      do i = 1,6
        if( iabs(flv_dec(i)) ==  1 ) then 
          if( random() .lt. sin2cabibbo ) then
            flv_dec(i) = sign(3,flv_dec(i))
          endif
        elseif( iabs(flv_dec(i)) == 3 ) then 
          if( random() .lt. sin2cabibbo ) then
            flv_dec(i) = sign(1,flv_dec(i))
          endif
        endif
      enddo

      ! masses of decay particles
      do i = 1,6
        mass_dec(i) = mass(iabs(flv_dec(i)))
      enddo

      BRtot = totbr

      END SUBROUTINE
c------------------------------------------------------------------------------
c     Breit-Wigner mapping:
c     Generates a virtuality v with mass - nwidth*width < v < mass + nwidth*width
c
c     Input: mass  - Mass of the particle
c            width - Decay width of the particle
c            x     - random number [0,1]
c     Output: squared virtuality v^2
c------------------------------------------------------------------------------ 
      FUNCTION BWMap(mass, width, x) result(v2)
      implicit none
      include "pwhg_math.h"
      real(kind(1d0)), intent(in) :: mass, width, x
      real(kind(1d0)) :: v2, z, zA, zB
      integer, parameter :: nwidth = 5
      
      ! Integral boundaries
      zA = datan(-2d0*nwidth + nwidth**2*width/mass)/pi
      zB = datan(+2d0*nwidth + nwidth**2*width/mass)/pi

      ! Integral variables
      z = zA + x*(zB-zA)

      ! Mapping
      v2 = mass**2 + mass*width*tan(pi*z)
      END FUNCTION
c------------------------------------------------------------------------------ 
c     GENERATE RANDOM 3D VECTOR
c     Input: r - Length of random vector
c     Output: vec - Random 3D vector of length r
c------------------------------------------------------------------------------ 
      SUBROUTINE rn3vec(vec,r)
      implicit none
      include "pwhg_math.h"
      real(kind(1d0)), intent(in) :: r
      real(kind(1d0)), intent(out) :: vec(3)
      real(kind(1d0)) :: xx(2), phi, cosTheta, sinTheta

      ! Generate random vector in unit sphere
      call rm48(xx,2)
      phi = 2d0*pi*xx(1)
      cosTheta = 1d0 - 2d0*xx(2)
      sinTheta = dsqrt(1d0 - cosTheta**2)

      vec(1) = r*cos(phi)*sinTheta
      vec(2) = r*sin(phi)*sinTheta
      vec(3) = r*cosTheta

      END SUBROUTINE
c------------------------------------------------------------------------------ 
c     GENERATE TOP QUARK DECAY MOMENTA
c     Input:
c       vw    - virtuality of the W Boson [GeV]
c       bmass - mass of the bottom quark  [GeV]
c       pt(5) - four momentum of the top quark (px,py,pz,E,m)
c     Output:
c       decprod(5,4) - Four momenta in the moving Top frame
c       wme          - The value of the squared top decay matrix element
c                      including propagators
c       wub          - The upper bounding function for the matrix element
c------------------------------------------------------------------------------ 
      SUBROUTINE decaytop(vw,mb,pt,decprod,wme,wub)
      implicit none
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real(kind(1d0)), intent(in) :: vw, mb, pt(5)
      real(kind(1d0)), intent(out) :: decprod(5,4), wme, wub
      real(kind(1d0)) :: vt, pb, pW(5), beta(3), meWdec, gw2, D
      real(kind(1d0)), external :: kaellen, dot

      ! Top mass
      vt = pt(5)

      ! b-quark momentum in top restframe
      pb = sqrt( kaellen(vt**2,mb**2,vw**2) )/(2d0*vt)
      call rn3vec(decprod(1:3,1),pb)
      decprod(4,1) = (vt**2 + mb**2 - vw**2)/(2d0*vt)
      decprod(5,1) = mb

      ! W boson momentum
      pW(5) = vw
      pW(4) = (vt**2 + vw**2 - mb**2)/(2d0*vt)
      pW(1:3) = -decprod(1:3,1)
      decprod(1:5,2) = pW(1:5)

      ! Decay the W boson
      call decaywboson(pW,decprod(1:5,3:4), meWdec)

      ! Boost decay products into moving top frame
      beta(1:3) = pt(1:3)/pt(4)
      call boostm(beta,4,decprod, decprod)

      ! The value of |M(t->lvb)|^2*BW_t
      ! |M(t->lvb)|^2 = 4*gw^2*BW_W*(pb.pv)*(pt.pl)
      gw2 = ph_gfermi*ph_Wmass**2*8d0/dsqrt(2d0)
      wme = 4d0*gw2**2*dot(decprod(1:4,1),decprod(1:4,4))*dot(pt(1:4),decprod(1:4,3))
      wme = wme/( (vt**2 - ph_tmass**2)**2 + (ph_tmass*ph_twidth)**2)
      wme = wme/( (vw**2 - ph_Wmass**2)**2 + (ph_Wmass*ph_Wwidth)**2)

      ! upper bounding function
      if( vw**2 <= vt**2/2d0 ) then
        D = vt**4/16d0
      else
        D = vw**2*(vt**2-vw**2)/4d0
      endif
      wub = 4d0*gw2**2*D
      wub = wub/( (vt**2 - ph_tmass**2)**2 + (ph_tmass*ph_twidth)**2)
      wub = wub/( (vw**2 - ph_Wmass**2)**2 + (ph_Wmass*ph_Wwidth)**2)

      END SUBROUTINE
c------------------------------------------------------------------------------ 
c     GENERATE W BOSON DECAY MOMENTA
c     Input:
c       pW(5)   - four momentum of the W Boson (px,py,pz,E,m)
c     Output:
c       decprod(5,2) - Two momenta in the moving W frame
c       wme          - The value of the squared W decay matrix element
c                      including propagator
c------------------------------------------------------------------------------ 
      SUBROUTINE decaywboson(pW,decprod, wme)
      implicit none
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real(kind(1d0)), intent(in) :: pW(5)
      real(kind(1d0)), intent(out) :: decprod(5,2), wme
      real(kind(1d0)) :: pl, beta(3), gw2

      ! 1 -> 2 decay in W restframe
      pl = pw(5)/2d0
      decprod(4,1:2) = pl
      call rn3vec(decprod(1:3,1),pl)
      decprod(1:3,2) = -decprod(1:3,1)
      decprod(5,1:2) = 0d0

      ! Boost decay products into moving W frame
      beta(1:3) = pw(1:3)/pW(4)
      call boostm(beta,2,decprod, decprod)

      ! The value of |M(W->lv)|^2*Breit-Wigner
      ! The matrix element
      gw2 = ph_gfermi*ph_Wmass**2*8d0/dsqrt(2d0)
      wme = gw2/3d0*pW(5)**2
      ! Breit-Wigner
      wme = wme/( (pW(5)**2 - ph_Wmass**2)**2 + (ph_Wmass*ph_Wwidth)**2)

      END SUBROUTINE
c------------------------------------------------------------------------------ 
c     BOOST 4-VECTORS
c     Input:
c       beta(1:3)   - boost velocity
c       m           - number of momenta
c       vin(1:4,m)  - array of momenta
c     Output:
c       vout(1:4,m) - array of boosted momenta
c------------------------------------------------------------------------------ 
      SUBROUTINE boostm(beta,m,vin,vout)
      implicit none
      integer, intent(in) ::  m
      real(kind(1d0)), intent(in) :: beta(3), vin(5,m)
      real(kind(1d0)), intent(out) :: vout(5,m)
      real(kind(1d0)) :: betav, gamma, vdotb
      integer :: ipart, idim

      betav=sqrt(beta(1)**2 + beta(2)**2 + beta(3)**2)
      gamma=1d0/sqrt(1-betav**2)

      do ipart = 1,m
         vdotb = vin(1,ipart)*beta(1) + vin(2,ipart)*beta(2) + vin(3,ipart)*beta(3)
         do idim = 1,3
            vout(idim,ipart) = vin(idim,ipart)+beta(idim)/betav*((gamma-1d0)*vdotb/betav +gamma*betav*vin(4,ipart))
         enddo
         vout(4,ipart) = gamma*(vin(4,ipart)+vdotb)
      enddo

      vout(5,1:m) = vin(5,1:m)
      END SUBROUTINE
c------------------------------------------------------------------------------ 
c     OFF-SHELL PROJECTION (modified version from arxiv:1502.00925, sec 3.4)
c     Input:
c      - p(1:5,n) - Array of momenta [px,py,pz,E,m]
c      - n        - Number of momenta
c      - l        - Index of momenta to project on-shell
c      - vl^2     - New mass of momentum pl [GeV]
c     Output:
c      - pm(1:5,n) - Array of new momenta 
c      - fail      - true/false if projection not possible
c     Note: In the presence of a partonic jet [p(1:5,6)] the momentum is kept fixed!
c------------------------------------------------------------------------------ 
      SUBROUTINE offshellprojection(p,n,l,vl2,pm,fail)
      implicit none
      integer, intent(in) :: n, l
      real(kind(1d0)), intent(in) :: p(1:5,n), vl2
      real(kind(1d0)), intent(out) :: pm(1:5,n)
      logical, intent(out) :: fail
      real(kind(1d0)) :: al, bl, cl, y, lambda, beta, Qpl, Qsq, Qtot(4)
      real(kind(1d0)) :: K(4), Khat(4), KKhat(4), Kdp, KHdp, Ksq, KKhsq
      real(kind(1d0)) :: ymax, q(5,n)
      real(kind(1d0)), external :: dot
      integer :: ii

      ! Reset momenta
      q(1:5,1:n) = 0d0

      ! Total final-state momentum and its square
      Qtot(1:4) = 0d0
      do ii = 3,5
        Qtot(1:4) = Qtot(1:4) + p(1:4,ii)
      enddo
      Qsq = dot(Qtot,Qtot)
      Qpl = dot(Qtot,p(1:4,l))

      ! Phase space variables
      al = Qsq/(2d0*Qpl)
      bl = p(5,l)**2/(2d0*Qpl)
      cl = vl2/(2d0*Qpl)
      y = cl - bl
      ymax = (sqrt(al) - sqrt(al+bl-1d0))**2 - bl
  
      ! Check if projection is possible
      if( y > ymax ) then
        fail = .true.
        return
      else 
        fail = .false.
      endif

      ! The new momentum
      lambda = dsqrt( ((1d0+y)**2 - 4d0*al*(y+bl))/(1d0 - 4d0*al*bl) )
      beta = (1d0 - lambda + y)/(2d0*al)
      q(1:4,l) = lambda*p(1:4,l) + beta*Qtot(1:4)
      q(5,l) = dsqrt(vl2)

      ! Boost of the recoiling momenta
      K(1:4) = Qtot(1:4) - p(1:4,l)
      Khat(1:4) = Qtot(1:4) - q(1:4,l)
      KKhat(1:4) = K(1:4) + Khat(1:4)
      Ksq = 2d0*Qpl*( al + bl - 1d0 )
      KKHsq = dot(KKhat,KKhat)

      q(1:5,1:2) = p(1:5,1:2)
      do ii = 3, 5
        if( ii .eq. l ) cycle
        Kdp = dot(K,p(1:4,ii))
        Khdp = dot(KKhat,p(1:4,ii))
        q(1:4,ii) = p(1:4,ii) -2d0*Khdp/KKhsq*KKhat(1:4) + 2d0*Kdp/Ksq*Khat(1:4)
        q(5,ii) = p(5,ii)
      enddo 

      ! keep the jet if present
      if( n .eq. 6 ) q(1:5,6) = p(1:5,6)

      ! protection if input and output array are the same
      pm(1:5,1:n) = q(1:5,1:n)

      END SUBROUTINE
c------------------------------------------------------------------------------ 
c     ADD DECAYS IN NARROW-WIDTH-APPROXIMATION
c------------------------------------------------------------------------------ 
      SUBROUTINE NWAdecay(fail, correlated, meTTW)
      implicit none
      include 'LesHouches.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'coupl.inc'
      include "pwhg_physpar.h"
      logical, intent(in) :: correlated
      real(kind(1d0)), intent(in) :: meTTW
      logical, intent(out) :: fail
      real(kind(1d0)) :: pp(1:5,16)
      real(kind(1d0)) :: decprod(1:5,4)
      real(kind(1d0)), external :: random
      integer :: flv_dec(6)
      real(kind(1d0)) :: mass_dec(6), wme, meWdec, meTdec,meTadec,wubTq,wubTa
      real(kind(1d0)) :: upperbound, ratio, totbr
      real(kind(1d0)), save :: boundnorm(5:6)
      logical, save :: firstcall = .true.
      integer :: ii, mynup, it, itb, iw3 

      if( firstcall ) then 
        firstcall = .false.
        boundnorm(5) = 2.5d0
        boundnorm(6) = 5d-2
      endif

      ! The array pp(1:5,16) will hold the momenta in the following format
      ! p(1:5,1:2)   - initial states
      ! p(1:5,3)     - W3 boson
      ! p(1:5,4)     - top-quark
      ! p(1:5,5)     - anti top-quark
      ! p(1:5,6)     - QCD parton
      ! p(1:5,7:8)   - Decay products of W3 (W+)
      ! p(1:5,9:10)  - Decay products of top-quark [bottom, W1]
      ! p(1:5,11:12) - Decay products of W1 (W+)
      ! p(1:5,13:14) - Decay products of anto top-quark [anti bottom, W2]
      ! p(1:5,15:16) - Decay products of W2 (W-)
      ! In case of a born configuration the array will have only 15 entries
      ! by removing p(1:5,6)


      ! Assume always fail
      fail = .true.

      ! Find positions of heavy objects in pp -> t tb W3 j
      it = 4
      itb = 5
      iw3 = 3

      ! I. Pick decay particles of (W1,W2,W3) = (W+,W-,W+)
      call pickwdecays(flv_dec, mass_dec, totbr)
 
      ! II. Keep on-shell momenta 
      pp(1:5,1:16)  = 0d0
      pp(1:5,1:nup) = pup(1:5,1:nup)

      ! III. Generate decay momenta
      mynup = nup

      ! III.a) Decay of W3 boson
      call decaywboson(pp(1:5,iw3),decprod(1:5,1:2), meWdec) 
      do ii = 1,2
        mynup = mynup + 1
        pp(1:5,mynup) = decprod(1:5,ii)
      enddo


      if( correlated ) then 
        ! III.b) Decay of top-quark
        call decaytop(ph_Wmass,physpar_mq(5),pp(1:5,it),decprod,meTdec,wubTq)
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

        ! III.c) Decay of anti top-quark
        call decaytop(ph_Wmass,physpar_mq(5),pp(1:5,itb),decprod,meTadec,wubTa)
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

        ! IV. Matrix element veto
        if( mynup == 15 ) then
          call born_decay(pp,idup(1:2),wme)
        else if( mynup == 16 ) then 
          call real_decay(pp,idup(1:2),wme)
        else
          print*, "This shouldn't happen!"
          print*, "mynup = ", mynup, " != 15 or 16"
          stop
        endif
        upperbound = meTTW*wubTq*wubTa*meWdec

        if(wme <= 0d0 .OR. upperbound <= 0d0 ) then 
          print*, "Something is wrong!"
          print*, "off-shell matrix element: ", wme
          print*, "upperbound: ", upperbound
          stop
        endif
        ratio = wme/upperbound

        if( ratio > boundnorm(nup) ) then 
          print*, "adjusting upperbound: ", boundnorm(nup), " < " , ratio
          print*, "subprocess:",idup(1:nup)
          do ii = 1, nup
            print*, pup(1:5,ii), idup(ii)
          enddo
          print*, ""
          do ii = 1, mynup
            print*, ii, pp(1:5,ii)
          enddo
          call increasecnt ('ttW_decay upper bound violations') 
          boundnorm(nup) = ratio
        endif

        if( boundnorm(nup)*random() > ratio) then 
          call increasecnt('ttW_decay vetoed configurations')
          return
        endif

      else 

        ! III.b) Decay of top-quark
        do
          call decaytop(ph_Wmass,physpar_mq(5),pp(1:5,it),decprod,meTdec,wubTq)
          if( random() < meTdec/wubTq ) exit
        enddo
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

        ! III.c) Decay of anti top-quark
        do
          call decaytop(ph_Wmass,physpar_mq(5),pp(1:5,itb),decprod,meTadec,wubTa)
          if( random() < meTadec/wubTa ) exit
        enddo
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

      endif 
      
      ! V. Update LesHouches accord
      call UpdateLHEF(mynup, pp, flv_dec, mass_dec)

      fail = .false.
      return
 
      
      END SUBROUTINE
c------------------------------------------------------------------------------ 
c     ADD OFF-SHELL DECAYS
c------------------------------------------------------------------------------ 
      SUBROUTINE Offshelldecay(fail, correlated, meTTW)
      implicit none
      include 'LesHouches.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'coupl.inc'
      include "pwhg_physpar.h"
      logical, intent(in) :: correlated
      real(kind(1d0)), intent(in) :: meTTW
      logical, intent(out) :: fail
      real(kind(1d0)) :: pp(1:5,16), wvirt, tvirt, tvirt2
      real(kind(1d0)) :: decprod(1:5,4)
      real(kind(1d0)), external :: random, BWMap
      logical :: failProj
      logical, save :: firstcall = .true.
      logical, save :: debug = .false.
      integer :: flv_dec(6)
      real(kind(1d0)) :: mass_dec(6), wme, meWdec, meTdec,meTadec
      real(kind(1d0)) :: upperbound, ratio, wubTq, wubTa, totbr
      real(kind(1d0)), save :: boundnorm(5:6)
      integer :: ii, mynup, it, itb, iw3 
      
      if( firstcall ) then
        firstcall = .false.
        boundnorm(5) = 10d0
        boundnorm(6) = 25d0
      endif

      ! The array pp(1:5,16) will hold the momenta in the following format
      ! p(1:5,1:2)   - initial states
      ! p(1:5,3)     - W3 boson
      ! p(1:5,4)     - top-quark
      ! p(1:5,5)     - anti top-quark
      ! p(1:5,6)     - QCD parton
      ! p(1:5,7:8)   - Decay products of W3 (W+)
      ! p(1:5,9:10)  - Decay products of top-quark [bottom, W1]
      ! p(1:5,11:12) - Decay products of W1 (W+)
      ! p(1:5,13:14) - Decay products of anto top-quark [anti bottom, W2]
      ! p(1:5,15:16) - Decay products of W2 (W-)
      ! In case of a born configuration the array will have only 15 entries
      ! by removing p(1:5,6)


      ! Assume always fail
      fail = .true.

      ! Find positions of heavy objects in pp -> t tb W3 j
      it = 4
      itb = 5
      iw3 = 3

      ! I. Pick decay particles of (W1,W2,W3) = (W+,W-,W+)
      call pickwdecays(flv_dec, mass_dec, totbr)
 
      ! II. Generate off-shell momenta 
      do
        pp(1:5,1:16)  = 0d0
        pp(1:5,1:nup) = pup(1:5,1:nup)
        failProj = .false.

        ! off-shell projection for W3 boson
        wvirt = BWMap(ph_Wmass,ph_Wwidth,random())
        call offshellprojection(pp,nup,iw3,wvirt,pp,failProj)
        if( failProj ) cycle

        ! off-shell projection for top-quark
        tvirt = BWMap(ph_tmass,ph_twidth,random())
        !tvirt = ph_tmass**2
        call offshellprojection(pp,nup,it,tvirt,pp,failProj)
        if( failProj ) cycle

        ! off-shell projection for anti top-quark
        tvirt2 = BWMap(ph_tmass,ph_twidth,random())
        !tvirt2 = ph_tmass**2
        call offshellprojection(pp,nup,itb,tvirt2,pp,failProj)
        if( failProj ) cycle

        ! if projection was sucessful go on
        if( .NOT.failProj ) exit
      enddo

      ! III. Generate decay momenta
      mynup = nup

      ! III.a) Decay of W3 boson
      call decaywboson(pp(1:5,iw3),decprod(1:5,1:2), meWdec) 
      do ii = 1,2
        mynup = mynup + 1
        pp(1:5,mynup) = decprod(1:5,ii)
      enddo

      if( correlated ) then 
        ! III.b) Decay of top-quark
        wvirt = BWMap(ph_Wmass, ph_Wwidth, random())
        call decaytop(dsqrt(wvirt),physpar_mq(5),pp(1:5,it),decprod,meTdec,wubTq)
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

        ! III.c) Decay of anti top-quark
        wvirt = BWMap(ph_Wmass, ph_Wwidth, random())
        call decaytop(dsqrt(wvirt),physpar_mq(5),pp(1:5,itb),decprod,meTadec,wubTa)
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

        ! IV. Matrix element veto
        if( mynup == 15 ) then
          call born_decay(pp,idup(1:2),wme)
        else if( mynup == 16 ) then 
          call real_decay(pp,idup(1:2),wme)
        else
          print*, "This shouldn't happen!"
          print*, "mynup = ", mynup, " != 15 or 16"
          stop
        endif
        upperbound = meTTW*wubTq*wubTa*meWdec

        if(wme <= 0d0 .OR. upperbound <= 0d0 ) then 
          print*, "Something is wrong!"
          print*, "off-shell matrix element: ", wme
          print*, "upperbound: ", upperbound
          stop
        endif
        ratio = wme/upperbound

        if( ratio > boundnorm(nup) ) then 
          if( debug ) then 
            print*, "adjusting upperbound: ", boundnorm(nup), " < " , ratio
            print*, "M(ttW) = ", meTTW, " decay = ", meTdec, meTadec, meWdec
            print*, "M(WWWbb) = ", wme
            print*, "subprocess:",idup(1:nup)
            do ii = 1, nup
              print*, pup(1:5,ii), idup(ii)
            enddo
            print*, ""
            do ii = 1, mynup
              print*, ii, pp(1:5,ii)
            enddo
          endif
          call increasecnt ('ttW_decay upper bound violations') 
          boundnorm(nup) = ratio
          print*, boundnorm(5:6)
        endif

        if( boundnorm(nup)*random() > ratio) then 
          call increasecnt('ttW_decay vetoed configurations')
          return
        endif

      else

        ! III.b) Decay of top-quark
        do
          wvirt = BWMap(ph_Wmass, ph_Wwidth, random())
          call decaytop(dsqrt(wvirt),physpar_mq(5),pp(1:5,it),decprod,meTdec,wubTq)
          if( random() < meTdec/wubTq ) exit
        enddo
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

        ! III.c) Decay of anti top-quark
        do
          wvirt = BWMap(ph_Wmass, ph_Wwidth, random())
          call decaytop(dsqrt(wvirt),physpar_mq(5),pp(1:5,itb),decprod,meTadec,wubTa)
          if( random() < meTadec/wubTa ) exit
        enddo
        do ii = 1,4
          mynup = mynup + 1
          pp(1:5,mynup) = decprod(1:5,ii)
        enddo

      endif

      ! V. Update LesHouches accord
      call UpdateLHEF(mynup, pp, flv_dec, mass_dec)

      fail = .false.
      return
      END SUBROUTINE
c------------------------------------------------------------------------------
c-    UPDATE LESHOUCHES EVENT RECROD
c------------------------------------------------------------------------------
      SUBROUTINE UpdateLHEF(n, pp, flv_dec, mass_dec)
      implicit none
      include 'LesHouches.h'
      integer, intent(in) :: n, flv_dec(6)
      real(kind(1d0)), intent(in) :: pp(1:5,16), mass_dec(6)
      real(kind(1d0)) :: Qfin(4)
      logical, parameter :: debug = .false.
      integer :: ii

      ! Reset new colorflows
      icolup(1:2,nup+1:maxnup) = 0

      ! Switch ttW to intermediate resonances
      istup(3:5) = 2  
      pup(1:5,1:nup) = pp(1:5,1:nup)

      ! Add W3 = W+ decay products (1st)
      nup = nup + 1
      idup(nup)     = flv_dec(5)
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = mass_dec(5) 
      istup(nup)    = 1
      mothup(1,nup) = 3
      mothup(2,nup) = 3
      spinup(nup)   = 9
      call SetColor(flv_dec(5),nup)

      ! Add W3 = W+ decay products (2nd)
      nup = nup + 1
      idup(nup)     = flv_dec(6)
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = mass_dec(6) 
      istup(nup)    = 1
      mothup(1,nup) = 3
      mothup(2,nup) = 3
      spinup(nup)   = 9
      icolup(1,nup) = icolup(2,nup-1)
      icolup(2,nup) = icolup(1,nup-1)

      ! Add t -> b W1 = b W+ decay products (1st)
      nup = nup + 1
      idup(nup)     = 5
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = pp(5,nup)
      istup(nup)    = 1
      mothup(1,nup) = 4
      mothup(2,nup) = 4
      spinup(nup)   = 9
      icolup(1,nup) = icolup(1,4)
      icolup(2,nup) = icolup(2,4)

      ! Add t -> b W1 = b W+ decay products (2nd)
      nup = nup + 1
      idup(nup)     = 24
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = pp(5,nup)
      istup(nup)    = 2
      mothup(1,nup) = 4
      mothup(2,nup) = 4
      spinup(nup)   = 9
      call SetColor(24,nup)

      ! Add W1 = W+ decay products (1st)
      nup = nup + 1
      idup(nup)     = flv_dec(1)
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = mass_dec(1) 
      istup(nup)    = 1
      mothup(1,nup) = nup - 1
      mothup(2,nup) = nup - 1
      spinup(nup)   = 9
      call SetColor(flv_dec(1),nup)

      ! Add W1 = W+ decay products (2nd)
      nup = nup + 1
      idup(nup)     = flv_dec(2)
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = mass_dec(2) 
      istup(nup)    = 1
      mothup(1,nup) = nup - 2
      mothup(2,nup) = nup - 2
      spinup(nup)   = 9
      icolup(1,nup) = icolup(2,nup-1)
      icolup(2,nup) = icolup(1,nup-1)

      ! Add t~ -> b~ W2 = b~ W- decay products (1st)
      nup = nup + 1
      idup(nup)     = -5
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = pp(5,nup)
      istup(nup)    = 1
      mothup(1,nup) = 5
      mothup(2,nup) = 5
      spinup(nup)   = 9
      icolup(1,nup) = icolup(1,5)
      icolup(2,nup) = icolup(2,5)

      ! Add t~ -> b~ W2 = b~ W- decay products (2nd)
      nup = nup + 1
      idup(nup)     = -24
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = pp(5,nup)
      istup(nup)    = 2
      mothup(1,nup) = 5
      mothup(2,nup) = 5
      spinup(nup)   = 9
      call SetColor(-24,nup)

      ! Add W2 = W- decay products (1st)
      nup = nup + 1
      idup(nup)     = flv_dec(3)
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = mass_dec(3) 
      istup(nup)    = 1
      mothup(1,nup) = nup - 1
      mothup(2,nup) = nup - 1
      spinup(nup)   = 9
      call SetColor(flv_dec(3),nup)

      ! Add W2 = W- decay products (2nd)
      nup = nup + 1
      idup(nup)     = flv_dec(4)
      pup(1:4,nup)  = pp(1:4,nup)
      pup(5,nup)    = mass_dec(4) 
      istup(nup)    = 1
      mothup(1,nup) = nup - 2
      mothup(2,nup) = nup - 2
      spinup(nup)   = 9
      icolup(1,nup) = icolup(2,nup-1)
      icolup(2,nup) = icolup(1,nup-1)

      if( debug ) then 
        print*, "Resonances:"
        do ii = 1, nup
          if( istup(ii) .eq. 2) then 
            print*, idup(ii), pup(1:5,ii)
          endif
        enddo
        print*, "Momentum conservation:"
        Qfin(1:4) = 0d0
        do ii = 3,nup
          if( istup(ii) .eq. 1) Qfin(1:4) = Qfin(1:4) + pup(1:4,ii)
        enddo
        print*, "Ini: ", pup(1:4,1) + pup(1:4,2)
        print*, "Fin: ", Qfin(1:4)
      endif
      END SUBROUTINE
c------------------------------------------------------------------------------
c-    Källen function
c------------------------------------------------------------------------------
      FUNCTION kaellen(x,y,z) result(rslt)
      implicit none
      real(kind(1d0)), intent(in) :: x, y, z
      real(kind(1d0)) :: rslt
      rslt = x**2 + y**2 + z**2 - 2d0*(x*y + y*z + z*x) 
      return
      END FUNCTION
c------------------------------------------------------------------------------
c-    SCALAR PRODUCT
c------------------------------------------------------------------------------
      FUNCTION dot(p,q) result(rslt)
      implicit none
      real(kind(1d0)), intent(in) :: p(4), q(4)
      real(kind(1d0)) :: rslt
      rslt = p(4)*q(4) - p(3)*q(3) - p(2)*q(2) - p(1)*q(1) 
      return
      END FUNCTION
c------------------------------------------------------------------------------
c-    SET COLOR
c------------------------------------------------------------------------------
      SUBROUTINE SetColor(flv,id)
      implicit none
      include 'LesHouches.h'
      integer, intent(in) :: flv, id
      integer :: k, j

      if( iabs(flv) .lt. 11 ) then 
        ! find free colour tag
        k = 1
        do j = 1,nup
           k = max(icolup(1,j),icolup(2,j),k)
        enddo
        k = k+1

        if( flv > 0 ) then ! quark
          icolup(1,id) = k
          icolup(2,id) = 0
        else ! anti- quark
          icolup(1,id) = 0
          icolup(2,id) = k
        endif
      else
        icolup(1:2,id) = 0
      endif
      END SUBROUTINE
c------------------------------------------------------------------------------
c     TURNS GLUON ID 21 INTO ID 0
c------------------------------------------------------------------------------
      SUBROUTINE flavstdform(n,fl_in,fl_out)
      implicit none
      integer, intent(in) :: n, fl_in(n)
      integer, intent(out) :: fl_out(n)
      integer :: ii

      do ii = 1, n
        if( fl_in(ii) == 21 ) then 
          fl_out(ii) = 0
        else
          fl_out(ii) = fl_in(ii)
        endif
      enddo
      END
c------------------------------------------------------------------------------
c-    COMPUTE ON-SHELL BORN MATRIX ELEMENT
c------------------------------------------------------------------------------
      SUBROUTINE born_undecayed(wme)
      implicit none
      include 'LesHouches.h'
      include 'nlegborn.h'
      real(kind(1d0)), intent(out) :: wme
      real(kind(1d0)) :: p(0:3,nlegborn)
      real(kind(1d0)) :: bornjk(nlegborn,nlegborn)
      real(kind(1d0)) :: bmunu(0:3,0:3,nlegborn)
      integer :: flav(nlegborn)

      call flavstdform(nlegborn,idup,flav)

      p(0,1:nlegborn) = pup(4,1:nlegborn)
      p(1:3,1:nlegborn) = pup(1:3,1:nlegborn)

      call set_ebe_couplings
      call sborn_proc(p,flav,wme,bornjk,bmunu)

c      call setborn(p,idup(1:nlegborn),wme,bornjk,bmunu)
      END SUBROUTINE

c------------------------------------------------------------------------------
c-    COMPUTE ON-SHELL REAL MATRIX ELEMENT
c------------------------------------------------------------------------------
      SUBROUTINE real_undecayed(wme)
      implicit none
      include 'LesHouches.h'
      include 'nlegborn.h'
      real(kind(1d0)), intent(out) :: wme
      real(kind(1d0)) :: p(0:3,nlegreal)
      integer :: flav(nlegreal)

      call flavstdform(nlegreal,idup,flav)

      p(0,1:nlegreal) = pup(4,1:nlegreal)
      p(1:3,1:nlegreal) = pup(1:3,1:nlegreal)

      call set_ebe_couplings
      call sreal_proc(p,flav,wme)
      END SUBROUTINE

