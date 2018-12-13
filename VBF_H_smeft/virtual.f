c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
c
c  The vertex correction depicted below is given by:
c                    -----
c                   /     \ <- virtual gluon
c                  /       \
c         q1 --->------------>------ q3
c                      |
c                      V q 
c                      |
c   q1^2 = q2^2 = 0         q = q1-q3  
c   q^2 < 0
c
c   V^nu = (4*Pi)^ep * Gamma(1+ep) * CF * as/(4*Pi) * 
c           (-2/ep^2+(-2*ln(r)-3)/ep-ln(r)^2-3*ln(r)+Pi^2/3-7)*B^nu
c         = (4*Pi)^ep / Gamma(1-ep) * CF * as/(4*Pi) * 
c           (-2/ep^2+(-2*ln(r)-3)/ep-ln(r)^2-3*ln(r)+Pi^2/3-7-Pi^2/3)*B^nu
c
c     where B^nu is the Born vertex and r = mu^2/(-q^2)
c     See my formula (2.11) in Phys.Rev.D68:073005,2003 [hep-ph/0306109] 
c
c     The factor  (4*Pi)^ep/Gamma(1-ep) IS NOT RETURNED by this subroutine
c     and it's thought as factorized in front of the real counterterms too.

      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,nleg)
      real * 8 pin(0:3,nleg)
      integer vflav(nleg)
      integer vflav2(nleg)
      real * 8 virtual
      real * 8 ampborn2,bmunu(0:3,0:3)
      real * 8 amp2xi, amp2edm, amp2u, amp2d, amp2dw, amp2vv 
      real * 8 amp2vvtilde
      real * 8 edmup1, edmup2, edmdown1, edmdown2
      integer mu,nu     
      integer HZZ,HWW
      integer ferm_type(nleg)
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      integer ferm_charge(nleg)
      integer signn
      external signn
      real * 8 cvirt
c     if (4*Pi)^ep * Gamma(1+ep) is collected in front then cvirt:
c      parameter (cvirt = pi**2/3 - 7)  in DR
c      parameter (cvirt = pi**2/3 - 8)  in CDR
c     if (4*Pi)^ep / Gamma(1-ep) is collected in front then cvirt:
      parameter (cvirt = -8d0)
      include 'PhysPars.h'
      real * 8 interf1,interf2,q2_up,q2_down,dotp,r,lr
      external dotp

      call particle_identif(HWW,HZZ)

c     assign momenta and flavor for q1_q2_to_q3_q4_H subroutine
      ferm_charge(1) = charge3(vflav(1))
      ferm_charge(2) = charge3(vflav(2))
      ferm_charge(3) = charge3(vflav(4))
      ferm_charge(4) = charge3(vflav(5))
      
      ferm_type(1) = signn(vflav(1))
      ferm_type(2) = signn(vflav(2))
      ferm_type(3) = signn(vflav(4))
      ferm_type(4) = signn(vflav(5))

      vflav2(1)   =  vflav(1)
      vflav2(2)   =  vflav(2)
      vflav2(3)   =  vflav(4)
      vflav2(4)   =  vflav(5)
      vflav2(5)   =  vflav(3)
      
c     consistency check wrt the q1_q2_to_q3_q4_H call
      if (vflav(3).eq.HWW) then
c     WW -> H
         if (.not.(((ferm_charge(1)-ferm_charge(3).eq.3).and.
     #           (ferm_charge(2)-ferm_charge(4).eq.-3)).or.
     #           ((ferm_charge(1)-ferm_charge(3).eq.-3).and.
     #           (ferm_charge(2)-ferm_charge(4).eq.3)))) then
            write(*,*) 'WRONG calling sequence to q1_q2_to_q3_q4_H: WWH'
            write(*,*) vflav
            write(*,*) ferm_charge
            stop
         endif
      else         
c     ZZ -> H
         if (.not.((ferm_charge(1)-ferm_charge(3).eq.0).or.
     #           (ferm_charge(2)-ferm_charge(4).eq.0))) then
            write(*,*) 'WRONG calling sequence to q1_q2_to_q3_q4_H: ZZH'
            write(*,*) vflav
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
      
      ampborn2 = 0d0
      call q1_q2_to_q3_q4_H(pin,ferm_type,ferm_charge,vflav2,ampborn2)     
      

      amp2edm = 0d0
      amp2xi = 0d0
      amp2d = 0d0
      amp2u = 0d0
      amp2dw = 0d0
      amp2vv = 0d0
      if(wdm) then 
	call q1_q2_to_q3_q4_H_edm(pin,ferm_type,ferm_charge,
     #  vflav2,amp2edm,amp2u,amp2d)
	call q1_q2_to_q3_q4_H_xi(pin,ferm_type,ferm_charge,
     #  vflav2,amp2xi)
     	call q1_q2_to_q3_q4_H_dw(pin,ferm_type,ferm_charge,
     #  vflav2,amp2dw)
	call q1_q2_to_q3_q4_H_vv(pin,ferm_type,ferm_charge,
     #  vflav2,amp2vv)
     	call q1_q2_to_q3_q4_H_vvtilde(pin,ferm_type,ferm_charge,
     #  vflav2,amp2vvtilde)
      endif
      
      
      
      
      

c     squared momentum of the weak boson connected with the upper line
      q2_up = -2*dotp(p(0,1),p(0,4))
c     squared momentum of the weak boson connected with the lower line
      q2_down = -2*dotp(p(0,2),p(0,5))
      
c upper-line correction 
      r = st_muren2/(-q2_up)
      if (r.lt.0d0) then
         write(*,*) 'Error in setvirtual: q2_up should be < 0'
         write(*,*) 'st_muren2=',st_muren2
         write(*,*) 'q2_up=',q2_up
         write(*,*) 'RETURN 0 '
         virtual=0d0
         return
      endif      
      lr = log(r)
c     1/2 i front comes from (as/(4*Pi))/(as/(2*Pi))
      interf1 = 1d0/2 * CF * (-lr**2-3*lr+cvirt) * (ampborn2 + amp2xi
     .          + amp2dw + amp2vv + amp2vvtilde)
      edmup1 = amp2u * 1d0/2 * CF * (-lr**2-4*lr+cvirt)
      edmdown1 = amp2d * 1d0/2 * CF * (-lr**2-3*lr+cvirt)
      
c lower-line correction 
      r = st_muren2/(-q2_down)
      if (r.lt.0d0) then
         write(*,*) 'Error in setvirtual: q2_down should be < 0'
         write(*,*) 'st_muren2=',st_muren2
         write(*,*) 'q2_down=',q2_down
         write(*,*) 'RETURN 0 '
         virtual=0d0
         return
      endif      
      lr = log(r)
c     1/2 i front comes from (as/(4*Pi))/(as/(2*Pi))
      interf2 = 1d0/2 * CF * (-lr**2-3*lr+cvirt) *( ampborn2 + amp2xi 
     .		+ amp2dw + amp2vv + amp2vvtilde)
      edmup2 = amp2u * 1d0/2 * CF * (-lr**2-3*lr+cvirt)
      edmdown2 = amp2d * 1d0/2 * CF * (-lr**2-4*lr+cvirt)

      
c     2 * Re[M_V * M_B^*]
      virtual = 2 * (interf1 + interf2)  + 2 * (edmup1 + edmup2) 
     .        +  2 * (edmdown1 + edmdown2)
      end


