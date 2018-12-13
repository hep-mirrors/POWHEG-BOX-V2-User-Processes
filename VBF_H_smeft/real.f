      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal), rflav2(nlegreal+1)
      real * 8 amp2, amp2xi, amp2wdm, amp2dw, amp2vv
      real * 8 amp2vvtilde
      integer mu
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 pphy(0:3,nf)      
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      integer signn
      external signn
      integer HZZ,HWW
      call particle_identif(HWW,HZZ)
c     assign momenta
      do mu=0,3
         pphy(mu,1)=p(mu,1)
         pphy(mu,2)=p(mu,2)
         pphy(mu,3)=p(mu,4)
         pphy(mu,4)=p(mu,5)
         pphy(mu,5)=p(mu,3)
         pphy(mu,6)=0d0
         pphy(mu,7)=p(mu,6)
      enddo

      ferm_charge(1) = charge3(rflav(1))
      ferm_charge(2) = charge3(rflav(2))
      ferm_charge(3) = charge3(rflav(4))
      ferm_charge(4) = charge3(rflav(5))
      ferm_charge(7) = charge3(rflav(6)) 

      ferm_type(1) = signn(rflav(1))
      ferm_type(2) = signn(rflav(2))
      ferm_type(3) = signn(rflav(4))
      ferm_type(4) = signn(rflav(5))
      ferm_type(7) = signn(rflav(6))
           
      
      
      rflav2(1)   =  rflav(1)
      rflav2(2)   =  rflav(2)
      rflav2(3)   =  rflav(4)
      rflav2(4)   =  rflav(5)
      rflav2(7)   =  rflav(6)
      rflav2(5)   =  rflav(3)
      rflav2(6)   =  rflav(3)


c     consistency check wrt the q1_q2_to_q3_q4_H_g, g_q2_to_q3_q4_H_q1bar and
c     q1_g_to_q3_q4_H_q2bar calls

      if (rflav(3).eq.HWW) then
c     WW -> H
         if (rflav(6).eq.0) then
            if (.not.(((ferm_charge(1)-ferm_charge(3).eq.3).and.
     #              (ferm_charge(2)-ferm_charge(4).eq.-3)).or.
     #              ((ferm_charge(1)-ferm_charge(3).eq.-3).and.
     #              (ferm_charge(2)-ferm_charge(4).eq.3)))) then
               write(*,*) 'WRONG calling sequence: WWH'
               write(*,*) rflav
               write(*,*) ferm_charge
               stop
            endif
         elseif (rflav(1).eq.0) then
            if (.not.(((-ferm_charge(7)-ferm_charge(3).eq.3).and.
     #              (ferm_charge(2)-ferm_charge(4).eq.-3)).or.
     #              ((-ferm_charge(7)-ferm_charge(3).eq.-3).and.
     #              (ferm_charge(2)-ferm_charge(4).eq.3)))) then
               write(*,*) 'WRONG calling sequence: WWH'
               write(*,*) rflav
               write(*,*) ferm_charge
               stop
            endif
         elseif (rflav(2).eq.0) then
            if (.not.(((ferm_charge(1)-ferm_charge(3).eq.3).and.
     #              (-ferm_charge(7)-ferm_charge(4).eq.-3)).or.
     #              ((ferm_charge(1)-ferm_charge(3).eq.-3).and.
     #              (-ferm_charge(7)-ferm_charge(4).eq.3)))) then
               write(*,*) 'WRONG calling sequence: WWH'
               write(*,*) rflav
               write(*,*) ferm_charge
               stop
            endif
         endif
      else         
c     ZZ -> H
         if (rflav(6).eq.0) then
            if (.not.((ferm_charge(1)-ferm_charge(3).eq.0).or.
     #              (ferm_charge(2)-ferm_charge(4).eq.0))) then
               write(*,*) 'WRONG calling sequence: ZZH'
               write(*,*) rflav
               write(*,*) ferm_charge
               stop
            endif
         elseif (rflav(1).eq.0) then
            if (.not.((-ferm_charge(7)-ferm_charge(3).eq.0).or.
     #              (ferm_charge(2)-ferm_charge(4).eq.0))) then
               write(*,*) 'WRONG calling sequence: ZZH'
               write(*,*) rflav
               write(*,*) ferm_charge
               stop
            endif
         elseif (rflav(2).eq.0) then
            if (.not.((ferm_charge(1)-ferm_charge(3).eq.0).or.
     #              (-ferm_charge(7)-ferm_charge(4).eq.0))) then
               write(*,*) 'WRONG calling sequence: ZZH'
               write(*,*) rflav
               write(*,*) ferm_charge
               stop
            endif
         endif
      endif

      
      
      if (rflav(6).eq.0) then          
         call q1_q2_to_q3_q4_H_g(pphy,ferm_type,ferm_charge,rflav2,
     #amp2)
      elseif (rflav(1).eq.0) then     
         call g_q2_to_q3_q4_H_q1bar(pphy,ferm_type,ferm_charge,rflav2,
     #amp2)
      elseif (rflav(2).eq.0) then     
         call q1_g_to_q3_q4_H_q2bar(pphy,ferm_type,ferm_charge,rflav2,
     #amp2)
      else
         write(*,*) 'ERROR in real_ampsq'
         stop
      endif

      amp2xi = 0d0
      amp2wdm = 0d0
      amp2dw  = 0d0
      amp2vv = 0d0 
      amp2vvtilde = 0d0 
      if(wdm) then	
	if (rflav(6).eq.0) then
	  call q1_q2_to_q3_q4_H_g_xi(pphy,ferm_type,ferm_charge,
     #				     rflav2,amp2xi)
     	  call q1_q2_to_q3_q4_H_g_wdm(pphy,ferm_type,ferm_charge,
     #				     rflav2,amp2wdm)
     	  call q1_q2_to_q3_q4_H_g_dw(pphy,ferm_type,ferm_charge,
     #				     rflav2,amp2dw)
          call q1_q2_to_q3_q4_H_g_vv(pphy,ferm_type,ferm_charge,
     #				     rflav2,amp2vv)
          call q1_q2_to_q3_q4_H_g_vvtilde(pphy,ferm_type,ferm_charge,
     #				     rflav2,amp2vvtilde)
     	elseif (rflav(1).eq.0) then
	  call g_q2_to_q3_q4_H_q1bar_xi(pphy,ferm_type,ferm_charge,
     #    				rflav2,amp2xi)
	  call g_q2_to_q3_q4_H_q1bar_wdm(pphy,ferm_type,ferm_charge,
     #    				rflav2,amp2wdm)
     	  call g_q2_to_q3_q4_H_q1bar_dw(pphy,ferm_type,ferm_charge,
     #    				rflav2,amp2dw)
     	  call g_q2_to_q3_q4_H_q1bar_vv(pphy,ferm_type,ferm_charge,
     #    				rflav2,amp2vv)
          call g_q2_to_q3_q4_H_q1bar_vvtilde(pphy,ferm_type,
     #				ferm_charge,rflav2,amp2vvtilde)
      elseif (rflav(2).eq.0) then     
	  call q1_g_to_q3_q4_H_q2bar_xi(pphy,ferm_type,ferm_charge,
     #     				rflav2,amp2xi)
     	  call q1_g_to_q3_q4_H_q2bar_wdm(pphy,ferm_type,ferm_charge,
     #     				rflav2,amp2wdm)
          call q1_g_to_q3_q4_H_q2bar_dw(pphy,ferm_type,ferm_charge,
     #     				rflav2,amp2dw)
          call q1_g_to_q3_q4_H_q2bar_vv(pphy,ferm_type,ferm_charge,
     #     				rflav2,amp2vv)
          call q1_g_to_q3_q4_H_q2bar_vvtilde(pphy,ferm_type,
     #				ferm_charge,rflav2,amp2vvtilde)
      else
	  write(*,*) 'ERROR in real_ampsq'
	  stop
	endif

	     

	
      endif
	
      
c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = (amp2 + amp2xi + amp2wdm + amp2dw + amp2vv + amp2vvtilde)/
     .(st_alpha/(2*pi))

      end


c This subroutine computes the squared amplitude for the process
c
c  q1(p1) q2(p2) -> q3(p3) q4(p4) H(p5+p6) g(p7) 
c
c NO DECAY of the Higgs is implemented 
c The amplitude is computed NUMERICALLY, with the bra/ket formalism
c
c INPUT:  
c       pphy(0:3,7) the PHYSICAL momenta of the particles
c       ferm_type(7) = +1 if fermion, -1 if antifermion
c       fermion_charge(7) = the charge of the fermions
c                         = +2/3, -1/3, -2/3, +1/3 (irrelevant for gluons)
c
c       flag = +1 = upper line only   gluon connected ONLY to the 
c                                     UPPER quark line
c       flag = -1 = lower line only   gluon connected ONLY to the 
c                                     LOWER quark line
c       flag = "any other number"  gluon connected to both lines
c
c RETURN:
c       amp2 the amplitude squared, averaged over initial polarization and 
c       color, and summed over final polarization and color
c
c
c                     / g(q7)
c                    /
c                   /
c                  /  
c         q1 --->------------>------ q3
c                      |
c                      |
c                      |------- H (q5+q6)
c                      |
c                      |
c         q2 --->------------>-----  q4


      subroutine q1_q2_to_q3_q4_H_g_flag(pphy,ferm_type,
     #     fermion_charge,flag,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      integer flag            
      real * 8 amp2

      integer upper_line_only,lower_line_only
      parameter (upper_line_only=+1,lower_line_only=-1)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),p7(0:3),
     #     pH(0:3)
c      include 'coupl.inc'
c      include 'couplings.h'
      real * 8 p13,p17,p24,p27,p37,p47,p56sq

      real * 8 dotp
      complex * 16 ccdotp
      complex * 16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c      complex * 16 psi5(2,-1:1),psi6(2,-1:1)
c      complex * 16 jHdecay(0:3)
      complex * 16 J24R(0:3),J24L(0:3),J13R(0:3),J13L(0:3)
      complex * 16 J24gR(0:3),J24gL(0:3),J13gR(0:3),J13gL(0:3)
      complex * 16 amp_LL_up_line, amp_LR_up_line, amp_RL_up_line, 
     #     amp_RR_up_line
      complex * 16 amp_LL_down_line, amp_LR_down_line, amp_RL_down_line, 
     #     amp_RR_down_line
      complex * 16 prop13, prop24, fac, propH_sq
      integer mu,i
      real * 8 p(0:3,7),pp1(0:3),pp2(0:3),pp3(0:3),pp4(0:3),pp7(0:3)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf), tmp
      real * 8 eps(0:3,1:2)     
      integer pol
      integer rflav(nf)
      integer i1, j1, i2, j2
      real * 8 ckm1, ckm2
	
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e,gs_sq
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
      gs_sq = 4*pi*st_alpha
      
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif


c create a copy of local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
      enddo
      do i=1,nf
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
         p6(mu) = p(mu,6)
         p7(mu) = p(mu,7)
      enddo

      do mu=0,3
         pH(mu) = p5(mu)+p6(mu)
      enddo

c      p12=dotp(p1,p2)
      p13=dotp(p1,p3)
c      p14=dotp(p1,p4)
c      p15=dotp(p1,p5)
c      p16=dotp(p1,p6)
      p17=dotp(p1,p7)
c      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
c      p25=dotp(p2,p5)
c      p26=dotp(p2,p6)
      p27=dotp(p2,p7)
c      p34=dotp(p3,p4)
c      p35=dotp(p3,p5)
c      p36=dotp(p3,p6)
      p37=dotp(p3,p7)
c      p45=dotp(p4,p5)
c      p46=dotp(p4,p6)
      p47=dotp(p4,p7)
      p56sq=dotp(pH,pH)
c      p57=dotp(p5,p7)
c      p67=dotp(p6,p7)      
      
      if (p(0,1).lt.0d0) then
         do mu=0,3
            pp1(mu) = -p(mu,1)
         enddo         
         call ket(pp1,ferm_type(1),psi1)
      else
         call ket(p(0,1),ferm_type(1),psi1)
      endif

      if (p(0,2).lt.0d0) then
         do mu=0,3
            pp2(mu) = -p(mu,2)
         enddo         
         call ket(pp2,ferm_type(2),psi2)
      else
         call ket(p(0,2),ferm_type(2),psi2)
      endif
     
      if (p(0,3).lt.0d0) then
         do mu=0,3
            pp3(mu) = -p(mu,3)
         enddo    
         call bra(pp3,ferm_type(3),psi3)
      else
         call bra(p(0,3),ferm_type(3),psi3)
      endif

      if (p(0,4).lt.0d0) then
         do mu=0,3
            pp4(mu) = -p(mu,4)
         enddo    
         call bra(pp4,ferm_type(4),psi4)
      else
         call bra(p(0,4),ferm_type(4),psi4)
      endif

c      call ket(p(0,5),ferm_type(5),psi5)
c      call bra(p(0,6),ferm_type(6),psi6)
c      call bra_gamma_ket(psi6,psi5,-1,jHdecay)
      
      amp2 = 0.d0

      call bra_gamma_ket(psi4,psi2,+1,J24R)
      call bra_gamma_ket(psi4,psi2,-1,J24L)
      call bra_gamma_ket(psi3,psi1,+1,J13R)
      call bra_gamma_ket(psi3,psi1,-1,J13L)
      
c     cycle over gluon polarizations
      do pol=1,2         
         amp_LL_up_line = 0d0
         amp_LR_up_line = 0d0
         amp_RL_up_line = 0d0
         amp_RR_up_line = 0d0
         amp_LL_down_line = 0d0
         amp_LR_down_line = 0d0
         amp_RL_down_line = 0d0
         amp_RR_down_line = 0d0

         if (p7(0).lt.0d0) then
            do mu=0,3
               pp7(mu) = -p7(mu)
            enddo         
            call POLVEC(pp7,pol,eps(0,pol))
         else
            call POLVEC(p7,pol,eps(0,pol))
         endif
         
         call bra_gamma_ket_gluon(psi3,psi1,+1,p3,p1,p7,eps(0,pol),
     #        J13gR)
         call bra_gamma_ket_gluon(psi3,psi1,-1,p3,p1,p7,eps(0,pol),
     #        J13gL)
         call bra_gamma_ket_gluon(psi4,psi2,+1,p4,p2,p7,eps(0,pol),
     #        J24gR) 
         call bra_gamma_ket_gluon(psi4,psi2,-1,p4,p2,p7,eps(0,pol),
     #        J24gL)          

         if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
            if (flag.ne.lower_line_only) then
c     correction to the upper line: change ONLY prop13
               if (2*p37-2*p13-2*p17.le.0d0) then
                  prop13 = 1d0/(2*p37-2*p13-2*p17-mz2)            
               else
                  prop13 = 1d0/dcmplx(2*p37-2*p13-2*p17-mz2,mZgammaZ) 
               endif
               if (-p24.le.0d0) then
                  prop24 = 1d0/(-2*p24-mz2)            
               else
                  prop24 = 1d0/dcmplx(-2*p24-mz2,mZgammaZ)            
               endif
               
               amp_LL_up_line = L_q1*L_q2*ccdotp(J13gL,J24L)
               amp_LR_up_line = L_q1*R_q2*ccdotp(J13gL,J24R)
               amp_RL_up_line = R_q1*L_q2*ccdotp(J13gR,J24L)
               amp_RR_up_line = R_q1*R_q2*ccdotp(J13gR,J24R)
               
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
         
               amp_LL_up_line = amp_LL_up_line * fac
               amp_LR_up_line = amp_LR_up_line * fac
               amp_RL_up_line = amp_RL_up_line * fac
               amp_RR_up_line = amp_RR_up_line * fac
            endif

            if (flag.ne.upper_line_only) then
c     correction to the lower line: change ONLY prop24
               if (-p13.le.0d0) then
                  prop13 = 1d0/(-2*p13-mz2)            
               else
                  prop13 = 1d0/dcmplx(-2*p13-mz2,mZgammaZ) 
               endif
               if (2*p47-2*p24-2*p27.le.0d0) then
                  prop24 = 1d0/(2*p47-2*p24-2*p27-mz2)            
               else
                  prop24 = 1d0/dcmplx(2*p47-2*p24-2*p27-mz2,mZgammaZ)
               endif
               
               amp_LL_down_line = L_q1*L_q2*ccdotp(J13L,J24gL)
               amp_LR_down_line = L_q1*R_q2*ccdotp(J13L,J24gR)
               amp_RL_down_line = R_q1*L_q2*ccdotp(J13R,J24gL)
               amp_RR_down_line = R_q1*R_q2*ccdotp(J13R,J24gR)
               
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
         
               amp_LL_down_line = amp_LL_down_line * fac
               amp_LR_down_line = amp_LR_down_line * fac
               amp_RL_down_line = amp_RL_down_line * fac
               amp_RR_down_line = amp_RR_down_line * fac
            endif

            amp2 = amp2 +
     #           abs(amp_LL_up_line)**2 + abs(amp_LL_down_line)**2 + 
     #           abs(amp_LR_up_line)**2 + abs(amp_LR_down_line)**2 + 
     #           abs(amp_RL_up_line)**2 + abs(amp_RL_down_line)**2 + 
     #           abs(amp_RR_up_line)**2 + abs(amp_RR_down_line)**2 
         else
c     W exchange in the t channel
            if (flag.ne.lower_line_only) then
c     correction to the upper line: change ONLY prop13               
               if (2*p37-2*p13-2*p17.le.0d0) then
                  prop13 = 1d0/(2*p37-2*p13-2*p17-mw2)            
               else
                  prop13 = 1d0/dcmplx(2*p37-2*p13-2*p17-mw2,mWgammaW) 
               endif
               if (-p24.le.0d0) then
                  prop24 = 1d0/(-2*p24-mw2)            
               else
                  prop24 = 1d0/dcmplx(-2*p24-mw2,mWgammaW)            
               endif
               
               amp_LL_up_line = ccdotp(J13gL,J24L)
               
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
c     #              * CKMaCs * CKMaDu
               
               amp_LL_up_line = amp_LL_up_line * fac
            endif
            
            if (flag.ne.upper_line_only) then
c     correction to the lower line: change ONLY prop24               
               if (-p13.le.0d0) then
                  prop13 = 1d0/(-2*p13-mw2)            
               else
                  prop13 = 1d0/dcmplx(-2*p13-mw2,mWgammaW) 
               endif
               if (2*p47-2*p24-2*p27.le.0d0) then
                  prop24 = 1d0/(2*p47-2*p24-2*p27-mw2)            
               else
                  prop24 = 1d0/dcmplx(2*p47-2*p24-2*p27-mw2,mWgammaW)
               endif
               
               amp_LL_down_line = ccdotp(J13L,J24gL)
               
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
c     #              * CKMaCs * CKMaDu
               
               amp_LL_down_line = amp_LL_down_line * fac
            endif

c  restore CKM 
	  i1=abs(rflav(1))
	  j1=abs(rflav(3))
	  i2=abs(rflav(2))
	  j2=abs(rflav(4))
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
            
            

            
c            write(*,*) 'singole mie ampiezze pol', pol
c            write(*,*) amp_LL_up_line,amp_LL_down_line
            
            amp2 = amp2  
     #           + abs(amp_LL_up_line)**2 * ckm1 * ckm2 
     #           + abs(amp_LL_down_line)**2 * ckm1 * ckm2
            
         endif            
c     end loop on gluon polarization
      enddo
         
c     1/4 from average over initial polarization
      amp2 = amp2 /4 * gs_sq * CF 


      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p56sq-mH2)**2 + mHgammaH**2)
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


c     Same as q1_q2_to_q3_q4_H_g_flag with NO FLAG option
      subroutine q1_q2_to_q3_q4_H_g(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      real * 8 pphy(0:3,nf)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 amp2
      integer flag
      integer rflav(nf)
      
      flag = 0      
      call q1_q2_to_q3_q4_H_g_flag(pphy,fermion_type,fermion_charge,
     #     flag,rflav,amp2)

      end


c This subroutine computes the squared amplitude for the process
c
c g(p1) q2(p2) -> q3(p3) q4(p4) H(p5+p6) q1bar(p7) 
c
c NO DECAY of the Higgs is implemented 
c The amplitude is computed NUMERICALLY, with the bra/ket formalism
c
c INPUT:  
c       pphy(0:3,7) the PHYSICAL momenta of the particles
c       ferm_type(7) = +1 if fermion, -1 if antifermion
c       fermion_charge(7) = the charge of the fermions
c                         = +2/3, -1/3, -2/3, +1/3 (irrelevant for gluons)
c
c RETURN:
c       amp2 the amplitude squared, averaged over initial polarization and 
c       color, and summed over final polarization and color
c

      subroutine g_q2_to_q3_q4_H_q1bar(pphy,fermion_type,fermion_charge,
     #     rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf), ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(7)

c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      rflav_copy = rflav
      rflav_copy(1) = -rflav_copy(7)


      flag = + 1
      call q1_q2_to_q3_q4_H_g_flag(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = amp2 * 3d0/8

      end



c This subroutine computes the squared amplitude for the process
c
c q1(p1) g(p2) -> q3(p3) q4(p4) H(p5+p6) q2bar(p7) 
c
c NO DECAY of the Higgs is implemented 
c The amplitude is computed NUMERICALLY, with the bra/ket formalism
c
c INPUT:  
c       pphy(0:3,7) the PHYSICAL momenta of the particles
c       ferm_type(7) = +1 if fermion, -1 if antifermion
c       fermion_charge(7) = the charge of the fermions
c                         = +2/3, -1/3, -2/3, +1/3 (irrelevant for gluons)
c
c RETURN:
c       amp2 the amplitude squared, averaged over initial polarization and 
c       color, and summed over final polarization and color
c

      subroutine q1_g_to_q3_q4_H_q2bar(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(7)
      
      rflav_copy = rflav
      rflav_copy(2) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = - 1
      call q1_q2_to_q3_q4_H_g_flag(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)


     
c correct for color average
      amp2 = amp2 * 3d0/8

      end

      
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c Real Matrix Elements for Right handed currents
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     q q channel

      subroutine q1_q2_to_q3_q4_H_g_flag_xi(pphy,ferm_type,
     #     fermion_charge,flag,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      integer flag, flagu1, flagu2, flagd1, flagd2            
      real * 8 amp2, amp2u, amp2d, s, s2, vev

      integer upper_line_only,lower_line_only
      parameter (upper_line_only=+1,lower_line_only=-1)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),p7(0:3),
     #     pH(0:3)
c      include 'coupl.inc'
c      include 'couplings.h'
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 p17,p27,p37,p47,p56sq

      real * 8 dotp
      complex * 16 ccdotp
      complex * 16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c      complex * 16 psi5(2,-1:1),psi6(2,-1:1)
c      complex * 16 jHdecay(0:3)
      complex * 16 prop13, prop24, fac, propH_sq
      complex * 16 prop137, prop247
      integer mu,i
      real * 8 p(0:3,7),pp1(0:3),pp2(0:3),pp3(0:3),pp4(0:3),pp7(0:3)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf), tmp
      real * 8 eps(0:3,1:2)     
      integer pol
      integer rflav(nf)
      real * 8 xi1, xi2, ckm1, ckm2
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e,gs_sq
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
      gs_sq = 4*pi*st_alpha
      
c create a copy of local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
      enddo
      do i=1,nf
         ferm_charge(i) = fermion_charge(i)
      enddo

      
      if(flag.eq.1) then 
	flagu1 = 1d0
	flagd1 = 1d0
	flagu2 = 0d0
	flagd2 = 0d0
      elseif(flag.eq.-1) then
      	flagu1 = 0d0
	flagd1 = 0d0
	flagu2 = 1d0
	flagd2 = 1d0
      else 
      	flagu1 = 1d0
	flagd1 = 1d0
	flagu2 = 1d0
	flagd2 = 1d0
      endif
      
c    set the couplings      
c    Q Q channel      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	xi1 =  ph_ImXi(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	    +  ph_ReXi(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	xi2 =  ph_ImXi(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	    +  ph_ReXi(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	xi1 =  ph_ReXi(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	xi2 =  ph_ReXi(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
     
	
c     u ubar --> d dbar 

      elseif(ferm_charge(1).eq.2.and.ferm_charge(2).eq.-2.and.
     # ferm_charge(3).eq.-1.and.ferm_charge(4).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	xi1 =  ph_ReXi(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	xi2 =  ph_ReXi(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2

	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2

c     and ubar u --> dbar  d 	
      elseif(ferm_charge(1).eq.-2.and.ferm_charge(2).eq.2.and.
     # ferm_charge(3).eq.1.and.ferm_charge(4).eq.-1) then
c     couplings  	
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	xi1 =  ph_ReXi(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	xi2 =  ph_ReXi(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2

	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2	
	

c     d dbar --> u ubar
      elseif(ferm_charge(1).eq.-1.and.ferm_charge(2).eq.1.and.
     # ferm_charge(3).eq.2.and.ferm_charge(4).eq.-2) then 
     	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	xi1 =  ph_ReXi(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	xi2 =  ph_ReXi(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2

	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	
c     dbar d --> ubar  u
       elseif(ferm_charge(1).eq.1.and.ferm_charge(2).eq.-1.and.
     # ferm_charge(3).eq.-2.and.ferm_charge(4).eq.2) then 
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	xi1 =  ph_ReXi(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	xi2 =  ph_ReXi(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	    +  ph_ImXi(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2

	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	
	
      endif

c     7 is the gluon      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
         p7(mu) = p(mu,7)
      enddo

      do mu=0,3
         pH(mu) = p5(mu)+p6(mu)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      p17 = dotp(p1,p7)
      p27 = dotp(p2,p7)
      p37 = dotp(p3,p7)
      p47 = dotp(p4,p7)

      p56sq=dotp(pH,pH)
      
      

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
         if(-(p13 + p17 - p37).le.0d0) then 
	    prop137 = 1d0/(-2*(p13 + p17 - p37)-mw2)
	 else    
	    prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mw2,mWgammaW)
	 endif   
	 if(-(p24 + p27 - p47).le.0d0) then  
            prop247 = 1d0/(-2*(p24 + p27 - p47)-mw2)
	 else    
	    prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mw2,mWgammaW)
         endif
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar

	 amp2u =  (8*(p13 + p17 - p37)**2*(2*p13*(p14*(2*p23 + p27) 
     .   - p23*p47) + p14*(2*p17*p23 + 2*p17*p27 - 2*p23*p37 - p37*s)
     .   + p23*(2*p37*p47 + p17*s2)))/(p17*p37) *prop24 *DCONJG(prop24)
     .	 * prop137 * DCONJG(prop137)

	 amp2u = amp2u * flagu1  
     .   +flagu2 *(8*p13**2*(2*p17*p23*(p24 + p27) - p23*p47*s + p14*(
     .   -2*p24*p37 + 2*p23*(2*p24 + p27 - p47) + 2*p37*p47 + p27*s2)))
     .   /(p27*p47) * prop13 * DCONJG(prop13)* prop247*DCONJG(prop247)
    
	 amp2d = (8*(p24 + p27 - p47)**2*(2*p17*p23*(p24 + p27) 
     .   - p23*p47*s + p14*(-2*p24*p37 + 2*p23*(2*p24 + p27 - p47) 
     .   + 2*p37*p47 + p27*s2)))/(p27*p47) * prop13 * DCONJG(prop13)* 
     .   prop247*DCONJG(prop247)
    
	 amp2d = amp2d * flagd2  
     .   + flagd1 * (8*p24**2*(2*p13*(p14*(2*p23 + p27) - p23*p47) 
     .   + p14*(2*p17*p23 + 2*p17*p27 - 2*p23*p37 - p37*s) + p23*(
     .   2*p37*p47 + p17*s2)))/(p17*p37) * prop24 *DCONJG(prop24)
     .	 * prop137 * DCONJG(prop137)
	 
    
    
c    couplings 
         amp2u = amp2u  * (unit_e/sthw)**4 /vev**2 * ckm2 * xi1
         amp2d = amp2d  * (unit_e/sthw)**4 /vev**2 * ckm1 * xi2

	 amp2 = (amp2u + amp2d) * CF * gs_sq
         
         
      endif            
      
      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p56sq-mH2)**2 + mHgammaH**2)
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


c     Same as q1_q2_to_q3_q4_H_g_flag with NO FLAG option
      subroutine q1_q2_to_q3_q4_H_g_xi(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      real * 8 pphy(0:3,nf)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 amp2
      integer flag
      integer rflav(nf)
      
      flag = 0      
      call q1_q2_to_q3_q4_H_g_flag_xi(pphy,fermion_type,fermion_charge,
     #     flag,rflav,amp2)

      end

c     g q and q g channel. Related to qq by crossing      
      
      subroutine g_q2_to_q3_q4_H_q1bar_xi(pphy,fermion_type,
     #fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf), ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(7)

      rflav_copy = rflav
      
      rflav_copy(1) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = + 1
      call q1_q2_to_q3_q4_H_g_flag_xi(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end

      subroutine q1_g_to_q3_q4_H_q2bar_xi(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(2) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = - 1
      call q1_q2_to_q3_q4_H_g_flag_xi(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end

      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c Real Matrix Elements for a modification to the W left handed current,
c and Z-quark L and R couplings
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     q q channel

      subroutine q1_q2_to_q3_q4_H_g_flag_dw(pphy,ferm_type,
     #     fermion_charge,flag,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      integer flag, flagu, flagd           
      real * 8 amp2, amp2u, amp2d, s, s2, vev, amp

      integer upper_line_only,lower_line_only
      parameter (upper_line_only=+1,lower_line_only=-1)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),p7(0:3),
     #     pH(0:3)
c      include 'coupl.inc'
c      include 'couplings.h'
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 p17,p27,p37,p47,p56sq

      real * 8 dotp
      complex * 16 ccdotp
      complex * 16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c      complex * 16 psi5(2,-1:1),psi6(2,-1:1)
c      complex * 16 jHdecay(0:3)
      complex * 16 prop13, prop24, fac, propH_sq
      complex * 16 prop137, prop247
      integer mu,i
      real * 8 p(0:3,7),pp1(0:3),pp2(0:3),pp3(0:3),pp4(0:3),pp7(0:3)
      real * 8 ampLLu, ampLRu, ampLLd, ampLRd
      integer utype_q1, utype_q2
      integer ferm_charge(nf), tmp
      real * 8 eps(0:3,1:2)     
      integer pol
      integer rflav(nf)
      real * 8 dw1, dw2, ckm1, ckm2
      real * 8 dzl1, dzr1, dzl2, dzr2, zl1, zr1, zl2, zr2
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e,gs_sq
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
      gs_sq = 4*pi*st_alpha
      
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif




c create a copy of local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
      enddo
      do i=1,nf
         ferm_charge(i) = fermion_charge(i)
      enddo

      
      if(flag.eq.1) then 
	flagu = 1d0
	flagd = 0d0
      elseif(flag.eq.-1) then
      	flagu = 0d0
	flagd = 1d0
      else 
      	flagu = 1d0
	flagd = 1d0
      endif
      
c    set the couplings    
c    Z channels 
      if(ferm_charge(1).eq.ferm_charge(3)) then
	if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.2) then
c       utype - utype	  
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(rflav(1))/2) 
     .                   -ph_Qphi3(abs(rflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(rflav(2))/2) 
     .                   -ph_Qphi3(abs(rflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Uphi (abs(rflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(rflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       utype - dtype
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  = -1/2d0 + 1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(rflav(1))/2) 
     .                   -ph_Qphi3(abs(rflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(rflav(2))+1)/2) 
     .         + ph_Qphi3((abs(rflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi (abs(rflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(rflav(2))+1)/2))
     	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2) 
     #	then
c       dtype - utype
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(rflav(1))+1)/2) 
     .         + ph_Qphi3((abs(rflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(rflav(2))/2) 
     .                   -ph_Qphi3(abs(rflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(rflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(rflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       dtype - dtype	  
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(rflav(1))+1)/2) 
     .        	        + ph_Qphi3((abs(rflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(rflav(2))+1)/2) 
     .         		+ ph_Qphi3((abs(rflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(rflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(rflav(2))+1)/2))
	 endif
c     I give the matrix elements for  q q. For q qbar, I need to exchange momenta 	 
	 if(rflav(1).gt.0.and.rflav(2).lt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 elseif(rflav(1).lt.0.and.rflav(2).gt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 endif 
      endif




c    Q Q channel      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2) 
        dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2) 
        ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
     
	
c     u ubar --> d dbar 

      elseif(ferm_charge(1).eq.2.and.ferm_charge(2).eq.-2.and.
     # ferm_charge(3).eq.-1.and.ferm_charge(4).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2) 
        dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)

c     and ubar u --> dbar  d 	
      elseif(ferm_charge(1).eq.-2.and.ferm_charge(2).eq.2.and.
     # ferm_charge(3).eq.1.and.ferm_charge(4).eq.-1) then
c     couplings  	
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)	
	

c     d dbar --> u ubar
      elseif(ferm_charge(1).eq.-1.and.ferm_charge(2).eq.1.and.
     # ferm_charge(3).eq.2.and.ferm_charge(4).eq.-2) then 
     	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	
c     dbar d --> ubar  u
       elseif(ferm_charge(1).eq.1.and.ferm_charge(2).eq.-1.and.
     # ferm_charge(3).eq.-2.and.ferm_charge(4).eq.2) then 
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	
	
      endif

c     7 is the gluon      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
         p7(mu) = p(mu,7)
      enddo

      do mu=0,3
         pH(mu) = p5(mu)+p6(mu)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      p17 = dotp(p1,p7)
      p27 = dotp(p2,p7)
      p37 = dotp(p3,p7)
      p47 = dotp(p4,p7)

      p56sq=dotp(pH,pH)
      
      
      

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
	if(-(p13 + p17 - p37).le.0d0) then 
	  prop137 = 1d0/(-2*(p13 + p17 - p37)-mz2)
	else    
	  prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mz2,mZgammaZ)
	endif   
	if(-(p24 + p27 - p47).le.0d0) then  
	  prop247 = 1d0/(-2*(p24 + p27 - p47)-mz2)
	else    
	  prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mz2,mZgammaZ)
	endif

c      basic amplitudes

	ampLLu = 4*mz2**2*(-2*p14*p37*s + 2*(p13 + p17)*p47*s 
     .  + (-2*p13*p27 + 2*p27*p37 + 2*p13*s - p37*s + p17*(2*p23 
     .  + s))*s2)* prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     .  /(p17*p37) * flagu
         
        ampLLd = 4*mz2**2*(2*((p24 + p27)*p37 - p23*p47)*s 
     .  + (2*p14*p27 + 2*p17*(-p24 + p47) + (2*p24 + p27 - p47)*s)*s2)
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
     .  * flagd 
         
        ampLRu = 8*mz2**2*(2*p13*(p14*(2*p23 + p27) - p23*p47) 
     .  + p14*(2*p17*p23 + 2*p17*p27 - 2*p23*p37 - p37*s) 
     .  + p23*(2*p37*p47 + p17*s2)) * prop24 * DCONJG(prop24)
     .  *prop137 * DCONJG(prop137)/(p17*p37) *flagu
      
        
        ampLRd = 8*mz2**2*(2*p17*p23*(p24 + p27) - p23*p47*s + 
     .  p14*(-2*p24*p37 + 2*p23*(2*p24 + p27 - p47) + 2*p37*p47 
     .  + p27*s2))* prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     .  /(p27*p47) * flagd

     
	amp2  = -4/mz2 * (p13 + p17 - p37) *(
     .	( zl2**2 * zl1 * dzl1 + zr2**2 * zr1 * dzr1 ) * ampLLu 
     . +( zr2**2 * zl1 * dzl1 + zl2**2 * zr1 * dzr1 ) * ampLRu)
     .          -4/mz2 * p24 * (
     .	( zl1**2 * zl2 * dzl2 + zr1**2 * zr2 * dzr2 ) * ampLLu 
     . +( zr1**2 * zl2 * dzl2 + zl1**2 * zr2 * dzr2 ) * ampLRu)
     
     
     	amp2  = amp2 -4/mz2 * p13 *(
     .	( zl2**2 * zl1 * dzl1 + zr2**2 * zr1 * dzr1 ) * ampLLd 
     . +( zr2**2 * zl1 * dzl1 + zl2**2 * zr1 * dzr1 ) * ampLRd)
     .          -4/mz2 * (p24 + p27 - p47) * (
     .	( zl1**2 * zl2 * dzl2 + zr1**2 * zr2 * dzr2 ) * ampLLd 
     . +( zr1**2 * zl2 * dzl2 + zl1**2 * zr2 * dzr2 ) * ampLRd)
     
	amp2  = amp2 + 4/mz2**2 *(p13 + p17 - p37)**2 *( 
     .	  (zl2**2 * dzl1**2 + zr2**2 * dzr1**2 ) * ampLLu 
     .  + (zr2**2 * dzl1**2 + zl2**2 * dzr1**2 ) * ampLRu )
     .	+  4/mz2**2 *p24**2 *( 
     .	  (zl1**2 * dzl2**2 + zr1**2 * dzr2**2 ) * ampLLu 
     .  + (zr1**2 * dzl2**2 + zl1**2 * dzr2**2 ) * ampLRu ) 
     .  - 2/mz2**2 * (mz2**2  - 4*p24*(p13 + p17 - p37) 
     .  + 2*mz2 * (p13 + p17 - p37 +p24)) * (
     .  + (zl1 * zl2 * dzl1 * dzl2 + zr1 * zr2 * dzr1 * dzr2)*ampLLu
     .	+ (zl1 * zr2 * dzl1 * dzr2 + zr1 * zl2 * dzr1 * dzl2)*ampLRu )
     
     	amp2  = amp2 + 4/mz2**2 *(p13)**2 *( 
     .	  (zl2**2 * dzl1**2 + zr2**2 * dzr1**2 ) * ampLLd 
     .  + (zr2**2 * dzl1**2 + zl2**2 * dzr1**2 ) * ampLRd )
     .	+  4/mz2**2 *(p24 + p27 - p47)**2 *( 
     .	  (zl1**2 * dzl2**2 + zr1**2 * dzr2**2 ) * ampLLd 
     .  + (zr1**2 * dzl2**2 + zl1**2 * dzr2**2 ) * ampLRd ) 
     .  - 2/mz2**2 * (mz2**2  - 4*p13*(p24 + p27 - p47) 
     .  + 2*mz2 * (p24 + p27 - p47 +p13)) * (
     .  + (zl1 * zl2 * dzl1 * dzl2 + zr1 * zr2 * dzr1 * dzr2)*ampLLd
     .	+ (zl1 * zr2 * dzl1 * dzr2 + zr1 * zl2 * dzr1 * dzl2)*ampLRd )
     
     	amp2 = amp2 * (unit_e/ph_sthw/ph_cthw)**4/vev**2 * CF * gs_sq
         
         
         
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
         if(-(p13 + p17 - p37).le.0d0) then 
	    prop137 = 1d0/(-2*(p13 + p17 - p37)-mw2)
	 else    
	    prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mw2,mWgammaW)
	 endif   
	 if(-(p24 + p27 - p47).le.0d0) then  
            prop247 = 1d0/(-2*(p24 + p27 - p47)-mw2)
	 else    
	    prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mw2,mWgammaW)
         endif
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
	 amp =  (unit_e/sthw)**4*mw2**2/vev**2*
     .	 (-2*p14*p37*s + 2*(p13 + p17)*p47*s + (-2*p13*p27 + 2*p27*p37 
     .   + 2*p13*s - p37*s + p17*(2*p23 + s))*s2)
     .   * prop24 * DCONJG(prop24) *prop137* DCONJG(prop137)/(p17*p37) 

c    linear in new physics 
	 amp2u = -4/mw2 *(p13 + p17 - p37)* ckm1 * ckm2**2 * dw1 * amp  
     .           -4/mw2 *p24 * ckm1**2 * ckm2 * dw2 * amp
	 
c    quadratic in new physics	 
	 amp2u = amp2u 
     .   + 4/mw2**2 *(p13 + p17 - p37)**2 * ckm2**2 * dw1**2 *amp
     .   + 4/mw2**2 * p24**2 * ckm1**2 * dw2**2 *amp
     .   - 2/mw2**2 * ckm1 * ckm2 * dw1 * dw2 *( mw2**2 - 4*p24*(p13 
     .   + p17 -p37) + 2*mw2*(p13+p17 + p24- p37)) *amp
	 
	 amp = (unit_e/sthw)**4*mw2**2/vev**2*
     .	 (2*((p24 + p27)*p37 - p23*p47)*s + (2*p14*p27 + 2*p17*(-p24 
     .   + p47) + (2*p24 + p27 - p47)*s)*s2)
     .   * prop13 * DCONJG(prop13) *prop247* DCONJG(prop247)/(p27*p47)  
    
	 amp2d = -4/mw2 *p13 * ckm1 * ckm2**2 * dw1 *amp
     .           -4/mw2 *(p24 + p27 - p47) * ckm1**2 * ckm2 * dw2 *amp	  
	 
	 amp2d = amp2d + 4/mw2**2 * p13**2 * ckm2**2 * dw1**2 *amp
     .   + 4/mw2**2 * (p24 + p27 - p47)**2 * ckm1**2 * dw2**2 *amp
     .   - 2/mw2**2 * ckm1 * ckm2 * dw1 * dw2 * (mw2**2 - 4*p13*(p24 
     .   + p27 -p47) + 2*mw2*(p13 + p24 + p27 -p47)  ) *amp
     . 
    
	 amp2 = (amp2u*flagu + amp2d*flagd) * CF * gs_sq

         
         
         
      endif            
      
      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p56sq-mH2)**2 + mHgammaH**2)
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


c     Same as q1_q2_to_q3_q4_H_g_flag with NO FLAG option
      subroutine q1_q2_to_q3_q4_H_g_dw(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      real * 8 pphy(0:3,nf)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 amp2
      integer flag
      integer rflav(nf)
      
      flag = 0      
      call q1_q2_to_q3_q4_H_g_flag_dw(pphy,fermion_type,fermion_charge,
     #     flag,rflav,amp2)

      end

c     g q and q g are related to qqbar 
      
      subroutine g_q2_to_q3_q4_H_q1bar_dw(pphy,fermion_type,
     #fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf), ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(1) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = + 1
      call q1_q2_to_q3_q4_H_g_flag_dw(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end


      subroutine q1_g_to_q3_q4_H_q2bar_dw(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(2) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = - 1
      call q1_q2_to_q3_q4_H_g_flag_dw(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end      
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c Real Matrix Elements for phi^dagger phi V V operators 
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      
c     q q channel

      subroutine q1_q2_to_q3_q4_H_g_flag_vv(pphy,ferm_type,
     #     fermion_charge,flag,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      integer flag, flagu, flagd           
      real * 8 amp2, amp2u, amp2d, s, s2, vev, amp

      integer upper_line_only,lower_line_only
      parameter (upper_line_only=+1,lower_line_only=-1)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),p7(0:3),
     #     pH(0:3)
c      include 'coupl.inc'
c      include 'couplings.h'
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 p17,p27,p37,p47,p56sq
      real * 8 cZZ, cZg, cgg, Q1, Q2
      real * 8 rr1, rr2 
      real * 8 dotp
      complex * 16 ccdotp
      complex * 16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c      complex * 16 psi5(2,-1:1),psi6(2,-1:1)
c      complex * 16 jHdecay(0:3)
      complex * 16 prop13, prop24, fac, propH_sq
      complex * 16 prop137, prop247
      integer mu,i
      real * 8 p(0:3,7),pp1(0:3),pp2(0:3),pp3(0:3),pp4(0:3),pp7(0:3)
      real * 8 ampLLu,   ampLRu,   ampLLd,   ampLRd
      real * 8 ampLLu_2, ampLRu_2, ampLLd_2, ampLRd_2, amp22
      integer utype_q1, utype_q2
      integer ferm_charge(nf), tmp
      real * 8 eps(0:3,1:2)     
      integer pol
      integer rflav(nf)
      real * 8 dw1, dw2, ckm1, ckm2
      real * 8 dzl1, dzr1, dzl2, dzr2, zl1, zr1, zl2, zr2
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e,gs_sq
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
      gs_sq = 4*pi*st_alpha
      
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif




c create a copy of local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
      enddo
      do i=1,nf
         ferm_charge(i) = fermion_charge(i)
      enddo

      
      if(flag.eq.1) then 
	flagu = 1d0
	flagd = 0d0
      elseif(flag.eq.-1) then
      	flagu = 0d0
	flagd = 1d0
      else 
      	flagu = 1d0
	flagd = 1d0
      endif

      cZZ = cthw**2 * ph_cww + sthw**2 * ph_cbb + cthw * sthw * ph_cwb
      cgg = sthw**2 * ph_cww + cthw**2 * ph_cbb - cthw * sthw * ph_cwb
      cZg = 2*cthw*sthw *(ph_cww - ph_cbb) - (cthw**2-sthw**2)* ph_cwb            

      
c    set the couplings    
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
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(rflav(1))/2) 
     .                   -ph_Qphi3(abs(rflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(rflav(2))/2) 
     .                   -ph_Qphi3(abs(rflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Uphi (abs(rflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(rflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       utype - dtype
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  = -1/2d0 + 1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   =  2/3d0 
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(rflav(1))/2) 
     .                   -ph_Qphi3(abs(rflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(rflav(2))+1)/2) 
     .         		+ ph_Qphi3((abs(rflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi (abs(rflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(rflav(2))+1)/2))
     	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2) 
     #	then
c       dtype - utype
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  Q1   = -1/3d0 
	  Q2   =  2/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(rflav(1))+1)/2) 
     .     	        + ph_Qphi3((abs(rflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(rflav(2))/2) 
     .                   -ph_Qphi3(abs(rflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(rflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(rflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       dtype - dtype	  
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   = -1/3d0 
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(rflav(1))+1)/2) 
     .         		+ ph_Qphi3((abs(rflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(rflav(2))+1)/2) 
     .       	        + ph_Qphi3((abs(rflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(rflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(rflav(2))+1)/2))
	 endif
c     I give the matrix elements for  q q. For q qbar, I need to exchange momenta 	 
	 if(rflav(1).gt.0.and.rflav(2).lt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 elseif(rflav(1).lt.0.and.rflav(2).gt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 endif 
      endif




c    Q Q channel      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2) 
        dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2) 
        ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
     
	
c     u ubar --> d dbar 

      elseif(ferm_charge(1).eq.2.and.ferm_charge(2).eq.-2.and.
     # ferm_charge(3).eq.-1.and.ferm_charge(4).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2) 
        dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)

c     and ubar u --> dbar  d 	
      elseif(ferm_charge(1).eq.-2.and.ferm_charge(2).eq.2.and.
     # ferm_charge(3).eq.1.and.ferm_charge(4).eq.-1) then
c     couplings  	
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)	
	

c     d dbar --> u ubar
      elseif(ferm_charge(1).eq.-1.and.ferm_charge(2).eq.1.and.
     # ferm_charge(3).eq.2.and.ferm_charge(4).eq.-2) then 
     	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	
c     dbar d --> ubar  u
       elseif(ferm_charge(1).eq.1.and.ferm_charge(2).eq.-1.and.
     # ferm_charge(3).eq.-2.and.ferm_charge(4).eq.2) then 
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	
	
      endif

c     7 is the gluon      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
         p7(mu) = p(mu,7)
      enddo

      do mu=0,3
         pH(mu) = p5(mu)+p6(mu)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      p17 = dotp(p1,p7)
      p27 = dotp(p2,p7)
      p37 = dotp(p3,p7)
      p47 = dotp(p4,p7)

      p56sq=dotp(pH,pH)
      
      

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
	if(-(p13 + p17 - p37).le.0d0) then 
	  prop137 = 1d0/(-2*(p13 + p17 - p37)-mz2)
	else    
	  prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mz2,mZgammaZ)
	endif   
	if(-(p24 + p27 - p47).le.0d0) then  
	  prop247 = 1d0/(-2*(p24 + p27 - p47)-mz2)
	else    
	  prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mz2,mZgammaZ)
	endif

c      basic amplitudes

	ampLLu =  (       
     . -8*p14**2*(p23 + p27)*p37 + 8*p24*p37*(p17*p23 + p27*p37) 
     .- 8*(p17*(p23**2 + p17*p24) + p23*p27*p37)*p47 - 4*(p24*(p17**2 
     .- p17*p37 + p37**2) - p23*p37*p47 + p17*p47**2)*s 
     .+ 2*(-p17 + p37)*p47*s**2 + 4*p14*(2*(p17*p23**2 - p13*p23*p27 
     .+ p13*p24*p37 + p17*p24*p37 + p23*p27*p37 + (p13 + p17)*(p23 
     .+ p27)*p47) + (p17*(p23 + p27) + p13*(2*p23 + p27) + p37*(-2*p23 
     .- p27 + p47))*s) - 2*p13*(4*p17*p24*(p23 + 2*p47 + s) 
     .+ p24*(8*p27*p37 - 6*p37*s) + p47*(-4*p23*p27 + 2*(p23 + p47)*s 
     .+ s**2)) + 8*p13**2*p24*(p27 - p47 - s - s2) - 2*p13*(6*p17*p24 
     .+ 2*p27**2 - 4*p24*p37 + 2*p23*p47 - 2*p27*s + 2*p47*s + s**2)*s2 
     .+ 2*p14*(2*p13*(2*p23 + p27) + 2*p17*(2*p23 + p27) + p37*(-2*p23 
     .+ s))*s2 - (4*p17**2*p24 + 2*p37*(-2*p27**2 + 2*p24*p37 
     .- 2*p23*p47 + 2*p27*s - s**2) + p17*(-4*p24*p37 + 4*p47*s + s**2 
     .+ 2*p23*(-2*p27 + 2*p47 + s)))*s2 + 2*p13*(p27 - s)*s2**2 
     .+ (2*p17*(p27 - s) + p37*(-2*p27 + s))*s2**2)
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)/(p17*p37)
     .   * flagu
         
        ampLLd = ( 
     .  8*p14**2*p27*(p23 - p37) - 2*(2*p17*p23 - p37*s)*(-2*(p24 
     .+ p27)*p37 + 2*p23*p47 - (p24 + p27 - p47)*s) + (4*p17**2*(-p24 
     .+ p47) - s*(4*(p24 + p27)*p37 - 2*p23*p47 + (2*p24 + p27 
     .- 2*p47)*s) + 4*p17*(p23*(p24 + p27) + (p24 - p47)*s))*s2 
     .+ (2*p17*(p24 + p27 - p47) + (-2*(p24 + p27) + p47)*s)*s2**2 
     .+ p14*(8*p23*p24*p37 + 8*p23*p27*p37 - 8*p17*(p23 - p37)*(p24 
     .- p47) - 8*p23**2*p47 + 8*p13*p27*(-p24 + p47) + 8*p23*p24*s 
     .+ 4*p23*p27*s - 4*p24*p37*s - 8*p23*p47*s + 4*p37*p47*s 
     .+ 8*p23*p24*s2 + 4*p17*p27*s2 + 8*p23*p27*s2 - 4*p24*p37*s2 
     .- 4*p27*p37*s2 - 4*p23*p47*s2 + 4*p37*p47*s2 - 2*p27*s*s2) 
     .+ 4*p13*(-2*p27**2*p37 + 2*p17*(p24 - p47)**2 + 2*p23*p27*p47 
     .- p27**2*s + p27*p47*s - p47**2*s -(p27**2 - p27*p47 + p47**2)*s2 
     .- 2*p24**2*(p37 + s + s2) + p24*(p47*(2*p23 + 3*s + 2*s2) 
     .- p27*(4*p37 + 2*s + 3*s2))))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
     .  * flagd 
         
        ampLRu = (        
     .  8*p14**2*(p17*(p23 + p27) - (2*p23 + p27)*p37) 
     .+ 8*p24*(p17**2*(p23 + p27) - p17*p23*p37 + p23*p37**2) 
     .+ 8*p13**2*p24*(2*p14 + 2*p23 + p27 - p47) - 8*(p17*p23**2 
     .+ p37*(-p23**2 + p24*p37))*p47 - 8*p23*p37*p47**2 -4*p17*(p24*p37 
     .+ (p23 + p27)*p47)*s + 2*p37*p47*s**2 + (p37*(4*p27*p47 - 2*p47*s 
     .+ s**2 + 2*p23*(-2*p27 + s)) - 2*p17*(2*p24*p37 + p27*s + 2*p23*(
     .-p27 + p47 + s)))*s2 + p17*(2*p27 - s)*s2**2 + 2*p13*(4*(p14**2*(
     . 2*p23 + p27) + p17*p24*(3*p23 + 2*p27) + p14*(2*p23**2 
     .+ 2*p17*p24 + p27**2 - 3*p24*p37 + 2*p23*(p27 - p47)) 
     .- (p23 - p47)*(2*p24*p37 + p23*p47)) - 2*(p24*p37 + (p14 + p23 
     .+ p27)*p47)*s + (2*p17*p24 + 2*p27*(p14 + p23 - p47) - (2*p14 
     .+ 2*p23 + p27 - p47)*s)*s2) + 2*p14*(4*p17**2*p24 + p17*(8*p23**2 
     .+ 4*p27**2 - 4*p24*p37 + 2*p23*(4*p27 + s2) - s*(2*p47 + s2)) 
     .+ 2*p37*(-2*p23**2 + 2*p24*p37 + p23*(4*p47 - s) + s*(p47 + s2) 
     .- p27*(s + s2))))
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)/(p17*p37) 
     .  *flagu
      
        
        ampLRd = ( 8*p17**2*p23*(p24 + p27) + 8*p14**2*((p24 
     .+ p27)*(2*p23 - p37) + (-p23 + p37)*p47) + 8*p13*(-(p37*(p24 
     .- p47)**2) + p23*(2*p24**2 + 2*p24*p27 + p27**2 - (3*p24 
     .+ p27)*p47 + p47**2)) - 4*(p23*p37*(p24 + p27 - p47) + p13*(p24 
     .+ p27)*p47)*s + 2*p37*p47*s**2 + (4*p13*p27*(p24 - p47) 
     .+ s*(2*p24*p37 - 2*p23*(2*p24 + p27 - 2*p47) - 2*p37*p47 
     .+ p47*s))*s2 - p27*s*s2**2 + 2*p14*(4*(2*p13*p24**2 
     .+ 3*p13*p24*p27 + p13*p27**2 + 2*p17*p23*(p24 + p27) 
     .+ p24*p37**2 + p23**2*(2*p24 + p27 - 2*p47) - (2*p13*p24 
     .+ p13*p27 + p37**2)*p47 + p13*p47**2 + 2*p23*p37*(-p24 + p47)) 
     .- 2*((p24 + p27)*p37 + p23*p47)*s + (2*p23*p27 - 2*p27*p37 
     .+ 2*p17*(p24 + p27 - p47) - 2*p24*s - 2*p27*s + p47*s)*s2) 
     .+ 2*p17*(4*p13*(p24 + p27)**2 + 4*p23**2*(p24 + p27 - p47) 
     .- 2*(p24 + p27)*p37*s - (2*p37*(p24 - p47) + (p24 + p27)*s)*s2 
     .+ p27*s2**2 - 2*p23*(-(p24*s2) + p47*(s + s2))))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47) 
     .  * flagd

     
	amp2  = (
     .  ( zl1**2 * zl2**2 + zr1**2 * zr2**2 ) * ampLLu 
     . +( zl1**2 * zr2**2 + zr1**2 * zl2**2 ) * ampLRu
     . +( zl1**2 * zl2**2 + zr1**2 * zr2**2 ) * ampLLd
     . +( zl1**2 * zr2**2 + zr1**2 * zl2**2 ) * ampLRd) * cZZ
     . + (
     . (( zl1*Q1 * zl2*Q2 + zr1*Q1 * zr2*Q2 ) * ampLLu 
     . +( zl1*Q1 * zr2*Q2 + zr1*Q1 * zl2*Q2 ) * ampLRu)*
     .  (1 + mz2/(2*(p13 + p17 - p37))) * (1 + mz2/2d0/p24)
     . +((zl1*Q1 * zl2*Q2 + zr1*Q1 * zr2*Q2 ) * ampLLd
     . +( zl1*Q1 * zr2*Q2 + zr1*Q1 * zl2*Q2 ) * ampLRd)*
     .   (1 + mz2/2d0/p13) * (1 + mz2/2d0/(p24 + p27 - p47))
     .	) * cgg* cthw**2 * sthw**2     
     . + ( 
     .  (( zl1*Q1 * zl2**2 + zr1*Q1 * zr2**2 ) * ampLLu 
     . +(  zl1*Q1 * zr2**2 + zr1*Q1 * zl2**2 ) * ampLRu)
     . *(1 + mz2/(2*(p13 + p17 - p37)))
     . +(( zl1*Q1 * zl2**2 + zr1*Q1 * zr2**2 ) * ampLLd
     . +(  zl1*Q1 * zr2**2 + zr1*Q1 * zl2**2 ) * ampLRd)*
     . (1 + mz2/(2*p13)) ) * cZg * cthw * sthw/2d0
     . + (
     .  (( zl1**2 * zl2*Q2 + zr1**2 * zr2*Q2 ) * ampLLu 
     . + ( zl1**2 * zr2*Q2 + zr1**2 * zl2*Q2 ) * ampLRu)*
     .  (1 + mz2/2d0/p24)
     . +( ( zl1**2 * zl2*Q2 + zr1**2 * zr2*Q2 ) * ampLLd
     . +(   zl1**2 * zr2*Q2 + zr1**2 * zl2*Q2 ) * ampLRd) 
     . *(1 + mz2/2d0/(p24 + p27 - p47))  ) * cZg* cthw * sthw/2d0
     
     
     
     	amp2 = amp2 * mz2*4* (unit_e/ph_sthw/ph_cthw)**4/vev**2 
     .  * CF * gs_sq
         
         
c     terms quadratic in new physics          
	ampLLu_2 = (2*(16*p13**3*p24**2 + 8*p14**2*(p17*(2*p23**2 
     .	+ 2*p23*p27 + p27**2) - (2*p23**2 + 2*p23*p27 + p27**2)*p37 
     .+ p24*p37**2) + 8*(p24*(p17**3*p24 + p17**2*(p23**2 - p24*p37) 
     .+ p37**2*(p27**2 - p24*p37) + p17*p37*(2*p23*p27 + p24*p37)) 
     .+ 2*p23*p24*p37*(-p17 + p37)*p47 + (p17*(p23**2 + p17*p24) 
     .- p23**2*p37)*p47**2) - 8*p24*p37*(p17*p23 + p27*p37)*s 
     .+ 2*(p24*(p17**2 - 2*p17*p37 + 2*p37**2) + (p17 
     .- p37)*p47**2)*s**2 + 8*p14*(-2*p24*(p17 - p37)*(p17*(p23 + p27) 
     .- p23*p37) - 2*(-(p23**2*p37) + p17*(p23**2 + p24*p37))*p47 
     .+ (p17 - p37)*(p24*p37 - (p23 + p27)*p47)*s) 
     .+ 4*p14*(2*p17*p23*p27 - 2*(p17*p24 + p23*p27)*p37 - (2*p23 
     .+ p27)*(p17 - p37)*s)*s2 + 2*(4*p17*p23*p24*(-p17 + p37) 
     .+ 4*(p17**2*p24 - p17*p23*p27 + p23*p27*p37)*p47 + 2*p23*(p17 
     .- p37)*p47*s + (p17 - p37)*p47*s**2)*s2 + (2*p17*(2*p17*p24 
     .+ p27**2) - 2*(2*p17*p24 + p27**2)*p37 + 2*p24*p37**2 + 2*p27*(
     .-p17 + p37)*s + (p17 - p37)*s**2)*s2**2 + 4*p13**2*p24*(8*p17*p24 
     .+ 2*p27**2 - 4*p14*(2*p23 + p27) - 8*p24*p37 + 2*p47*(2*p23 +p47) 
     .- 2*p27*s + s**2 + 2*p47*s2 + s2**2) + p13*(8*p14**2*(2*p23**2 
     .+ 2*p23*p27 + p27**2) + 8*(p24*(p17*(3*p17*p24 - 2*p23*p27) 
     .- 2*(2*p17*p24 + p27**2)*p37 + 3*p24*p37**2) + 2*p23*p24*(p17 
     .- 2*p37)*p47 + (p23**2 + 2*p17*p24)*p47**2) + 8*p24*(p17*p23 
     .+ 2*p27*p37)*s + 2*(2*p17*p24 - 4*p24*p37 + p47**2)*s**2 
     .+ 2*(-4*p17*p24*(p23 - 2*p47) + p47*(s**2 + 2*p23*(-2*p27 
     .+ s)))*s2 + (8*p17*p24 + 2*p27**2 - 4*p24*p37 - 2*p27*s 
     .+ s**2)*s2**2 - 4*p14*(4*p17*p24*(3*p23 + 2*p27) - 4*p24*p27*p37 
     .+ 4*p23**2*p47 + 4*p24*p37*p47 - 2*p24*p37*s + 2*p27*p47*s 
     .+ 2*p24*p37*s2 + p27*s*s2 + 2*p23*(-6*p24*p37 - p27*s2 
     .+ s*(p47 + s2)))))) 
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)/(p17*p37)
     .   * flagu
         
        ampLLd_2 = ( 2*(16*p13**2*p24**3 + 32*p13**2*p24**2*p27 
     .+ 24*p13**2*p24*p27**2 + 8*p13**2*p27**3 + 8*p13*p24**2*p37**2 
     .+ 16*p13*p24*p27*p37**2 + 8*p13*p27**2*p37**2 + 8*p14**2*(
     . p13*p27**2 + 2*p23**2*(p24 + p27 - p47) - 2*p23*p37*(p24 + p27 
     .- p47) + p37**2*(p24 + p27 - p47)) - 32*p13**2*p24**2*p47 
     .- 32*p13**2*p24*p27*p47 - 8*p13**2*p27**2*p47 
     .- 16*p13*p23*p24*p37*p47 - 16*p13*p23*p27*p37*p47 
     .+ 8*p13*p23**2*p47**2 + 24*p13**2*p24*p47**2 +8*p13**2*p27*p47**2 
     .- 8*p13**2*p47**3 + 8*p13*p23*p24*p47*s + 8*p13*p23*p27*p47*s 
     .- 8*p13*p23*p47**2*s + 4*p13*p24**2*s**2 + 4*p13*p24*p27*s**2 
     .+ 2*p13*p27**2*s**2 + 2*p24*p37**2*s**2 + 2*p27*p37**2*s**2 
     .- 8*p13*p24*p47*s**2 - 4*p13*p27*p47*s**2 - 2*p37**2*p47*s**2 
     .+ 4*p13*p47**2*s**2 + 2*(4*p13*(p24 + p27)*((p24 + p27)*p37 
     .- p23*p47) + p37*(p24 + p27 - p47)*s**2)*s2 + (2*p13*(2*(p24 
     .+ p27)**2 - 2*(p24 + p27)*p47 + p47**2) + (p24 + p27 
     .- p47)*s**2)*s2**2 + 4*p14*(4*p17*(p23**2*(p24 + p27 - p47) 
     .+ p13*p27*(-p24 + p47)) - 4*p13*(p24 + p27 - p47)*(p23*(2*p24 
     .+ p27 - p47) + p37*(-p24 + p47)) + 2*p13*p27*(p24 - p47)*s 
     .- 2*p23*p37*(p24 + p27 - p47)*s + 2*p17*(p23 - p37)*(p24 + p27 
     .- p47)*s2 - (p24 + p27 - p47)*(2*p13*p27 + 2*p23*s - p37*s)*s2) 
     .+ 2*p17**2*(4*p13*(p24 - p47)**2 + 4*p23**2*(p24 + p27 - p47) 
     .+ (p24 + p27 - p47)*s2**2) + 2*p17*(-8*p13*p23*(p24 + p27)*(p24 
     .+ p27 - p47) - 4*p13*(p24 - p47)**2*s - (p24 + p27 - p47)*s*(
     . s2**2 + 2*p23*(2*p37 + s2)))))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
     .  * flagd 
         
        ampLRu_2 = ( 2*(16*p13**3*p24**2 + 8*p14**2*(p17*(2*p23**2 
     .+ p17*p24 + 2*p23*p27 + p27**2) - (2*p23**2 + 2*p17*p24 
     .+ 2*p23*p27 + p27**2)*p37 + 2*p24*p37**2) + 8*p24*(p17**2*(
     . 2*p23**2 + p17*p24 + 2*p23*p27 + p27**2) - p17*(2*p23**2 
     .+ p17*p24)*p37 + (p23**2 + p17*p24)*p37**2 - p24*p37**3) 
     .+ 8*(p17*p23**2 + p37*(-p23**2 + p24*p37))*p47**2 
     .- 8*p17*p24*(p37*(p23 + p27 - p47) + p17*p47)*s 
     .+ 2*(p24*p37**2 + (p17 - p37)*p47**2)*s**2 + 2*(-4*p24*(p17 
     .- p37)*(p17*p23 + p27*p37) + 4*(-(p17*p23*p27) + p17*p24*p37 
     .+ p23*p27*p37)*p47 - 2*(p17 - p37)*(p17*p24 - p24*p37 -p23*p47)*s 
     .+ (p17 - p37)*p47*s**2)*s2 + (2*p17*(p17*p24 + p27**2) 
     .- 2*p27**2*p37 + 2*p27*(-p17 + p37)*s + (p17 - p37)*s**2)*s2**2 
     .+ 4*p14*(-4*(p17*p23**2 + p37*(-p23**2 + p24*p37))*p47 - 2*(p17 
     .- p37)*(-(p24*p37) + (p23 + p27)*p47)*s + (2*p17*p23*p27 
     .- 2*(p17*p24 + p23*p27)*p37 - (2*p23 + p27)*(p17 - p37)*s)*s2) 
     .+ 8*p13**2*p24*(2*p14**2 + 2*p23**2 + 2*p23*p27 + 4*p24*(p17 
     .- p37) - 2*p14*p47 + p47**2 - p47*s - s*s2 + p27*(p27 + s2)) 
     .+ p13*(8*p14**2*(2*p23**2 + 2*p17*p24 + 2*p23*p27 + p27**2 
     .- 4*p24*p37) + 8*p24*(p17*(4*p23**2 + 3*p17*p24 + 4*p23*p27 
     .+ 2*p27**2) - 2*(p23**2 + 2*p17*p24)*p37 + 3*p24*p37**2) 
     .+ 8*(p23**2 - 2*p24*p37)*p47**2 - 8*p24*(p37*(p23 + p27 - p47) 
     .+ 2*p17*p47)*s + 2*p47**2*s**2 - 2*(8*p24*p27*p37 + 4*p23*p27*p47 
     .+ 4*p17*p24*(p23 - p27 + p47) + 6*p17*p24*s - 6*p24*p37*s 
     .- 2*p23*p47*s - p47*s**2)*s2 + (2*p27**2 - 2*p27*s + s**2)*s2**2 
     .- 4*p14*(4*p23**2*p47 + p27*s*(2*p47 + s2) - 2*p24*(4*p37*p47 
     .+ p37*s + p17*s2) + 2*p23*(-(p27*s2) + s*(p47 + s2))))))
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)/(p17*p37) 
     .  *flagu
      
        
        ampLRd_2 = (2*(16*p13*p23**2*p24**2 + 16*p13**2*p24**3 
     .+ 16*p13*p23**2*p24*p27 + 32*p13**2*p24**2*p27 
     .+ 8*p13*p23**2*p27**2 + 24*p13**2*p24*p27**2 
     .+ 8*p13**2*p27**3 - 16*p13*p23*p24**2*p37 
     .+ 8*p13*p24**2*p37**2 -32*p13*p23**2*p24*p47-32*p13**2*p24**2*p47 
     .- 16*p13*p23**2*p27*p47 - 32*p13**2*p24*p27*p47 
     .- 8*p13**2*p27**2*p47 + 32*p13*p23*p24*p37*p47 
     .- 16*p13*p24*p37**2*p47 + 16*p13*p23**2*p47**2 
     .+ 24*p13**2*p24*p47**2 + 8*p13**2*p27*p47**2 
     .- 16*p13*p23*p37*p47**2 + 8*p13*p37**2*p47**2 
     .- 8*p13**2*p47**3 + 8*p14**2*((p24 + p27)*(2*p23**2 + 2*p13*(p24 
     .+ p27) - 2*p23*p37 + p37**2) - (2*p23**2 + 2*p13*(p24 + p27) 
     .- 2*p23*p37 + p37**2)*p47 + p13*p47**2) - 8*p13*p24**2*p37*s 
     .- 16*p13*p24*p27*p37*s - 8*p13*p27**2*p37*s +8*p13*p23*p24*p47*s 
     .+ 8*p13*p23*p27*p47*s + 8*p13*p24*p37*p47*s +8*p13*p27*p37*p47*s 
     .- 8*p13*p23*p47**2*s - 8*p17*(p23*p37*(p24 + p27 - p47)+p13*(p24 
     .+ p27)*p47)*s + 2*p24*p37**2*s**2 + 2*p27*p37**2*s**2 
     .- 2*p37**2*p47*s**2 + 2*p13*p47**2*s**2 - 4*p17*(p24 + p27 - p47
     .)*(2*p13*(-p24 + p47) + p23*s)*s2 + 2*(4*p13*p27*(p23 - p37)*(p24 
     .- p47) - 2*p13*(p24 + p27 - p47)*(2*p24 + p27 - p47)*s 
     .+ p37*(p24 + p27 - p47)*s**2)*s2 - 2*p17*(p24 + p27 -p47)*s*s2**2 
     .+ (2*p13*p27**2 + (p24 + p27 - p47)*s**2)*s2**2 + 4*p14*(4*p17*(
     . p13*(p24 + p27)**2 + p23**2*(p24 + p27 - p47)) - 2*(p23*p37*(p24 
     .+ p27 - p47) + p13*(p24 + p27)*p47)*s + (p24 + p27 - p47)*(
     . -2*p13*p27 + 2*p17*(p23 - p37) - 2*p23*s + p37*s)*s2) 
     .+ 2*p17**2*(4*p13*(p24 + p27)**2 + 4*p23**2*(p24 + p27 - p47) 
     .+ (p24 + p27 - p47)*s2**2)))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47) 
     .  * flagd

     
c      correction to the up leg

	rr1 =   (1 + mz2/2d0/(p13 + p17 - p37 ) ) * cthw * sthw
	rr2 =   (1 + mz2/2d0/p24) * cthw * sthw

	amp22 = 0d0  
	amp22 = amp22 + ampLLu_2 *(
     .  cZZ**2 * zl1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zl2**2 *rr1 + zl1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
	amp22 = amp22 + ampLLu_2 *(
     .  cZZ**2 * zr1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zr2**2 *rr1 + zr1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))     
	
	amp22 = amp22 + ampLRu_2 *(
     .  cZZ**2 * zr1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zl2**2 *rr1 + zr1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))

	amp22 = amp22 + ampLRu_2 *(
     .  cZZ**2 * zl1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zr2**2 *rr1 + zl1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
 
c    corrections to the down leg 
	rr1 =   (1 + mz2/2d0/p13 ) * cthw * sthw
	rr2 =   (1 + mz2/2d0/(p24 + p27 - p47)   ) * cthw * sthw

	amp22 = amp22 + ampLLd_2 *(
     .  cZZ**2 * zl1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zl2**2 *rr1 + zl1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
	amp22 = amp22 + ampLLd_2 *(
     .  cZZ**2 * zr1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zr2**2 *rr1 + zr1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))     
	
	amp22 = amp22 + ampLRd_2 *(
     .  cZZ**2 * zr1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zl2**2 *rr1 + zr1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))

	amp22 = amp22 + ampLRd_2 *(
     .  cZZ**2 * zl1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zr2**2 *rr1 + zl1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))


	amp22 = amp22*(4*(unit_e/ph_sthw/ph_cthw)**4/vev**2 *CF *gs_sq)
	
	amp2 = amp22 + amp2
         
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
         if(-(p13 + p17 - p37).le.0d0) then 
	    prop137 = 1d0/(-2*(p13 + p17 - p37)-mw2)
	 else    
	    prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mw2,mWgammaW)
	 endif   
	 if(-(p24 + p27 - p47).le.0d0) then  
            prop247 = 1d0/(-2*(p24 + p27 - p47)-mw2)
	 else    
	    prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mw2,mWgammaW)
         endif
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
	 amp =  (       
     . -8*p14**2*(p23 + p27)*p37 + 8*p24*p37*(p17*p23 + p27*p37) 
     .- 8*(p17*(p23**2 + p17*p24) + p23*p27*p37)*p47 - 4*(p24*(p17**2 
     .- p17*p37 + p37**2) - p23*p37*p47 + p17*p47**2)*s 
     .+ 2*(-p17 + p37)*p47*s**2 + 4*p14*(2*(p17*p23**2 - p13*p23*p27 
     .+ p13*p24*p37 + p17*p24*p37 + p23*p27*p37 + (p13 + p17)*(p23 
     .+ p27)*p47) + (p17*(p23 + p27) + p13*(2*p23 + p27) + p37*(-2*p23 
     .- p27 + p47))*s) - 2*p13*(4*p17*p24*(p23 + 2*p47 + s) 
     .+ p24*(8*p27*p37 - 6*p37*s) + p47*(-4*p23*p27 + 2*(p23 + p47)*s 
     .+ s**2)) + 8*p13**2*p24*(p27 - p47 - s - s2) - 2*p13*(6*p17*p24 
     .+ 2*p27**2 - 4*p24*p37 + 2*p23*p47 - 2*p27*s + 2*p47*s + s**2)*s2 
     .+ 2*p14*(2*p13*(2*p23 + p27) + 2*p17*(2*p23 + p27) + p37*(-2*p23 
     .+ s))*s2 - (4*p17**2*p24 + 2*p37*(-2*p27**2 + 2*p24*p37 
     .- 2*p23*p47 + 2*p27*s - s**2) + p17*(-4*p24*p37 + 4*p47*s + s**2 
     .+ 2*p23*(-2*p27 + 2*p47 + s)))*s2 + 2*p13*(p27 - s)*s2**2 
     .+ (2*p17*(p27 - s) + p37*(-2*p27 + s))*s2**2)
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)/(p17*p37)

c    linear in new physics 
	 amp2u =  ckm1**2 * ckm2**2 * ph_cww * amp  
	 
	 
	 amp = ( 
     .  8*p14**2*p27*(p23 - p37) - 2*(2*p17*p23 - p37*s)*(-2*(p24 
     .+ p27)*p37 + 2*p23*p47 - (p24 + p27 - p47)*s) + (4*p17**2*(-p24 
     .+ p47) - s*(4*(p24 + p27)*p37 - 2*p23*p47 + (2*p24 + p27 
     .- 2*p47)*s) + 4*p17*(p23*(p24 + p27) + (p24 - p47)*s))*s2 
     .+ (2*p17*(p24 + p27 - p47) + (-2*(p24 + p27) + p47)*s)*s2**2 
     .+ p14*(8*p23*p24*p37 + 8*p23*p27*p37 - 8*p17*(p23 - p37)*(p24 
     .- p47) - 8*p23**2*p47 + 8*p13*p27*(-p24 + p47) + 8*p23*p24*s 
     .+ 4*p23*p27*s - 4*p24*p37*s - 8*p23*p47*s + 4*p37*p47*s 
     .+ 8*p23*p24*s2 + 4*p17*p27*s2 + 8*p23*p27*s2 - 4*p24*p37*s2 
     .- 4*p27*p37*s2 - 4*p23*p47*s2 + 4*p37*p47*s2 - 2*p27*s*s2) 
     .+ 4*p13*(-2*p27**2*p37 + 2*p17*(p24 - p47)**2 + 2*p23*p27*p47 
     .- p27**2*s + p27*p47*s - p47**2*s -(p27**2 - p27*p47 + p47**2)*s2 
     .- 2*p24**2*(p37 + s + s2) + p24*(p47*(2*p23 + 3*s + 2*s2) 
     .- p27*(4*p37 + 2*s + 3*s2))))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
    
	 amp2d =  ph_cww * amp * ckm1**2 * ckm2**2 	  

c 	quadratic in new physics	 
	ampLLu_2 = (2*(16*p13**3*p24**2 + 8*p14**2*(p17*(2*p23**2 
     .	+ 2*p23*p27 + p27**2) - (2*p23**2 + 2*p23*p27 + p27**2)*p37 
     .+ p24*p37**2) + 8*(p24*(p17**3*p24 + p17**2*(p23**2 - p24*p37) 
     .+ p37**2*(p27**2 - p24*p37) + p17*p37*(2*p23*p27 + p24*p37)) 
     .+ 2*p23*p24*p37*(-p17 + p37)*p47 + (p17*(p23**2 + p17*p24) 
     .- p23**2*p37)*p47**2) - 8*p24*p37*(p17*p23 + p27*p37)*s 
     .+ 2*(p24*(p17**2 - 2*p17*p37 + 2*p37**2) + (p17 
     .- p37)*p47**2)*s**2 + 8*p14*(-2*p24*(p17 - p37)*(p17*(p23 + p27) 
     .- p23*p37) - 2*(-(p23**2*p37) + p17*(p23**2 + p24*p37))*p47 
     .+ (p17 - p37)*(p24*p37 - (p23 + p27)*p47)*s) 
     .+ 4*p14*(2*p17*p23*p27 - 2*(p17*p24 + p23*p27)*p37 - (2*p23 
     .+ p27)*(p17 - p37)*s)*s2 + 2*(4*p17*p23*p24*(-p17 + p37) 
     .+ 4*(p17**2*p24 - p17*p23*p27 + p23*p27*p37)*p47 + 2*p23*(p17 
     .- p37)*p47*s + (p17 - p37)*p47*s**2)*s2 + (2*p17*(2*p17*p24 
     .+ p27**2) - 2*(2*p17*p24 + p27**2)*p37 + 2*p24*p37**2 + 2*p27*(
     .-p17 + p37)*s + (p17 - p37)*s**2)*s2**2 + 4*p13**2*p24*(8*p17*p24 
     .+ 2*p27**2 - 4*p14*(2*p23 + p27) - 8*p24*p37 + 2*p47*(2*p23 +p47) 
     .- 2*p27*s + s**2 + 2*p47*s2 + s2**2) + p13*(8*p14**2*(2*p23**2 
     .+ 2*p23*p27 + p27**2) + 8*(p24*(p17*(3*p17*p24 - 2*p23*p27) 
     .- 2*(2*p17*p24 + p27**2)*p37 + 3*p24*p37**2) + 2*p23*p24*(p17 
     .- 2*p37)*p47 + (p23**2 + 2*p17*p24)*p47**2) + 8*p24*(p17*p23 
     .+ 2*p27*p37)*s + 2*(2*p17*p24 - 4*p24*p37 + p47**2)*s**2 
     .+ 2*(-4*p17*p24*(p23 - 2*p47) + p47*(s**2 + 2*p23*(-2*p27 
     .+ s)))*s2 + (8*p17*p24 + 2*p27**2 - 4*p24*p37 - 2*p27*s 
     .+ s**2)*s2**2 - 4*p14*(4*p17*p24*(3*p23 + 2*p27) - 4*p24*p27*p37 
     .+ 4*p23**2*p47 + 4*p24*p37*p47 - 2*p24*p37*s + 2*p27*p47*s 
     .+ 2*p24*p37*s2 + p27*s*s2 + 2*p23*(-6*p24*p37 - p27*s2 
     .+ s*(p47 + s2)))))) 
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)/(p17*p37)
     .   * flagu
         
        ampLLd_2 = ( 2*(16*p13**2*p24**3 + 32*p13**2*p24**2*p27 
     .+ 24*p13**2*p24*p27**2 + 8*p13**2*p27**3 + 8*p13*p24**2*p37**2 
     .+ 16*p13*p24*p27*p37**2 + 8*p13*p27**2*p37**2 + 8*p14**2*(
     . p13*p27**2 + 2*p23**2*(p24 + p27 - p47) - 2*p23*p37*(p24 + p27 
     .- p47) + p37**2*(p24 + p27 - p47)) - 32*p13**2*p24**2*p47 
     .- 32*p13**2*p24*p27*p47 - 8*p13**2*p27**2*p47 
     .- 16*p13*p23*p24*p37*p47 - 16*p13*p23*p27*p37*p47 
     .+ 8*p13*p23**2*p47**2 + 24*p13**2*p24*p47**2 +8*p13**2*p27*p47**2 
     .- 8*p13**2*p47**3 + 8*p13*p23*p24*p47*s + 8*p13*p23*p27*p47*s 
     .- 8*p13*p23*p47**2*s + 4*p13*p24**2*s**2 + 4*p13*p24*p27*s**2 
     .+ 2*p13*p27**2*s**2 + 2*p24*p37**2*s**2 + 2*p27*p37**2*s**2 
     .- 8*p13*p24*p47*s**2 - 4*p13*p27*p47*s**2 - 2*p37**2*p47*s**2 
     .+ 4*p13*p47**2*s**2 + 2*(4*p13*(p24 + p27)*((p24 + p27)*p37 
     .- p23*p47) + p37*(p24 + p27 - p47)*s**2)*s2 + (2*p13*(2*(p24 
     .+ p27)**2 - 2*(p24 + p27)*p47 + p47**2) + (p24 + p27 
     .- p47)*s**2)*s2**2 + 4*p14*(4*p17*(p23**2*(p24 + p27 - p47) 
     .+ p13*p27*(-p24 + p47)) - 4*p13*(p24 + p27 - p47)*(p23*(2*p24 
     .+ p27 - p47) + p37*(-p24 + p47)) + 2*p13*p27*(p24 - p47)*s 
     .- 2*p23*p37*(p24 + p27 - p47)*s + 2*p17*(p23 - p37)*(p24 + p27 
     .- p47)*s2 - (p24 + p27 - p47)*(2*p13*p27 + 2*p23*s - p37*s)*s2) 
     .+ 2*p17**2*(4*p13*(p24 - p47)**2 + 4*p23**2*(p24 + p27 - p47) 
     .+ (p24 + p27 - p47)*s2**2) + 2*p17*(-8*p13*p23*(p24 + p27)*(p24 
     .+ p27 - p47) - 4*p13*(p24 - p47)**2*s - (p24 + p27 - p47)*s*(
     . s2**2 + 2*p23*(2*p37 + s2)))))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
     .  * flagd 

	 
    
	 amp2 = (amp2u*flagu + amp2d*flagd) * CF * gs_sq * 
     .   (unit_e/sthw)**4/vev**2 * mw2
         
         amp2 = amp2 + (ampLLd_2 + ampLLu_2) * CF * gs_sq * 
     .   (unit_e/sthw)**4/vev**2 * ckm1**2 * ckm2**2 * ph_cww**2
         
         
      endif            
      
      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p56sq-mH2)**2 + mHgammaH**2)
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


c     Same as q1_q2_to_q3_q4_H_g_flag with NO FLAG option
      subroutine q1_q2_to_q3_q4_H_g_vv(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      real * 8 pphy(0:3,nf)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 amp2
      integer flag
      integer rflav(nf)
      
      flag = 0      
      call q1_q2_to_q3_q4_H_g_flag_vv(pphy,fermion_type,fermion_charge,
     #     flag,rflav,amp2)

      end

c     g q and q g are related to qqbar 
      
      subroutine g_q2_to_q3_q4_H_q1bar_vv(pphy,fermion_type,
     #fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf), ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(7)

      rflav_copy = rflav	
      rflav_copy(1) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = + 1
      call q1_q2_to_q3_q4_H_g_flag_vv(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end


      subroutine q1_g_to_q3_q4_H_q2bar_vv(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(2) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = - 1
      call q1_q2_to_q3_q4_H_g_flag_vv(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end            
      
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c Real Matrix Elements for phi^dagger phi V Vtilde operators 
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      
c     q q channel

      subroutine q1_q2_to_q3_q4_H_g_flag_vvtilde(pphy,ferm_type,
     #     fermion_charge,flag,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      integer flag, flagu, flagd           
      real * 8 amp2, amp2u, amp2d, s, s2, vev, amp

      integer upper_line_only,lower_line_only
      parameter (upper_line_only=+1,lower_line_only=-1)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),p7(0:3),
     #     pH(0:3)
c      include 'coupl.inc'
c      include 'couplings.h'
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 p17,p27,p37,p47,p56sq
      real * 8 cZZ, cZg, cgg, Q1, Q2
      real * 8 rr1, rr2
      real * 8 eps1, eps2, eps3, eps4, eps5
      real * 8 dotp
      complex * 16 ccdotp
      complex * 16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c      complex * 16 psi5(2,-1:1),psi6(2,-1:1)
c      complex * 16 jHdecay(0:3)
      complex * 16 prop13, prop24, fac, propH_sq
      complex * 16 prop137, prop247
      integer mu,i
      real * 8 p(0:3,7),pp1(0:3),pp2(0:3),pp3(0:3),pp4(0:3),pp7(0:3)
      real * 8 ampLLu,   ampLRu,   ampLLd,   ampLRd
      real * 8 ampLLu_2, ampLRu_2, ampLLd_2, ampLRd_2, amp22
      integer utype_q1, utype_q2
      integer ferm_charge(nf), tmp
      integer pol
      integer rflav(nf)
      real * 8 dw1, dw2, ckm1, ckm2
      real * 8 dzl1, dzr1, dzl2, dzr2, zl1, zr1, zl2, zr2
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e,gs_sq
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
      gs_sq = 4*pi*st_alpha
      
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif




c create a copy of local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
      enddo
      do i=1,nf
         ferm_charge(i) = fermion_charge(i)
      enddo

      
      if(flag.eq.1) then 
	flagu = 1d0
	flagd = 0d0
      elseif(flag.eq.-1) then
      	flagu = 0d0
	flagd = 1d0
      else 
      	flagu = 1d0
	flagd = 1d0
      endif

      cZZ = cthw**2 * ph_cwwt + sthw**2 * ph_cbbt 
     .+ cthw * sthw * ph_cwbt
      cgg = sthw**2 * ph_cwwt + cthw**2 * ph_cbbt 
     .- cthw * sthw * ph_cwbt
      cZg = 2*cthw*sthw *(ph_cwwt - ph_cbbt) 
     .- (cthw**2-sthw**2)* ph_cwbt            

      
c    set the couplings    
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
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(rflav(1))/2) 
     .                   -ph_Qphi3(abs(rflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(rflav(2))/2) 
     .                   -ph_Qphi3(abs(rflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Uphi (abs(rflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(rflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       utype - dtype
	  zl1  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr1  = -2/3d0 * ph_sthw**2
	  zl2  = -1/2d0 + 1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   =  2/3d0 
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1(abs(rflav(1))/2) 
     .                   -ph_Qphi3(abs(rflav(1))/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(rflav(2))+1)/2) 
     .   	        + ph_Qphi3((abs(rflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi (abs(rflav(1))/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(rflav(2))+1)/2))
     	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2) 
     #	then
c       dtype - utype
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  =  1/2d0 -2/3d0 * ph_sthw**2 
	  zr2  = -2/3d0 * ph_sthw**2
	  Q1   = -1/3d0 
	  Q2   =  2/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(rflav(1))+1)/2) 
     .         		+ ph_Qphi3((abs(rflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1(abs(rflav(2))/2) 
     .                   -ph_Qphi3(abs(rflav(2))/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(rflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Uphi (abs(rflav(2))/2))
	elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.1) 
     #	then
c       dtype - dtype	  
	  zl1  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr1  =  1/3d0 * ph_sthw**2
	  zl2  = -1/2d0 +1/3d0 * ph_sthw**2 
	  zr2  =  1/3d0 * ph_sthw**2
	  Q1   = -1/3d0 
	  Q2   = -1/3d0 
	  dzl1 = 1/2d0 * (ph_Qphi1((abs(rflav(1))+1)/2) 
     .         		+ ph_Qphi3((abs(rflav(1))+1)/2)) 
	  dzl2 = 1/2d0 * (ph_Qphi1((abs(rflav(2))+1)/2) 
     .        		 + ph_Qphi3((abs(rflav(2))+1)/2)) 
	  dzr1 = 1/2d0 * ( ph_Dphi ((abs(rflav(1))+1)/2))
	  dzr2 = 1/2d0 * ( ph_Dphi ((abs(rflav(2))+1)/2))
	 endif
c     I give the matrix elements for  q q. For q qbar, I need to exchange momenta 	 
	 if(rflav(1).gt.0.and.rflav(2).lt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 elseif(rflav(1).lt.0.and.rflav(2).gt.0) then
	   do mu=0,3
	      p(mu,2) = - p(mu,2)
	      p(mu,4) = - p(mu,4)
	   enddo
	   call exchange_momenta(p(0,2),p(0,4))
	 endif 
      endif




c    Q Q channel      
      if(abs(ferm_charge(1)).eq.2.and.abs(ferm_charge(2)).eq.1.and.
     # abs(ferm_charge(3)).eq.1.and.abs(ferm_charge(4)).eq.2) then
       
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
     
c    d u --> u d, and dbar ubar --> ubar dbar      
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     # abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
	
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2) 
        dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2) 
        ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
     
	
c     u ubar --> d dbar 

      elseif(ferm_charge(1).eq.2.and.ferm_charge(2).eq.-2.and.
     # ferm_charge(3).eq.-1.and.ferm_charge(4).eq.1) then
c     couplings  	
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2) 
        dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)

c     and ubar u --> dbar  d 	
      elseif(ferm_charge(1).eq.-2.and.ferm_charge(2).eq.2.and.
     # ferm_charge(3).eq.1.and.ferm_charge(4).eq.-1) then
c     couplings  	
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	dw1 =  -ph_QphiW(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(2))/2, (abs(rflav(4))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)	
	

c     d dbar --> u ubar
      elseif(ferm_charge(1).eq.-1.and.ferm_charge(2).eq.1.and.
     # ferm_charge(3).eq.2.and.ferm_charge(4).eq.-2) then 
     	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	
c     dbar d --> ubar  u
       elseif(ferm_charge(1).eq.1.and.ferm_charge(2).eq.-1.and.
     # ferm_charge(3).eq.-2.and.ferm_charge(4).eq.2) then 
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	dw1 =  -ph_QphiW(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	dw2 =  -ph_QphiW(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)
	
	
      endif

c     7 is the gluon      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
         p7(mu) = p(mu,7)
      enddo

      do mu=0,3
         pH(mu) = p5(mu)+p6(mu)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      p17 = dotp(p1,p7)
      p27 = dotp(p2,p7)
      p37 = dotp(p3,p7)
      p47 = dotp(p4,p7)

      p56sq=dotp(pH,pH)
      
      eps1 = 0d0
      eps2 = 0d0
      eps3 = 0d0
      eps4 = 0d0
      eps5 = 0d0
      call LeviCivita(p1,p2,p3,p4,eps1)
      call LeviCivita(p1,p2,p7,p3,eps2)
      call LeviCivita(p1,p2,p7,p4,eps3)
      call LeviCivita(p1,p7,p3,p4,eps4)
      call LeviCivita(p2,p7,p3,p4,eps5)
      

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
	if(-(p13 + p17 - p37).le.0d0) then 
	  prop137 = 1d0/(-2*(p13 + p17 - p37)-mz2)
	else    
	  prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mz2,mZgammaZ)
	endif   
	if(-(p24 + p27 - p47).le.0d0) then  
	  prop247 = 1d0/(-2*(p24 + p27 - p47)-mz2)
	else    
	  prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mz2,mZgammaZ)
	endif

c      basic amplitudes

	ampLLu =  ( (-16*p13*p17**2*p27 + 32*p17**2*p23*p37 
     .- 16*p13*p17*p27*p37 - 48*p17**2*p27*p37 - 32*p14*p17*p37**2 
     .+ 16*p17*p23*p37**2 + 80*p17*p27*p37**2 + 16*p14*p37**3 
     .+ 16*p13*p17**2*p47 + 16*p13*p17*p37*p47 + 80*p17**2*p37*p47 
     .+ 32*p13*p17*p37*s + 16*p17**2*p37*s - 24*p17*p37**2*s 
     .- 8*p37**3*s + 32*p13*p17*p37*s2 + 32*p17**2*p37*s2 
     .- 24*p17*p37**2*s2)/4. ) * eps1
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu
     
	ampLLu = ampLLu + ((-16*p13*p17**2*p24 + 16*p13*p17*p24*p37 
     .- 48*p17**2*p24*p37 + 16*p14*p23*p37**2 - 16*p17*p24*p37**2 
     .+ 16*p14*p27*p37**2 - 48*p17*p23*p37*p47 + 8*p14*p37**2*s 
     .- 8*p37**2*p47*s + 24*p17*p27*p37*s2 - 4*p37**2*s*s2)/4.)
     . * eps2
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu
         
        ampLLu = ampLLu + ((-(p37*(4*p37**2*(2*p14 - s) 
     .- p17**2*(24*p23 + 16*p47 + 8*s - 4*s2) + p17*p37*(16*p14 
     .- 32*p23 + 8*s + 4*s2))) + p13*(4*p17**2*(2*p23 - s2) 
     .- 4*p37**2*(2*p23 + 2*p27 - 2*p47 + s - s2) 
     .+ p17*p37*(-8*p23 + 16*p47 + 8*s + 12*s2)))/2.) 
     . * eps3
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu        
        
        ampLLu = ampLLu + ((-16*p13*p17**2*p24 + 16*p13*p17*p24*p37 
     .- 48*p17**2*p24*p37 - 16*p14*p23*p37**2 - 16*p17*p24*p37**2 
     .- 16*p14*p27*p37**2 + 8*p37**2*p47*s - 4*p37**2*s**2 
     .+ 4*p37**2*s*s2)/4.)  * eps4
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu        
        
        ampLLu = ampLLu + ((p17*p37*(p14*(24*p17 + 16*p37) 
     .+ 2*p37*(8*p27 - 8*s - 4*s2) + p17*(-8*p23 - 12*s + 8*s2)) 
     .+ p13*(2*p14*(4*p17**2 - 4*p17*p37 + 4*p37**2) - 4*p17**2*s 
     .- 4*p37**2*s + p17*p37*(8*p27 + 12*s + 8*s2)))/2.)  * eps5
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu 
        
        
        ampLLd = ((16*p24*p27**2*p37 - 32*p17*p24*p27*p47 
     .+ 48*p14*p27**2*p47 + 16*p17*p27**2*p47 + 16*p24*p27*p37*p47 
     .+ 80*p27**2*p37*p47 - 16*p14*p27*p47**2 + 16*p17*p27*p47**2 
     .- 32*p23*p27*p47**2 + 16*p27*p37*p47**2 + 32*p24*p27*p47*s 
     .+ 8*p27**2*p47*s - 24*p27*p47**2*s + 32*p24*p27*p47*s2 
     .+ 32*p27**2*p47*s2 - 16*p27*p47**2*s2)/4.) * eps1
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 
     
	ampLLd = ampLLd + ((-32*p24*p27*p37*p47 - 32*p27**2*p37*p47 
     .- 16*p14*p24*p47**2 - 16*p17*p24*p47**2 + 48*p14*p27*p47**2 
     .+ 48*p17*p27*p47**2 + 32*p23*p27*p47**2 - 16*p24*p27*p47*s 
     .- 16*p27**2*p47*s + 8*p24*p47**2*s - 8*p27*p47**2*s 
     .+ 8*p24*p27**2*s2 - 24*p24*p27*p47*s2 + 8*p27**2*p47*s2 
     .+ 8*p27*p47**2*s2)/4.) 
     .  * eps2
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	
	
	ampLLd = ampLLd + ((-48*p14*p27*p37*p47 - 48*p17*p27*p37*p47 
     .+ 16*p14*p23*p47**2 + 16*p17*p23*p47**2 + 24*p27*p37*p47*s 
     .- 8*p23*p47**2*s - 8*p14*p27**2*s2 - 8*p17*p27**2*s2 
     .+ 4*p27**2*s*s2)/4.)
     .  * eps3
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	
	
	ampLLd = ampLLd + (-(p27*(8*p23*p24*p27 - 8*p23*p24*p47 
     .+ 24*p23*p27*p47 + 8*p23*p47**2 + 2*p14*(4*p24*p27 + 20*p27*p47) 
     .+ 2*p17*(p24*(4*p27 - 8*p47) + p47*(12*p27 + 8*p47)) 
     .- 4*p24*p27*s + 8*p24*p47*s - 12*p27*p47*s - 8*p47**2*s 
     .+ 8*p24*p47*s2 + 8*p27*p47*s2 - 8*p47**2*s2))/2.)
     .  * eps4
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	
	
	ampLLd = ampLLd + (4*p14**2*p27**2 + 4*p13*p27*(p24*p27 
     .- p24*p47 + 3*p27*p47 + p47**2) + p47*(2*p17 - s)*(6*p17*p27 
     .- p47*s) + 2*p14*(2*p17*p27*(p27 + 3*p47) - (p27**2 
     .+ p47**2)*s))
     .  * eps5
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	     
     
         
        ampLRu = ( (16*p13*p17**2*p27 + 64*p13*p14*p17*p37 
     .+ 32*p14*p17**2*p37 + 64*p13*p17*p23*p37 + 64*p17**2*p23*p37 
     .+ 16*p13*p17*p27*p37 + 80*p17**2*p27*p37 - 64*p14*p17*p37**2 
     .- 48*p17*p23*p37**2 - 48*p17*p27*p37**2 - 16*p14*p37**3 
     .- 16*p13*p17**2*p47 - 16*p13*p17*p37*p47 - 48*p17**2*p37*p47 
     .+ 32*p17*p37**2*p47 - 24*p17*p37**2*s + 8*p37**3*s 
     .+ 16*p17**2*p37*s2 + 8*p17*p37**2*s2)/4.) * eps1
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)
     ./(p17*p37)**2 *flagu
      
      
	ampLRu = ampLRu + ((16*p13*p17**2*p24 - 16*p13*p17*p24*p37 
     .+ 48*p17**2*p24*p37 - 16*p14*p23*p37**2 + 16*p17*p24*p37**2 
     .- 16*p14*p27*p37**2 + 48*p17*p23*p37*p47 - 8*p14*p37**2*s 
     .+ 8*p37**2*p47*s - 24*p17*p27*p37*s2 + 4*p37**2*s*s2)/4.) 
     .* eps2
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)
     ./(p17*p37)**2 *flagu	
	
	ampLRu = ampLRu + ((p13*(p17*p37*(16*p14 + 24*p23 + 16*p27 
     .- 4*s2) - 4*p17**2*(2*p23 - s2) + 4*p37**2*(2*p23 + 2*p27 
     .- 2*p47 + s - s2)) - p37*(-4*p37**2*(2*p14 - s) + p17*p37*(
     . 16*p14 + 32*p23 + 8*s - 4*s2) - p17**2*(16*p14 - 8*p23 
     .+ 16*p27 + 12*s2)))/2.)
     .* eps3
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)
     ./(p17*p37)**2 *flagu	

	ampLRu = ampLRu + ((16*p13*p17**2*p24 - 16*p13*p17*p24*p37 
     .+ 48*p17**2*p24*p37 + 16*p14*p23*p37**2 + 16*p17*p24*p37**2 
     .+ 16*p14*p27*p37**2 - 8*p37**2*p47*s + 4*p37**2*s**2 
     .- 4*p37**2*s*s2)/4.)
     .* eps4
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)
     ./(p17*p37)**2 *flagu	
     
	ampLRu = ampLRu + ( (p13*(2*p14*(-4*p17**2 + 12*p17*p37 
     .- 4*p37**2) + p17*p37*(-24*p27 + 16*(p23 - p47) - 4*s) 
     .+ 4*p17**2*s + 4*p37**2*s) + p17*p37*(p14*(-24*p17 - 32*p37) 
     .+ 2*p37*(-8*p23 + 8*p47 + 4*s) + p17*(40*p23 + 12*s + 8*s2)))/2.)
     .* eps5
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)
     ./(p17*p37)**2 *flagu	     
	
        
        ampLRd = ((-32*p14*p24*p27*p47 - 32*p17*p24*p27*p47 
     .- 32*p23*p24*p27*p47 - 32*p14*p27**2*p47 - 32*p17*p27**2*p47 
     .- 32*p23*p27**2*p47 + 16*p14*p24*p47**2 + 16*p17*p24*p47**2 
     .- 48*p14*p27*p47**2 - 48*p17*p27*p47**2 + 32*p23*p27*p47**2 
     .- 8*p24*p47**2*s + 40*p27*p47**2*s - 8*p24*p27**2*s2 
     .+ 8*p24*p27*p47*s2 - 24*p27**2*p47*s2 - 8*p27*p47**2*s2)/4.)
     .*eps2
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2 * flagd

        ampLRd = ampLRd + ((48*p14*p27*p37*p47 + 48*p17*p27*p37*p47 
     .- 16*p14*p23*p47**2 - 16*p17*p23*p47**2 - 24*p27*p37*p47*s 
     .+ 8*p23*p47**2*s + 8*p14*p27**2*s2 + 8*p17*p27**2*s2 
     .- 4*p27**2*s*s2)/4.)
     .*eps3
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2 * flagd     
     
        ampLRd = ampLRd + (-(p27*(-8*p23*p24*p27 + 24*p23*p24*p47 
     .- 24*p23*p27*p47 - 16*p24*p37*p47 - 24*p23*p47**2 + 16*p37*p47**2
     .+ 2*p17*(-4*p24*p27 - 12*p27*p47) + 2*p14*(p24*(-4*p27 + 8*p47) 
     .- p47*(4*p27 + 8*p47)) + 4*p24*p27*s + 12*p27*p47*s 
     .+ 8*p27*p47*s2))/2.)
     .*eps4
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2 * flagd
     
        ampLRd = ampLRd + (-4*p14**2*p27**2 - 4*p13*p27*(p24*p27 
     .- p24*p47 + 3*p27*p47 + p47**2) - p47*(2*p17 - s)*(6*p17*p27 
     .- p47*s) - 2*p14*(2*p17*p27*(p27 + 3*p47) - (p27**2 + p47**2)*s))
     .*eps5
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2 * flagd
     
        ampLRd = ampLRd + ((-16*p24*p27**2*p37 + 64*p14*p24*p27*p47 
     .+ 32*p17*p24*p27*p47 + 64*p23*p24*p27*p47 + 48*p14*p27**2*p47 
     .+ 16*p17*p27**2*p47 + 32*p23*p27**2*p47 - 16*p24*p27*p37*p47 
     .- 48*p27**2*p37*p47 - 16*p14*p27*p47**2 + 16*p17*p27*p47**2 
     .- 64*p23*p27*p47**2 + 16*p27*p37*p47**2 + 8*p27**2*p47*s 
     .- 24*p27*p47**2*s + 16*p27**2*p47*s2)/4.)
     .*eps1
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2 * flagd     
     
     
	amp2  = (
     .  ( zl1**2 * zl2**2 + zr1**2 * zr2**2 ) * ampLLu 
     . +( zl1**2 * zr2**2 + zr1**2 * zl2**2 ) * ampLRu
     . +( zl1**2 * zl2**2 + zr1**2 * zr2**2 ) * ampLLd
     . +( zl1**2 * zr2**2 + zr1**2 * zl2**2 ) * ampLRd) * cZZ
     . + (
     . (( zl1*Q1 * zl2*Q2 + zr1*Q1 * zr2*Q2 ) * ampLLu 
     . +( zl1*Q1 * zr2*Q2 + zr1*Q1 * zl2*Q2 ) * ampLRu)*
     .  (1 + mz2/(2*(p13 + p17 - p37))) * (1 + mz2/2d0/p24)
     . +((zl1*Q1 * zl2*Q2 + zr1*Q1 * zr2*Q2 ) * ampLLd
     . +( zl1*Q1 * zr2*Q2 + zr1*Q1 * zl2*Q2 ) * ampLRd)*
     .   (1 + mz2/2d0/p13) * (1 + mz2/2d0/(p24 + p27 - p47))
     .	) * cgg* cthw**2 * sthw**2     
     . + ( 
     .  (( zl1*Q1 * zl2**2 + zr1*Q1 * zr2**2 ) * ampLLu 
     . +(  zl1*Q1 * zr2**2 + zr1*Q1 * zl2**2 ) * ampLRu)
     . *(1 + mz2/(2*(p13 + p17 - p37)))
     . +(( zl1*Q1 * zl2**2 + zr1*Q1 * zr2**2 ) * ampLLd
     . +(  zl1*Q1 * zr2**2 + zr1*Q1 * zl2**2 ) * ampLRd)*
     . (1 + mz2/(2*p13)) ) * cZg * cthw * sthw/2d0
     . + (
     .  (( zl1**2 * zl2*Q2 + zr1**2 * zr2*Q2 ) * ampLLu 
     . + ( zl1**2 * zr2*Q2 + zr1**2 * zl2*Q2 ) * ampLRu)*
     .  (1 + mz2/2d0/p24)
     . +( ( zl1**2 * zl2*Q2 + zr1**2 * zr2*Q2 ) * ampLLd
     . +(   zl1**2 * zr2*Q2 + zr1**2 * zl2*Q2 ) * ampLRd) 
     . *(1 + mz2/2d0/(p24 + p27 - p47))  ) * cZg* cthw * sthw/2d0
     
     
     
     	amp2 = amp2 * mz2* 4d0* (unit_e/ph_sthw/ph_cthw)**4/vev**2 
     .  * CF * gs_sq 
         
         
c     terms quadratic in new physics          
	ampLLu_2 = -( 2*(16*p13**3*p24**2 + 8*p24*(p17**3*p24 
     .- p17**2*(p23**2 + p24*p37) + p17*p37*(-2*p23*p27 + p24*p37) 
     .- p37**2*(p27**2 + p24*p37)) + 8*p14**2*(p17*(2*p23**2 
     .+ 2*p23*p27 + p27**2) - p37*(2*p23**2 + 2*p23*p27 + p27**2 
     .+ p24*p37)) + 16*p23*p24*p37*(-p17 + p37)*p47 - 8*(-(p17*p23**2) 
     .+ p17**2*p24 + p23**2*p37)*p47**2 + 8*p24*p37*(p17*p23 
     .+ p27*p37)*s - 2*(p24*(p17**2 - 2*p17*p37 + 2*p37**2) + (-p17 
     .+ p37)*p47**2)*s**2 + 8*p14*(-2*p24*(p17 - p37)*(p17*(p23 + p27) 
     .- p23*p37) + 2*(-(p17*p23**2) + p23**2*p37 + p17*p24*p37)*p47 
     .+ (p17 - p37)*(p24*p37 - (p23 + p27)*p47)*s) + 4*p14*(2*(
     . p17*p23*p27 + p17*p24*p37 - p23*p27*p37) - (2*p23 + p27)*(p17 
     .- p37)*s)*s2 - 2*(4*p17**2*p24*(p23 + p47) + p37*p47*(s**2 
     .+ 2*p23*(-2*p27 + s)) - p17*(p47*s**2 + 2*p23*(2*p24*p37 
     .- 2*p27*p47 + p47*s)))*s2 + (-4*p17**2*p24 - p37*(2*p27**2 
     .+ 2*p24*p37 - 2*p27*s + s**2) + p17*(2*p27**2 + 4*p24*p37 
     .- 2*p27*s + s**2))*s2**2 - 4*p13**2*p24*(-8*p17*p24 + 2*p27**2 
     .+ 4*p14*(2*p23 + p27) + 8*p24*p37 - 4*p23*p47 + 2*p47**2 
     .- 2*p27*s + s**2 + 2*p47*s2 + s2**2) + p13*(24*p17**2*p24**2 
     .+ 8*p14**2*(2*p23**2 + 2*p23*p27 + p27**2) + 8*(p24*p37*(2*p27**2 
     .+ 3*p24*p37) - 4*p23*p24*p37*p47 + p23**2*p47**2) 
     .- 16*p24*p27*p37*s + 2*(4*p24*p37 + p47**2)*s**2 - 8*p14*(p17*(
     . 6*p23*p24 + 4*p24*p27) + 2*p23**2*p47 - 2*p24*p37*(p27 + p47) 
     .- p24*p37*s + p27*p47*s + p23*(-6*p24*p37 + p47*s)) 
     .+ 4*p14*(2*p23*p27 + 2*p24*p37 - (2*p23 + p27)*s)*s2 
     .+ 2*p47*(s**2 + 2*p23*(-2*p27 + s))*s2 + (2*p27**2 + 4*p24*p37 
     .- 2*p27*s + s**2)*s2**2 - 4*p17*p24*(8*p24*p37 + 4*p47**2 
     .+ s**2 + 4*p47*s2 + 2*s2**2 + 2*p23*(-2*p27 - 2*p47 + s + s2))))) 
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)/(p17*p37)
     .   * flagu
         
        ampLLd_2 = -( 2*(16*p13**2*p24**3 + 32*p13**2*p24**2*p27 
     .+ 24*p13**2*p24*p27**2 + 8*p13**2*p27**3 - 8*p13*p24**2*p37**2 
     .- 16*p13*p24*p27*p37**2 - 8*p13*p27**2*p37**2 + 8*p14**2*(
     . -(p13*p27**2) + 2*p23**2*(p24 + p27 - p47) - 2*p23*p37*(p24 
     .+ p27 - p47) + p37**2*(p24 + p27 - p47)) - 32*p13**2*p24**2*p47 
     .- 32*p13**2*p24*p27*p47 - 8*p13**2*p27**2*p47 
     .+ 16*p13*p23*p24*p37*p47 + 16*p13*p23*p27*p37*p47 
     .- 8*p13*p23**2*p47**2 + 24*p13**2*p24*p47**2 
     .+ 8*p13**2*p27*p47**2 - 8*p13**2*p47**3 + 8*p13*p23*p24*p47*s 
     .+ 8*p13*p23*p27*p47*s - 8*p13*p23*p47**2*s - 4*p13*p24**2*s**2 
     .- 4*p13*p24*p27*s**2 - 2*p13*p27**2*s**2 + 2*p24*p37**2*s**2 
     .+ 2*p27*p37**2*s**2 + 8*p13*p24*p47*s**2 + 4*p13*p27*p47*s**2 
     .- 2*p37**2*p47*s**2 - 4*p13*p47**2*s**2 + 8*p17*(-2*p13*p23*( 
     . p24 + p27)*(p24 + p27 - p47) + p13*(p24 - p47)**2*s 
     .- p23*p37*(p24 + p27 - p47)*s) - 4*p17*p23*(p24 + p27 
     .- p47)*s*s2 + 2*(-4*p13*(p24 + p27)*((p24 + p27)*p37 - p23*p47) 
     .+ p37*(p24 + p27 - p47)*s**2)*s2 - 2*p17*(p24 + p27 
     .- p47)*s*s2**2 + (-4*p13*(p24 + p27)**2 + 4*p13*(p24 + p27)*p47 
     .- 2*p13*p47**2 + (p24 + p27 - p47)*s**2)*s2**2 
     .+ 4*p14*(4*p17*(p13*p27*(p24 - p47) + p23**2*(p24 + p27 - p47)) 
     .- 4*p13*(p24 + p27 - p47)*(p23*(2*p24 + p27 - p47) + p37*(-p24 
     .+ p47)) - 2*(p13*p27*(p24 - p47) + p23*p37*(p24 + p27 - p47))*s 
     .+ 2*p17*(p23 - p37)*(p24 + p27 - p47)*s2 - (p24 + p27 - p47)*( 
     . 2*p13*p27 + 2*p23*s - p37*s)*s2) + 2*p17**2*(-4*p13*(p24 
     .- p47)**2 + 4*p23**2*(p24 + p27 - p47) + (p24 + p27 - p47)*s2**2)
     . ))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
     .  * flagd 
         
        ampLRu_2 =- (2*(16*p13**3*p24**2 + 8*p24*(p17**3*p24 
     .- p37**2*(p23**2 + p24*p37) + p17*p37*(2*p23**2 + p24*p37) 
     .- p17**2*(2*p23**2 + 2*p23*p27 + p27**2 + p24*p37)) - 8*p14**2*(
     . p17**2*p24 - p17*(2*p23**2 + 2*p23*p27 + p27**2 + 2*p24*p37) 
     .+ p37*(2*p23**2 + 2*p23*p27 + p27**2 + 2*p24*p37)) +8*(p17*p23**2 
     .- p37*(p23**2 + p24*p37))*p47**2 + 8*p17*p24*(-(p17*p47) 
     .+ p37*(p23 + p27 + p47))*s - 2*(p24*p37**2 + (-p17 + p37)*p47**2
     . )*s**2 - 2*(4*p24*(p17 - p37)*(p17*p23 + p27*p37) 
     .+ 4*(p17*p23*p27 + p17*p24*p37 - p23*p27*p37)*p47 + 2*(p17 
     .- p37)*(p17*p24 - p24*p37 - p23*p47)*s + (-p17 +p37)*p47*s**2)*s2 
     .+ (-2*p17**2*p24 + p17*(2*p27**2 - 2*p27*s + s**2) 
     .- p37*(2*p27**2 - 2*p27*s + s**2))*s2**2 - 8*p13**2*p24*(
     . 2*p14**2 + 2*p23**2 + 2*p23*p27 + p27**2 + 4*p24*(-p17 + p37) 
     .- 2*p14*p47 + p47*(p47 + s) - p27*s2 + s*s2) + 4*p14*(4*(
     . -(p17*p23**2) + p37*(p23**2 + p24*p37))*p47 - 2*(p17 - p37)*(
     . -(p24*p37) + (p23 + p27)*p47)*s + (2*(p17*p23*p27 
     .+ p17*p24*p37 - p23*p27*p37) - (2*p23 + p27)*(p17 - p37)*s)*s2) 
     .+ p13*(24*p17**2*p24**2 + 8*p24*p37*(2*p23**2 + 3*p24*p37) 
     .+ 8*p14**2*(2*p23**2 - 2*p17*p24 + 2*p23*p27 + p27**2 
     .+ 4*p24*p37) + 8*(p23**2 + 2*p24*p37)*p47**2 + 8*p24*p37*(p23 
     .+ p27 + p47)*s + 2*p47**2*s**2 + 2*(p24*(-8*p27*p37 + 6*p37*s) 
     .+ p47*(s**2 + 2*p23*(-2*p27 + s)))*s2 + (2*p27**2 - 2*p27*s 
     .+ s**2)*s2**2 - 4*p17*p24*(4*(2*p23**2 + 2*p23*p27 + p27**2 
     .+ 2*p24*p37 + p47*s) + (2*p23 - 2*(p27 + p47) + 3*s)*s2) 
     .- 4*p14*(4*p23**2*p47 + p27*s*(2*p47 + s2) + 2*p24*(4*p37*p47 
     .- p37*s + p17*s2) + 2*p23*(-(p27*s2) + s*(p47 + s2))))) )
     .  *prop24 * DCONJG(prop24)*prop137 * DCONJG(prop137)/(p17*p37) 
     .  *flagu
      
        
        ampLRd_2 = -( 2*(-16*p13*p23**2*p24**2 + 16*p13**2*p24**3 
     .- 16*p13*p23**2*p24*p27 + 32*p13**2*p24**2*p27 
     .- 8*p13*p23**2*p27**2 + 24*p13**2*p24*p27**2 
     .+ 8*p13**2*p27**3 + 16*p13*p23*p24**2*p37 
     .- 8*p13*p24**2*p37**2 + 32*p13*p23**2*p24*p47 
     .- 32*p13**2*p24**2*p47 + 16*p13*p23**2*p27*p47 
     .- 32*p13**2*p24*p27*p47 - 8*p13**2*p27**2*p47 
     .- 32*p13*p23*p24*p37*p47 + 16*p13*p24*p37**2*p47 
     .- 16*p13*p23**2*p47**2 + 24*p13**2*p24*p47**2 
     .+ 8*p13**2*p27*p47**2 + 16*p13*p23*p37*p47**2 
     .- 8*p13*p37**2*p47**2 - 8*p13**2*p47**3 + 8*p14**2*((p24 + p27 
     .)*(2*p23**2 - 2*p13*(p24 + p27) - 2*p23*p37 + p37**2) 
     .+ (-2*p23**2 + 2*p13*(p24 + p27) + 2*p23*p37 - p37**2)*p47 
     .- p13*p47**2) - 8*p13*p24**2*p37*s - 16*p13*p24*p27*p37*s 
     .- 8*p13*p27**2*p37*s + 8*p13*p23*p24*p47*s + 8*p13*p23*p27*p47*s 
     .+ 8*p13*p24*p37*p47*s + 8*p13*p27*p37*p47*s - 8*p13*p23*p47**2*s 
     .+ 8*p17*(-(p23*p37*(p24 + p27 - p47)) + p13*(p24 + p27)*p47)*s 
     .+ 2*p24*p37**2*s**2 + 2*p27*p37**2*s**2 - 2*p37**2*p47*s**2 
     .- 2*p13*p47**2*s**2 + 8*p14*(-2*p17*(p24 + p27)*(-p23**2 
     .+ p13*(p24 + p27)) - 2*p17*p23**2*p47 + (-(p23*p37*(p24 + p27 
     .- p47)) + p13*(p24 + p27)*p47)*s) - 4*p17*(p24 + p27 - p47)*(
     . 2*p13*(-p24 + p47) + p23*s)*s2 + 4*p14*(p24 + p27 - p47)*(
     .-2*p13*p27 + 2*p17*(p23 - p37) - 2*p23*s + p37*s)*s2 
     .- 2*(4*p13*p27*(p23 - p37)*(p24 - p47) + 2*p13*(p24 + p27 
     .- p47)*(2*p24 + p27 - p47)*s - p37*(p24 + p27 - p47)*s**2)*s2 
     .- 2*p17*(p24 + p27 - p47)*s*s2**2 + (-2*p13*p27**2 + (p24 + p27 
     .- p47)*s**2)*s2**2 + 2*p17**2*(-4*p13*(p24 + p27)**2 
     .+ 4*p23**2*(p24 + p27 - p47) + (p24 + p27 - p47)*s2**2)))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47) 
     .  * flagd

     
c      correction to the up leg

	rr1 =   (1 + mz2/2d0/(p13 + p17 - p37 ) ) * cthw * sthw
	rr2 =   (1 + mz2/2d0/p24) * cthw * sthw

	amp22 = 0d0  
	amp22 = amp22 + ampLLu_2 *(
     .  cZZ**2 * zl1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zl2**2 *rr1 + zl1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
	amp22 = amp22 + ampLLu_2 *(
     .  cZZ**2 * zr1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zr2**2 *rr1 + zr1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))     
	
	amp22 = amp22 + ampLRu_2 *(
     .  cZZ**2 * zr1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zl2**2 *rr1 + zr1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))

	amp22 = amp22 + ampLRu_2 *(
     .  cZZ**2 * zl1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zr2**2 *rr1 + zl1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
 
c    corrections to the down leg 
	rr1 =   (1 + mz2/2d0/p13 ) * cthw * sthw
	rr2 =   (1 + mz2/2d0/(p24 + p27 - p47)   ) * cthw * sthw

	amp22 = amp22 + ampLLd_2 *(
     .  cZZ**2 * zl1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zl2**2 *rr1 + zl1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))
     
	amp22 = amp22 + ampLLd_2 *(
     .  cZZ**2 * zr1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zr2**2 *rr1 + zr1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))     
	
	amp22 = amp22 + ampLRd_2 *(
     .  cZZ**2 * zr1**2 * zl2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zl2**2*rr1**2 + Q2**2*zr1**2*rr2**2 
     .		     +  2*Q1*Q2*zr1*zl2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zr1 * zl2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zr1 * zl2**2 *rr1 + zr1**2 * Q2*zl2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zl2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zr1 *rr2**2*rr1 ))

	amp22 = amp22 + ampLRd_2 *(
     .  cZZ**2 * zl1**2 * zr2**2 
     .+ cgg**2 * Q1**2 * Q2**2 * rr1**2 * rr2**2 	 
     .+ cZg**2 * 1/4d0 *( Q1**2*zr2**2*rr1**2 + Q2**2*zl1**2*rr2**2 
     .		     +  2*Q1*Q2*zl1*zr2 * rr1*rr2)
     .+ 2d0  * cZZ*cgg * Q1 *Q2 * zl1 * zr2 * rr1 * rr2
     .+        cZZ*cZg *( Q1*zl1 * zr2**2 *rr1 + zl1**2 * Q2*zr2 *rr2 )
     .+        cgg*cZg *( Q1**2 *Q2*zr2 *rr1**2*rr2 
     .                  + Q2**2 *Q1*zl1 *rr2**2*rr1 ))


	amp22 = amp22*(4*(unit_e/ph_sthw/ph_cthw)**4/vev**2 *CF *gs_sq)
	
	amp2 = amp22 + amp2
         
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
         if(-(p13 + p17 - p37).le.0d0) then 
	    prop137 = 1d0/(-2*(p13 + p17 - p37)-mw2)
	 else    
	    prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mw2,mWgammaW)
	 endif   
	 if(-(p24 + p27 - p47).le.0d0) then  
            prop247 = 1d0/(-2*(p24 + p27 - p47)-mw2)
	 else    
	    prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mw2,mWgammaW)
         endif
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
	ampLLu =  ( (-16*p13*p17**2*p27 + 32*p17**2*p23*p37 
     .- 16*p13*p17*p27*p37 - 48*p17**2*p27*p37 - 32*p14*p17*p37**2 
     .+ 16*p17*p23*p37**2 + 80*p17*p27*p37**2 + 16*p14*p37**3 
     .+ 16*p13*p17**2*p47 + 16*p13*p17*p37*p47 + 80*p17**2*p37*p47 
     .+ 32*p13*p17*p37*s + 16*p17**2*p37*s - 24*p17*p37**2*s 
     .- 8*p37**3*s + 32*p13*p17*p37*s2 + 32*p17**2*p37*s2 
     .- 24*p17*p37**2*s2)/4. ) * eps1
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu
     
	ampLLu = ampLLu + ((-16*p13*p17**2*p24 + 16*p13*p17*p24*p37 
     .- 48*p17**2*p24*p37 + 16*p14*p23*p37**2 - 16*p17*p24*p37**2 
     .+ 16*p14*p27*p37**2 - 48*p17*p23*p37*p47 + 8*p14*p37**2*s 
     .- 8*p37**2*p47*s + 24*p17*p27*p37*s2 - 4*p37**2*s*s2)/4.)
     . * eps2
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu
         
        ampLLu = ampLLu + ((-(p37*(4*p37**2*(2*p14 - s) 
     .- p17**2*(24*p23 + 16*p47 + 8*s - 4*s2) + p17*p37*(16*p14 
     .- 32*p23 + 8*s + 4*s2))) + p13*(4*p17**2*(2*p23 - s2) 
     .- 4*p37**2*(2*p23 + 2*p27 - 2*p47 + s - s2) 
     .+ p17*p37*(-8*p23 + 16*p47 + 8*s + 12*s2)))/2.) 
     . * eps3
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu        
        
        ampLLu = ampLLu + ((-16*p13*p17**2*p24 + 16*p13*p17*p24*p37 
     .- 48*p17**2*p24*p37 - 16*p14*p23*p37**2 - 16*p17*p24*p37**2 
     .- 16*p14*p27*p37**2 + 8*p37**2*p47*s - 4*p37**2*s**2 
     .+ 4*p37**2*s*s2)/4.)  * eps4
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu        
        
        ampLLu = ampLLu + ((p17*p37*(p14*(24*p17 + 16*p37) 
     .+ 2*p37*(8*p27 - 8*s - 4*s2) + p17*(-8*p23 - 12*s + 8*s2)) 
     .+ p13*(2*p14*(4*p17**2 - 4*p17*p37 + 4*p37**2) - 4*p17**2*s 
     .- 4*p37**2*s + p17*p37*(8*p27 + 12*s + 8*s2)))/2.)  * eps5
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)
     ./(p17*p37)**2* flagu 
        
        
        ampLLd = ((16*p24*p27**2*p37 - 32*p17*p24*p27*p47 
     .+ 48*p14*p27**2*p47 + 16*p17*p27**2*p47 + 16*p24*p27*p37*p47 
     .+ 80*p27**2*p37*p47 - 16*p14*p27*p47**2 + 16*p17*p27*p47**2 
     .- 32*p23*p27*p47**2 + 16*p27*p37*p47**2 + 32*p24*p27*p47*s 
     .+ 8*p27**2*p47*s - 24*p27*p47**2*s + 32*p24*p27*p47*s2 
     .+ 32*p27**2*p47*s2 - 16*p27*p47**2*s2)/4.) * eps1
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 
     
	ampLLd = ampLLd + ((-32*p24*p27*p37*p47 - 32*p27**2*p37*p47 
     .- 16*p14*p24*p47**2 - 16*p17*p24*p47**2 + 48*p14*p27*p47**2 
     .+ 48*p17*p27*p47**2 + 32*p23*p27*p47**2 - 16*p24*p27*p47*s 
     .- 16*p27**2*p47*s + 8*p24*p47**2*s - 8*p27*p47**2*s 
     .+ 8*p24*p27**2*s2 - 24*p24*p27*p47*s2 + 8*p27**2*p47*s2 
     .+ 8*p27*p47**2*s2)/4.) 
     .  * eps2
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	
	
	ampLLd = ampLLd + ((-48*p14*p27*p37*p47 - 48*p17*p27*p37*p47 
     .+ 16*p14*p23*p47**2 + 16*p17*p23*p47**2 + 24*p27*p37*p47*s 
     .- 8*p23*p47**2*s - 8*p14*p27**2*s2 - 8*p17*p27**2*s2 
     .+ 4*p27**2*s*s2)/4.)
     .  * eps3
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	
	
	ampLLd = ampLLd + (-(p27*(8*p23*p24*p27 - 8*p23*p24*p47 
     .+ 24*p23*p27*p47 + 8*p23*p47**2 + 2*p14*(4*p24*p27 + 20*p27*p47) 
     .+ 2*p17*(p24*(4*p27 - 8*p47) + p47*(12*p27 + 8*p47)) 
     .- 4*p24*p27*s + 8*p24*p47*s - 12*p27*p47*s - 8*p47**2*s 
     .+ 8*p24*p47*s2 + 8*p27*p47*s2 - 8*p47**2*s2))/2.)
     .  * eps4
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 	
	
	ampLLd = ampLLd + (4*p14**2*p27**2 + 4*p13*p27*(p24*p27 
     .- p24*p47 + 3*p27*p47 + p47**2) + p47*(2*p17 - s)*(6*p17*p27 
     .- p47*s) + 2*p14*(2*p17*p27*(p27 + 3*p47) - (p27**2 
     .+ p47**2)*s))
     .  * eps5
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)
     ./(p27*p47)**2* flagd 

c    linear in new physics 
	 amp2u =  ckm1**2 * ckm2**2 * ph_cwwt * ampLLu  

	 amp2d =  ph_cwwt * ampLLd * ckm1**2 * ckm2**2 	  

c 	quadratic in new physics	 
	ampLLu_2 = -( 2*(16*p13**3*p24**2 + 8*p24*(p17**3*p24 
     .- p17**2*(p23**2 + p24*p37) + p17*p37*(-2*p23*p27 + p24*p37) 
     .- p37**2*(p27**2 + p24*p37)) + 8*p14**2*(p17*(2*p23**2 
     .+ 2*p23*p27 + p27**2) - p37*(2*p23**2 + 2*p23*p27 + p27**2 
     .+ p24*p37)) + 16*p23*p24*p37*(-p17 + p37)*p47 - 8*(-(p17*p23**2) 
     .+ p17**2*p24 + p23**2*p37)*p47**2 + 8*p24*p37*(p17*p23 
     .+ p27*p37)*s - 2*(p24*(p17**2 - 2*p17*p37 + 2*p37**2) + (-p17 
     .+ p37)*p47**2)*s**2 + 8*p14*(-2*p24*(p17 - p37)*(p17*(p23 + p27) 
     .- p23*p37) + 2*(-(p17*p23**2) + p23**2*p37 + p17*p24*p37)*p47 
     .+ (p17 - p37)*(p24*p37 - (p23 + p27)*p47)*s) + 4*p14*(2*(
     . p17*p23*p27 + p17*p24*p37 - p23*p27*p37) - (2*p23 + p27)*(p17 
     .- p37)*s)*s2 - 2*(4*p17**2*p24*(p23 + p47) + p37*p47*(s**2 
     .+ 2*p23*(-2*p27 + s)) - p17*(p47*s**2 + 2*p23*(2*p24*p37 
     .- 2*p27*p47 + p47*s)))*s2 + (-4*p17**2*p24 - p37*(2*p27**2 
     .+ 2*p24*p37 - 2*p27*s + s**2) + p17*(2*p27**2 + 4*p24*p37 
     .- 2*p27*s + s**2))*s2**2 - 4*p13**2*p24*(-8*p17*p24 + 2*p27**2 
     .+ 4*p14*(2*p23 + p27) + 8*p24*p37 - 4*p23*p47 + 2*p47**2 
     .- 2*p27*s + s**2 + 2*p47*s2 + s2**2) + p13*(24*p17**2*p24**2 
     .+ 8*p14**2*(2*p23**2 + 2*p23*p27 + p27**2) + 8*(p24*p37*(2*p27**2 
     .+ 3*p24*p37) - 4*p23*p24*p37*p47 + p23**2*p47**2) 
     .- 16*p24*p27*p37*s + 2*(4*p24*p37 + p47**2)*s**2 - 8*p14*(p17*(
     . 6*p23*p24 + 4*p24*p27) + 2*p23**2*p47 - 2*p24*p37*(p27 + p47) 
     .- p24*p37*s + p27*p47*s + p23*(-6*p24*p37 + p47*s)) 
     .+ 4*p14*(2*p23*p27 + 2*p24*p37 - (2*p23 + p27)*s)*s2 
     .+ 2*p47*(s**2 + 2*p23*(-2*p27 + s))*s2 + (2*p27**2 + 4*p24*p37 
     .- 2*p27*s + s**2)*s2**2 - 4*p17*p24*(8*p24*p37 + 4*p47**2 
     .+ s**2 + 4*p47*s2 + 2*s2**2 + 2*p23*(-2*p27 - 2*p47 + s + s2))))) 
     .	 *prop24 * DCONJG(prop24) *prop137 * DCONJG(prop137)/(p17*p37)
     .   * flagu
         
        ampLLd_2 = -( 2*(16*p13**2*p24**3 + 32*p13**2*p24**2*p27 
     .+ 24*p13**2*p24*p27**2 + 8*p13**2*p27**3 - 8*p13*p24**2*p37**2 
     .- 16*p13*p24*p27*p37**2 - 8*p13*p27**2*p37**2 + 8*p14**2*(
     . -(p13*p27**2) + 2*p23**2*(p24 + p27 - p47) - 2*p23*p37*(p24 
     .+ p27 - p47) + p37**2*(p24 + p27 - p47)) - 32*p13**2*p24**2*p47 
     .- 32*p13**2*p24*p27*p47 - 8*p13**2*p27**2*p47 
     .+ 16*p13*p23*p24*p37*p47 + 16*p13*p23*p27*p37*p47 
     .- 8*p13*p23**2*p47**2 + 24*p13**2*p24*p47**2 
     .+ 8*p13**2*p27*p47**2 - 8*p13**2*p47**3 + 8*p13*p23*p24*p47*s 
     .+ 8*p13*p23*p27*p47*s - 8*p13*p23*p47**2*s - 4*p13*p24**2*s**2 
     .- 4*p13*p24*p27*s**2 - 2*p13*p27**2*s**2 + 2*p24*p37**2*s**2 
     .+ 2*p27*p37**2*s**2 + 8*p13*p24*p47*s**2 + 4*p13*p27*p47*s**2 
     .- 2*p37**2*p47*s**2 - 4*p13*p47**2*s**2 + 8*p17*(-2*p13*p23*( 
     . p24 + p27)*(p24 + p27 - p47) + p13*(p24 - p47)**2*s 
     .- p23*p37*(p24 + p27 - p47)*s) - 4*p17*p23*(p24 + p27 
     .- p47)*s*s2 + 2*(-4*p13*(p24 + p27)*((p24 + p27)*p37 - p23*p47) 
     .+ p37*(p24 + p27 - p47)*s**2)*s2 - 2*p17*(p24 + p27 
     .- p47)*s*s2**2 + (-4*p13*(p24 + p27)**2 + 4*p13*(p24 + p27)*p47 
     .- 2*p13*p47**2 + (p24 + p27 - p47)*s**2)*s2**2 
     .+ 4*p14*(4*p17*(p13*p27*(p24 - p47) + p23**2*(p24 + p27 - p47)) 
     .- 4*p13*(p24 + p27 - p47)*(p23*(2*p24 + p27 - p47) + p37*(-p24 
     .+ p47)) - 2*(p13*p27*(p24 - p47) + p23*p37*(p24 + p27 - p47))*s 
     .+ 2*p17*(p23 - p37)*(p24 + p27 - p47)*s2 - (p24 + p27 - p47)*( 
     . 2*p13*p27 + 2*p23*s - p37*s)*s2) + 2*p17**2*(-4*p13*(p24 
     .- p47)**2 + 4*p23**2*(p24 + p27 - p47) + (p24 + p27 - p47)*s2**2)
     . ))
     .  * prop13 * DCONJG(prop13) * prop247 * DCONJG(prop247)/(p27*p47)
     .  * flagd 

	 
    
	 amp2 = (amp2u + amp2d) * CF * gs_sq * 
     .   (unit_e/sthw)**4/vev**2 * mw2
         
         amp2 =  amp2 + (ampLLd_2 + ampLLu_2) * CF * gs_sq * 
     .   (unit_e/sthw)**4/vev**2 * ckm1**2 * ckm2**2 * ph_cwwt**2
         
         
      endif            
      
      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p56sq-mH2)**2 + mHgammaH**2)
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


c     Same as q1_q2_to_q3_q4_H_g_flag with NO FLAG option
      subroutine q1_q2_to_q3_q4_H_g_vvtilde(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      real * 8 pphy(0:3,nf)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 amp2
      integer flag
      integer rflav(nf)
      
      flag = 0      
      call q1_q2_to_q3_q4_H_g_flag_vvtilde(pphy,fermion_type,
     #fermion_charge,flag,rflav,amp2)

      end

c     g q and q g are related to qqbar 
      
      subroutine g_q2_to_q3_q4_H_q1bar_vvtilde(pphy,fermion_type,
     #fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf), ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(1) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = + 1
      call q1_q2_to_q3_q4_H_g_flag_vvtilde(pp,ferm_type,ferm_charge,
     #flag,rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end


      subroutine q1_g_to_q3_q4_H_q2bar_vvtilde(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(2) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = - 1
      call q1_q2_to_q3_q4_H_g_flag_vvtilde(pp,ferm_type,
     #ferm_charge,flag,rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end                  
      
      
      
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c Real Matrix Elements for the weak EDMs
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     q q channel

      subroutine q1_q2_to_q3_q4_H_g_flag_wdm(pphy,ferm_type,
     #     fermion_charge,flag,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      integer ferm_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      integer flag, flagu1, flagu2, flagd1, flagd2, flagu, flagd            
      real * 8 amp2, amp2u, amp2d, s, s2, vev, rg

      integer upper_line_only,lower_line_only
      parameter (upper_line_only=+1,lower_line_only=-1)
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),p7(0:3),
     #     pH(0:3)
c      include 'coupl.inc'
c      include 'couplings.h'
      real * 8 p13,p24,p5sq
      real * 8 p12,p14,p15,p23,p25,p34,p35,p45
      real * 8 p17,p27,p37,p47,p56sq

      real * 8 dotp
      complex * 16 ccdotp
      complex * 16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
c      complex * 16 psi5(2,-1:1),psi6(2,-1:1)
c      complex * 16 jHdecay(0:3)
      complex * 16 prop13, prop24, fac, propH_sq
      complex * 16 prop137, prop247
      integer mu,i
      real * 8 p(0:3,7),pp1(0:3),pp2(0:3),pp3(0:3),pp4(0:3),pp7(0:3)
      integer utype_q1, utype_q2
      real * 8 q_q1,v_q1,a_q1,q_q2,v_q2,a_q2,L_q1,R_q1,L_q2,R_q2
      integer ferm_charge(nf), tmp
      real * 8 eps(0:3,1:2)     
      integer pol
      integer rflav(nf)
      real * 8 zdmIm1, zdmIm2, zdmRe1, zdmRe2
      real * 8 wdmU1, wdmU2, wdmD1, wdmD2, ckm1, ckm2
      real * 8 edmRe1, edmRe2, edmIm1, edmIm2
      
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
CCCCCCCCCCCCCCC   local physical parameters     CCCCCCCCCCCCCCCCCC
      real * 8 unit_e,gs_sq
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
      gs_sq = 4*pi*st_alpha
      
c      if ((ferm_type(5).ne.-1).and.(ferm_type(6).ne.1)) then
c         write(*,*) 'ERROR: this subroutine deals only with H decay'
c         stop
c      endif




c create a copy of local variables
      do i=1,nf
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
      enddo
      do i=1,nf
         ferm_charge(i) = fermion_charge(i)
      enddo

      
      if(flag.eq.1) then 
	flagu1 = 1d0
	flagd1 = 1d0
	flagu2 = 0d0
	flagd2 = 0d0
      elseif(flag.eq.-1) then
      	flagu1 = 0d0
	flagd1 = 0d0
	flagu2 = 1d0
	flagd2 = 1d0
      else 
      	flagu1 = 1d0
	flagd1 = 1d0
	flagu2 = 1d0
	flagd2 = 1d0
      endif

c utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c utype = -1 otherwise
      if (abs(ferm_charge(1)).eq.2) then
         utype_q1 = +1
         q_q1 = 2d0/3
         zdmRe1 = 	    ph_ReGUw(abs(rflav(1))/2,abs(rflav(1))/2) 
     .	        - sthw**2 * ph_ReGUe(abs(rflav(1))/2,abs(rflav(1))/2)
         zdmIm1 = 	    ph_ImGUw(abs(rflav(1))/2,abs(rflav(1))/2) 
     .	        - sthw**2 * ph_ImGUe(abs(rflav(1))/2,abs(rflav(1))/2)
         edmRe1 =           ph_ReGUe(abs(rflav(1))/2,abs(rflav(1))/2)
         edmIm1 =           ph_ImGUe(abs(rflav(1))/2,abs(rflav(1))/2)
      elseif (abs(ferm_charge(1)).eq.1) then
         utype_q1 = -1
         q_q1 = -1d0/3
         zdmRe1 = -	    ph_ReGDw((abs(rflav(1)) +1)/2,
     .				     (abs(rflav(1)) +1)/2) 
     .	        - sthw**2 * ph_ReGDe((abs(rflav(1)) +1)/2,
     .				     (abs(rflav(1)) +1)/2)
         zdmIm1 = - 	    ph_ImGDw((abs(rflav(1)) +1)/2,
     .				     (abs(rflav(1)) +1)/2) 
     .	        - sthw**2 * ph_ImGDe((abs(rflav(1)) +1)/2,
     .				     (abs(rflav(1)) +1)/2)
         edmRe1 =  	    ph_ReGDe((abs(rflav(1)) +1)/2,
     .				     (abs(rflav(1)) +1)/2)
         edmIm1 =  	    ph_ImGDe((abs(rflav(1)) +1)/2,
     .				     (abs(rflav(1)) +1)/2)
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif

      if (abs(ferm_charge(2)).eq.2) then
         utype_q2 = +1
         q_q2 = 2d0/3
         zdmRe2 = 	    ph_ReGUw(abs(rflav(2))/2,abs(rflav(2))/2) 
     .	        - sthw**2 * ph_ReGUe(abs(rflav(2))/2,abs(rflav(2))/2)
         zdmIm2 = 	    ph_ImGUw(abs(rflav(2))/2,abs(rflav(2))/2) 
     .	        - sthw**2 * ph_ImGUe(abs(rflav(2))/2,abs(rflav(2))/2)
         edmRe2 = 	    ph_ReGUe(abs(rflav(2))/2,abs(rflav(2))/2)
         edmIm2 =           ph_ImGUe(abs(rflav(2))/2,abs(rflav(2))/2)     
      elseif (abs(ferm_charge(2)).eq.1) then
         utype_q2 = -1
         q_q2 = -1d0/3
         zdmRe2 = -	    ph_ReGDw((abs(rflav(2)) +1)/2,
     .				     (abs(rflav(2)) +1)/2) 
     .	        - sthw**2 * ph_ReGDe((abs(rflav(2)) +1)/2,
     .				     (abs(rflav(2)) +1)/2)
         zdmIm2 = -	    ph_ImGDw((abs(rflav(2)) +1)/2,
     .				     (abs(rflav(2)) +1)/2) 
     .	        - sthw**2 * ph_ImGDe((abs(rflav(2)) +1)/2,
     .				     (abs(rflav(2)) +1)/2)
         edmRe2 = 	    ph_ReGDe((abs(rflav(2)) +1)/2,
     .				     (abs(rflav(2)) +1)/2)
         edmIm2 = 	    ph_ImGDe((abs(rflav(2)) +1)/2,
     .				     (abs(rflav(2)) +1)/2)     
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
       
	wdmU1 =  ph_ReGU_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	wdmU2 =  ph_ReGU_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
     
c    d u --> u d, and dbar ubar --> ubar dbar      
c    exchange momenta p1 <--> p2, p3 <--> p4
c    and exchange lines 
      elseif(abs(ferm_charge(1)).eq.1.and.abs(ferm_charge(2)).eq.2.and.
     #abs(ferm_charge(3)).eq.2.and.abs(ferm_charge(4)).eq.1) then 
     	call exchange_momenta(p(0,1),p(0,2))
	call exchange_momenta(p(0,3),p(0,4))
	
	wdmU2 =  ph_ReGU_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	wdmU1 =  ph_ReGU_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	
	ckm2   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	ckm1   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
     
c       exchange flags     
        flagu = flagu1
	flagd = flagd1
	flagu1 = flagu2 
	flagd1 = flagd2
	flagu2 = flagu 
	flagd2 = flagd
	
	
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
	wdmU1 =  ph_ReGU_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	wdmU2 =  ph_ReGU_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	

c     ubar u --> dbar d. 
c     Exchange p1 --> -p3. Then exchange U and D 	
      elseif(ferm_charge(1).eq.-2.and.ferm_charge(2).eq.2.and.
     #ferm_charge(3).eq.1.and.ferm_charge(4).eq.-1) then
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	wdmD1 =  ph_ReGU_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	wdmD2 =  ph_ReGU_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	wdmU1 =  ph_ReGD_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	wdmU2 =  ph_ReGD_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	ckm1   =  ph_CKM(abs(rflav(1))/2, (abs(rflav(3))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(2))/2, (abs(rflav(4))+1)/2)**2
	


c     d dbar --> u ubar. p1 --> p2, p3 --> p4. Then p2 --> -p4	
      elseif(ferm_charge(1).eq.-1.and.ferm_charge(2).eq.1.and.
     #ferm_charge(3).eq.2.and.ferm_charge(4).eq.-2) then 
	do mu=0,3
	  p(mu,2) = - p(mu,2)
	  p(mu,4) = - p(mu,4)
	enddo
	call exchange_momenta(p(0,2),p(0,4))
c     exchange D and U	
	wdmD1 =  ph_ReGU_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	wdmD2 =  ph_ReGU_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	wdmU1 =  ph_ReGD_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	wdmU2 =  ph_ReGD_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	


c     dbar d --> ubar u. p1 --> -p3	
      elseif(ferm_charge(1).eq.1.and.ferm_charge(2).eq.-1.and.
     #ferm_charge(3).eq.-2.and.ferm_charge(4).eq.2) then 
	do mu=0,3
	  p(mu,1) = - p(mu,1)
	  p(mu,3) = - p(mu,3)
	enddo
	call exchange_momenta(p(0,1),p(0,3))
	
	wdmU1 =  ph_ReGU_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	wdmU2 =  ph_ReGU_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	      +  ph_ImGU_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	wdmD1 =  ph_ReGD_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	wdmD2 =  ph_ReGD_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2 
     .	      +  ph_ImGD_W(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	ckm1   =  ph_CKM(abs(rflav(3))/2, (abs(rflav(1))+1)/2)**2
	ckm2   =  ph_CKM(abs(rflav(4))/2, (abs(rflav(2))+1)/2)**2
	


      endif

c     7 is the gluon      
      do mu=0,3
         p1(mu) = p(mu,1)
         p2(mu) = p(mu,2)
         p3(mu) = p(mu,3)
         p4(mu) = p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
         p7(mu) = p(mu,7)
      enddo

      do mu=0,3
         pH(mu) = p5(mu)+p6(mu)
      enddo

      s = 2d0 * dotp(p1,p2)
      s2 = 2d0 * dotp(p3,p4)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p5sq=dotp(p5,p5)
      
      p17 = dotp(p1,p7)
      p27 = dotp(p2,p7)
      p37 = dotp(p3,p7)
      p47 = dotp(p4,p7)

      p56sq=dotp(pH,pH)
      
      
      

      if (ferm_charge(1).eq.ferm_charge(3)) then
c     Z exchange in the t channel
c     right handed current does not contribute		
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
      if(-(p13 + p17 - p37).le.0d0) then 
	prop137 = 1d0/(-2*(p13 + p17 - p37)-mz2)
      else    
	prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mz2,mZgammaZ)
      endif   
      if(-(p24 + p27 - p47).le.0d0) then  
	prop247 = 1d0/(-2*(p24 + p27 - p47)-mz2)
      else    
	prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mz2,mZgammaZ)
      endif
	 
	amp2u =  p24*(-(p37*(-((2*p27 - s)*(2*p23 + s)) + 2*(p14 - p47)
     .  *(2*p14 + s2))) + p13*(-4*p27*(p23 + p27) + 2*(2*p23 + p27)*s 
     .  + 4*p14*(p47 + s2) - 2*p47*(2*p47 + s2)) + p17*(2*(p23 + p27)*(
     .  2*p23 + s) + (2*p14 + s2)*(2*p47 + s2)))
	
	amp2u = amp2u - mz2 *1/2d0 * ( prop137 + DCONJG(prop137) ) *(
     .	4*p14**2*(p17*(p23 + p27) - (3*p23 + p27)*p37) + 4*p13**2*p24*(
     . -2*p14 - 2*p23 - 2*p27 + 2*p47 + s + s2) + p14*(-4*p17**2*p24 
     . + p17*(4*(3*p23**2 - p24*p37 + p27*(p27 + p47) + 2*p23*(2*p27 
     . + p47)) + 2*(p23 + p27 - p47)*s + (6*p23 + 4*p27 - s)*s2) + p37*(
     . -4*p23**2 + 4*p27**2 + 4*p27*p47 - 2*p27*s + 2*p47*s + 2*p23*( 
     . 4*p27 + 8*p47 - 3*s - s2) - 4*p27*s2 + 3*s*s2)) + p13*(4*p14**2*( 
     . 2*p23 + p27) + 8*p23*p24*p37 + 12*p24*p27*p37 - 4*p23**2*p47 
     . - 4*p23*p27*p47 - 12*p24*p37*p47 - 4*p23*p47**2 - 4*p24*p37*s 
     . - 4*p23*p47*s + 2*p27*p47*s + 2*p47**2*s - p47*s**2 - (4*p24*p37 
     . + 2*p23*(-p27 + p47 + s) - (2*p27 - s)*(p27 + p47 + s))*s2 + (p27 
     . - s)*s2**2 + 4*p17*p24*(-2*p23 - 3*p27 + 3*p47 + s + s2) 
     . + 2*p14*(4*p23**2 - 2*p27**2 + 4*p24*(-p17 + p37) - s*(p47 + s2) 
     . + 2*p23*( p27 - p47 + s + s2) + p27*(-2*p47 + s + 2*s2))) 
     . + (4*p17**2*p24*(-2*p27 + 2*p47 + s) + p17*(-8*p23**2*p47 
     . - 2*p47*s*(2*(p27 + p47) + s) - 8*p23*(p24*p37 + p47*(p27 + p47 
     . + s)) + 2*p23*(2*p27 - 2*p47 - 3*s)*s2 + (4*p27*(p27 + p47) 
     . - 4*(p27 + 2*p47)*s - s**2)*s2 + (2*p27 - 3*s)*s2**2 
     . + 4*p24*p37*(-4*p27 + 4*p47 + s + s2)) + p37*(8*p23**2*p47 
     . + 2*p47*s*(-2*(p27 + p47) + s) + (4*p27*(p27 + p47) - 4*(2*p27 
     . + p47)*s + 3*s**2)*s2 + (-2*p27 + s)*s2**2 + 4*p24*p37*(-2*p27 
     . + 2*p47 + s2) + p23*(-8*p24*p37 - 8*p47*(p27 + p47 - s) 
     . + 2*(-2*p27 + 2*p47 + s)*s2)))/2.   )  
	
	amp2u = amp2u + mz2**2 * prop137 * DCONJG(prop137) * (
     .  -4*(4*p13**3*p24 - p14*(p17**2*(4*p23 + 2*p27 + s) 
     .  - 2*p17*p37*(4*p23 + p27 + 2*s) + p37**2*(4*p23 - 4*p27 + 3*s)) 
     .  + (p17 + p37)*(2*p17**2*p24 - p17*p47*(4*p23 + 2*p27 + s) 
     .  + 2*p37*(-(p24*p37) + p47*(p23 - p27 + s))) - (p17*p37*(-4*p23 
     .  + p27 - 2*s) + p37**2*(p23 - p27 + s) + p17**2*(3*p23 + 2*p27 
     .  + s))*s2 - p13**2*(-8*p17*p24 + 8*p24*p37 - 4*p27*p47 + (2*p23 
     .  + s)*(2*p14 + s2)) - p13*(-6*p17**2*p24 + 2*p14*(p37*(-4*p23 
     .  + 3*p27 - 3*s) + p17*(4*p23 + p27 + s)) + p37*(-6*p24*p37 
     .  + 2*p23*p47 + 3*p47*s - 2*p23*s2 + p27*s2 - 2*s*s2) 
     .  + p17*(4*p24*p37 + p47*s + 3*p27*s2 + 2*s*s2 
     .+ 6*p23*(p47 + s2)))))
         
	amp2u = amp2u * prop24 * DCONJG(prop24)/p17/p37 * flagu1
         
        amp2u = amp2u + (2*p17*(2*p27**2*p37 + 2*p37*p47**2 
     .  - 2*p23*(p24**2 - p24*p47 + p47*(p27 + p47)) + p27**2*s2 
     .  + p27*p47*s2 + p24**2*(4*p37 + s2) + p24*(4*p27*p37 - 4*p37*p47 
     .  + p27*s2)) + 2*p14*(2*p27**2*p37 + 2*p27*p37*p47 
     .  + 2*p23*(p24*(p27 - p47) - 2*p27*p47) + 3*p27**2*s2 
     .  - 2*p27*p47*s2 + p47**2*s2 + 2*p24**2*(p37 + s2) 
     .  + 2*p24*(p27*p37 + 2*p27*s2 - p47*s2)) + s*(-2*p24**2*p37 
     .  + 2*p23*(2*p24**2 + p27**2 + 2*p24*(p27 - 2*p47) - 2*p27*p47 
     .  + 3*p47**2) + p24*(2*p37*p47 + (p27 - p47)*s2) - 2*p47*(p37*p47 
     .  + p27*(p37 + s2))))
     .  * prop247 * DCONJG(prop247)/ p27/p47 * flagu2 
     
        amp2u = amp2u - 1/4d0 * mz2 *( prop13 + DCONJG(prop13) )*(
     .  -16*p13*p23*p24**2 - 16*p13*p23*p24*p27 - 8*p13*p23*p27**2 
     .  + 16*p13*p24**2*p37 + 16*p13*p24*p27*p37 + 8*p13*p27**2*p37 
     .  + 16*p13*p23*p24*p47 - 16*p13*p24*p37*p47 - 8*p13*p23*p47**2 
     .  + 8*p13*p37*p47**2 + 8*p14**2*(p23*(2*p24 + 3*p27 - p47) 
     .  + p37*(-p24 - 2*p27 + p47)) + 8*p13*p24**2*s + 8*p13*p24*p27*s 
     .  + 4*p13*p27**2*s - 4*p23*p24*p37*s - 4*p23*p27*p37*s 
     .  - 4*p24*p37**2*s - 4*p27*p37**2*s - 8*p13*p24*p47*s 
     .  + 8*p23*p37*p47*s + 4*p13*p47**2*s - 2*p24*p37*s**2 
     .  - 2*p27*p37*s**2 + 4*p37*p47*s**2 - (-4*p13*(2*p24**2 + p27**2 
     .  + 2*p24*(p27 - p47) + p47**2) + s*(2*p23*(2*p24 + p27 - 3*p47) 
     .  + 2*p37*(p24 + 2*p27 + p47) + (2*p24 + p27 - 3*p47)*s))*s2 
     .  - (2*p24 + 3*p27 - p47)*s*s2**2 + 4*p17**2*(2*p23*(p24 + p27) 
     .  + (-p24 + p47)*s2) + 2*p14*(4*(-2*p13*p24**2 - 2*p13*p24*p27 
     .  - p13*p27**2 + p24*p37**2 + p23**2*(2*p24 + p27 - 3*p47) 
     .  + 2*p13*p24*p47 - p37**2*p47 - p13*p47**2 + p23*p37*(-p24 + p27 
     .  + 2*p47) + p17*(p37*(p24 - p47) + p23*(p24 + 2*p27 + p47))) 
     .  + 2*((2*p24 + p27)*(p23 - p37) + (-3*p23 + p37)*p47)*s + (
     .  -2*p24*p37 - 4*p27*p37 + p23*(4*p24 + 6*p27 - 2*p47) 
     .  + 2*p17*(p24 + 2*p27 - p47) + 2*p37*p47 - 2*p24*s - 3*p27*s 
     .  + p47*s)*s2) - 2*p17*(-4*(p23*(p24 + p27)*p37 + p23**2*(p24 
     .  + p27 - 2*p47) - p13*(2*p24**2 + p27**2 + 2*p24*(p27 - p47) 
     .  + p47**2)) + 2*((p24 + p27)*(-p23 + p37) + 2*p23*p47)*s 
     .  + (2*p24*p37 - 2*p23*(2*p24 + p27 - p47) - 2*p37*p47 - p24*s 
     .  + p27*s + 2*p47*s)*s2 + (-p24 - 2*p27 + p47)*s2**2)   )
     .  * prop247 * DCONJG(prop247)/ p27/p47 * flagu2
     
	amp2u = amp2u + 2d0 * mz2**2 * prop13 * DCONJG(prop13) * (
     . 	p13*(-8*p13*p24**2 + 4*p14**2*p27 - 8*p13*p24*p27 - 4*p13*p27**2 
     .  + 4*p23*p24*p37 + 4*p23*p27*p37 - 4*p23**2*p47 + 8*p13*p24*p47 
     .  - 4*p13*p47**2 + 2*p24*p37*s + 2*p27*p37*s - 4*p23*p47*s 
     .  - p47*s**2 + (2*p23*(2*p24 + p27 - p47) + 2*p37*p47 + p27*s 
     .  - p47*s + 2*p24*(-p37 + s))*s2 + p27*s2**2 + 2*p14*(-2*p24*p37 
     .  + 2*p23*(2*p24 + p27 - p47) + 2*p37*p47 + 2*p17*(-p24 + p47) 
     .  + 2*p24*s + p27*s - p47*s + 2*p27*s2) + 2*p17*((p24 + p27)*(
     .  2*p23 + s) + (-p24 + p47)*s2)))
     .  * prop247 * DCONJG(prop247)/ p27/p47 * flagu2
     
	amp2d = p13*(-4*p17**2*p24 + 4*p14**2*p27 + 4*p23*p24*p37 
     .  + 4*p23*p27*p37 - 4*p24*p37**2 - 4*p23**2*p47 + 4*p23*p37*p47 
     .  + 2*p17*(p24 + p27 + p47)*s - p47*s**2 + p14*(4*p17*(-p24 + p27 
     .  + p47) + 2*(2*p24 + p27 - p47)*s) + 2*(p23*(2*p24 + p27 - p47) 
     .  + p37*(-p24 + p27 + p47))*s2 + p27*s2**2)
     
        amp2d = amp2d - mz2 *1/2d0 * ( prop247 + DCONJG(prop247) ) * 
     .  (-8*p13*p23*p24**2 - 8*p13*p23*p24*p27 - 4*p13*p23*p27**2 
     . + 8*p13*p24**2*p37 + 12*p13*p24*p27*p37 + 4*p13*p27**2*p37 
     . + 4*p14**2*(-(p37*(p24 + p27 - p47)) + p23*(2*p24 + 3*p27 
     . - p47)) + 8*p13*p23*p24*p47 - 4*p13*p23*p27*p47 
     . - 12*p13*p24*p37*p47 + 8*p13*p27*p37*p47 + 4*p13*p37*p47**2 
     . + 4*p13*p24**2*s + 4*p13*p24*p27*s + 2*p13*p27**2*s 
     . - 2*p23*p24*p37*s - 2*p23*p27*p37*s + 2*p24*p37**2*s 
     . - 2*p27*p37**2*s - 4*p13*p24*p47*s + 2*p13*p27*p47*s 
     . + 2*p23*p37*p47*s - 2*p37**2*p47*s - p24*p37*s**2 - p27*p37*s**2 
     . + p37*p47*s**2 + ((4*p13*(2*p24**2 + 2*p24*(p27 - p47)+ p47*(p27 
     . + p47)) - s*(2*p23*(2*p24 + p27 - 3*p47) + 2*p37*(p24 + 4*p27 
     . + 2*p47) + (2*p24 + p27 - 3*p47)*s))*s2)/2. + ((-2*p24 - 3*p27 
     . + p47)*s*s2**2)/2. + 2*p17**2*(2*p23*(-p24 + p27 + p47) + (p24 
     . + p27 + p47)*s2) + p14*(-4*((p24 + p27)*(2*p13*p24 + p37**2) 
     . + p23*p37*(p24 - 2*p27 - 4*p47) - p23**2*(2*p24 + p27 - 3*p47) 
     . + (-2*p13*p24 + p13*p27 + p37**2)*p47 + p13*p47**2 + p17*(p37*( 
     . p24 + p27 + p47) - p23*(p24 + 4*p27 + 2*p47))) + 2*(p23*(2*p24 
     . + p27 - 3*p47) - 2*p37*(p24 + p27 - p47))*s + (p23*(4*p24 +6*p27 
     . - 2*p47) + 2*p17*(p24 + p27 - p47) - 2*p37*(p24 + p27 - p47) 
     . + (-2*p24 - 3*p27 + p47)*s)*s2) + p17*(-4*(p23*p37*(p24 - p27 
     . - p47) - p23**2*(p24 + p27 - p47) + p13*(2*p24**2 + 3*p24*(p27 
     . - p47) + (p27 + p47)**2)) + 2*(p37*(p24 - p27 - p47) + p23*(p24 
     . + p27 - p47))*s + (4*p23*(p24 + p27 - p47) + 2*p37*(p24 + p27 
     . + p47) + (p24 - 2*(p27 + 2*p47))*s)*s2 + (p24 +p27- p47)*s2**2))
     
        amp2d = amp2d + mz2**2 * prop247 * DCONJG(prop247) * ( 
     .  4*(2*p17*p23*p24*p27 + 2*p17*p23*p27**2 - 4*p17*p24**2*p37 
     .  + 2*p17*p27**2*p37 + 6*p17*p23*p24*p47 - 2*p17*p23*p27*p47 
     .  + 4*p17*p27*p37*p47 - 4*p17*p23*p47**2 + 2*p17*p37*p47**2 
     .  - 2*p13*(p24 + p27 - p47)*(2*p24**2 + 2*p24*(p27 - p47) + (p27 
     .  + p47)**2) + 2*p14*(2*p23*(p24 + p27 - p47)**2 + p37*((2*p27 
     .  - p47)*(p27 + p47) + p24*(3*p27 + p47))) + 2*p23*p24**2*s 
     .  + 2*p23*p24*p27*s + p23*p27**2*s + p24*p27*p37*s + p27**2*p37*s 
     .  - 6*p23*p24*p47*s - 4*p23*p27*p47*s + 3*p24*p37*p47*s 
     .  - p27*p37*p47*s + 3*p23*p47**2*s - 2*p37*p47**2*s 
     .  + p14*(2*p24**2 + 6*p24*p27 + 3*p27**2 - 2*(p24 + 2*p27)*p47 
     .  + p47**2)*s2 + (p17*((2*p27 - p47)*(p27 + p47) + p24*(3*p27 
     .  + p47)) + (p24 + p27 - p47)**2*s)*s2)  )
     
        amp2d = amp2d * prop13 * DCONJG(prop13)/p27/p47 * flagd2
         
        amp2d = amp2d  + (2*p13**2*(4*p27*p47 - 2*p14*(p27 - s) 
     .  - p47*s + p27*s2 + 2*p23*(p47 + s2)) + 2*(p14*(p17**2*s 
     .  - 2*p17*p37*(2*p23 + p27 + s) + p37**2*(-2*p27 + 3*s)) 
     .  + p37**2*(2*p27*p47 - p47*s + p23*s2) + p17**2*(2*p23*p47 
     .  + 2*p27*p47 + 3*p23*s2 + p27*s2) + p17*p37*(2*p23*p47 - p47*s 
     .  - 2*p23*s2 + p27*s2 - s*s2)) + p13*(4*p14*(p37*(-p23 + p27 
     .  - 2*s) + p17*(p23 + s)) - p37*(8*p27*p47 - 2*p47*s + 4*p23*s2 
     .  + s*s2) + p17*(4*p23*p47 + 8*p27*p47 + 8*p23*s2 
     .  + 2*p27*s2 + s*s2))) 
     .  * prop137 * DCONJG(prop137)/p17/p37 * flagd1 
         
        amp2d = amp2d  - mz2/4d0 * (prop24 + DCONJG(prop24)) * (
     .  8*p14**2*(p17*(p23 + p27) - (3*p23 + 2*p27)*p37) - 8*p24*(p23 
     .  + p27)*(p17**2 + p37**2) + 8*(-2*p17*p23**2 + p17**2*p24 + p37*(
     .  p23**2 - p23*p27 + p24*p37))*p47 - 8*p23*p37*p47**2 
     .  - 4*(-(p17**2*p24) + p17*p47*(p23 + p27 + p47) - p37*(p24*p37 
     .  + p23*p47))*s - 2*(p17 - 2*p37)*p47*s**2 - 8*p13**2*p24*(2*p14 
     .  + 2*p23 + 2*p27 - 2*p47 - s - s2) - (-4*(p17**2*p24 
     .  + 2*p17*p23*(p27 - p47) + p37*(p24*p37 + p23*(-p27 + p47) 
     .  + p27*(p27 + p47))) + 2*(p37*(-p23 + 2*p27 + p47) + p17*(3*p23 
     .  + p27 + 2*p47))*s + (p17 - 3*p37)*s**2)*s2 - (-4*p17*p27 
     .  + 2*p27*p37 + 3*p17*s - p37*s)*s2**2 + 2*p13*(4*p14**2*(2*p23 
     .  + p27) + 8*p23*p24*p37 + 8*p24*p27*p37 - 4*p23**2*p47 
     .  + 4*p23*p27*p47 - 8*p24*p37*p47 + 4*p23*p47**2 - 4*p24*p37*s 
     .  - 4*p23*p47*s - 2*p27*p47*s - 2*p47**2*s - p47*s**2 - (4*p24*p37 
     .  + 2*p27*(p27 + p47) + (-p27 + p47)*s + s**2 + 2*p23*(-p27 + p47 
     .  + s))*s2 + (p27 - s)*s2**2 + 4*p17*p24*(-2*p23 - 2*p27 + 2*p47 
     .  + s + s2) + 2*p14*(4*p23**2 + 2*p27**2 + 4*p24*(-p17 + p37) 
     .  - s*(p47 + s2) + 2*p23*(p27 - p47 + s + s2) + p27*(2*p47 + s 
     .  + 2*s2))) - 2*p14*(4*p17**2*p24 + p37*(4*p23**2 + 4*p24*p37 
     .  + 4*p27*s - 4*p47*s + 2*p27*s2 - 3*s*s2 + 2*p23*(-2*p27 - 4*p47 
     .  + 3*s + s2)) - p17*(12*p23**2 + 4*p27**2 - s*(2*p47 + s2) 
     .  + 2*p27*(2*p47 + s + s2) + 2*p23*(4*p27 + 2*p47 + s + 3*s2))) )
     .  * prop137 * DCONJG(prop137)/p17/p37 * flagd1
     
	amp2d = amp2d + mz2**2 * prop24 * DCONJG(prop24)* (
     .  2*p24*(4*p17*p23**2 - 8*p13**2*p24 - 4*p17**2*p24 
     .  - 4*p14**2*p37 + 4*p23*p27*p37 - 4*p24*p37**2 + 4*p23*p37*p47 
     .  + 2*p17*p23*s + 2*p17*p27*s - 2*p23*p37*s + 2*p17*p47*s 
     .  - p37*s**2 + (2*p37*(p27 + p47) - p37*s + p17*(4*p23 + s))*s2 
     .  + p17*s2**2 + 2*p13*(4*p24*(-p17 + p37) - 2*p23*(p27 + p47 - s) 
     .  + (p27 + p47)*s - (p27 + p47 - s)*s2 + 2*p14*(2*p23 + p27 + p47 
     .  + s2)) + 2*p14*(p17*(2*(p23 + p27 + p47) + s2) 
     .  - p37*(2*(p23 + s) + s2))) ) 
     .  * prop137 * DCONJG(prop137)/p17/p37 * flagd1
     
        amp2u = amp2u/cthw**4 * ( a_q2**2 + v_q2**2) * 
     .	      	(unit_e/sthw)**4 /vev**4* ( zdmRe1**2 + zdmIm1**2)
     
	amp2d = amp2d/cthw**4 * ( a_q1**2 + v_q1**2) *
     .		(unit_e/sthw)**4 /vev**4 *( zdmRe2**2 + zdmIm2**2)
         
  
c       photon exchange          

         amp2u = amp2u + (-(p37*(-((2*p27 - s)*(2*p23 + s)) + 2*(p14 
     .   - p47)*(2*p14 + s2))) + p13*(-4*p27*(p23 + p27) + 2*(2*p23 
     .   + p27)*s + 4*p14*(p47 + s2) - 2*p47*(2*p47 + s2))+ p17*(2*(p23 
     .   + p27)*(2*p23 + s) + (2*p14 + s2)*(2*p47 + s2)))/(p17*p24*p37)
     .   * (unit_e)**4 /vev**4 * q_q2**2 *( edmRe1**2 + edmIm1**2)
     .   * flagu1 

     
	amp2u = amp2u + (4*p14*(p23*p24*p27 - p23*(p24 + 2*p27)*p47 
     .  + p37*(p24**2 + p24*p27 + p27*(p27 + p47))) + 4*p17*(p37*(
     .  2*p24**2 + p27**2 + 2*p24*(p27 - p47) + p47**2) - p23*(p24**2 
     .  - p24*p47 + p47*(p27 + p47))) + 2*(p23*(2*p24**2 + 2*p24*p27 
     .  + p27**2 - 2*(2*p24 + p27)*p47 + 3*p47**2) - p37*(p24**2 
     .  - p24*p47 + p47*(p27 + p47)))*s + 2*p17*(p24**2 + p24*p27 
     .  + p27*(p27 + p47))*s2 + (2*p14*(2*p24**2 + 4*p24*p27 + 3*p27**2 
     .  - 2*(p24 + p27)*p47 + p47**2) + (p24*p27 - (p24 
     .  + 2*p27)*p47)*s)*s2)/(p27*(p24 + p27 - p47)**2*p47)
     .  * (unit_e)**4 /vev**4 * q_q2**2 *( edmRe1**2 + edmIm1**2)
     .  * flagu2
     
     
        amp2d = amp2d + (-4*p17**2*p24 + 4*p14**2*p27 + 4*p23*p24*p37 
     .  + 4*p23*p27*p37 - 4*p24*p37**2 - 4*p23**2*p47 + 4*p23*p37*p47 
     .  + 2*p17*(p24 + p27 + p47)*s - p47*s**2 + p14*(4*p17*(-p24 
     .  + p27 + p47) + 2*(2*p24 + p27 - p47)*s) + 2*(p23*(2*p24 + p27 
     .  - p47) + p37*(-p24 + p27 + p47))*s2 + p27*s2**2)/(p13*p27*p47)
     .  * (unit_e)**4 /vev**4 * q_q1**2 *( edmRe2**2 + edmIm2**2)
     .  * flagd2
     
	amp2d = amp2d + (2*(-2*p14*p37*(p17*(2*p23 + p27) + p27*p37) 
     .  + 2*(p17**2*(p23 + p27) + p17*p23*p37 + p27*p37**2)*p47 
     .  + p14*(p17**2 - 2*p17*p37 + 3*p37**2)*s - p37*(p17 + p37)*p47*s 
     .  + (p17**2*(3*p23 + p27) + p23*p37**2 + p17*p37*(-2*p23 + p27 
     .  - s))*s2) + p13**2*(8*p27*p47 - 2*p47*s + 4*p14*(-p27 + s) 
     .  + 2*p27*s2 + 4*p23*(p47 + s2)) + p13*(4*p17*(p23 + 2*p27)*p47 
     .  + 4*p14*(p37*(-p23 + p27 - 2*s) + p17*(p23 + s)) + p17*(8*p23 
     .  + 2*p27 + s)*s2 - p37*(8*p27*p47 - 2*p47*s + 4*p23*s2 
     .  + s*s2)))/(p17*(p13 + p17 - p37)**2*p37)
     .  * (unit_e)**4 /vev**4 * q_q1**2 *( edmRe2**2 + edmIm2**2)
     .  * flagd1     
         
c       Interference 


	amp2u = amp2u + (8*p24*(p13**2*(-4*p23*p27 - 4*p27**2+4*p14*p47
     .  - 4*p47**2 + 4*p23*s + 2*p27*s + 4*p14*s2 - 2*p47*s2) + p13*(
     .  -(p37*(4*p14**2 - 8*p23*p27 - 4*p27**2 - 4*p47**2 + 6*p23*s 
     .  + s**2 + 6*p14*s2 - 4*p47*s2)) + p17*(4*p23**2 - 4*p27**2 
     .  + 8*p14*p47 - 4*p47**2 + 6*p23*s + 4*p27*s + 6*p14*s2 + s2**2)) 
     .  + (p17 - p37)*(-(p37*(4*p14**2 - 4*p23*p27 - 4*p14*p47+ 2*p23*s 
     .  - 2*p27*s + s**2 + 2*p14*s2 - 2*p47*s2)) + p17*(4*p23**2 
     .  + 4*p23*p27 + 4*p14*p47 + 2*p23*s + 2*p27*s + 2*p14*s2 
     .  + 2*p47*s2 + s2**2))) + mz2*(16*p17*p23**2*p24 
     .  - 8*p17**2*p24*p27 + 16*p17*p23*p24*p27 - 8*p17*p23*p24*p37 
     .  - 16*p17*p24*p27*p37 + 16*p23*p24*p27*p37 - 8*p23*p24*p37**2 
     .  - 8*p24*p27*p37**2 + 8*p14**2*(p17*(p23 + p27) - (3*p23 + 2*p24 
     .  + p27)*p37) - 8*p17*p23**2*p47 + 8*p17**2*p24*p47 
     .  - 8*p17*p23*p27*p47 + 8*p23**2*p37*p47 + 16*p17*p24*p37*p47 
     .  - 8*p23*p27*p37*p47 + 8*p24*p37**2*p47 - 8*p17*p23*p47**2 
     .  - 8*p23*p37*p47**2 + 4*p17**2*p24*s + 8*p17*p23*p24*s 
     .  + 8*p17*p24*p27*s + 4*p17*p24*p37*s - 8*p23*p24*p37*s 
     .  + 8*p24*p27*p37*s - 8*p17*p23*p47*s - 4*p17*p27*p47*s 
     .  + 8*p23*p37*p47*s - 4*p27*p37*p47*s - 4*p17*p47**2*s 
     .  - 4*p37*p47**2*s - 4*p24*p37*s**2 - 2*p17*p47*s**2 
     .  + 2*p37*p47*s**2 - 8*p13**2*p24*(2*p14 + 2*p23 + 2*p27 - 2*p47 
     .  - s - s2) + 4*p17*p23*p27*s2 + 4*p17*p27**2*s2+4*p17*p24*p37*s2 
     .  - 4*p23*p27*p37*s2 + 4*p27**2*p37*s2 + 4*p24*p37**2*s2 
     .  - 4*p17*p23*p47*s2 + 8*p17*p24*p47*s2 + 4*p17*p27*p47*s2 
     .  + 4*p23*p37*p47*s2 + 8*p24*p37*p47*s2 + 4*p27*p37*p47*s2 
     .  - 6*p17*p23*s*s2 - 4*p17*p27*s*s2 + 2*p23*p37*s*s2 
     .  - 8*p27*p37*s*s2 - 8*p17*p47*s*s2 - 4*p37*p47*s*s2 - p17*s**2*s2 
     .  + 3*p37*s**2*s2 + 4*p17*p24*s2**2 + 2*p17*p27*s2**2 
     .  - 2*p27*p37*s2**2 - 3*p17*s*s2**2 + p37*s*s2**2 + 2*p13*(
     .  -8*p23*p24*p27 - 8*p24*p27**2 + 4*p14**2*(2*p23 + p27) 
     .  + 8*p23*p24*p37 + 12*p24*p27*p37 - 4*p23**2*p47 - 4*p23*p27*p47 
     .  - 12*p24*p37*p47 - 4*p23*p47**2 - 8*p24*p47**2 + 8*p23*p24*s 
     .  + 4*p24*p27*s - 4*p24*p37*s - 4*p23*p47*s + 2*p27*p47*s 
     .  + 2*p47**2*s - p47*s**2 + 2*p23*p27*s2 + 2*p27**2*s2 
     .  - 4*p24*p37*s2 - 2*p23*p47*s2 - 4*p24*p47*s2 + 2*p27*p47*s2 
     .  - 2*p23*s*s2 + p27*s*s2 - p47*s*s2 - s**2*s2+ p27*s2**2-s*s2**2 
     .  + 4*p17*p24*(-2*p23 - 3*p27 + 3*p47 + s + s2) + 2*p14*(4*p23**2 
     .  - 4*p17*p24 - 2*p27**2 + 4*p24*p37 + 4*p24*p47 - 2*p27*p47 
     .  + p27*s - p47*s + 4*p24*s2 + 2*p27*s2 - s*s2 + 2*p23*(p27 - p47 
     .  + s + s2))) + 2*p14*(-4*p17**2*p24 + p37*(-4*p23**2 + 4*p27**2 
     .  + 8*p24*p47 + 2*p47*s + p27*(4*p47 - 2*s - 4*s2) + 2*p23*(4*p27 
     .  + 8*p47 - 3*s - s2) - 4*p24*s2 + 3*s*s2) + p17*(12*p23**2 
     .  + 4*p27**2 - 4*p24*p37 + 8*p24*p47 - 2*p47*s + 4*p24*s2 - s*s2 
     .  + 2*p27*(2*p47 + s + 2*s2) + 2*p23*(8*p27 + 4*p47 + s 
     .  + 3*s2)))))/(2.*p17*p24*p37) 
     .  * 1/2d0 * (prop24 + DCONJG(prop24)) 
     .  * 1/2d0 * ( prop137 + DCONJG(prop137) )     
     .  * (unit_e)**4 /vev**4/(sthw*cthw)**2
     .  * q_q2* v_q2 *( edmRe1 * zdmRe1 + edmIm1 * zdmIm1) * flagu1
         
         
         amp2u = amp2u + (8*p13*(2*p17*(2*p27**2*p37 + 2*p37*p47**2 
     .   - 2*p23*(p24**2 - p24*p47 + p47*(p27 + p47)) + p27**2*s2 
     .   + p27*p47*s2 + p24**2*(4*p37 + s2) + p24*(4*p27*p37 -4*p37*p47 
     .   + p27*s2)) + 2*p14*(2*p27**2*p37 + 2*p27*p37*p47+ 2*p23*(p24*(
     .   p27 - p47) - 2*p27*p47) + 3*p27**2*s2 - 2*p27*p47*s2+p47**2*s2 
     .   + 2*p24**2*(p37 + s2) + 2*p24*(p27*p37 + 2*p27*s2 - p47*s2)) 
     .   + s*(-2*p24**2*p37 + 2*p23*(2*p24**2 + p27**2 + 2*p24*(p27 - 
     .   2*p47) - 2*p27*p47 + 3*p47**2) + p24*(2*p37*p47 + (p27 
     .   - p47)*s2) - 2*p47*(p37*p47 + p27*(p37 + s2)))) + mz2*(
     .   -16*p13*p23*p24**2 - 16*p13*p23*p24*p27 - 8*p13*p23*p27**2 
     .   + 16*p13*p24**2*p37 + 16*p13*p24*p27*p37 + 8*p13*p27**2*p37 
     .   + 16*p13*p23*p24*p47 - 16*p13*p24*p37*p47 - 8*p13*p23*p47**2 
     .   + 8*p13*p37*p47**2 + 8*p14**2*(p23*(2*p24 + 3*p27 - p47) 
     .   + p37*(-p24 - 2*p27 + p47)) + 8*p13*p24**2*s + 16*p23*p24**2*s 
     .   + 8*p13*p24*p27*s + 16*p23*p24*p27*s + 4*p13*p27**2*s + 8*p23* 
     .  p27**2*s - 4*p23*p24*p37*s - 8*p24**2*p37*s - 4*p23*p27*p37*s 
     .  - 4*p24*p37**2*s - 4*p27*p37**2*s - 8*p13*p24*p47*s 
     .  - 32*p23*p24*p47*s - 16*p23*p27*p47*s + 8*p23*p37*p47*s 
     .  + 8*p24*p37*p47*s - 8*p27*p37*p47*s + 4*p13*p47**2*s 
     .  + 24*p23*p47**2*s - 8*p37*p47**2*s - 2*p24*p37*s**2 
     .  - 2*p27*p37*s**2 + 4*p37*p47*s**2 + 8*p13*p24**2*s2 
     .  + 8*p13*p24*p27*s2 + 4*p13*p27**2*s2 - 8*p13*p24*p47*s2 
     .  + 4*p13*p47**2*s2 - 4*p23*p24*s*s2 - 2*p23*p27*s*s2 
     .  + 4*p24*p27*s*s2 - 2*p24*p37*s*s2 - 4*p27*p37*s*s2 
     .  + 6*p23*p47*s*s2 - 4*p24*p47*s*s2 - 8*p27*p47*s*s2 
     .  - 2*p37*p47*s*s2 - 2*p24*s**2*s2 - p27*s**2*s2 + 3*p47*s**2*s2 
     .  - 2*p24*s*s2**2 - 3*p27*s*s2**2 + p47*s*s2**2 + 4*p17**2*(
     .  2*p23*(p24 + p27) + (-p24 + p47)*s2) + 2*p17*(16*p24**2*p37 
     .  + 16*p24*p27*p37 + 8*p27**2*p37 + 4*p23**2*(p24 + p27 - 2*p47) 
     .  - 16*p24*p37*p47 + 8*p37*p47**2 - 4*p13*(2*p24**2 + p27**2 
     .  + 2*p24*(p27 - p47) + p47**2) - 2*p24*p37*s - 2*p27*p37*s 
     .  + 4*p24**2*s2 + 4*p24*p27*s2 + 4*p27**2*s2 - 2*p24*p37*s2 
     .  + 4*p27*p47*s2 + 2*p37*p47*s2 + p24*s*s2 - p27*s*s2 -2*p47*s*s2 
     .  + p24*s2**2 + 2*p27*s2**2 - p47*s2**2 + 2*p23*(-4*p24**2 
     .  + p27*(2*p37 - 4*p47 + s + s2) - p47*(4*p47 + 2*s + s2) + p24*(
     .  2*p37 + 4*p47 + s + 2*s2))) + 2*p14*(-8*p13*p24**2 
     .  - 8*p13*p24*p27 - 4*p13*p27**2 + 8*p24**2*p37 + 8*p24*p27*p37 
     .  + 8*p27**2*p37 + 4*p24*p37**2 + 4*p23**2*(2*p24 + p27 - 3*p47) 
     .  + 8*p13*p24*p47 + 8*p27*p37*p47 - 4*p37**2*p47 - 4*p13*p47**2 
     .  - 4*p24*p37*s - 2*p27*p37*s + 2*p37*p47*s + 8*p24**2*s2 
     .  + 16*p24*p27*s2 + 12*p27**2*s2 - 2*p24*p37*s2 - 4*p27*p37*s2 
     .  - 8*p24*p47*s2 - 8*p27*p47*s2 + 2*p37*p47*s2 + 4*p47**2*s2 
     .  - 2*p24*s*s2 - 3*p27*s*s2 + p47*s*s2 + 2*p17*(-2*p37*p47 
     .  + 2*p23*(p24 + 2*p27 + p47) + 2*p27*s2 - p47*s2 + p24*(2*p37 
     .  + s2)) + 2*p23*(p47*(4*p37 - 3*s - s2) + 2*p24*(2*p27 - p37 
     .  - 2*p47 + s + s2) + p27*(2*p37 - 8*p47 + s + 3*s2)))))/
     .  (2.*p27*(p24 + p27 - p47)*p47)
     .  * 1/2d0 * (prop13 + DCONJG(prop13)) 
     .  * 1/2d0 * ( prop247 + DCONJG(prop247) )     
     .  * (unit_e)**4 /vev**4/(sthw*cthw)**2
     .  * q_q2* v_q2 *( edmRe1 * zdmRe1 + edmIm1 * zdmIm1) * flagu2
         
         
         amp2d = amp2d + (8*p13*(p24 + p27 - p47)*(-4*p17**2*p24 
     .   + 4*p14**2*p27 + 4*p23*p24*p37 + 4*p23*p27*p37 - 4*p24*p37**2 
     .   - 4*p23**2*p47 + 4*p23*p37*p47 + 2*p17*(p24 + p27 + p47)*s 
     .   - p47*s**2 + p14*(4*p17*(-p24 + p27 + p47) + 2*(2*p24 + p27 
     .   - p47)*s) + 4*p23*p24*s2 + 2*p23*p27*s2 - 2*p24*p37*s2 
     .   + 2*p27*p37*s2 - 2*p23*p47*s2 + 2*p37*p47*s2 + p27*s2**2) 
     .   + mz2*(-8*p17**2*p23*p24 + 8*p17*p23**2*p24 
     .   + 8*p17**2*p23*p27 + 8*p17*p23**2*p27 - 8*p17*p23*p24*p37 
     .   + 8*p17*p23*p27*p37 + 8*p14**2*(-(p37*(p24 + p27 - p47)) 
     .   + p23*(2*p24 + 3*p27 - p47)) + 8*p17**2*p23*p47 
     .   - 8*p17*p23**2*p47 + 8*p17*p23*p37*p47 + 4*p17*p23*p24*s 
     .   + 4*p17*p23*p27*s + 4*p17*p24*p37*s - 4*p23*p24*p37*s 
     .   - 4*p17*p27*p37*s - 4*p23*p27*p37*s + 4*p24*p37**2*s 
     .   - 4*p27*p37**2*s - 4*p17*p23*p47*s - 4*p17*p37*p47*s 
     .   + 4*p23*p37*p47*s - 4*p37**2*p47*s - 2*p24*p37*s**2 
     .   - 2*p27*p37*s**2 + 2*p37*p47*s**2 + 4*p17**2*p24*s2 
     .   + 8*p17*p23*p24*s2 + 4*p17**2*p27*s2 + 8*p17*p23*p27*s2 
     .   + 4*p17*p24*p37*s2 + 4*p17*p27*p37*s2 + 4*p17**2*p47*s2 
     .   - 8*p17*p23*p47*s2 + 4*p17*p37*p47*s2 + 2*p17*p24*s*s2 
     .   - 4*p23*p24*s*s2 - 4*p17*p27*s*s2 - 2*p23*p27*s*s2 
     .   - 2*p24*p37*s*s2 - 8*p27*p37*s*s2 - 8*p17*p47*s*s2 
     .   + 6*p23*p47*s*s2 - 4*p37*p47*s*s2 - 2*p24*s**2*s2 
     .   - p27*s**2*s2 + 3*p47*s**2*s2 + 2*p17*p24*s2**2 
     .   + 2*p17*p27*s2**2 - 2*p17*p47*s2**2 - 2*p24*s*s2**2 
     .   - 3*p27*s*s2**2 + p47*s*s2**2 + 4*p13*(-4*p17**2*p24 
     .   - 4*p23*p24**2 + 4*p14**2*p27 - 4*p23*p24*p27 - 2*p23*p27**2 
     .   + 4*p23*p24*p37 + 4*p24**2*p37 + 4*p23*p27*p37 + 6*p24*p27*p37 
     .   + 2*p27**2*p37 - 4*p24*p37**2 - 4*p23**2*p47 + 4*p23*p24*p47 
     .   - 2*p23*p27*p47 + 4*p23*p37*p47 - 6*p24*p37*p47 +4*p27*p37*p47 
     .   + 2*p37*p47**2 - 2*p17*(2*p24**2 + p24*(3*p27 - 3*p47 - s) 
     .   + (p27 + p47)*(p27 + p47 - s)) + 2*p24**2*s + 2*p24*p27*s 
     .   + p27**2*s - 2*p24*p47*s + p27*p47*s - p47*s**2 - 2*p14*(
     .   2*p24**2 + 2*p17*(p24 - p27 - p47) + p27*p47 + p47**2 
     .   + 2*p24*(p27 - p47 - s) - p27*s + p47*s) + 4*p23*p24*s2 
     .   + 2*p24**2*s2 + 2*p23*p27*s2 + 2*p24*p27*s2 - 2*p24*p37*s2 
     .   + 2*p27*p37*s2 - 2*p23*p47*s2 - 2*p24*p47*s2 + p27*p47*s2 
     .   + 2*p37*p47*s2 + p47**2*s2 + p27*s2**2) + 2*p14*(-4*p24*p37**2 
     .   - 4*p27*p37**2 + 4*p23**2*(2*p24 + p27 - 3*p47) - 4*p37**2*p47 
     .   - 4*p24*p37*s - 4*p27*p37*s + 4*p37*p47*s - 2*p24*p37*s2 
     .   - 2*p27*p37*s2 + 2*p37*p47*s2 - 2*p24*s*s2 - 3*p27*s*s2 
     .   + p47*s*s2 + 2*p17*(-2*p27*p37 - 2*p37*p47 + 2*p23*(p24 +4*p27 
     .   + 2*p47) + p27*s2 - p47*s2 + p24*(-2*p37 + s2)) 
     .   + 2*p23*(p47*(8*p37 - 3*s - s2) + 2*p24*(-p37 + s + s2) 
     .   + p27*(4*p37 + s + 3*s2)))))/(2.*p13*p27*p47)
     .  * 1/2d0 * (prop13 + DCONJG(prop13)) 
     .  * 1/2d0 * ( prop247 + DCONJG(prop247) )     
     .  * (unit_e)**4 /vev**4/(sthw*cthw)**2
     .  * q_q1* v_q1 *( edmRe2 * zdmRe2 + edmIm2 * zdmIm2) * flagd2
         
         
         amp2d = amp2d + (-8*p24*(-2*p13**2*(4*p27*p47 - 2*p14*(p27 
     .   - s) - p47*s + p27*s2 + 2*p23*(p47 + s2)) - 2*(p14*(p17**2*s 
     .   - 2*p17*p37*(2*p23 + p27 + s) + p37**2*(-2*p27 + 3*s)) 
     .   + p37**2*(2*p27*p47 - p47*s + p23*s2) + p17**2*(2*p23*p47 
     .   + 2*p27*p47 + 3*p23*s2 + p27*s2) + p17*p37*(2*p23*p47 - p47*s 
     .   - 2*p23*s2 + p27*s2 - s*s2)) - p13*(4*p14*(p37*(-p23 + p27 
     .   - 2*s) + p17*(p23 + s)) - p37*(8*p27*p47 - 2*p47*s + 4*p23*s2 
     .   + s*s2) + p17*(4*p23*p47 + 8*p27*p47 + 8*p23*s2 + 2*p27*s2 
     .   + s*s2))) + mz2*(-8*p17**2*p23*p24 - 8*p17**2*p24*p27 
     .   - 8*p23*p24*p37**2 - 8*p24*p27*p37**2 + 8*p14**2*(p17*(p23 
     .   + p27) - (3*p23 + 2*p27)*p37) + 16*p17**2*p23*p47 
     .   - 16*p17*p23**2*p47 + 8*p17**2*p24*p47 + 16*p17**2*p27*p47 
     .   + 16*p17*p23*p37*p47 + 8*p23**2*p37*p47 - 8*p23*p27*p37*p47 
     .   + 8*p24*p37**2*p47 + 16*p27*p37**2*p47 - 8*p23*p37*p47**2 
     .   + 4*p17**2*p24*s + 4*p24*p37**2*s - 4*p17*p23*p47*s 
     .   - 4*p17*p27*p47*s - 8*p17*p37*p47*s + 4*p23*p37*p47*s 
     .   - 8*p37**2*p47*s - 4*p17*p47**2*s - 2*p17*p47*s**2 
     .   + 4*p37*p47*s**2 + 24*p17**2*p23*s2 + 4*p17**2*p24*s2 
     .   + 8*p17**2*p27*s2 + 8*p17*p23*p27*s2 - 16*p17*p23*p37*s2 
     .   + 8*p17*p27*p37*s2 - 4*p23*p27*p37*s2 + 4*p27**2*p37*s2 
     .   + 8*p23*p37**2*s2 + 4*p24*p37**2*s2 - 8*p17*p23*p47*s2 
     .   + 4*p23*p37*p47*s2 + 4*p27*p37*p47*s2 - 6*p17*p23*s*s2 
     .   - 2*p17*p27*s*s2 - 8*p17*p37*s*s2 + 2*p23*p37*s*s2 
     .   - 4*p27*p37*s*s2 - 4*p17*p47*s*s2 - 2*p37*p47*s*s2-p17*s**2*s2 
     .   + 3*p37*s**2*s2 + 4*p17*p27*s2**2 - 2*p27*p37*s2**2 
     .   - 3*p17*s*s2**2 + p37*s*s2**2 - 8*p13**2*(2*p24*p27-2*p24*p47 
     .   - 4*p27*p47 + 2*p14*(p24 + p27 - s) - p24*s + p47*s+2*p23*(p24 
     .   - p47 - s2) - p24*s2 - p27*s2) - 2*p14*(4*p17**2*(p24 - s) 
     .   + p37*(4*p23**2 + 4*p24*p37 + 8*p27*p37 + 4*p27*s - 12*p37*s 
     .   - 4*p47*s + 2*p27*s2 - 3*s*s2 + p23*(-4*p27 - 8*p47 + 6*s 
     .   + 2*s2)) - p17*(12*p23**2 + 4*p27**2 - s*(8*p37 + 2*p47 + s2) 
     .   + 2*p27*(-4*p37 + 2*p47 + s + s2) + 2*p23*(4*p27 - 8*p37+2*p47 
     .   + s + 3*s2))) + 2*p13*(4*p14**2*(2*p23 + p27) + 8*p23*p24*p37 
     .   + 8*p24*p27*p37 - 4*p23**2*p47 + 4*p23*p27*p47 - 8*p24*p37*p47 
     .   - 16*p27*p37*p47 + 4*p23*p47**2 - 4*p24*p37*s - 4*p23*p47*s 
     .   - 2*p27*p47*s + 4*p37*p47*s - 2*p47**2*s - p47*s**2 
     .   + 2*p23*p27*s2 - 2*p27**2*s2 - 8*p23*p37*s2 - 4*p24*p37*s2 
     .   - 2*p23*p47*s2 - 2*p27*p47*s2 - 2*p23*s*s2 + p27*s*s2 
     .   - 2*p37*s*s2 - p47*s*s2 - s**2*s2 + p27*s2**2 - s*s2**2 
     .   + 2*p14*(4*p23**2 + 2*p27**2 + 4*p24*p37 + 4*p27*p37 
     .   + 2*p27*p47 + p27*s - 8*p37*s - p47*s + 4*p17*(p23 - p24 + s) 
     .   + 2*p27*s2 - s*s2 + 2*p23*(p27 - 2*p37 - p47 + s + s2)) 
     .   + 2*p17*(8*p27*p47 + 2*p27*s2 + s*s2 + 2*p24*(-2*p27 + 2*p47 
     .   + s + s2) + p23*(-4*p24 + 4*p47 + 8*s2)))))/
     .   (2.*p17*(p13 + p17 - p37)*p37)
     .  * 1/2d0 * (prop24 + DCONJG(prop24)) 
     .  * 1/2d0 * ( prop137 + DCONJG(prop137) )     
     .  * (unit_e)**4 /vev**4/(sthw*cthw)**2
     .  * q_q1* v_q1 *( edmRe2 * zdmRe2 + edmIm2 * zdmIm2) * flagd1
         
         amp2 = (amp2u + amp2d )* CF * gs_sq
         	  
  
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
         if(-(p13 + p17 - p37).le.0d0) then 
	    prop137 = 1d0/(-2*(p13 + p17 - p37)-mw2)
	 else    
	    prop137 = 1d0/dcmplx(-2*(p13 + p17 - p37)-mw2,mWgammaW)
	 endif   
	 if(-(p24 + p27 - p47).le.0d0) then  
            prop247 = 1d0/(-2*(p24 + p27 - p47)-mw2)
	 else    
	    prop247 = 1d0/dcmplx(-2*(p24 + p27 - p47)-mw2,mWgammaW)
         endif
         
c     amplitudes for:  
c     u(pav)    d(pbv)     --> d u         
c     ubar(pav) dbar(pbv)  --> dbar ubar
c     amp2u : weak EDM on the top line
c     amp2d : weak EDM on the bottom line

	 amp2u =  wdmU1 * (2*p24*(-4*p14**2*p37 + 4*p14*(p13 + p17 
     .	 + p37)*p47 + 2*p14*(2*p13 + p17 - p37)*s2 - 2*p13*p47*(2*p47 
     .   + s2) + s2*(2*(p17 + p37)*p47 + p17*s2))) 
     .   + wdmD1 * ( 2*p24*(-4*p13*p27*(p23 + p27) + 2*p13*(2*p23 
     .	 + p27)*s + 2*p17*(p23 + p27)*(2*p23 + s) + p37*(2*p27 
     .   - s)*(2*p23 + s)))
     
	 amp2u = amp2u - mw2/2d0 *( prop137 + DCONJG(prop137)  )*
     .   ( wdmU1 * ( 8*(-(p14*p17*p24*(p17 + p37)) + p14**2*(p17*(p23 
     .   + p27) - (3*p23 + p27)*p37) + p14*(2*p17*p23 + p17*p27 
     .   + 4*p23*p37 + p27*p37)*p47 + (p17 + p37)*p47*(p24*(p17 + p37) 
     .   - p23*p47)) - 4*p47*(p14*(p17 - p37) + (p17 + p37)*p47)*s 
     .   + 2*(2*(p17*(p24*p37 + p47*(-p23 + p27 - 2*s)) + p37*(p24*p37 
     .   + p47*(p23 + p27 - s))) + p14*(p17*(6*p23 + 4*p27 - s) + p37*(
     .   -2*p23 - 4*p27 + 3*s)))*s2 + (2*p17*p27 - 2*p27*p37 - 3*p17*s 
     .   + p37*s)*s2**2 + 8*p13**2*p24*(-2*p14 + 2*p47 + s2) 
     .   + 2*p13*(2*(2*p14**2*(2*p23 + p27) + p47*(6*p17*p24 -6*p24*p37 
     .   - 2*p23*p47 + p47*s) - p14*(4*p24*(p17 - p37) + p47*(2*(p23 
     .   + p27) + s))) + (4*p14*(p23 + p27) + 4*p24*(p17 - p37) 
     .   - 2*p14*s - p47*(2*p23 - 2*p27 + s))*s2 + (p27 - s)*s2**2)  )+
     .   wdmD1 * ( -8*p24*(p17 + p37)*(p17*p27 + (p23 + p27)*p37) 
     .   - 8*p23*(p17*(p23 + p27) + (-p23 + p27)*p37)*p47 - 4*(
     .   -(p17*p24*(p17 + p37)) + (p17*(2*p23 + p27) + (-2*p23 
     .   + p27)*p37)*p47)*s + 2*(-p17 + p37)*p47*s**2 + 8*p13**2*p24*(
     .   -2*(p23 + p27) + s) + 4*p14*(p17*(p23 + p27)*(6*p23 + 2*p27 
     .   + s) - p37*(2*p23**2 + p27*(-2*p27 + s) + p23*(-4*p27 + 3*s))) 
     .   - (p37*(2*p27 - s)*(2*p23 - 2*p27 + 3*s) + p17*(-4*p27*(p23 
     .   + p27) + 6*p23*s + 4*p27*s + s**2))*s2 + 2*p13*(8*p23*p24*p37 
     .   + 12*p24*p27*p37 - 4*p23**2*p47 - 4*p23*p27*p47 - 4*p24*p37*s 
     .   - 4*p23*p47*s + 2*p27*p47*s - p47*s**2 + 4*p17*p24*(-2*p23 - 
     .   3*p27 + s) + 2*p14*(4*p23**2 + p27*(-2*p27 + s) + 2*p23*(p27 
     .   + s)) + (2*p23*(p27 - s) + (2*p27 - s)*(p27 + s))*s2) )  )
	 
	 amp2u = amp2u + 2* mw2**2 * prop137* DCONJG(prop137) * 
     .   ( wdmU1 * ( -8*p13**3*p24 - 4*(p17 - p37)*(p24*(p17 + p37)**2 
     .   - p14*(p17*(p23 + p27) + (-3*p23 + p27)*p37)) + 4*(p17 + p37
     .   )*(p17*(3*p23 + p27) + (-p23 + p27)*p37)*p47 + 2*(p17 - 3*p37
     .   )*(p14*(p17 - p37) + (p17 + p37)*p47)*s + (p17 - p37)*(-(
     .   p37*(2*p23 - 2*p27 + s)) + p17*(6*p23 + 2*p27 + 3*s))*s2 
     .   + 2*p13**2*(-8*p17*p24 + 8*p24*p37 - 4*p27*p47 + (2*p23 + s
     .   )*(2*p14 + s2)) + 4*p13*(-3*p17**2*p24 + p14*(p37*(-4*p23 
     .   + 2*p27 - 3*s) + p17*(4*p23 + 2*p27 + s)) - p37*(3*p24*p37 
     .   - 2*p47*s + (p23 - p27 + s)*s2) + p17*(2*p24*p37 + 4*p23*p47 
     .   + (3*p23 + p27 + s)*s2)) ) 
     .   + wdmD1 * (-8*p13**3*p24 + 4*p14*p17**2*(3*p23 + p27) 
     .   - 8*p14*p17*(2*p23 + p27)*p37 + 4*p14*(p23 - 3*p27)*p37**2 
     .   - 4*p24*(p17 - p37)*(p17 + p37)**2 + 4*(p17 + p37)*(p17*(p23 
     .   + p27) + (-p23 + p27)*p37)*p47 + 2*(p17 - p37)*(p14*(p17 
     .   - 3*p37) + (p17 + p37)*p47)*s + (2*(3*p17 - p37)*(p17*(p23 
     .   + p27) + (-p23 + p27)*p37) + (p17 - 3*p37)*(p17 - p37)*s)*s2 
     .   + 2*p13**2*(-8*p17*p24 + 8*p24*p37 - 4*p27*p47 + (2*p23 + s)*(
     .   2*p14 + s2)) + 4*p13*(-3*p17**2*p24 + p14*(p37*(-4*p23 + 4*p27 
     .-  3*s) + p17*(4*p23 + s)) - p37*(3*p24*p37 - p47*(2*p23 + s) 
     .+  (p23 + s)*s2) + p17*(2*p24*p37 + 2*p23*p47 + p47*s 
     .+  (3*p23 + 2*p27 + s)*s2)) )   ) 	 
	 
	 amp2u = amp2u * prop24 * DCONJG(prop24)/p17/p37 * flagu1

	 amp2u = amp2u + (wdmU1 * (2*(4*p14*(p24 + p27)*((p24 + p27)*p37 
     .	 - p23*p47) + 2*p14*(2*(p24 + p27)**2 - 2*(p24 + p27)*p47 
     .   + p47**2)*s2 + (2*p17*(p24 + p27) - p47*s)*(-2*p23*p47 
     .   + (p24 + p27)*(2*p37 + s2)))) + 
     .   wdmD1 * (2*(2*p17*(p24 - p47)*(2*(-p23 + p37)*(p24 - p47) 
     .   - p27*s2) + 2*p14*p27*(2*(p23 - p37)*(p24 - p47) + p27*s2) 
     .   + s*(2*p23*(2*p24**2 + 2*p24*p27 + p27**2- 2*(2*p24 + p27)*p47 
     .   + 2*p47**2) + (p24 - p47)*(-2*p24*p37 + 2*p37*p47 + p27*s2))) )
     .   )* prop247 * DCONJG(prop247)/p27/p47 * flagu2	  
	 
	 amp2u = amp2u - mw2/2d0 *( prop13 + DCONJG(prop13)  ) *
     .	 ( wdmU1 * ( 8*(p24 + p27)*(p17**2*p23 - p13*p17*(p24 + p27) 
     .   + p17*p23*p37 + p13*(p24 + p27)*p37) - 8*p23*(p17*p23 
     .   + p13*(p24 + p27))*p47 + 8*p14**2*((p24 + p27)*(2*p23 - p37) 
     .   + (-p23 + p37)*p47) - 4*((p24 + p27)*p37*(p17 + p37) 
     .   - (-(p17*p23) + p13*(p24 + p27) + p23*p37)*p47)*s 
     .   + 2*p37*p47*s**2 + (4*(p24 + p27)*(p17*p23 + p13*(2*p24 
     .   + p27)) - 4*p13*(2*p24 + p27)*p47 + 4*p13*p47**2 - 2*((p24
     .   + p27)*(p17 + 2*p37) - p23*p47)*s + p47*s**2)*s2 + (2*p17*(p24 
     .   + p27 - p47) + (-2*(p24 + p27) + p47)*s)*s2**2 + 2*p14*(4*((
     .   p24 + p27)*(2*p17*p23 - p13*(2*p24 + p27) + p23*p37) + (-p23**2 
     .   + p13*(2*p24 + p27))*p47 - p13*p47**2) - 2*((p24 + p27)*p37 
     .   + p23*p47)*s + (4*p23*(p24 + p27) + 2*p17*(p24 + p27 - p47) 
     .   - 2*p37*(p24 + p27 - p47) - 2*p23*p47 + (-2*(p24 + p27) 
     .   + p47)*s)*s2) )  
     .   + wdmD1 * ( 8*p14**2*p27*(p23 - p37) - 8*p13*(-(p37*(p24 
     .   - p47)**2) + p23*(2*p24**2 + 2*p24*p27 + p27**2 - (3*p24 
     .   + p27)*p47 + p47**2)) + 4*(-(p23*p37*(p24 + p27 - p47)) 
     .   + p13*(2*p24**2 + 2*p24*p27 + p27**2 - (3*p24 + p27)*p47 
     .   + p47**2))*s - 2*p37*(p24 + p27 - p47)*s**2 + 4*p17**2*(-p24 
     .   + p47)*s2 - (4*p13*p27*(p24 - p47) + s*(-2*p24*p37 + 2*p23*(
     .   2*p24 + p27 - 2*p47) + 2*p37*p47 + 2*p24*s + p27*s - 2*p47*s
     .   ))*s2 - p27*s*s2**2 + 2*p17*(-4*(p13*(p24 - p47)**2 - p23**2*(
     .   p24 + p27 - p47)) + 2*p23*(p24 + p27 - p47)*s + 2*(p24 - p47
     .   )*(p23 - p37 + s)*s2 + p27*s2**2) + 2*p14*(4*p23**2*(2*p24 
     .   + p27 - 2*p47) - 4*p17*(p23 - p37)*(p24 - p47) + 2*(p24 
     .   - p47)*(2*p13*p27 + p37*(2*p37 - s)) + 2*p17*p27*s2 - p27*(
     .   2*p37 + s)*s2 + 2*p23*(4*p37*p47 - 2*p47*s + 2*p24*(-2*p37 +s) 
     .   + p27*(s + s2))) )   ) * 
     .   prop247 * DCONJG(prop247)/p27/p47 * flagu2 
	 
	 amp2u = amp2u + 2d0*mw2**2 * prop13 * DCONJG(prop13)*(wdmU1 
     .   + wdmD1 )* ( p13*(-8*p13*p24**2 + 4*p14**2*p27 - 8*p13*p24*p27 
     .   - 4*p13*p27**2 + 4*p23*p24*p37 + 4*p23*p27*p37 - 4*p23**2*p47 
     .   + 8*p13*p24*p47 - 4*p13*p47**2 + 2*p24*p37*s + 2*p27*p37*s 
     .   - 4*p23*p47*s - p47*s**2 + (2*p23*(2*p24 + p27 - p47) 
     .   + 2*p37*p47 + p27*s - p47*s + 2*p24*(-p37 + s))*s2 + p27*s2**2 
     .   + 2*p14*(-2*p24*p37 + 2*p23*(2*p24 + p27 - p47) + 2*p37*p47 
     .   + 2*p17*(-p24 + p47) + 2*p24*s + p27*s - p47*s + 2*p27*s2) 
     .   + 2*p17*((p24 + p27)*(2*p23 + s) + (-p24 + p47)*s2)))	
     .   * prop247 * DCONJG(prop247)/p27/p47 * flagu2

	 
	 
	 
	 amp2d = wdmU2 * (2*p13*(-4*p17**2*p24 + 4*p14**2*p27 + 2*p17*(
     .   p24 + p27 + p47)*s - p47*s**2 + p14*(4*p17*(-p24 + p27 + p47) 
     .   + 2*(2*p24 + p27 - p47)*s))) 
     .   + wdmD2 *(  2*p13*(-4*p23**2*p47 + 4*p23*p37*(p24 + p27 + p47) 
     .   + 2*p23*(2*p24 + p27 - p47)*s2 - 2*p24*p37*(2*p37 + s2) 
     .   + s2*(2*p37*(p27 + p47) + p27*s2)) )
    
         amp2d = amp2d - mw2/2d0 *( prop247 + DCONJG(prop247)  )*(
     .   wdmU2 * (8*p14**2*(-(p37*(p24 + p27 - p47)) + p23*(2*p24 
     .   + 3*p27 - p47)) - 4*p14*(2*p13*(2*p24**2 + 2*p24*(p27 
     .   - p47) + p47*(p27 + p47)) + 2*p17*(p37*(p24 + p27 + p47) 
     .   - p23*(p24 + 4*p27 + 2*p47)) + (-(p23*(2*p24 + p27 
     .   - 3*p47)) + 2*p37*(p24 + p27 - p47))*s) + 2*p14*(2*p17*(p24 
     .   + p27 - p47) + (-2*p24 - 3*p27 + p47)*s)*s2 + 4*p17**2*(
     .   2*p23*(-p24 + p27 + p47) + (p24 + p27 + p47)*s2) + s*(4*p13*(
     .   2*p24**2 + 2*p24*(p27 - p47) + p27*(p27 + p47)) - 2*p37*(p24 
     .   + p27 - p47)*s - (2*p24 + p27 - 3*p47)*s*s2) + 2*p17*(-4*p13*(
     .   2*p24**2 + 3*p24*(p27 - p47) + (p27 + p47)**2) + s*(2*p23*(p24 
     .   + p27 - p47) + p24*(2*p37 + s2) - 2*(p37*(p27 + p47) 
     .   + (p27 + 2*p47)*s2))))  
     .   + wdmD2 * ( 8*p14*(p23**2*(2*p24 + p27 - 3*p47) - p37**2*(p24 
     .   + p27 + p47) + p23*p37*(-p24 + 2*p27 + 4*p47)) - 8*p13*(p23*(
     .   2*p24**2 + 2*p24*(p27 - p47) + p27*(p27 + p47))- p37*(2*p24**2 
     .   + 3*p24*(p27 - p47) + (p27 + p47)**2)) - 4*p37*(p23*(p24 + p27 
     .   - p47) + p37*(-p24 + p27 + p47))*s + 4*p14*(-(p37*(p24 + p27 
     .   - p47)) + p23*(2*p24 + 3*p27 - p47))*s2 + 2*(2*p13*(2*p24**2 
     .   + 2*p24*(p27 - p47) + p47*(p27 + p47)) - (p23*(2*p24 + p27 
     .   - 3*p47) + p37*(p24 + 4*p27 + 2*p47))*s)*s2 + (-2*p24 - 3*p27 
     .   + p47)*s*s2**2 + 2*p17*(4*p23*(p23*(p24 + p27 - p47) + p37*(
     .   -p24 + p27 + p47)) + 2*(2*p23*(p24 + p27 - p47) + p37*(p24 
     .   + p27 + p47))*s2 + (p24 + p27 - p47)*s2**2)   )  )
     
     
         amp2d = amp2d + 2d0 * mw2**2 * prop247 * DCONJG(prop247) * (
     .   wdmU2 * (-4*p13*(p24 + p27 - p47)*(2*p24**2 + 2*p24*(p27 -p47) 
     .   + (p27 + p47)**2) + 4*p14*(p37*(2*p24 + p27 - p47)*(p27 + p47) 
     .   + p23*(2*p24**2 + 4*p24*p27 + 3*p27**2 - 4*(p24 + p27)*p47 
     .   + p47**2)) + 4*p17*(p23*(4*p24*p47 + (p27 - 3*p47)*(p27 + p47)) 
     .   + p37*(-2*p24**2 + (p27 + p47)**2)) + 2*(p37*(2*p24 + p27 
     .   - p47)*(p27 + p47) + p23*(2*p24**2 + 2*p24*p27 + p27**2 
     .   - 6*p24*p47 - 4*p27*p47 + 3*p47**2))*s + 2*p14*(2*p24**2 
     .   + 6*p24*p27 + 3*p27**2 - 2*(p24 + 2*p27)*p47 + p47**2)*s2 
     .   + (2*p17*(4*p24*p27 + (3*p27 - p47)*(p27 + p47)) + (2*p24**2 
     .   + 4*p24*p27 + p27**2 - 4*(p24 + p27)*p47 + 3*p47**2)*s)*s2)  +
     .   wdmD2 *(-4*p13*(p24 + p27 - p47)*(2*p24**2 + 2*p24*(p27 - p47) 
     .   + (p27 + p47)**2) + 4*p14*(p23*(2*p24**2 + 4*p24*p27 + p27**2 
     .   - 4*(p24 + p27)*p47 + 3*p47**2) + p37*(4*p24*p27 + (3*p27 - 
     .   p47)*(p27 + p47))) + 4*p17*(p23*(2*p24 + p27 - p47)*(p27 + p47) 
     .   + p37*(-2*p24**2 + (p27 + p47)**2)) + 2*(p23*(2*p24**2 
     .   + 2*p24*p27 + p27**2 - 6*p24*p47 - 4*p27*p47 + 3*p47**2) 
     .   + p37*(4*p24*p47 + (p27 - 3*p47)*(p27 + p47)))*s + 2*p14*(
     .   2*p24**2 + 6*p24*p27 + 3*p27**2 - 2*(p24 + 2*p27)*p47 
     .   + p47**2)*s2 + (2*p17*(2*p24 + p27 - p47)*(p27 + p47) 
     .   + (2*p24**2 + 4*p24*p27 + 3*p27**2 - 4*(p24 + p27)*p47 
     .   + p47**2)*s)*s2)  )
    
    	 amp2d = amp2d * prop13 * DCONJG(prop13)/p27/p47 * flagd2

    	 amp2d = amp2d + (  wdmU2 * ( 2*(p13**2*(4*p27*p47 - 2*p47*s 
     .   + 4*p14*(-p27 + s)) + 2*p14*(p17**2*s - 2*p17*p37*(p23 + s) 
     .   + 2*p37**2*(-p27 + s)) + (2*p17*p23 + 2*p27*p37 - p37*s)*(
     .   2*p37*p47 + p17*s2) + p13*(4*p37*p47*(-2*p27 + s) + 4*p14*(
     .   2*p37*(p27 - s) + p17*(p23 + s)) + p17*(-4*p23*p47 
     .   - 2*p27*s2 + s*s2)))) 
     .   + wdmD2 * ( 4*(-(p14*p37) + (p13 + p17)*p47)*(2*(p13 + p17)*(
     .   p23 + p27) - p37*s) + 2*(2*(p13 + p17)**2*(2*p23 + p27) 
     .   - 4*(p13 + p17)*p23*p37 + 2*p23*p37**2 - (p13 + p17)*p37*s)*s2
     .   )  ) * prop137 * DCONJG(prop137)/p17/p37 * flagd1
     
         amp2d = amp2d - mw2/2 * (prop24 + DCONJG(prop24))*(
     .   wdmU2 * (8*p14**2*(p17*(p23 + p27) - (2*p23 + p27)*p37) 
     .   - 8*(p17*p23*(p24*p37 + p23*p47) + p37*(p24*p37*(p27 - p47) 
     .   + p23*p47*(p27 + p47))) + 4*(p24*(p17**2 - p17*p37 + p37**2) 
     .   + p23*p37*p47)*s + 2*(-p17 + p37)*p47*s**2 + 8*p13**2*p24*(
     .   -2*p14  - p27 + p47 + s) + (p17*(4*p24*p37 + p23*(4*p27 -4*p47
     .   - 2*s) - s**2) + 2*p37*(2*p27*(p27 + p47) - (2*p27 + p47)*s 
     .   + s**2))*s2 + p17*(2*p27 - s)*s2**2 + 2*p13*(4*p17*p23*p24 
     .   + 4*p14**2*(2*p23 + p27) + 8*p24*p27*p37 + 4*p23*p27*p47 
     .   - 8*p24*p37*p47 + 4*p23*p47**2 + 4*p17*p24*s - 6*p24*p37*s 
     .   - 2*p23*p47*s - p47*s**2 - (2*p17*p24 + 2*p27*(p27 + p47) 
     .   - (2*p27 + p47)*s + s**2)*s2 - 2*p14*(4*p17*p24 - 6*p24*p37 
     .   + 2*p23*(p27 + 2*p47 - s) + s*(p47 + s2) - p27*(s + s2))) 
     .   + p14*(-8*p17**2*p24 + p17*(8*p23**2 + 8*p24*p37 + 4*p27*s 
     .   - 4*p47*s - 2*s*s2 + 4*p23*(s + s2)) + 4*p37*(-2*p24*p37 
     .   + 2*p23*(p27 + 2*p47 - s) + s*(p47 + s2) - p27*(s + s2)))) 
     .   + wdmD2 * ( -8*p14**2*(p23 + p27)*p37 - 8*p24*(p17**2*(p23 
     .   + p27) - p17*p23*p37 + p23*p37**2) + 8*(-(p17*p23**2) 
     .   + p17**2*p24 + p23**2*p37)*p47 - 4*p17*(-(p24*p37) + p47*(p23 
     .   + p27 + p47))*s + 2*p37*p47*s**2 - (-4*p17**2*p24 + p17*( 
     .   4*p24*p37 + 2*p27*s + 4*p47*s + 4*p23*(-p27 + p47 + s)) 
     .   - p37*(4*p24*p37 + s**2 + 2*p23*(-2*p27 + 2*p47 + s)))*s2 
     .   + (2*p17*(p27 - s) + p37*(-2*p27 + s))*s2**2 + 8*p13**2*p24*(
     .   -2*p23 - p27 + p47 + s2) - 2*p13*(2*(2*p23*(-2*p24*p37 
     .   + p23*p47) + (-(p24*p37) + p47*(p23 + p27 + p47))*s) 
     .   + 2*p17*p24*(6*p23 + 4*p27 - 4*p47 - 3*s2) + (4*p24*p37+ p27*s 
     .   + 2*p47*s + 2*p23*(-p27 + p47 + s))*s2 + (-p27 + s)*s2**2 
     .   - 2*p14*(4*p23**2 - 2*p24*p37 + 2*p23*(2*p27 + p47 + s2) 
     .   + p27*(2*(p27 + p47) + s2))) + 2*p14*(2*p17*(4*p23**2 
     .   -2*p24*p37 + 2*p23*(2*p27 + p47 + s2) + p27*(2*(p27 + p47)+s2)
     .   )+ p37*(-4*p23**2 + s*(-2*p27 + 2*p47 + s2)- 2*p23*(s + s2))))
     .   ) * prop137 * DCONJG(prop137)/p17/p37 * flagd1
     
         amp2d  = amp2d + 2d0 * mw2**2 * prop24* DCONJG(prop24) *
     .   (wdmU2 + wdmD2) *( -(p24*(-4*p17*p23**2 + 8*p13**2*p24 
     .   + 4*p17**2*p24 + 4*p14**2*p37 - 4*p23*p27*p37 + 4*p24*p37**2 
     .   - 4*p23*p37*p47 - 2*p17*p23*s - 2*p17*p27*s + 2*p23*p37*s 
     .   - 2*p17*p47*s + p37*s**2 - (2*p37*(p27 + p47) - p37*s + p17*(
     .   4*p23 + s))*s2 - p17*s2**2 - 2*p13*(4*p24*(-p17 + p37) 
     .   - 2*p23*(p27 + p47 - s) + (p27 + p47)*s - (p27 + p47 - s)*s2 
     .   + 2*p14*(2*p23 + p27 + p47 + s2)) - 2*p14*(p17*(2*(p23 + p27 
     .   + p47) + s2) - p37*(2*(p23 + s) + s2)))) )    
     .   * prop137 * DCONJG(prop137)/p17/p37 * flagd1
         
    	 
    	 
    	 
c    couplings 
         amp2u = amp2u * (unit_e/sthw)**4 /vev**4 * ckm2 
         amp2d = amp2d * (unit_e/sthw)**4 /vev**4 * ckm1

	 amp2 = (amp2u + amp2d) * CF * gs_sq
         
      endif            
  
c     add the RGE factor 
      call RGE(LambdaNP,rg)  
      amp2 = amp2 * rg**2
  
      if (Higgsdecay) then
c     Higgs propagator squared
         propH_sq = 1d0/((p56sq-mH2)**2 + mHgammaH**2)
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


c     Same as q1_q2_to_q3_q4_H_g_flag with NO FLAG option
      subroutine q1_q2_to_q3_q4_H_g_wdm(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
      integer nf
      parameter (nf=7)
      real * 8 pphy(0:3,nf)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 amp2
      integer flag
      integer rflav(nf)
      
      flag = 0      
      call q1_q2_to_q3_q4_H_g_flag_wdm(pphy,fermion_type,fermion_charge,
     #     flag,rflav,amp2)

      end

c     q g and g q are to qqbar by crossing

      subroutine g_q2_to_q3_q4_H_q1bar_wdm(pphy,fermion_type,
     #fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf),fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf), ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(1) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = + 1
      call q1_q2_to_q3_q4_H_g_flag_wdm(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end

      subroutine q1_g_to_q3_q4_H_q2bar_wdm(pphy,fermion_type,
     #     fermion_charge,rflav,amp2)
      implicit none
c the 7 4-momentum vectors
c pphy(i,1) is the i-th component of vector p1... 
      integer nf
      parameter (nf=7)
      integer fermion_type(nf), fermion_charge(nf)
      real * 8 pphy(0:3,nf)
      real * 8 pp(0:3,nf)
      integer ferm_type(nf),ferm_charge(nf)
      real * 8 amp2
      integer mu,i,flag
      integer rflav(nf)
      integer rflav_copy(nf)
      
      do i = 1,nf
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
  
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,7) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,7)
      enddo
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(7)
c NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(7)

      rflav_copy = rflav
      rflav_copy(2) = -rflav_copy(7)
      
c flag = +1 corrections on the upper-quark line ONLY
c flag = -1 corrections on the lower-quark line ONLY
      flag = - 1
      call q1_q2_to_q3_q4_H_g_flag_wdm(pp,ferm_type,ferm_charge,flag,
     #     rflav_copy,amp2)

c correct for color average
      amp2 = - amp2 * 3d0/8

      end      
      
      
      
      