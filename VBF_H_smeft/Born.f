      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs), cnt
      real * 8 bmunu(0:3,0:3,nlegs),bbmunu(0:3,0:3),born,colcf
      integer j,k,mu,nu

c Colour factors for colour-correlated Born amplitudes;
c Rule from 2.98 in FNO2007, leads to B_i j=B*(C_i+C_j-C_k)/2,
c where k#i,j
      call compborn(p,bflav,born,bbmunu)

      do j=1,nlegs
         if(abs(bflav(j)).le.6) then
            if(bflav(j).eq.0) then
               do mu=0,3
                  do nu=0,3
                     bmunu(mu,nu,j)=bbmunu(mu,nu)
                  enddo
               enddo
            endif                 
            do k=j+1,nlegs
               if (((j.eq.1).and.(k.eq.4)).or.
     #                 ((j.eq.2).and.(k.eq.5))) then   
                  colcf = cf            
               else
                  colcf = 0
               endif
               bornjk(j,k)=born*colcf
               bornjk(k,j)=bornjk(j,k)
            enddo
         endif
      enddo
      end


c     q q -> H q q 
      subroutine compborn(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'PhysPars.h'
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,nleg)
      integer bflav(nleg), bflav2(nleg)
      real * 8 pin(0:3,nleg)
      real * 8 amp2,born,bmunu(0:3,0:3), amp2edm, amp2xi
      real * 8 amp2d, amp2u, amp2dw, amp2vv, amp2vvtilde
      integer ferm_type(nleg)
      integer mu,nu, i,j     
c      real * 8 charge(-5:5)
      integer HZZ,HWW
      integer signn
      external signn
c      data flav
c     #     /'b~','c~','s~','u~','d~','g','d','u','s','c','b'/
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      integer ferm_charge(nleg)
      call particle_identif(HWW,HZZ)

c     assign momenta and flavor for q1_q2_to_q3_q4_H subroutine
      ferm_charge(1) = charge3(bflav(1))
      ferm_charge(2) = charge3(bflav(2))
      ferm_charge(3) = charge3(bflav(4))
      ferm_charge(4) = charge3(bflav(5))
      
      ferm_type(1) = signn(bflav(1))
      ferm_type(2) = signn(bflav(2))
      ferm_type(3) = signn(bflav(4))
      ferm_type(4) = signn(bflav(5))

      bflav2(1)   =  bflav(1)
      bflav2(2)   =  bflav(2)
      bflav2(3)   =  bflav(4)
      bflav2(4)   =  bflav(5)
      bflav2(5)   =  bflav(3)	  
      
c     consistency check wrt the q1_q2_to_q3_q4_H call
      if (bflav(3).eq.HWW) then
c     WW -> H
         if (.not.(((ferm_charge(1)-ferm_charge(3).eq.3).and.
     #           (ferm_charge(2)-ferm_charge(4).eq.-3)).or.
     #           ((ferm_charge(1)-ferm_charge(3).eq.-3).and.
     #           (ferm_charge(2)-ferm_charge(4).eq.3)))) then
            write(*,*) 'WRONG calling sequence to q1_q2_to_q3_q4_H: WWH'
            write(*,*) bflav
            write(*,*) ferm_charge
            stop
         endif
      else         
c     ZZ -> H
         if (.not.((ferm_charge(1)-ferm_charge(3).eq.0).or.
     #           (ferm_charge(2)-ferm_charge(4).eq.0))) then
            write(*,*) 'WRONG calling sequence to q1_q2_to_q3_q4_H: ZZH'
            write(*,*) bflav
            write(*,*) ferm_charge
            stop
         endif
      endif
      
      do mu=0,3
         pin(mu,1) = p(mu,1)
         pin(mu,2) = p(mu,2)
         pin(mu,3) = p(mu,4)
         pin(mu,4) = p(mu,5)
         pin(mu,5) = p(mu,3)
      enddo
      
      call q1_q2_to_q3_q4_H(pin,ferm_type,ferm_charge,bflav2,amp2)     
      born=amp2

      amp2edm = 0d0
      amp2xi = 0d0
      amp2dw = 0d0
      amp2vv = 0d0 
      if(wdm) then 
	call q1_q2_to_q3_q4_H_edm(pin,ferm_type,ferm_charge,
     #  bflav2,amp2edm,amp2u,amp2d)     
	call q1_q2_to_q3_q4_H_xi(pin,ferm_type,ferm_charge,
     #  bflav2,amp2xi)
	call q1_q2_to_q3_q4_H_dw(pin,ferm_type,ferm_charge,
     #  bflav2,amp2dw)
     	call q1_q2_to_q3_q4_H_vv(pin,ferm_type,ferm_charge,
     #  bflav2,amp2vv)
        call q1_q2_to_q3_q4_H_vvtilde(pin,ferm_type,ferm_charge,
     #  bflav2,amp2vvtilde)
     
      endif
      
      born = born + amp2edm + amp2xi + amp2dw + amp2vv + 
     . amp2vvtilde

            
            
      do mu=0,3
         do nu=0,3
            bmunu(mu,nu)=0d0
         enddo
      enddo
      end



      subroutine borncolour_lh
      implicit none
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface

C We deal here with the CKM matrix elements for VBF Higgs boson production
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c colours of incoming quarks, antiquarks
c      integer icolqi(2),icolai(2),icolgi(2),
c     #        icolqf(2),icolaf(2),icolgf(2)
c      data icolqi/ 501, 0   /
c      data icolai/ 0  , 502 /
c      data icolgi/ 502, 501 /
c      data icolqf/ 502, 0   /
c      data icolaf/ 0  , 501 /
c      data icolgf/ 501, 502 /
c      data icolqi/ 501, 0   /
c      data icolai/ 0  , 502 /
c      data icolqf/ 501, 0   /
c      data icolaf/ 0  , 502 /
c      save icolqi,icolai,icolgi,icolqf,icolaf,icolgf
      integer HWW,HZZ
      integer i
c neutral particles
c      icolup(1,3)=0
c      icolup(2,3)=0
c      icolup(1,4)=0
c      icolup(2,4)=0


c     I restored CKM elements explicitly  (EM)
c     fix CKM for VBF WW -> H 
c      call particle_identif(HWW,HZZ)
c      if (idup(3).eq.HWW) then   
c         call CKM_reshuffling(idup(1),idup(4))
c         call CKM_reshuffling(idup(2),idup(5))
c      endif
      
      if(idup(1).gt.0) then
         icolup(1,1)=501
         icolup(2,1)=0
      else
         icolup(1,1)=0
         icolup(2,1)=501
      endif
      
      if(idup(2).gt.0) then
         icolup(1,2)=502
         icolup(2,2)=0
      else
         icolup(1,2)=0
         icolup(2,2)=502
      endif
c     Higgs Boson                
      icolup(1,3)=0
      icolup(2,3)=0
c     change my Higgs boson codification back to PDG
      idup(3) = 25
      
      do i=1,2
         icolup(i,4)=icolup(i,1)
         icolup(i,5)=icolup(i,2)
      enddo
      end



      subroutine finalize_lh
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     Resonance Z -> e-(3) e+(4)
c      call add_resonance(23,3,4)
      
      call lhefinitemasses
      end





c This subroutine computes the Born squared amplitude for the process
c
c q1(p1) q2(p2) -> q3(p3) q4(p4) H(p5) 
c
c with the weak boson V (W/Z) exchanged ONLY in the t-channel
c
c NO DECAY of the Higgs is implemented 
c The amplitude is computed NUMERICALLY, with the bra/ket formalism
c NO CKM matrix elements are attached to the amplitude!!
c INPUT:  
c       pphy(0:3,5) the PHYSICAL momenta of the particles
c       ferm_type(5) = +1 if fermion, -1 if antifermion
c       fermion_charge(5) = the charge of the fermions
c                         = +2/3, -1/3, -2/3, +1/3
c RETURN:
c       amp2 the amplitude squared, averaged over initial polarization and 
c       color, and summed over final polarization and color
c
c         q1 --->------------>------ q3
c                      |
c                      | V
c                      |
c                      |------- H (q5)
c                      |
c                      | V
c                      |
c         q2 --->------------>-----  q4


      subroutine q1_q2_to_q3_q4_H(pphy,ferm_type,fermion_charge,
     #     bflav,amp2)
      implicit none
      integer nf
      parameter (nf=5)
      integer ferm_type(nf)
      integer fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 amp2
      include 'nlegborn.h'
      integer bflav(nlegborn)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
      real * 8 p13,p24,p5sq
c      real * 8 p12,p14,p15,p23,p25,p34,p35,p45,
      real * 8 dotp
c      complex * 16 cdotp
      complex * 16 ccdotp
c      complex*16 psi(2,-1:1,nf)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c     #     psi5(2,-1:1),psi6(2,-1:1)
      complex * 16 prop13, prop24, fac, propH_sq
c      complex*16 jHdecay(0:3)
      complex*16 J24R(0:3),J24L(0:3),J13R(0:3),J13L(0:3)
      complex * 16 amp_LL, amp_LR, amp_RL, amp_RR
      integer mu,i
      real * 8 p(0:3,nf)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf),tmp, i1, j1, i2, j2
      real * 8 pi, ckm1, ckm2
      parameter (pi=3.141592653589793238462643383279502884197D0)

      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e
      real * 8 cthw,sthw,mW2,mZ2,mH2
      real * 8 mZgammaZ,mWgammaW,mHgammaH
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
	      
      unit_e = ph_unit_e
      sthw = ph_sthw
      cthw = ph_cthw
      mz2 = ph_Zmass2
      mZgammaZ = ph_ZmZw
      mw2 = ph_Wmass2
      mWgammaW = ph_WmWw
      mH2 = ph_Hmass2
      mHgammaH = ph_HmHw
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif
     
c create a copy on local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
      enddo

c exchance order of momenta 1 and 3
      if (ferm_type(1).eq.-1) then
         if (ferm_type(3).eq.-1) then
            call exchange_momenta(p(0,1),p(0,3))
            tmp = ferm_charge(1)
            ferm_charge(1)=-ferm_charge(3)
            ferm_charge(3)=-tmp            
         else
            write(*,*) 'Error in the type of the quark 1-3'
            stop
         endif
      endif

c exchance order of momenta 2 and 4
      if (ferm_type(2).eq.-1) then
         if (ferm_type(4).eq.-1) then
            call exchange_momenta(p(0,2),p(0,4))
            tmp = ferm_charge(2)
            ferm_charge(2)=-ferm_charge(4)
            ferm_charge(4)=-tmp
         else
            write(*,*) 'Error in the type of the quark 2-4'
            stop
         endif
      endif
      
c utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c utype = -1 otherwise
      if (abs(ferm_charge(1)).eq.2) then
         utype_q1 = +1
         q_q1 = 2d0/3
      elseif (abs(ferm_charge(1)).eq.1) then
         utype_q1 = -1
         q_q1 = -1d0/3
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif

      if (abs(ferm_charge(2)).eq.2) then
         utype_q2 = +1
         q_q2 = 2d0/3
      elseif (abs(ferm_charge(2)).eq.1) then
         utype_q2 = -1
         q_q2 = -1d0/3
      else
         write(*,*) 'What charge is this??',ferm_charge(2)
         stop
      endif
      

      v_q1 = utype_q1*1.d0/2 - 2*q_q1*sthw**2 
      a_q1 = utype_q1*1.d0/2

      v_q2 = utype_q2*1.d0/2 - 2*q_q2*sthw**2 
      a_q2 = utype_q2*1.d0/2
            
      L_q1 = v_q1 + a_q1
      R_q1 = v_q1 - a_q1

      L_q2 = v_q2 + a_q2
      R_q2 = v_q2 - a_q2

      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
         p3(mu) = ferm_type(3)*p(mu,3)
         p4(mu) = ferm_type(4)*p(mu,4)
         p5(mu) = p(mu,5)
      enddo

c      p12=dotp(p1,p2)
      p13=dotp(p1,p3)
c      p14=dotp(p1,p4)
c      p15=dotp(p1,p5)
c      p16=dotp(p1,p6)
c      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
c      p25=dotp(p2,p5)
c      p26=dotp(p2,p6)
c      p34=dotp(p3,p4)
c      p35=dotp(p3,p5)
c      p36=dotp(p3,p6)
c      p45=dotp(p4,p5)
c      p46=dotp(p4,p6)
      p5sq=dotp(p5,p5)
      
      call ket(p(0,1),ferm_type(1),psi1)
      call ket(p(0,2),ferm_type(2),psi2)
      call bra(p(0,3),ferm_type(3),psi3)
      call bra(p(0,4),ferm_type(4),psi4)
c      call ket(p(0,5),ferm_type(5),psi5)
c      call bra(p(0,6),ferm_type(6),psi6)

c      call bra_gamma_ket(psi6,psi5,-1,jHdecay)
      call bra_gamma_ket(psi4,psi2,+1,J24R)
      call bra_gamma_ket(psi4,psi2,-1,J24L)
      call bra_gamma_ket(psi3,psi1,+1,J13R)
      call bra_gamma_ket(psi3,psi1,-1,J13L)
      
      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mz2)        
         else
            prop13 = 1d0/dcmplx(-2*p13-mz2,mZgammaZ) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mz2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mz2,mZgammaZ)            
         endif
         
         amp_LL = L_q1*L_q2*ccdotp(J13L,J24L)
         amp_LR = L_q1*R_q2*ccdotp(J13L,J24R)
         amp_RL = R_q1*L_q2*ccdotp(J13R,J24L)
         amp_RR = R_q1*R_q2*ccdotp(J13R,J24R)

c     common factor
c     if dim. 6 are around, rewrite in terms of effective couplings
	      fac = 1 * 
c     the common part of Z couplings to quarks
     #        (ph_gcweff/2d0)**2
c     propagators
     #        * prop13 * prop24 
c     Higgs coupling to VV
     #        * 2d0 * mz2/ph_vev
c     electric unit
c    #        *unit_e**3
         
         amp_LL = amp_LL * fac
         amp_LR = amp_LR * fac
         amp_RL = amp_RL * fac
         amp_RR = amp_RR * fac

         amp2 = 
     #        amp_LL*DCONJG(amp_LL) + 
     #        amp_LR*DCONJG(amp_LR) + 
     #        amp_RL*DCONJG(amp_RL) + 
     #        amp_RR*DCONJG(amp_RR) 

c     1/4 from average over initial polarization
         amp2 = amp2 /4
         
      else
c     W exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mw2)            
         else
            prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mw2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
         endif
         
c     restore the ckm
	 i1=abs(bflav(1))
	 j1=abs(bflav(3))
         i2=abs(bflav(2))
         j2=abs(bflav(4))
c        u ubar -->  d dbar  
	 if((mod(i1,2).eq.0).and.mod(i2,2).eq.0) then
	  ckm1   =  ph_CKM(i1/2,(j1+1)/2)**2
	  ckm2   =  ph_CKM(i2/2,(j2+1)/2)**2
c 	 u d --> d u 	  
         elseif((mod(i1,2).eq.0).and.mod(i2,2).eq.1) then 
	  ckm1   =  ph_CKM(i1/2,(j1+1)/2)**2
	  ckm2   =  ph_CKM(j2/2,(i2+1)/2)**2
c 	 d u --> u d 	  
         elseif((mod(i1,2).eq.1).and.mod(i2,2).eq.0) then 
	  ckm1   =  ph_CKM(j1/2,(i1+1)/2)**2
	  ckm2   =  ph_CKM(i2/2,(j2+1)/2)**2
c 	 d dbar --> u ubar 	  
         elseif((mod(i1,2).eq.1).and.mod(i2,2).eq.1) then 
	  ckm1   =  ph_CKM(j1/2,(i1+1)/2)**2
	  ckm2   =  ph_CKM(j2/2,(i2+1)/2)**2
         endif
         
         amp_LL = ccdotp(J13L,J24L)

c     common factor
         fac = 1d0*
c     the common part of V couplings to quarks
     #        ph_geff**2/2d0
c     propagators
     #        * prop13 * prop24 
c     Higgs coupling to VV
     #        * 2d0*mw2/ph_vev
c     electric unit
c     #        *unit_e**3
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c     NO CKM MATRIX ELEMENTS!!!!
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c     #        * CKMaCs * CKMaDu

         amp_LL = amp_LL * fac
         amp2 = amp_LL*DCONJG(amp_LL)  
c     1/4 from average over initial polarization
c     RESTORED CKM
         amp2 = amp2 /4     * ckm1 * ckm2    
         

         
      endif      

      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p5sq-mH2)**2 + mHgammaH**2)
         amp2 = amp2 * propH_sq
         
c     Multiply by 16 * pi * mH * gammaH  to compensate for the 
c     phase space integral in LIPSN
c     
c     Int dq^2/2pi * dOmega/(32 pi^2) * 1/((q^2-mH^2)^2+(mH*gammaH)^2)
c     
c     = 1/(16*pi*mH*gammaH)
         
         amp2 = amp2 * 16 * pi * mHgammaH
      endif
         
      end



      function signn(j)
      implicit none
      integer signn, j
      if (j.eq.0) then
         signn =0
      else
         signn =j/abs(j)
      endif
      end



      subroutine CKM_reshuffling(flin,flout)
      implicit none
      integer flin,flout
      integer i,j
      logical ini
      real * 8 CKM_sq(6,6)
      include 'PhysPars.h' 
      integer signn
      external signn
      save CKM_sq,ini
      data ini/.true./
      integer nf_max
c     no initial or final state t quark!!
      nf_max = 5
      if (ini) then
         do j=1,nf_max
            do i=1,nf_max
               CKM_sq(i,j) = ph_CKM_matrix(i,j)**2
            enddo
         enddo
         ini = .false.
      endif      
      call pick_random(nf_max,CKM_sq(1,abs(flin)),flout)
      flout = flout * signn(flin)
      end

      
c    Weak EDMs contributions to VBF 
c    amp2u and amp2d are the squared amplitudes for insertions of 
c    the weak EDM on the top and bottom line, respectively

      subroutine q1_q2_to_q3_q4_H_edm(pphy,ferm_type,fermion_charge,
     #bflav,amp2,amp2u,amp2d)
      implicit none
      integer nf
      parameter (nf=5)
      integer ferm_type(nf)
      integer fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 amp2

      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 amp2u, amp2d, vev, s, s2
      real * 8 dotp
c      complex * 16 cdotp
      complex * 16 ccdotp
c      complex*16 psi(2,-1:1,nf)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c     #     psi5(2,-1:1),psi6(2,-1:1)
      complex * 16 prop13, prop24, fac, propH_sq
c      complex*16 jHdecay(0:3)
      complex*16 J24R(0:3),J24L(0:3),J13R(0:3),J13L(0:3)
      complex * 16 amp_LL, amp_LR, amp_RL, amp_RR
      integer mu,i
      real * 8 p(0:3,nf)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf),tmp
      real * 8 pi, rg
      real * 8 zdmRe1, zdmRe2, zdmIm1, zdmIm2
      real * 8 edmRe1, edmRe2, edmIm1, edmIm2
      real * 8 wdmU1, wdmU2, wdmD1, wdmD2, ckm1, ckm2
      parameter (pi=3.141592653589793238462643383279502884197D0)
      
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'nlegborn.h'
      integer bflav(nlegborn)
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e
      real * 8 cthw,sthw,mW2,mZ2,mH2
      real * 8 mZgammaZ,mWgammaW,mHgammaH
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
	  
      amp2u = 0d0
      amp2d = 0d0
      amp2 = 0d0
	  
      unit_e = ph_unit_e
      sthw = ph_sthw
      cthw = ph_cthw
      mz2 = ph_Zmass2
      mZgammaZ = ph_ZmZw
      mw2 = ph_Wmass2
      mWgammaW = ph_WmWw
      mH2 = ph_Hmass2
      mHgammaH = ph_HmHw
      vev  =  2 * ph_Wmass * sthw/unit_e 
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif
     
     
c create a copy on local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
      enddo


      
c utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c utype = -1 otherwise
      if (abs(ferm_charge(1)).eq.2) then
         utype_q1 = +1
         q_q1 = 2d0/3
         zdmRe1 = 	    ph_ReGUw(abs(bflav(1))/2,abs(bflav(1))/2) 
     .	        - sthw**2 * ph_ReGUe(abs(bflav(1))/2,abs(bflav(1))/2)
         zdmIm1 = 	    ph_ImGUw(abs(bflav(1))/2,abs(bflav(1))/2) 
     .	        - sthw**2 * ph_ImGUe(abs(bflav(1))/2,abs(bflav(1))/2)
         edmRe1 =           ph_ReGUe(abs(bflav(1))/2,abs(bflav(1))/2)
         edmIm1 =           ph_ImGUe(abs(bflav(1))/2,abs(bflav(1))/2)
     
      elseif (abs(ferm_charge(1)).eq.1) then
         utype_q1 = -1
         q_q1 = -1d0/3
         zdmRe1 =  -	    ph_ReGDw((abs(bflav(1)) +1)/2,
     .				     (abs(bflav(1)) +1)/2) 
     .	        - sthw**2 * ph_ReGDe((abs(bflav(1)) +1)/2,
     .				     (abs(bflav(1)) +1)/2)
         zdmIm1 = -	    ph_ImGDw((abs(bflav(1)) +1)/2,
     .				     (abs(bflav(1)) +1)/2) 
     .	        - sthw**2 * ph_ImGDe((abs(bflav(1)) +1)/2,
     .				     (abs(bflav(1)) +1)/2)
         edmRe1 =           ph_ReGDe((abs(bflav(1)) +1)/2,
     .				     (abs(bflav(1)) +1)/2)
         edmIm1 = 	    ph_ImGDe((abs(bflav(1)) +1)/2,
     .				     (abs(bflav(1)) +1)/2)
     
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif

      if (abs(ferm_charge(2)).eq.2) then
         utype_q2 = +1
         q_q2 = 2d0/3
         zdmRe2 = 	    ph_ReGUw(abs(bflav(2))/2,abs(bflav(2))/2) 
     .	        - sthw**2 * ph_ReGUe(abs(bflav(2))/2,abs(bflav(2))/2)
         zdmIm2 = 	    ph_ImGUw(abs(bflav(2))/2,abs(bflav(2))/2) 
     .	        - sthw**2 * ph_ImGUe(abs(bflav(2))/2,abs(bflav(2))/2)
         edmRe2 = 	    ph_ReGUe(abs(bflav(2))/2,abs(bflav(2))/2)
         edmIm2 =           ph_ImGUe(abs(bflav(2))/2,abs(bflav(2))/2)
     
     
     
      elseif (abs(ferm_charge(2)).eq.1) then
         utype_q2 = -1
         q_q2 = -1d0/3
         zdmRe2 = - 	     ph_ReGDw((abs(bflav(2)) +1)/2,
     .				     (abs(bflav(2)) +1)/2) 
     .	        -   sthw**2 * ph_ReGDe((abs(bflav(2)) +1)/2,
     .				     (abs(bflav(2)) +1)/2)
         zdmIm2 = - 	    ph_ImGDw((abs(bflav(2)) +1)/2,
     .				     (abs(bflav(2)) +1)/2) 
     .	        - sthw**2 * ph_ImGDe((abs(bflav(2)) +1)/2,
     .				     (abs(bflav(2)) +1)/2)
         edmRe2 =  	    ph_ReGDe((abs(bflav(2)) +1)/2,
     .				     (abs(bflav(2)) +1)/2)
         edmIm2 =  	    ph_ImGDe((abs(bflav(2)) +1)/2,
     .				     (abs(bflav(2)) +1)/2)
      else
         write(*,*) 'What charge is this??',ferm_charge(2)
         stop
      endif
      

      v_q1 = utype_q1*1.d0/2 - 2*q_q1*sthw**2 
      a_q1 = utype_q1*1.d0/2

      v_q2 = utype_q2*1.d0/2 - 2*q_q2*sthw**2 
      a_q2 = utype_q2*1.d0/2
            
      L_q1 = v_q1 + a_q1
      R_q1 = v_q1 - a_q1

      L_q2 = v_q2 + a_q2
      R_q2 = v_q2 - a_q2

c     W channels
c     We give the amplitude for u(p1) d(p2) --> d(p3) u(p4). 
c     All other amplitudes are related by swapping momenta

c    u d --> u d and ubar dbar      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     #abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	wdmU1 =  ph_ReGU_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	wdmU2 =  ph_ReGU_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
     
c    d u --> u d, and dbar ubar --> ubar dbar      
c    exchange momenta p1 <--> p2, p3 <--> p4
c    and exchange lines 
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     #abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
     	call exchange_momenta(p(0,1),p(0,2))
	call exchange_momenta(p(0,3),p(0,4))
	
	wdmU2 =  ph_ReGU_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	wdmU1 =  ph_ReGU_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	
	ckm2   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	ckm1   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
     
	
c     u ubar --> d dbar. 
c     p2 --> -p4.
      elseif(ferm_charge(1).eq.2.and.ferm_charge(2).eq.-2.and.
     #ferm_charge(3).eq.-1.and.ferm_charge(4).eq.1) then
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo  
	call exchange_momenta(p(0,2),p(0,4))
c     couplings  	
	wdmU1 =  ph_ReGU_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	wdmU2 =  ph_ReGU_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	

c     ubar u --> dbar d. Exchange p1 --> -p3.
c     then exchange U and D
      elseif(ferm_charge(1).eq.-2.and.ferm_charge(2).eq.2.and.
     #ferm_charge(3).eq.1.and.ferm_charge(4).eq.-1) then
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	wdmD1 =  ph_ReGU_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	wdmD2 =  ph_ReGU_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	wdmU1 =  ph_ReGD_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	wdmU2 =  ph_ReGD_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	


c     d dbar --> u ubar. p1 --> p2, p3 --> p4. Then p2 --> -p4	
      elseif(ferm_charge(1).eq.-1.and.ferm_charge(2).eq.1.and.
     #ferm_charge(3).eq.2.and.ferm_charge(4).eq.-2) then 
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
c     exchange D and U	
	wdmD1 =  ph_ReGU_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	wdmD2 =  ph_ReGU_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	wdmU1 =  ph_ReGD_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	wdmU2 =  ph_ReGD_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	


c     dbar d --> ubar u. p1 --> -p3	
      elseif(ferm_charge(1).eq.1.and.ferm_charge(2).eq.-1.and.
     #ferm_charge(3).eq.-2.and.ferm_charge(4).eq.2) then 
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	wdmU1 =  ph_ReGU_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	wdmU2 =  ph_ReGU_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	


      endif
      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      
      
      
      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mz2)        
         else
            prop13 = 1d0/dcmplx(-2*p13-mz2,mZgammaZ) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mz2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mz2,mZgammaZ)            
         endif
         
c     Z exchanges 


c     weak EDM on the 1--3 line	 
	 amp2u  = (16*p13**2*p24*(p23*s + p14*s2) -2*mz2*p13*(-8*(p14 
     . 	 + p23)*(p14*p23 - p13*p24) - 4*(p14*p23 + (p13 + 2*p23)*p24)*s 
     .	 + (-4*(p13*p24 + p14*(p23 + 2*p24)) + 2*(p14 + p23)*s 
     .	 + s**2)*s2 + s*s2**2) + mz2**2*(8*p14*p23*(p14 + p23) 
     .	 - 16*p13**2*p24 + 4*p23*(p14 + p24)*s + (4*p14*(p23 + p24) 
     .	 - 2*(p14 + p23)*s - s**2)*s2 - s*s2**2 + 4*p13*(p24*(-2*p23 
     .	 + s) + 2*p14*(2*p23 - p24 + s) + (2*p23 + p24 + s)*s2)))/2d0
	
c    weak EDM on the 2--4 line 
	 amp2d = (16*p13*p24**2*(p14*s + p23*s2) + mz2**2*(8*(p14 + p23 
     .	 + 2*p24)*(p14*p23 - p13*p24) + 4*(p13*(p14 + p24) + p23*(p14 
     .	 + 2*p24))*s + (4*p13*(p23 + p24) + 4*p14*(p23 + 2*p24) - 2*(p14 
     .   + p23 - 2*p24)*s - s**2)*s2 - s*s2**2) - 2*mz2*p24*(-8*(p14 
     .	 + p23)*(p14*p23 - p13*p24) - 4*(p14*p23 + p13*(2*p14 + p24))*s 
     .	 + (-4*p14*p23 - 4*p13*(2*p23 + p24) + 2*(p14 + p23)*s + s**2)*s2 
     .	 + s*s2**2))/2d0
	
	
       	amp2u = amp2u * prop13 * DCONJG(prop13)  * 
     .          prop24 * DCONJG(prop24)  * (unit_e/sthw)**4 /vev**4
	amp2d = amp2d * prop13 * DCONJG(prop13)  * 
     .  	prop24 * DCONJG(prop24)  * (unit_e/sthw)**4 /vev**4
	
	
	amp2u = amp2u/cthw**4 * ( a_q2**2 + v_q2**2) * 
     .	      			( zdmRe1**2 + zdmIm1**2)
	amp2d = amp2d/cthw**4 * ( a_q1**2 + v_q1**2) *
     .				( zdmRe2**2 + zdmIm2**2)
	
	
c       photon exchange 	
	amp2u = amp2u +  1d0*(2*(p13*p23*s + p13*p14*s2))/(p13*p24) * 
     .  (unit_e)**4 /vev**4 * q_q2**2 *( edmRe1**2 + edmIm1**2)
     
	amp2d = amp2d +  1d0*(2*(p14*p24*s + p23*p24*s2))/(p13*p24) *
     .  (unit_e)**4 /vev**4 * q_q1**2 *( edmRe2**2 + edmIm2**2)
	
	
c       interference 
	amp2u = amp2u + 1d0*(16*p13*p24*(p23*s + p14*s2) + mz2*(8*(p14 
     .  + p23)*(p14*p23 - p13*p24) + 4*(p14*p23 + (p13 + 2*p23)*p24)*s 
     .  + (4*p13*p24 + 4*p14*(p23 + 2*p24) - 2*(p14 + p23)*s - s**2)*s2 
     .  - s*s2**2))/(2.*p24) * 
     .  1/2d0 *(prop13 + DCONJG(prop13)  )* 
     .  1/2d0 * (prop24 + DCONJG(prop24) )*
     .  (unit_e)**4 /vev**4/(sthw*cthw)**2
     .  * q_q2* v_q2 *( edmRe1 * zdmRe1 + edmIm1 * zdmIm1)

	amp2d = amp2d + 1d0*(16*p13*p24*(p14*s + p23*s2) + mz2*(8*(p14 
     .  + p23)*(p14*p23 - p13*p24) + 4*(p14*p23 + p13*(2*p14 + p24))*s 
     .  + (4*p14*p23 + 4*p13*(2*p23 + p24) - 2*(p14 + p23)*s - s**2)*s2 
     .  - s*s2**2))/(2.*p13) *
     .  1/2d0 *(prop13 + DCONJG(prop13)  )* 
     .  1/2d0 * (prop24 + DCONJG(prop24) )
     .  * (unit_e)**4 /vev**4/(sthw*cthw)**2
     .  * q_q1* v_q1 *( edmRe2 * zdmRe2 + edmIm2 * zdmIm2)

     	
	
	amp2 = ( amp2u + amp2d )
        
      else
c     W exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mw2)            
         else
            prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mw2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
         endif
         
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar

	 amp2u = ( -4*(2*p13*p23 + mw2*(p13 + p23))*(-2*p13*p24*s 
     .  - mw2*(2*p14*p23 - 2*p13*p24 + (p14 + p24)*s)) - mw2*(2*p23 
     .  + s)*(2*p13*s + mw2*(-2*p13 + s))*s2 )* wdmD1 
     .  + (-8*mw2*(2*p13*p14 + mw2*(p13 + p14))*(-(p14*p23) + p13*p24) 
     .  + 4*mw2**2*p13*p14*s + 2*(2*(2*p13*p14 + mw2*(p13 + p14))*(
     .    2*p13*p24 + mw2*(p23 + p24)) + mw2*(mw2*(p13 - p14) 
     .  - 2*p13*p14)*s)*s2 - mw2*(mw2 + 2*p13)*s*s2**2) * wdmU1

	 amp2d = ( 16*p13*p23*p24**2*s2 + 2*mw2*p24*(4*p14*p23*(2*p23 
     .	+ s2) - s*s2*(2*p23 + s2) + p13*(-8*p23*p24 + 8*p23*s2 
     .	+ 4*p24*s2)) + mw2**2*(4*p14*(p23 + p24)*(2*p23 + s2) 
     .  - (2*p24 - s2)*(4*p13*(p23 + p24) - s*(2*p23 + s2))) )* wdmD2 
     .  + (4*(2*p14*p24 + mw2*(p14 + p24))*(2*p13*p24*s + mw2*(
     .    2*p14*p23 - 2*p13*p24 + (p13 + p23)*s)) - mw2*(2*p14 + s)*( 
     .    2*p24*s + mw2*(-2*p24 + s))*s2 ) * wdmU2
    

c    couplings 
         amp2u = amp2u * prop13 * DCONJG(prop13)  * 
     .	 	 prop24 * DCONJG(prop24) * (unit_e/sthw)**4 /vev**4 * 
     .           ckm2 
         amp2d = amp2d * prop13 * DCONJG(prop13)  * 
     .		 prop24 * DCONJG(prop24) * (unit_e/sthw)**4 /vev**4 * 
     .		 ckm1

	 amp2 = amp2u + amp2d
         
         
      endif      

c     add the RGE factor 
      call RGE(LambdaNP,rg)      
      
      amp2 = amp2 * rg**2
      
      
      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p5sq-mH2)**2 + mHgammaH**2)
         amp2 = amp2 * propH_sq
        
         
c     Multiply by 16 * pi * mH * gammaH  to compensate for the 
c     phase space integral in LIPSN
c     
c     Int dq^2/2pi * dOmega/(32 pi^2) * 1/((q^2-mH^2)^2+(mH*gammaH)^2)
c     
c     = 1/(16*pi*mH*gammaH)
         
         amp2 = amp2 * 16 * pi * mHgammaH
         amp2u = amp2u * propH_sq * 16 * pi * mHgammaH
         amp2d = amp2d * propH_sq * 16 * pi * mHgammaH
         
      endif
         
      end      
      
c    Right handed current contributions to VBF 
c    Only contributes to W 

      subroutine q1_q2_to_q3_q4_H_xi(pphy,ferm_type,fermion_charge,
     #bflav,amp2)
      implicit none
      integer nf
      parameter (nf=5)
      integer ferm_type(nf)
      integer fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 amp2

      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 amp2u, amp2d, vev, s, s2
      real * 8 dotp
c      complex * 16 cdotp
      complex * 16 ccdotp
c      complex*16 psi(2,-1:1,nf)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c     #     psi5(2,-1:1),psi6(2,-1:1)
      complex * 16 prop13, prop24, fac, propH_sq
c      complex*16 jHdecay(0:3)
      complex*16 J24R(0:3),J24L(0:3),J13R(0:3),J13L(0:3)
      complex * 16 amp_LL, amp_LR, amp_RL, amp_RR
      integer mu,i
      real * 8 p(0:3,nf)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf),tmp
      real * 8 pi
      real * 8 xi1, xi2, ckm1, ckm2
      parameter (pi=3.141592653589793238462643383279502884197D0)
      
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'nlegborn.h'
      integer bflav(nlegborn)
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e
      real * 8 cthw,sthw,mW2,mZ2,mH2
      real * 8 mZgammaZ,mWgammaW,mHgammaH
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
	  
      amp2u = 0d0
      amp2d = 0d0
	  
	  
      unit_e = ph_unit_e
      sthw = ph_sthw
      cthw = ph_cthw
      mz2 = ph_Zmass2
      mZgammaZ = ph_ZmZw
      mw2 = ph_Wmass2
      mWgammaW = ph_WmWw
      mH2 = ph_Hmass2
      mHgammaH = ph_HmHw
      vev  =  2 * ph_Wmass * sthw/unit_e 
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif
     
     
c create a copy on local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
      enddo



c     W channels

c    u d --> u d and ubar dbar      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     #abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	xi1 =  ph_ImXi(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	    +  ph_ReXi(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	xi2 =  ph_ImXi(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	    +  ph_ReXi(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	xi1 =  ph_ReXi(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	    +  ph_ImXi(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	xi2 =  ph_ReXi(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	    +  ph_ImXi(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
     
	
c     u ubar --> d dbar, and ubar u --> dbar d 
      elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	xi1 =  ph_ReXi(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2 
     .	    +  ph_ImXi(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	xi2 =  ph_ReXi(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2 
     .	    +  ph_ImXi(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2

	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)**2
	
c     d dbar --> u ubar and dbar d --> ubar u
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.2) then 
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
     
	xi1 =  ph_ReXi(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2 
     .	    +  ph_ImXi(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	xi2 =  ph_ReXi(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2 
     .	    +  ph_ImXi(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2

	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)**2
	
      endif
      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      
      
      
      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
c     right handed current does not contribute		

	amp2 =  0d0
         
         
      else
c     W exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mw2)            
         else
            prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mw2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
         endif
         
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar

	 amp2u = 16d0 * p14 * p23 * p13**2

	 amp2d = 16d0 * p14 * p23 * p24**2
    

c    couplings 
         amp2u = amp2u * prop13 * DCONJG(prop13)  * 
     .	 	 prop24 * DCONJG(prop24) * (unit_e/sthw)**4 /vev**2 * 
     .           ckm2 * xi1
         amp2d = amp2d * prop13 * DCONJG(prop13)  * 
     .		 prop24 * DCONJG(prop24) * (unit_e/sthw)**4 /vev**2 * 
     .		 ckm1 * xi2

	 amp2 = amp2u + amp2d
                  
         
      endif      

      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p5sq-mH2)**2 + mHgammaH**2)
         amp2 = amp2 * propH_sq
         
c     Multiply by 16 * pi * mH * gammaH  to compensate for the 
c     phase space integral in LIPSN
c     
c     Int dq^2/2pi * dOmega/(32 pi^2) * 1/((q^2-mH^2)^2+(mH*gammaH)^2)
c     
c     = 1/(16*pi*mH*gammaH)
         
         amp2 = amp2 * 16 * pi * mHgammaH
         
         
      endif
         
      end      
      
c    Modification to the W-quark left-handed couplings,
c    and the Z-quark left and right handed couplings

      subroutine q1_q2_to_q3_q4_H_dw(pphy,ferm_type,fermion_charge,
     #bflav,amp2)
      implicit none
      integer nf
      parameter (nf=5)
      integer ferm_type(nf)
      integer fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 amp2, amp

      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 ampLL, ampLR, vev, s, s2
      real * 8 dotp
c      complex * 16 cdotp
      complex * 16 ccdotp
c      complex*16 psi(2,-1:1,nf)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c     #     psi5(2,-1:1),psi6(2,-1:1)
      complex * 16 prop13, prop24, fac, propH_sq
c      complex*16 jHdecay(0:3)
      integer mu,i
      real * 8 p(0:3,nf)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf),tmp
      real * 8 pi
      real * 8 dw1, dw2, ckm1, ckm2
      real * 8 dzl1, dzr1, dzl2, dzr2, zl1, zr1, zl2, zr2
      parameter (pi=3.141592653589793238462643383279502884197D0)
      
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'nlegborn.h'
      integer bflav(nlegborn)
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e
      real * 8 cthw,sthw,mW2,mZ2,mH2
      real * 8 mZgammaZ,mWgammaW,mHgammaH
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
	  
      ampLL = 0d0
      ampLR = 0d0
	  
	  
      unit_e = ph_unit_e
      sthw = ph_sthw
      cthw = ph_cthw
      mz2 = ph_Zmass2
      mZgammaZ = ph_ZmZw
      mw2 = ph_Wmass2
      mWgammaW = ph_WmWw
      mH2 = ph_Hmass2
      mHgammaH = ph_HmHw
      vev  =  2 * ph_Wmass * sthw/unit_e 
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif
     
     
c create a copy on local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
      enddo


c    set the dimension-six couplings
c    Z channels 
      if(ferm_charge(1).eq.ferm_charge(3)) then
	if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2) then
c       utype - utype	  
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(bflav(1))/2) 
     .                   -ph_Qphi3(abs(bflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(bflav(2))/2) 
     .                   -ph_Qphi3(abs(bflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Uphi (abs(bflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(bflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       utype - dtype
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  = -1/2d0 + 1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(bflav(1))/2) 
     .                   -ph_Qphi3(abs(bflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(bflav(2))+1)/2) 
     .         		+ ph_Qphi3((abs(bflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi (abs(bflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(bflav(2))+1)/2))
     	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2) 
     #	then
c       dtype - utype
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(bflav(1))+1)/2) 
     .         		+ ph_Qphi3((abs(bflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(bflav(2))/2) 
     .                   -ph_Qphi3(abs(bflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(bflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(bflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       dtype - dtype	  
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(bflav(1))+1)/2) 
     .         		+ ph_Qphi3((abs(bflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(bflav(2))+1)/2) 
     .         		+ ph_Qphi3((abs(bflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(bflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(bflav(2))+1)/2))
	 endif
c     I give the matrix elements for  q q. For q qbar, I need to exchange momenta 	 
	 if(bflav(1).gt.0.and.bflav(2).lt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 elseif(bflav(1).lt.0.and.bflav(2).gt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 endif 
      endif

c     W channels

c    u d --> u d and ubar dbar      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	dw1 = - ph_QphiW(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	dw2 = - ph_QphiW(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	dw1 = - ph_QphiW(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	dw2 = - ph_QphiW(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
     
	
c     u ubar --> d dbar, and ubar u --> dbar d 
      elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(bflav(1))/2, (abs(bflav(3))+1)/2) 
	dw2 =  -ph_QphiW(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	
c     d dbar --> u ubar and dbar d --> ubar u
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.2) then 
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
     
	dw1 =  -ph_QphiW(abs(bflav(3))/2, (abs(bflav(1))+1)/2) 
        dw2 =  -ph_QphiW(abs(bflav(4))/2, (abs(bflav(2))+1)/2) 
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
	
      endif
      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      

      
      
      
      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mz2)        
         else
            prop13 = 1d0/dcmplx(-2*p13-mz2,mZgammaZ) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mz2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mz2,mZgammaZ)            
         endif
c     this operator does not contribute		
	ampLL = 4*(unit_e/sthw/cthw)**4/vev**2 * mz2**2 * s * s2
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)	
	ampLR = 4*(unit_e/sthw/cthw)**4/vev**2 * mz2**2 * 4*p14 * p23
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
     

c    terms linear in new physics    
	amp2 = - 4*p13/mz2*( zl1*dzl1*zl2**2 +  zr1*dzr1*zr2**2)*ampLL
     .	       - 4*p24/mz2*( zl1**2*dzl2*zl2 +  zr1**2*dzr2*zr2)*ampLL
     .         - 4*p13/mz2*( zl1*dzl1*zr2**2 +  zr1*dzr1*zl2**2)*ampLR
     .	       - 4*p24/mz2*( zl1**2*dzr2*zr2 +  zr1**2*dzl2*zl2)*ampLR
     
c    terms quadratic 
	amp2 = amp2 + 
     .	     ( 4*p13**2/mz2**2 *(zl2**2 * dzl1**2 + zr2**2 * dzr1**2 )
     .	     + 4*p24**2/mz2**2 *(zl1**2 * dzl2**2 + zr1**2 * dzr2**2 )
     .       - 2/mz2**2 *( mz2**2 - 4*p13*p24 + 2*mz2* (p13+p24))*
     .       ( zl2 * zl1 * dzl2 * dzl1 + zr2 * zr1 * dzr2 * dzr1  ))
     .	     *ampLL + 
     .       ( 4*p13**2/mz2**2 *(zr2**2 * dzl1**2 + zl2**2 * dzr1**2 )
     .	     + 4*p24**2/mz2**2 *(zl1**2 * dzr2**2 + zr1**2 * dzl2**2 )
     .       - 2/mz2**2 *( mz2**2 - 4*p13*p24 + 2*mz2* (p13+p24))*
     .       ( zr2 * zl1 * dzr2 * dzl1 + zl2 * zr1 * dzl2 * dzr1  ))
     .	     *ampLR

     
         
      else
c     W exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mw2)            
         else
            prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mw2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
         endif
         
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
         amp =  (unit_e/sthw)**4/vev**2 * mw2**2 * s * s2 * 
     .          prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
         
c     linear in new physics          
	 amp2 = - 4 * p13/mw2 * dw1 * ckm1 * ckm2**2 * amp
     .          - 4 * p24/mw2 * dw2 * ckm1**2 * ckm2 * amp

c     quadratic in new physics	   
	 amp2  = amp2  + 4 * p13**2/mw2**2 * dw1**2 * ckm2**2 * amp
     .                 + 4 * p24**2/mw2**2 * dw2**2 * ckm1**2 * amp
     .   - 2 * (mw2**2 - 4*p13*p24 + 2*mw2*(p13 + p24))/mw2**2
     .         *ckm1 * ckm2 * dw1 * dw2 * amp 	 

         
      endif      

      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p5sq-mH2)**2 + mHgammaH**2)
         amp2 = amp2 * propH_sq
         
c     Multiply by 16 * pi * mH * gammaH  to compensate for the 
c     phase space integral in LIPSN
c     
c     Int dq^2/2pi * dOmega/(32 pi^2) * 1/((q^2-mH^2)^2+(mH*gammaH)^2)
c     
c     = 1/(16*pi*mH*gammaH)
         
         amp2 = amp2 * 16 * pi * mHgammaH
         
         
      endif
         
      end        

      
c     phi^dagger phi VV operators        
      subroutine q1_q2_to_q3_q4_H_vv(pphy,ferm_type,fermion_charge,
     #bflav,amp2)
      implicit none
      integer nf
      parameter (nf=5)
      integer ferm_type(nf)
      integer fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 amp2, amp
      real * 8 cgg, cZZ, cZg
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 ampLL, ampLR, vev, s, s2
      real * 8 ampLL_2, ampLR_2, amp_2
      real * 8 dotp, Q1, Q2
      real * 8 rr1, rr2
c      complex * 16 cdotp
      complex * 16 ccdotp
c      complex*16 psi(2,-1:1,nf)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c     #     psi5(2,-1:1),psi6(2,-1:1)
      complex * 16 prop13, prop24, fac, propH_sq
c      complex*16 jHdecay(0:3)
      integer mu,i
      real * 8 p(0:3,nf)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf),tmp
      real * 8 pi
      real * 8 dw1, dw2, ckm1, ckm2
      real * 8 dzl1, dzr1, dzl2, dzr2, zl1, zr1, zl2, zr2
      parameter (pi=3.141592653589793238462643383279502884197D0)
      
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'nlegborn.h'
      integer bflav(nlegborn)
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e
      real * 8 cthw,sthw,mW2,mZ2,mH2
      real * 8 mZgammaZ,mWgammaW,mHgammaH
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
	  
      ampLL = 0d0
      ampLR = 0d0
	  
	  
      unit_e = ph_unit_e
      sthw = ph_sthw
      cthw = ph_cthw
      mz2 = ph_Zmass2
      mZgammaZ = ph_ZmZw
      mw2 = ph_Wmass2
      mWgammaW = ph_WmWw
      mH2 = ph_Hmass2
      mHgammaH = ph_HmHw
      vev  =  2 * ph_Wmass * sthw/unit_e 
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif
     
     
c create a copy on local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
      enddo

c     phi^dagger phi couplings  
      
      cZZ = cthw**2 * ph_cww + sthw**2 * ph_cbb + cthw * sthw * ph_cwb
      cgg = sthw**2 * ph_cww + cthw**2 * ph_cbb - cthw * sthw * ph_cwb
      cZg = 2*cthw*sthw *(ph_cww - ph_cbb) - (cthw**2-sthw**2)* ph_cwb      
      

c    set the dimension-six couplings
c    Z channels 
      if(ferm_charge(1).eq.ferm_charge(3)) then
	if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2) then
c       utype - utype	  
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  Q1   = 2/3d0
	  Q2   = 2/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(bflav(1))/2) 
     .                   -ph_Qphi3(abs(bflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(bflav(2))/2) 
     .                   -ph_Qphi3(abs(bflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Uphi (abs(bflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(bflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       utype - dtype
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  = -1/2d0 + 1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   =  2/3d0
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(bflav(1))/2) 
     .                   -ph_Qphi3(abs(bflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(bflav(2))+1)/2) 
     .        	        + ph_Qphi3((abs(bflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi (abs(bflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(bflav(2))+1)/2))
     	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2) 
     #	then
c       dtype - utype
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  Q1   = -1/3d0
	  Q2   =  2/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(bflav(1))+1)/2) 
     .        	        + ph_Qphi3((abs(bflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(bflav(2))/2) 
     .                   -ph_Qphi3(abs(bflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(bflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(bflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       dtype - dtype	  
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   = -1/3d0
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(bflav(1))+1)/2) 
     . 		        + ph_Qphi3((abs(bflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(bflav(2))+1)/2) 
     .         		+ ph_Qphi3((abs(bflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(bflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(bflav(2))+1)/2))
	 endif
c     I give the matrix elements for  q q. For q qbar, I need to exchange momenta 	 
	 if(bflav(1).gt.0.and.bflav(2).lt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 elseif(bflav(1).lt.0.and.bflav(2).gt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 endif 
      endif

c     W channels

c    u d --> u d and ubar dbar      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     #abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	dw1 = - ph_QphiW(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	dw2 = - ph_QphiW(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	dw1 = - ph_QphiW(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	dw2 = - ph_QphiW(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
     
	
c     u ubar --> d dbar, and ubar u --> dbar d 
      elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(bflav(1))/2, (abs(bflav(3))+1)/2) 
	dw2 =  -ph_QphiW(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	
c     d dbar --> u ubar and dbar d --> ubar u
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.2) then 
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
     
	dw1 =  -ph_QphiW(abs(bflav(3))/2, (abs(bflav(1))+1)/2) 
        dw2 =  -ph_QphiW(abs(bflav(4))/2, (abs(bflav(2))+1)/2) 
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
	
      endif
      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      
      
      
      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mz2)        
         else
            prop13 = 1d0/dcmplx(-2*p13-mz2,mZgammaZ) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mz2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mz2,mZgammaZ)            
         endif
c     this operator does not contribute		
	ampLL = - 4*(unit_e/sthw/cthw)**4/vev**2 * mz2 *
     .        (s + s2) * ( s  *s2 + 4*p13*p24 - 4*p14 * p23) 	
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)	
	ampLR = 4*(unit_e/sthw/cthw)**4/vev**2 * mz2 * 
     .      2*(p14 + p23)*(4*p14*p23 + 4*p13*p24 - s *s2)	
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
     

c    terms linear in new physics    
	amp2 =   cZZ*( zl1**2 * zl2**2 + zr1**2 * zr2**2)*ampLL
     .         + cZZ*( zl1**2 * zr2**2 + zr1**2 * zl2**2)*ampLR
     .	       +(cgg*( Q1*zl1 * Q2*zl2 + Q1*zr1 * Q2*zr2)*ampLL 
     .         + cgg*( Q1*zl1 * Q2*zr2 + Q1*zr1 * Q2*zl2)*ampLR) *
     .  cthw**2 * sthw**2 * (1 + mz2/2d0/p13) * (1 + mz2/2d0/p24) 
     .	       +(cZg*( zl1* Q1 * zl2**2 + zr1* Q1 * zr2**2)*ampLL 
     .         + cZg*( zl1* Q1 * zr2**2 + zr1* Q1 * zl2**2)*ampLR)*
     .  cthw * sthw * (1 + mz2/2d0/p13) * 1/2d0 
     .	       +(cZg*( zl1**2 * zl2*Q2 + zr1**2 * zr2*Q2)*ampLL 
     .         + cZg*( zl1**2 * zr2*Q2 + zr1**2 * zl2*Q2)*ampLR)*
     .  cthw * sthw * (1 + mz2/2d0/p24) * 1/2d0
     
     
     
c    terms quadratic in new physics
	ampLL_2 = 4*(unit_e/sthw/cthw)**4/vev**2 * (
     .  16*p14**2*p23**2 - 8*p14*p23*(4*p13*p24 + s*s2) 
     .   + (4*p13*p24 + s**2)*(4*p13*p24 + s2**2)  )
     .   * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)	
	
	ampLR_2 = 4*(unit_e/sthw/cthw)**4/vev**2 *(
     .  16*(p14**2 + p13*p24)*(p23**2 + p13*p24) 
     .- 8*(p14*p23 + p13*p24)*s*s2 + s**2*s2**2)
     .  * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
     
      
	rr1 =   (1 + mz2/2d0/p13) * cthw * sthw
	rr2 =   (1 + mz2/2d0/p24) * cthw * sthw
     
	amp2 = amp2 + ampLL_2 *(
     .  cZZ**2 * zl1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zl2**2 *rr1 + zl1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
	amp2 = amp2 + ampLL_2 *(
     .  cZZ**2 * zr1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zr2**2 *rr1 + zr1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))     
	
	amp2 = amp2 + ampLR_2 *(
     .  cZZ**2 * zr1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zl2**2 *rr1 + zr1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))

	amp2 = amp2 + ampLR_2 *(
     .  cZZ**2 * zl1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zr2**2 *rr1 + zl1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
         
      else
c     W exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mw2)            
         else
            prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mw2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
         endif
         
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
         amp =  - (unit_e/sthw)**4/vev**2 * mw2 *
     .        (s + s2) * ( s  *s2 + 4*p13*p24 - 4*p14 * p23) 	
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
         
c     linear in new physics          
	 amp2 = ph_cww * amp * ckm1**2 * ckm2**2

	 
c     quadratic in new physics	   
	 amp_2 = (unit_e/sthw)**4/vev**2 * (
     .     16*p14**2*p23**2 - 8*p14*p23*(4*p13*p24 + s*s2) 
     .   + (4*p13*p24 + s**2)*(4*p13*p24 + s2**2)  )
     .   * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)

	 amp2  = amp2  +  ph_cww**2 * amp_2 *ckm1**2 * ckm2**2
         
      endif      

      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p5sq-mH2)**2 + mHgammaH**2)
         amp2 = amp2 * propH_sq
         
c     Multiply by 16 * pi * mH * gammaH  to compensate for the 
c     phase space integral in LIPSN
c     
c     Int dq^2/2pi * dOmega/(32 pi^2) * 1/((q^2-mH^2)^2+(mH*gammaH)^2)
c     
c     = 1/(16*pi*mH*gammaH)
         
         amp2 = amp2 * 16 * pi * mHgammaH
         
         
      endif
         
      end              
      
      
      
c     phi^dagger phi VVtilde operators        
      subroutine q1_q2_to_q3_q4_H_vvtilde(pphy,ferm_type,
     #fermion_charge,bflav,amp2)
      implicit none
      integer nf
      parameter (nf=5)
      integer ferm_type(nf)
      integer fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 amp2, amp
      real * 8 cgg, cZZ, cZg
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 ampLL, ampLR, vev, s, s2
      real * 8 ampLL_2, ampLR_2, amp_2
      real * 8 dotp, Q1, Q2
      real * 8 rr1, rr2
c      complex * 16 cdotp
      complex * 16 ccdotp
c      complex*16 psi(2,-1:1,nf)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c     #     psi5(2,-1:1),psi6(2,-1:1)
      complex * 16 prop13, prop24, fac, propH_sq
c      complex*16 jHdecay(0:3)
      integer mu,i
      real * 8 p(0:3,nf)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf),tmp
      real * 8 pi, eps
      real * 8 dw1, dw2, ckm1, ckm2
      real * 8 dzl1, dzr1, dzl2, dzr2, zl1, zr1, zl2, zr2
      parameter (pi=3.141592653589793238462643383279502884197D0)
      
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'nlegborn.h'
      integer bflav(nlegborn)
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e
      real * 8 cthw,sthw,mW2,mZ2,mH2
      real * 8 mZgammaZ,mWgammaW,mHgammaH
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
	  
      ampLL = 0d0
      ampLR = 0d0
	  
	  
      unit_e = ph_unit_e
      sthw = ph_sthw
      cthw = ph_cthw
      mz2 = ph_Zmass2
      mZgammaZ = ph_ZmZw
      mw2 = ph_Wmass2
      mWgammaW = ph_WmWw
      mH2 = ph_Hmass2
      mHgammaH = ph_HmHw
      vev  =  2 * ph_Wmass * sthw/unit_e 
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif
     
     
c create a copy on local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
      enddo

c     phi^dagger phi couplings  
      
      cZZ = cthw**2 * ph_cwwt + sthw**2 * ph_cbbt 
     .+ cthw * sthw * ph_cwbt
      cgg = sthw**2 * ph_cwwt + cthw**2 * ph_cbbt 
     .- cthw * sthw * ph_cwbt
      cZg = 2*cthw*sthw *(ph_cwwt - ph_cbbt) 
     .- (cthw**2-sthw**2)* ph_cwbt     
      

c    set the dimension-six couplings
c    Z channels 
      if(ferm_charge(1).eq.ferm_charge(3)) then
	if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2) then
c       utype - utype	  
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  Q1   = 2/3d0
	  Q2   = 2/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(bflav(1))/2) 
     .                   -ph_Qphi3(abs(bflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(bflav(2))/2) 
     .                   -ph_Qphi3(abs(bflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Uphi (abs(bflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(bflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       utype - dtype
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  = -1/2d0 + 1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   =  2/3d0
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(bflav(1))/2) 
     .                   -ph_Qphi3(abs(bflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(bflav(2))+1)/2) 
     .         		+ ph_Qphi3((abs(bflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi (abs(bflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(bflav(2))+1)/2))
     	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2) 
     #	then
c       dtype - utype
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  Q1   = -1/3d0
	  Q2   =  2/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(bflav(1))+1)/2) 
     .    	        + ph_Qphi3((abs(bflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(bflav(2))/2) 
     .                   -ph_Qphi3(abs(bflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(bflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(bflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       dtype - dtype	  
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   = -1/3d0
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(bflav(1))+1)/2) 
     .	                + ph_Qphi3((abs(bflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(bflav(2))+1)/2) 
     . 		        + ph_Qphi3((abs(bflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(bflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(bflav(2))+1)/2))
	 endif
c     I give the matrix elements for  q q. For q qbar, I need to exchange momenta 	 
	 if(bflav(1).gt.0.and.bflav(2).lt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 elseif(bflav(1).lt.0.and.bflav(2).gt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 endif 
      endif

c     W channels

c    u d --> u d and ubar dbar      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     #abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	dw1 = - ph_QphiW(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	dw2 = - ph_QphiW(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	dw1 = - ph_QphiW(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	dw2 = - ph_QphiW(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
     
	
c     u ubar --> d dbar, and ubar u --> dbar d 
      elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(bflav(1))/2, (abs(bflav(3))+1)/2) 
	dw2 =  -ph_QphiW(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(bflav(1))/2, (abs(bflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(2))/2, (abs(bflav(4))+1)/2)
	
c     d dbar --> u ubar and dbar d --> ubar u
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.2) then 
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
     
	dw1 =  -ph_QphiW(abs(bflav(3))/2, (abs(bflav(1))+1)/2) 
        dw2 =  -ph_QphiW(abs(bflav(4))/2, (abs(bflav(2))+1)/2) 
	ckm1   =  ph_CKM(abs(bflav(3))/2, (abs(bflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(bflav(4))/2, (abs(bflav(2))+1)/2)
	
      endif
      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      eps = 0d0
      call LeviCivita(p1,p2,p3,p4,eps) 
      
      
      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mz2)        
         else
            prop13 = 1d0/dcmplx(-2*p13-mz2,mZgammaZ) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mz2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mz2,mZgammaZ)            
         endif
c     this operator does not contribute		
	ampLL = 16*eps*(unit_e/sthw/cthw)**4/vev**2 * mz2 *
     .      	(s + s2)  
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)	
	ampLR = 16*eps*(unit_e/sthw/cthw)**4/vev**2 * mz2 * 
     .          2d0 *(p14 + p23)
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
     

c    terms linear in new physics    
	amp2 =   cZZ*( zl1**2 * zl2**2 + zr1**2 * zr2**2)*ampLL
     .         + cZZ*( zl1**2 * zr2**2 + zr1**2 * zl2**2)*ampLR
     .	       +(cgg*( Q1*zl1 * Q2*zl2 + Q1*zr1 * Q2*zr2)*ampLL 
     .         + cgg*( Q1*zl1 * Q2*zr2 + Q1*zr1 * Q2*zl2)*ampLR) *
     .  cthw**2 * sthw**2 * (1 + mz2/2d0/p13) * (1 + mz2/2d0/p24) 
     .	       +(cZg*( zl1* Q1 * zl2**2 + zr1* Q1 * zr2**2)*ampLL 
     .         + cZg*( zl1* Q1 * zr2**2 + zr1* Q1 * zl2**2)*ampLR)*
     .  cthw * sthw * (1 + mz2/2d0/p13) * 1/2d0 
     .	       +(cZg*( zl1**2 * zl2*Q2 + zr1**2 * zr2*Q2)*ampLL 
     .         + cZg*( zl1**2 * zr2*Q2 + zr1**2 * zl2*Q2)*ampLR)*
     .  cthw * sthw * (1 + mz2/2d0/p24) * 1/2d0
     
     
     
c    terms quadratic in new physics
	ampLL_2 = -4*(unit_e/sthw/cthw)**4/vev**2 * (
     .  16*p14**2*p23**2 - 8*p14*p23*(4*p13*p24 + s*s2) 
     .+ (4*p13*p24 - s**2)*(4*p13*p24 - s2**2) )
     .   * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)	
	
	ampLR_2 = -4*(unit_e/sthw/cthw)**4/vev**2 *(
     .  16*(p14**2 - p13*p24)*(p23**2 - p13*p24) 
     .- 8*(p14*p23 + p13*p24)*s*s2 + s**2*s2**2)
     .  * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
     
      
	rr1 =   (1 + mz2/2d0/p13) * cthw * sthw
	rr2 =   (1 + mz2/2d0/p24) * cthw * sthw
     
	amp2 =  amp2 + ampLL_2 *(
     .  cZZ**2 * zl1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zl2**2 *rr1 + zl1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
	amp2 = amp2 + ampLL_2 *(
     .  cZZ**2 * zr1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zr2**2 *rr1 + zr1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))     
	
	amp2 = amp2 + ampLR_2 *(
     .  cZZ**2 * zr1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zl2**2 *rr1 + zr1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))

	amp2 = amp2 + ampLR_2 *(
     .  cZZ**2 * zl1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zr2**2 *rr1 + zl1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
         
      else
c     W exchange in the t channel
         if (-p13.le.0d0) then
            prop13 = 1d0/(-2*p13-mw2)            
         else
            prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
         endif
         if (-p24.le.0d0) then
            prop24 = 1d0/(-2*p24-mw2)            
         else
            prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
         endif
         
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
         amp =  4*eps*(unit_e/sthw)**4/vev**2 * mw2 *
     .      	(s + s2)  
     .        * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)
         
c     linear in new physics          
	 amp2 = ph_cwwt * amp * ckm1**2 * ckm2**2

	 
c     quadratic in new physics	   
	 amp_2 = -(unit_e/sthw)**4/vev**2 * (
     .  16*p14**2*p23**2 - 8*p14*p23*(4*p13*p24 + s*s2) 
     .+ (4*p13*p24 - s**2)*(4*p13*p24 - s2**2) )
     .   * prop13 * DCONJG(prop13) * prop24 * DCONJG(prop24)

	 amp2  = amp2  +  ph_cwwt**2 * amp_2 *ckm1**2 * ckm2**2

      endif      

      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p5sq-mH2)**2 + mHgammaH**2)
         amp2 = amp2 * propH_sq
         
c     Multiply by 16 * pi * mH * gammaH  to compensate for the 
c     phase space integral in LIPSN
c     
c     Int dq^2/2pi * dOmega/(32 pi^2) * 1/((q^2-mH^2)^2+(mH*gammaH)^2)
c     
c     = 1/(16*pi*mH*gammaH)
         
         amp2 = amp2 * 16 * pi * mHgammaH
         
         
      endif
         
      end                    
      
      subroutine LeviCivita(p1,p2,p3,p4,eps)
      implicit none
      real *8 p1(0:3), p2(0:3), p3(0:3), p4(0:3)
      real *8 eps
      
      eps = - p1(0) *( p2(1) * p3(2) * p4(3) - p2(1) * p3(3) * p4(2) 
     $               - p2(2) * p3(1) * p4(3) + p2(2) * p3(3) * p4(1)
     $		     + p2(3) * p3(1) * p4(2) - p2(3) * p3(2) * p4(1))
     
      eps = eps 
     $      + p2(0) *( p1(1) * p3(2) * p4(3) - p1(1) * p3(3) * p4(2) 
     $               - p1(2) * p3(1) * p4(3) + p1(2) * p3(3) * p4(1)
     $		     + p1(3) * p3(1) * p4(2) - p1(3) * p3(2) * p4(1))
     
      eps = eps 
     $      + p3(0) *( p2(1) * p1(2) * p4(3) - p2(1) * p1(3) * p4(2) 
     $               - p2(2) * p1(1) * p4(3) + p2(2) * p1(3) * p4(1)
     $		     + p2(3) * p1(1) * p4(2) - p2(3) * p1(2) * p4(1))
     
      eps = eps 
     $      + p4(0) *( p2(1) * p3(2) * p1(3) - p2(1) * p3(3) * p1(2) 
     $               - p2(2) * p3(1) * p1(3) + p2(2) * p3(3) * p1(1)
     $		     + p2(3) * p3(1) * p1(2) - p2(3) * p3(2) * p1(1))
      
      end      