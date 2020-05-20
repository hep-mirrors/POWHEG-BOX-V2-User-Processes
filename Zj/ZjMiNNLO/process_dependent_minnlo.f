      subroutine init_masses_Dterms()
      use internal_parameters, pi_hoppet => pi, cf_hoppet => cf, ca_hoppet => ca, tf_hoppet => tf
      implicit none
      double precision powheginput
      include 'PhysPars.h'
      if(powheginput('#zmass') .ge. 0d0) ph_zmass = powheginput('#zmass') 
      call set_masses(ph_zmass)
      end

c DUMMY routine for bmass used in setlocalscales.f for Higgs
      subroutine bmass_in_minlo(bfact,alphas)
      implicit none
      double precision bfact, alphas, dummy
      dummy = 1337
      end
c DUMMY routine for bmass used in setlocalscales.f for Higgs
c DUMMY routine for bmass used in setlocalscales.f for Higgs
      function get_M_for_init_Dterms()
      implicit none
      double precision get_M_for_init_Dterms, powheginput
      include 'PhysPars.h'
      if(powheginput('#zmass') .ge. 0d0) ph_zmass = powheginput('#zmass')
      get_M_for_init_Dterms = ph_zmass
      end
c DUMMY routine for bmass used in setlocalscales.f for Higgs

      subroutine get_B_V1_V2(pborn_UUB,msqB,msqV1,msqV2)
      implicit none
      include 'nlegborn.h'
      integer, parameter :: nflav=5
      double precision msqB(-nflav:nflav,-nflav:nflav), msqV1(-nflav:nflav,-nflav:nflav), msqV2(-nflav:nflav,-nflav:nflav)
      double precision pborn_UUB(0:3,nlegborn-1)
      integer process
      msqB(:,:)  = 0d0
      msqV1(:,:) = 0d0
      msqV2(:,:) = 0d0
      call M2_DY_v(pborn_UUB,msqB,msqV1,msqV2)

      end

c     matrix elements to test UUB projection (blank for DY)
      subroutine uub_for_minnlo(pphy,iborn,amp2)
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      real* 8 amp2
      integer nlegs, nflav
      parameter (nlegs=4)
      integer j, k, bflav(1:nlegs), iborn
      real *8 pphy(0:3,nlegs), s, s34
      parameter (nflav=5)
      double precision msqb(-nflav:nflav,-nflav:nflav), msqV1(-nflav:nflav,-nflav:nflav), msqV2(-nflav:nflav,-nflav:nflav)
      real *8, parameter :: zeta3=1.2020569031595942853997381615114d0
      
c$$$      ! build the born squared amplitude
c$$$      do j=-nflav,nflav
c$$$         if (j==0) cycle
c$$$         k=-j
c$$$         bflav(1) = j
c$$$         bflav(2) = k
c$$$         bflav(3) = flst_born(3,1)
c$$$         bflav(4) = flst_born(4,1)
c$$$         call compborn_uub(pphy,bflav,msqb(j,k))
c$$$         amp2 = amp2 + msqb(j,k)
c$$$      end do
c$$$
      write(*,*) 'uub_for_minnlo: not coded for Z production'
      call exit(-1)

      end



      subroutine M2_DY_v(pphy,msqb,msqv1,msqv2)
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer nlegs, nflav
      parameter (nlegs=4)
      integer j, k, bflav(1:nlegs)
      real *8 pphy(0:3,nlegs), s, s34
      parameter (nflav=5)
      double precision msqb(-nflav:nflav,-nflav:nflav), msqV1(-nflav:nflav,-nflav:nflav), msqV2(-nflav:nflav,-nflav:nflav)
      real *8, parameter :: zeta3=1.2020569031595942853997381615114d0
      
      msqb = 0d0
      ! build the born squared amplitude
      do j=-nflav,nflav
         if (j==0) cycle
         k=-j
         bflav(1) = j
         bflav(2) = k
         bflav(3) = flst_born(3,1)
         bflav(4) = flst_born(4,1)
         call compborn_uub(pphy,bflav,msqb(j,k))
      end do
      
      ! now build the one and two loop corrections
      do j=-nflav,nflav
         do k=-nflav,nflav
            msqv1(j,k)=msqb(j,k)*cf*( -8d0 + 7d0/6d0*pi**2)
            msqv2(j,k)=msqb(j,k)*(-57433d0/972d0+281d0/162d0*pi**2
     &           +22d0/27d0*pi**4+1178d0/27d0*zeta3)
         enddo
      enddo

      end

      
      subroutine compborn_uub(p,bflav,born)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      real * 8 p(0:3,nlegborn-1)
      integer bflav(nlegborn-1)
      real * 8 born

      real * 8 charge(-5:5)
      data charge
     #     / 0.33333333333333333333d0, !   1d0/3
     #      -0.66666666666666666667d0, !  -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #      -0.66666666666666666667d0, !   -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #       0d0,                      !   0d0   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3 
     #      -0.33333333333333333333d0/ !   -1d0/3

      real *8 amp2

      integer ferm_type(nlegborn-1)
      integer i,j
      real * 8 ferm_charge(nlegborn-1)

c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      if (bflav(3).le.0.or.bflav(4).ge.0) then
         write(*,*) 'Error in compborn_uub'
         stop
      endif
      ferm_type(3) = +1
      ferm_type(4) = -1

      if(vdecaymode.ge.1) then
         ferm_charge(3) = -1d0
         ferm_charge(4) = +1d0
      elseif(vdecaymode.eq.0) then
         ferm_charge(3) = 0d0
         ferm_charge(4) = 0d0
      else
         write(*,*) 'Error in vdecaymode in compborn_uub'
         stop
      endif

      
c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     with the convention:
c     
c      -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6                    
c      t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t                    
      
      i = bflav(1)
      j = bflav(2)
      ferm_charge(1) = charge(i)
      ferm_charge(2) = charge(j)
      ferm_type(1) = i/abs(i)
      ferm_type(2) = j/abs(j)

      call q_aq_to_l_al(p,ferm_type,ferm_charge,amp2) 
      born=amp2

      end



      

c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4)   con Z -> l-(p3) l+(p4) 
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic 
c amplitude
c It gets the matrix p with all the momenta and gives   
c the amplitude squared (amp2) averaged over initial 
c polarization     
c
c         q  --->-----
c                     |
c                     |            l-
c                     |          /  
c         aq ---<-----/\/\/\/\/\/
c                       Z/gamma \
c                                \ l+
c     ferm_type = 1 fermion
c     ferm_type = -1 antifermion
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aq_to_l_al(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=4)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      include 'PhysPars.h'
      include 'pwhg_math.h'     
      real * 8 p1(0:3),p2(0:3)
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlep(0:3,-1:1),jqua(0:3,-1:1)
      complex*16 jlep_dot_jqua
      integer mu,i,hel_lep,hel_qua
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer utype_q,utype_l
      real * 8 q_q,v_q,a_q,q_l,v_l,a_l
      real*8 Zcoup_q(-1:1),Zcoup_l(-1:1)
      complex *16 prop34zeta,prop34gamma

      real * 8 teo_fact

      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif
     

c  copy of local variables
      do i=1,nleg
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
      
c     exchance particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=-ferm_charge(2)
            ferm_charge(2)=-tmp
            tmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=tmp
         else
            write(*,*) 'Error in the type of the quark 1-2'
            stop
         endif
      endif

c utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c utype = -1 otherwise
      if (abs(ferm_charge(1)).eq.2d0/3) then
         utype_q = +1
         q_q = 2d0/3
      elseif (abs(ferm_charge(1)).eq.1d0/3) then
         utype_q = -1
         q_q = -1d0/3
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif
                  
      if (abs(ferm_charge(3)).eq.1d0) then
         utype_l = -1
         q_l = -1d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
         utype_l = +1
         q_l = 0d0
      else
         write(*,*) 'What charge is this??',ferm_charge(4)
         stop
      endif
      
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw2 
      a_q = utype_q*1.d0/2
      Zcoup_q(-1) = v_q + a_q
      Zcoup_q(+1) = v_q - a_q

      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw2 
      a_l = utype_l*1.d0/2     
      Zcoup_l(-1) = v_l + a_l
      Zcoup_l(+1) = v_l - a_l
      
c     fake momenta:
c     for bosons always outgoing
c     for fermions along fermionic current
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
      enddo

      p34=dotp(p(0,3),p(0,4))
      
c     Z propagator (see eq 2.13 in Nason-Webber,Nucl.Phys B421 pp.473-517)

c     Here, simply use teo_fact=1
      teo_fact=1

     
      prop34zeta=teo_fact/dcmplx(2d0*p34-ph_Zmass2,ph_ZmZw)

c     teo_fact is the square root of the ratio between the experimental
c     width of the Z boson and the theoretical one.  This last is
c     evaluated by summing over species and flavours the quantity
c     (g_a)^2+(g_v)^2, multiplying then for the appropriate factor.
c     In this way one can safely push Z width to zero, avoiding
c     the cross section to diverge

c     photon propagator
      prop34gamma=1d0/(2d0*p34)

c     bra and ket are made with actual momenta 

c     q
      call ket(p(0,1),ferm_type(1),psi1)
c     aq
      call bra(p(0,2),ferm_type(2),psi2)
c     em
      call bra(p(0,3),ferm_type(3),psi3)
c     ep
      call ket(p(0,4),ferm_type(4),psi4)
      
c     leptonic currents
      call bra_gamma_ket(psi3,psi4,-1,jlep(0,-1))
      call bra_gamma_ket(psi3,psi4,+1,jlep(0,1))
      
c     quark currents
      call bra_gamma_ket(psi2,psi1,-1,jqua(0,-1))
      call bra_gamma_ket(psi2,psi1,+1,jqua(0,1))

      amp2=0d0

      do hel_lep=-1,1,2
             
         do hel_qua=-1,1,2
                                
            jlep_dot_jqua = 
     #           ccdotp(jlep(0,hel_lep),jqua(0,hel_qua))

c     to take account of the gamma/Z interference         
            
    
            jlep_dot_jqua = (
     #           q_q*q_l*prop34gamma +
     #           prop34zeta*    
     #           Zcoup_q(hel_qua)*Zcoup_l(hel_lep)/
     #           (2*ph_sthw*ph_cthw)**2 )
     #           * jlep_dot_jqua
            
            amp2 = amp2 + jlep_dot_jqua *
     #           DCONJG(jlep_dot_jqua)       
            
            
                 
         enddo      
      enddo
      
      
      amp2 = amp2*ph_unit_e**4 
c     1/4 from average over initial-state polarization
c     1/nc^2 * nc = 1/nc from average over initial-state colors and sum over 
c     quark colors
      amp2=  amp2/4d0/nc 

      end
