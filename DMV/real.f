      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal),rflavs(nlegreal)
      real * 8 amp2
      real * 8 ps(0:3,nlegreal)
      integer j,mu
cccccccccccccccccccccc
c     !: to check with madgraph
c$$$      include 'PhysPars.h'
c$$$      double precision amp2mad
c$$$      double precision tiny
c$$$      integer times
c$$$      data times/0/
c$$$      save times
c$$$      parameter (tiny=1d-6)
ccccccccccccccccccccccc

c     if present, the gluon is assumed to be the last particle
      call real_ampsq_g_last(p,rflav,amp2)

c     if the amplitude is zero, flip last two momenta to have gluon in the 
c     last position
      if(amp2.eq.0) then
         do j=1,6
            do mu=0,3
               ps(mu,j)=p(mu,j)
            enddo
            rflavs(j)=rflav(j)
         enddo
         rflavs(5)=rflav(6)
         rflavs(6)=rflav(5)
         do mu=0,3
            ps(mu,5)=p(mu,6)
            ps(mu,6)=p(mu,5)
         enddo
         call real_ampsq_g_last(ps,rflavs,amp2)
      endif

cccccccccccccccccccccccccccccc
c     !: to check with madgraph
c$$$      if(phdm_mode.eq.'ta') then
c$$$         call mad_setparam
c$$$         call compreal_mad(p,rflav,amp2mad)
c$$$         if(dabs(amp2mad/amp2-1).gt.tiny) then
c$$$            write(*,*) 'PROBLEM (r) ',rflav,amp2mad/amp2,amp2mad,amp2
c$$$c            stop
c$$$         endif
c$$$      endif
cccccccccccccccccccccccccccccccc

cccccccccccccccccccccccccc
c     KEEP THIS !!!!!!
c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2*pi))     
ccccccccccccccccccccccccccc

      if(abs(rflav(3)).lt.16.and.abs(rflav(4)).lt.16) then
c     lepton-antilepton from Z decay
         continue
      elseif(rflav(3).eq.95.and.rflav(4).eq.-95) then
c     bbar from Z decay
         amp2 = amp2 * nc
      elseif(rflav(3).eq.19.and.rflav(4).eq.-19) then
c     DM
         continue
      else
         write(*,*) 'setreal: invalid rflav(3)'
         call exit(-1)
      endif        

      end



c     NB The final-state gluon, if present, must be the last particle in 
c     the list
      subroutine real_ampsq_g_last(p,realflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      real * 8 charge(-5:5)
      data charge
     $     / 0.33333333333333333333d0, !   1d0/3
     $      -0.66666666666666666667d0, !  -2d0/3
     $       0.33333333333333333333d0, !   1d0/3 
     $      -0.66666666666666666667d0, !   -2d0/3
     $       0.33333333333333333333d0, !   1d0/3 
     $       0d0,                      !   0d0   
     $      -0.33333333333333333333d0, !   -1d0/3
     $       0.66666666666666666667d0, !   2d0/3   
     $      -0.33333333333333333333d0, !   -1d0/3
     $       0.66666666666666666667d0, !   2d0/3 
     $      -0.33333333333333333333d0/ !   -1d0/3

      real * 8 p(0:3,nlegreal)
      integer realflav(nlegreal)
      real * 8 amp2
      integer ferm_type(nlegreal)
      real * 8 ferm_charge(nlegreal)
      integer i,j,k,l


      if(abs(realflav(3)).lt.16.and.abs(realflav(4)).lt.16) then
c     lepton-antilepton from Z decay
         ferm_type(3) = +1
         ferm_charge(3) = -1
      elseif(realflav(3).eq.95.and.realflav(4).eq.-95) then
c     bbar from Z decay
         ferm_type(3) = +1
         ferm_charge(3) = -1d0/3d0
      elseif(realflav(3).eq.19.and.realflav(4).eq.-19) then
c     DM
c     assign, although not really used
         ferm_type(3) = +1
         ferm_charge(3) = -1
      else
         write(*,*) 'real_ampsq_g_last: invalid realflav(3)'
         call exit(-1)
      endif        
      ferm_type(4) = -ferm_type(3)
      ferm_charge(4) = -ferm_charge(3)
      
      i = realflav(1)
      j = realflav(2)
      k = realflav(5)
      l = realflav(6)      
      ferm_charge(1) = charge(i)
      ferm_charge(2) = charge(j)
      ferm_charge(5) = charge(k)
      ferm_charge(6) = charge(l)

      if (i.eq.0) then
         ferm_type(1) = 0
      else 
         ferm_type(1) = i/abs(i)
      endif 
      if (j.eq.0) then
         ferm_type(2) = 0
      else 
         ferm_type(2) = j/abs(j)
      endif   
      if (k.eq.0) then
         ferm_type(5) = 0
      else 
         ferm_type(5) = k/abs(k)
      endif   
      if (l.eq.0) then
         ferm_type(6) = 0
      else 
         ferm_type(6) = l/abs(l)
      endif   

      if ((i.eq.(-j)).and.(k.eq.0).and.(l.eq.0).and.(i.ne.0)) then
c     q q~ -> g g
         call q_aq_to_l_al_g_g(p,ferm_type,ferm_charge,amp2)         
      elseif ((i.eq.k).and.(j.eq.l).and.(abs(i).ne.abs(j))
     $        .and. ((i*j).ne.0)) then
c     q qp -> q qp
         call q_qp_to_l_al_q_qp(p,ferm_type,ferm_charge,amp2)
      elseif ((i.eq.j).and.(k.eq.l).and.(i.eq.k)
     $        .and. ((i*k).ne.0)) then
c     q q -> q q
         call q_q_to_l_al_q_q(p,ferm_type,ferm_charge,amp2)
      elseif ((i.eq.(-j)).and.(k.eq.(-l)).and.
     $        (abs(i).ne.abs(k)).and.((i*k).ne.0)
     $        .and.(k.gt.0))      then
c     q q~ -> qp qp~
         call q_aq_to_l_al_qp_aqp(p,ferm_type,ferm_charge,amp2)
      elseif ((i.eq.(-j)).and.(k.eq.(-l)).and.(j.eq.k) 
     $        .and.((i*k).ne.0).and.(i.lt.0) )      then
c     q~ q -> q q~ SAME FLAVOUR  
         call aq_q_to_l_al_q_aq(p,ferm_type,ferm_charge,amp2)
      elseif ((i.eq.(-j)).and.(k.eq.(-l)).and.(i.eq.k) 
     $        .and.((i*k).ne.0).and.(i.gt.0) )      then
c     q q~ -> q q~ SAME FLAVOUR  
         call q_aq_to_l_al_q_aq(p,ferm_type,ferm_charge,amp2)
      elseif ((i.eq.k).and.(j.eq.0).and.(l.eq.0) 
     $        .and.(i.ne.0)) then
c     q g -> q g  
         call q_g_to_l_al_q_g(p,ferm_type,ferm_charge,amp2)
      elseif ((j.eq.k).and.(i.eq.0).and.(l.eq.0).and.(j.ne.0)) then
c     g q -> q g  
         call g_q_to_l_al_q_g(p,ferm_type,ferm_charge,amp2)
      elseif ((i.eq.0).and.(j.eq.0).and.(k.eq.(-l))
     $        .and.((k*l).ne.0).and.(k.gt.0))        then
c     g g  -> q q~  
         call g_g_to_l_al_q_aq(p,ferm_type,ferm_charge,amp2)
      else
         amp2 = 0d0
      endif

      end


c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4) g(p5) g(p6)  con Z -> l-(p3) l+(p4) 
      subroutine 
     $     q_aq_to_l_al_g_g(pphy,fermion_type,fermion_charge,amp2)      
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3)
     $     ,p6(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      real * 8 epsg5(0:3,1:2),epsg6(0:3,1:2)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlepZ(0:3,-3:3),jlepA(0:3,-3:3),jqua(0:3,-1:1)
      complex*16 amp_Ta_Tb(-3:3,-1:1),amp_Ta_Tb_Z(-3:3,-1:1),
     $     amp_Ta_Tb_A(-3:3,-1:1)
      complex*16 amp_Tb_Ta(-3:3,-1:1),amp_Tb_Ta_Z(-3:3,-1:1),
     $     amp_Tb_Ta_A(-3:3,-1:1)
      complex*16 amp_3gv(-3:3,-1:1),amp_3gv_Z(-3:3,-1:1),
     $     amp_3gv_A(-3:3,-1:1)
      integer mu,i,pol5,pol6,hel_lep,hel_qua
      real * 8 p(0:3,nleg),pp1(0:3),pp2(0:3),pp5(0:3),pp6(0:3)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer utype_q,utype_l
      real * 8 q_q,v_q,a_q,L_q,R_q,q_l,v_l,a_l,L_l,R_l
      real*8 Zcoup_q(-1:1),Zcoup_l(-1:1)
      complex * 16 prop34V, prop34gamma
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 Amm(0:3),Amp(0:3),Apm(0:3),App(0:3)
      complex * 16 Vmm(0:3),Vmp(0:3),Vpm(0:3),Vpp(0:3)
      complex * 16 respp,resmm
ccccccccccccccccccccccccc

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
      
c     utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c     utype = -1 otherwise
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
c     Z->ll
         utype_l = -1
         q_l = -1d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
c     Z->nunu
         utype_l = +1
         q_l = 0d0
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
c     Z->bb
         utype_l = -1
         q_l = -1d0/3
      else
         write(*,*) 'What charge is this??',ferm_charge(4)
         stop
      endif      
      
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw2
      a_q = utype_q*1.d0/2
      
      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw2
      a_l = utype_l*1.d0/2
      
      L_q = v_q + a_q
      R_q = v_q - a_q
      
      L_l = v_l + a_l
      R_l = v_l - a_l
      
c     copy of z couplings useful for do loops
      Zcoup_q(-1)=L_q
      Zcoup_q(1)=R_q
      Zcoup_l(-1)=L_l
      Zcoup_l(1)=R_l
c     
c     momenti fittizi 
c     (fermioni-> linea fermionica, bosoni-> outgoing)  
c     quindi +1 * il gluone outgoing
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
         p3(mu) = ferm_type(3)*p(mu,3)
         p4(mu) = ferm_type(4)*p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
      enddo

      mass2=dotp(p(0,3),p(0,3))

      p34=dotp(p(0,3),p(0,4))
             
cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34V = 1d0/phdm_LambdaUV**2
      else
         prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,phdm_Vmass*phdm_Vwidth)
         if(phdm_rw) prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,(2*p34+2*mass2)*phdm_Vwidth/phdm_Vmass)
      endif
ccccccccccccccccccccccccccccccccccccccccc

c     bra and ket use physical momenta
c     q
      if (p(0,1).lt.0d0) then
         do mu=0,3
            pp1(mu) = -p(mu,1)
         enddo         
         call ket(pp1,ferm_type(1),psi1)
      else
         call ket(p(0,1),ferm_type(1),psi1)
      endif
c     aq
      if (p(0,2).lt.0d0) then
         do mu=0,3
            pp2(mu) = -p(mu,2)
         enddo         
         call bra(pp2,ferm_type(2),psi2)
      else
         call bra(p(0,2),ferm_type(2),psi2)
      endif   
ccccccccccccccccccccccccccccccccccccccccccccc
c     massive->massless momenta
c     em -> p3 (fermion)
c     ep -> p4 (antifermion)
      beta=sqrt(1-4d0*mass2/2d0/(p34+mass2))
      apl=(1+beta)/2d0
      ami=(1-beta)/2d0
      do mu=0,3
         p_f(mu)=p(mu,3)
         p_af(mu)=p(mu,4)
         kbar(mu)=(ami*p_f(mu)-apl*p_af(mu))/(ami**2-apl**2)
         k(mu)=p_f(mu)+p_af(mu)-kbar(mu)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     opposite helicity leptonic currents
c     em
      call bra(k,   +1,psi3)
c     ep
      call ket(kbar,-1,psi4)

      call bra_gamma_ket(psi3,psi4,-1,Vmp)
      call bra_gamma_ket(psi3,psi4,+1,Vpm)
      do mu=0,3
         Amp(mu)=Vmp(mu)*(+1)*(1-2*apl)
         Apm(mu)=Vpm(mu)*(-1)*(1-2*apl)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      do mu=0,3
         Vmm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/resmm
         Vpp(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/respp
         Amm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/resmm
         App(mu)=-2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/respp
      enddo
cccccccccccccccccccccccccccccccccccccccccccc

c     V/A current, universal  couplings set to 1
      if(phdm_mode.eq.'VE'.or.phdm_mode.eq.'AV') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Vmm(:) * phdm_gDM
         jlepZ(:,-1)=Vmp(:) * phdm_gDM
         jlepZ(:,+1)=Vpm(:) * phdm_gDM
         jlepZ(:,+3)=Vpp(:) * phdm_gDM
      elseif(phdm_mode.eq.'AX'.or.phdm_mode.eq.'VA') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Amm(:) * phdm_gDM
         jlepZ(:,-1)=Amp(:) * phdm_gDM
         jlepZ(:,+1)=Apm(:) * phdm_gDM
         jlepZ(:,+3)=App(:) * phdm_gDM
      elseif(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         prop34V = 1d0/dcmplx(2*p34+2*mass2-ph_Zmass2,ph_ZmZw)
         prop34gamma = 1d0/(2*p34+2*mass2)
c     Z leptonic current, with leptonic Z coupling already included
         jlepZ(:,-3)=(v_l+a_l)/2d0*(Vmm(:)-Amm(:))
     $        + (v_l-a_l)/2d0*(Vmm(:)+Amm(:))
         jlepZ(:,-1)=(v_l+a_l)/2d0*(Vmp(:)-Amp(:))
     $        + (v_l-a_l)/2d0*(Vmp(:)+Amp(:))
         jlepZ(:,+1)=(v_l+a_l)/2d0*(Vpm(:)-Apm(:))
     $        + (v_l-a_l)/2d0*(Vpm(:)+Apm(:))
         jlepZ(:,+3)=(v_l+a_l)/2d0*(Vpp(:)-App(:))
     $        + (v_l-a_l)/2d0*(Vpp(:)+App(:))
c     A leptonic current, with leptonic gamma coupling already included
         jlepA(:,-3)=q_l*Vmm(:)
         jlepA(:,-1)=q_l*Vmp(:)
         jlepA(:,+1)=q_l*Vpm(:)
         jlepA(:,+3)=q_l*Vpp(:)
      endif

cccccccccccccccccccccccccccccc
      
      amp2=0d0
      
      if (p(0,5).lt.0d0) then
         do mu=0,3
            pp5(mu) = -p(mu,5)
         enddo         
      endif
      if (p(0,6).lt.0d0) then
         do mu=0,3
            pp6(mu) = -p(mu,6)
         enddo         
      endif

c     loop over gluon polarization
      do  pol5=1,2
         do  pol6=1,2         
            if (p(0,5).lt.0d0) then
c               do mu=0,3
c                  pp5(mu) = -p(mu,5)
c               enddo         
               call POLVEC(pp5,pol5,epsg5(0,pol5))
            else   
               call polvec(p(0,5),pol5,epsg5(0,pol5))
         endif
         
         if (p(0,6).lt.0d0) then
c            do mu=0,3
c               pp6(mu) = -p(mu,6)
c            enddo         
            call POLVEC(pp6,pol6,epsg6(0,pol6))
         else
            call polvec(p(0,6),pol6,epsg6(0,pol6))
         endif
         
         do hel_lep=-3,3,2            
         do hel_qua=-1,1,2
ccccccccc
c     Z
c     first colour order: 5 before 6             
            call bra_slash_ket_g1_g2(psi2,psi1,hel_qua,p2,p1,
     $           p5,epsg5(0,pol5),p6,epsg6(0,pol6),jlepZ(0,hel_lep),
     $           amp_Ta_Tb_Z(hel_lep,hel_qua))
c     second colour order: 6 before 5         
            call bra_slash_ket_g1_g2(psi2,psi1,hel_qua,p2,p1,
     $           p6,epsg6(0,pol6),p5,epsg5(0,pol5),jlepZ(0,hel_lep),
     $           amp_Tb_Ta_Z(hel_lep,hel_qua))
c     third configuration (triple gluon vertex)             
            call bra_gamma_ket_3gv(psi2,psi1,hel_qua,p2,p1,p5,
     $           epsg5(0,pol5),p6,epsg6(0,pol6),jqua(0,hel_qua))
            amp_3gv_Z(hel_lep,hel_qua)=
     $           ccdotp(jlepZ(0,hel_lep),jqua(0,hel_qua))
ccccccccc
            if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     A
c     first colour order: 5 before 6             
               call bra_slash_ket_g1_g2(psi2,psi1,hel_qua,p2,p1,
     $              p5,epsg5(0,pol5),p6,epsg6(0,pol6),jlepA(0,hel_lep),
     $              amp_Ta_Tb_A(hel_lep,hel_qua))
c     second colour order: 6 before 5         
               call bra_slash_ket_g1_g2(psi2,psi1,hel_qua,p2,p1,
     $              p6,epsg6(0,pol6),p5,epsg5(0,pol5),jlepA(0,hel_lep),
     $              amp_Tb_Ta_A(hel_lep,hel_qua))
c     third configuration (triple gluon vertex)             
               call bra_gamma_ket_3gv(psi2,psi1,hel_qua,p2,p1,p5,
     $              epsg5(0,pol5),p6,epsg6(0,pol6),jqua(0,hel_qua))
               amp_3gv_A(hel_lep,hel_qua)=
     $              ccdotp(jlepA(0,hel_lep),jqua(0,hel_qua))
c     bb/tata
c     sum
               amp_Ta_Tb(hel_lep,hel_qua) = (
     $              amp_Ta_Tb_A(hel_lep,hel_qua)
     $              *(q_q*prop34gamma) + 
     $              amp_Ta_Tb_Z(hel_lep,hel_qua)
     $              *Zcoup_q(hel_qua)/(2*ph_sthw*ph_cthw)**2
     $              *prop34V)

               amp_Tb_Ta(hel_lep,hel_qua) = (
     $              amp_Tb_Ta_A(hel_lep,hel_qua)
     $              *(q_q*prop34gamma) + 
     $              amp_Tb_Ta_Z(hel_lep,hel_qua)
     $              *Zcoup_q(hel_qua)/(2*ph_sthw*ph_cthw)**2
     $              *prop34V)

               amp_3gv(hel_lep,hel_qua) = (
     $              amp_3gv_A(hel_lep,hel_qua)
     $              *(q_q*prop34gamma) + 
     $              amp_3gv_Z(hel_lep,hel_qua)
     $              *Zcoup_q(hel_qua)/(2*ph_sthw*ph_cthw)**2
     $              *prop34V)
            else
c     DM
c     sum
               if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
                  amp_3gv_Z(-3:3,-1)   = - amp_3gv_Z(-3:3,-1)
                  amp_Ta_Tb_Z(-3:3,-1) = - amp_Ta_Tb_Z(-3:3,-1)
                  amp_Tb_Ta_Z(-3:3,-1) = - amp_Tb_Ta_Z(-3:3,-1)
               endif
               amp_Ta_Tb(hel_lep,hel_qua) =
     $              amp_Ta_Tb_Z(hel_lep,hel_qua)
     $              *prop34V *phdm_gSM
               amp_Tb_Ta(hel_lep,hel_qua) =
     $              amp_Tb_Ta_Z(hel_lep,hel_qua)
     $              *prop34V *phdm_gSM
               amp_3gv(hel_lep,hel_qua) =
     $              amp_3gv_Z(hel_lep,hel_qua)
     $              *prop34V *phdm_gSM
            endif
ccccccccc
            amp2=amp2 + CF*CF*nc*
     $           ( amp_Ta_Tb(hel_lep,hel_qua)*
     $           DCONJG(amp_Ta_Tb(hel_lep,hel_qua))
     $           + amp_Tb_Ta(hel_lep,hel_qua)*
     $           DCONJG(amp_Tb_Ta(hel_lep,hel_qua)))
     $           - CF/2*
     $           ( amp_Ta_Tb(hel_lep,hel_qua)*
     $           DCONJG(amp_Tb_Ta(hel_lep,hel_qua))
     $           + amp_Tb_Ta(hel_lep,hel_qua)*
     $           DCONJG(amp_Ta_Tb(hel_lep,hel_qua)))
     $           + CF*CA*nc*
     $           ( amp_3gv(hel_lep,hel_qua)*
     $           DCONJG(amp_3gv(hel_lep,hel_qua)))            
     $           + CF*CA/2*nc*
     $           ( amp_3gv(hel_lep,hel_qua)*
     $           DCONJG(amp_Ta_Tb(hel_lep,hel_qua) - 
     $           amp_Tb_Ta(hel_lep,hel_qua))
     $           + (amp_Ta_Tb(hel_lep,hel_qua) - 
     $           amp_Tb_Ta(hel_lep,hel_qua)) * 
     $           DCONJG(amp_3gv(hel_lep,hel_qua)))
         enddo      
      enddo
      enddo
      enddo
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2/4/nc/nc/2
      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         amp2 = amp2 * ph_unit_e**4 
      endif
      end
      

c     this subroutine compute the born amplitude for the process
c     q(p1) g(p2) -> Z(p3+p4) q(p5) g(p6)  con Z -> l-(p3) l+(p4) 
c     This amplitude is obtained by crossing the formula for 
c     q_aq_to_l_al_g_g
      subroutine 
     $     q_g_to_l_al_q_g(pphy,fermion_type,fermion_charge,amp2)      
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2
      integer mu,i

      do i = 1,6
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
      
      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,5)
      enddo
      
c     no useful information is in ferm_type(1) or ferm_charge(1), 
c     since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(5)
c     NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(5)
      
      call q_aq_to_l_al_g_g(pp,ferm_type,ferm_charge,amp2)
      
c     correct for color average
      amp2 = amp2 *2* 3d0/8
      end
      
      
      
c     this subroutine compute the Born amplitude for the process
c     g(p1) q(p2) -> Z(p3+p4) q(p5) g(p6)  con Z -> l-(p3) l+(p4) 
c     This amplitude is obtained by crossing the formula for 
c     q_aq_to_l_al_g_g
      subroutine 
     $     g_q_to_l_al_q_g(pphy,fermion_type,fermion_charge,amp2)
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2
      integer mu,i

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
      enddo
      
c     no useful information is in ferm_type(1) or ferm_charge(1), 
c     since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c     NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(5)      
      call q_aq_to_l_al_g_g(pp,ferm_type,ferm_charge,amp2)
c     correct for color average
      amp2 = amp2 *2* 3d0/8
      end
      
c     this subroutine compute the Born amplitude for the process
c     g(p1) g(p2) -> Z(p3+p4) q(p5) q(p6)  con Z -> l-(p3) l+(p4) 
c     This amplitude is obtained by crossing the formula for 
c     q_aq_to_l_al_g_g
      subroutine 
     $     g_g_to_l_al_q_aq(pphy,fermion_type,fermion_charge,amp2)      
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2
      integer mu,i
     
      do i = 1,6
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
         pp(mu,6) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,6)         
      enddo
      
c     no useful information is in ferm_type(1) or ferm_charge(1), 
c     since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
      ferm_type(2) = -ferm_type(6)
c     NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(5)
      ferm_charge(2) = -ferm_charge(6)
      call q_aq_to_l_al_g_g(pp,ferm_type,ferm_charge,amp2)
c     correct for color average
      amp2 = amp2*2d0*3d0/8*3d0/8
      end
      

      
c     this subroutine compute the Born amplitude for the process
c     q(p1) q(p2) -> Z(p3+p4) q(p5) q(p6) con Z -> l-(p3) l+(p4) 
c     NB flavour of q(p1) MUST be equal from that of q(p2)
c     if it's not the case MUST use q_qp_to_l_al_q_qp
      subroutine 
     $     q_q_to_l_al_q_q(pphy,fermion_type,fermion_charge,amp2)   
      implicit none
c     the 5 4-momentum vectors
c     p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real *8  p5(0:3),p6(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp
      complex * 16 ccdotp
      complex *16 z1,z2
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1),
     $     psi5(2,-1:1),psi6(2,-1:1)      
      complex*16 jlepZ(0:3,-3:3),jlepA(0:3,-3:3),jqua15(0:3,-1:1),
     $     jqua26(0:3,-1:1)
      complex*16 jqua16(0:3,-1:1),jqua25(0:3,-1:1)
      complex*16 jtemp(0:3,-1:1)
      complex*16 amp_ljj(4,-3:3,-1:1,-1:1),
     $      amp_ljj_Z(4,-3:3,-1:1,-1:1),amp_ljj_A(4,-3:3,-1:1,-1:1)
      integer mu,i,hel_1,hel_2,hel_lep
      real * 8 p(0:3,nleg),px1(0:3,nleg),px2(0:3,nleg)
      real *8 pp1(0:3),pp2(0:3),pp5(0:3),pp6(0:3)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 pcurr15(0:3),pcurr26(0:3)
      real * 8 pcurr16(0:3),pcurr25(0:3)
      integer utype_q,utype_l
      real * 8 q_q,v_q,a_q,L_q,R_q
      real * 8 q_l,v_l,a_l,L_l,R_l
      real*8 Zcoup_q(-1:1),Zcoup_l(-1:1)
      complex * 16 prop34V, prop34gamma
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 Amm(0:3),Amp(0:3),Apm(0:3),App(0:3)
      complex * 16 Vmm(0:3),Vmp(0:3),Vpm(0:3),Vpp(0:3)
      complex * 16 respp,resmm
ccccccccccccccccccccccccc      

c      print*, 'qqqq'

      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif
      
c     copy of local variables
      do i=1,6
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
      
c     utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c     utype = -1 otherwise
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
c     Z->ll
         utype_l = -1
         q_l = -1d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
c     Z->nunu
         utype_l = +1
         q_l = 0d0
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
c     Z->bb
         utype_l = -1
         q_l = -1d0/3
      else
         write(*,*) 'What charge is this??',ferm_charge(4)
         stop
      endif      
      
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw2
      a_q = utype_q*1.d0/2
      
      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw2
      a_l = utype_l*1.d0/2

      L_q = v_q + a_q
      R_q = v_q - a_q
      
      L_l = v_l + a_l
      R_l = v_l - a_l
      
c     copy of z couplings useful for do loops      
      Zcoup_q(-1)=L_q
      Zcoup_q(1)=R_q
      Zcoup_l(-1)=L_l
      Zcoup_l(1)=R_l
              
c     exchance particle 1 and 6
      if (ferm_type(1).eq.-1) then
         if (ferm_type(6).eq.-1) then
            call exchange_mom(p,1,6,6,px2)
         else
            write(*,*) 'Error in the type of the quark 1-6'
            stop
         endif
      else  
         call exchange_mom(p,1,1,6,px2)   
      endif
      
c     exchance particle 2 and 5
      if (ferm_type(2).eq.-1) then
         if (ferm_type(5).eq.-1) then
            call exchange_mom(px2,2,5,6,px2)
         else
            write(*,*) 'Error in the type of the quark 2-6'
            stop
         endif
      endif
      
c     exchance particle 1 and 5
      if (ferm_type(1).eq.-1) then
         if (ferm_type(5).eq.-1) then
            call exchange_mom(p,1,5,6,px1)
         else
            write(*,*) 'Error in the type of the quark 1-5'
            stop
         endif
      else  
         call exchange_mom(p,1,1,6,px1)    
      endif
      
c     exchance particle 2 and 6
      if (ferm_type(2).eq.-1) then
         if (ferm_type(6).eq.-1) then
            call exchange_mom(px1,2,6,6,px1)
         else
            write(*,*) 'Error in the type of the quark 2-6'
            stop
         endif
      endif
      
c     momenti fittizi 
c     (fermioni-> linea fermionica, bosoni-> outgoing)  
c     quindi +1 * il gluone outgoing
      do mu=0,3
         p1(mu) = ferm_type(1)*px1(mu,1)
         p2(mu) = ferm_type(2)*px1(mu,2)
         p3(mu) = ferm_type(3)*px1(mu,3)
         p4(mu) = ferm_type(4)*px1(mu,4)
         p5(mu) = ferm_type(5)*px1(mu,5)
         p6(mu) = ferm_type(6)*px1(mu,6)
c     current momenta are built from physical vectors always outgoing         
         pcurr15(mu) = p5(mu)-p1(mu)
         pcurr26(mu) = p6(mu)-p2(mu)
      enddo         

      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))
      
cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34V = 1d0/phdm_LambdaUV**2
      else
         prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,phdm_Vmass*phdm_Vwidth)
         if(phdm_rw) prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,(2*p34+2*mass2)*phdm_Vwidth/phdm_Vmass)
      endif
ccccccccccccccccccccccccccccccccccccccccc

c     bra e ket usano momenti fisici
c     q
      if (px1(0,1).lt.0d0) then
         do mu=0,3
            pp1(mu) = -px1(mu,1)
         enddo         
         call ket(pp1,ferm_type(1),psi1)
      else
         call ket(px1(0,1),ferm_type(1),psi1)
      endif                
c     q
      if (px1(0,5).lt.0d0) then
         do mu=0,3
            pp5(mu) = -px1(mu,5)
         enddo         
         call bra(pp5,ferm_type(5),psi5)
      else
         call bra(px1(0,5),ferm_type(5),psi5)
      endif

ccccccccccccccccccccccccccccccccccccccccccccc
c     massive->massless momenta
c     em -> p3 (fermion)
c     ep -> p4 (antifermion)
      beta=sqrt(1-4d0*mass2/2d0/(p34+mass2))
      apl=(1+beta)/2d0
      ami=(1-beta)/2d0
      do mu=0,3
         p_f(mu)=p(mu,3)
         p_af(mu)=p(mu,4)
         kbar(mu)=(ami*p_f(mu)-apl*p_af(mu))/(ami**2-apl**2)
         k(mu)=p_f(mu)+p_af(mu)-kbar(mu)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     opposite helicity leptonic currents
c     em
      call bra(k,   +1,psi3)
c     ep
      call ket(kbar,-1,psi4)

      call bra_gamma_ket(psi3,psi4,-1,Vmp)
      call bra_gamma_ket(psi3,psi4,+1,Vpm)
      do mu=0,3
         Amp(mu)=Vmp(mu)*(+1)*(1-2*apl)
         Apm(mu)=Vpm(mu)*(-1)*(1-2*apl)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      do mu=0,3
         Vmm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/resmm
         Vpp(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/respp
         Amm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/resmm
         App(mu)=-2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/respp
      enddo
cccccccccccccccccccccccccccccccccccccccccccc

c     V/A current, universal  couplings set to 1
      if(phdm_mode.eq.'VE'.or.phdm_mode.eq.'AV') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Vmm(:) * phdm_gDM
         jlepZ(:,-1)=Vmp(:) * phdm_gDM
         jlepZ(:,+1)=Vpm(:) * phdm_gDM
         jlepZ(:,+3)=Vpp(:) * phdm_gDM
      elseif(phdm_mode.eq.'AX'.or.phdm_mode.eq.'VA') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Amm(:) * phdm_gDM
         jlepZ(:,-1)=Amp(:) * phdm_gDM
         jlepZ(:,+1)=Apm(:) * phdm_gDM
         jlepZ(:,+3)=App(:) * phdm_gDM
      elseif(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         prop34V = 1d0/dcmplx(2*p34+2*mass2-ph_Zmass2,ph_ZmZw)
         prop34gamma = 1d0/(2*p34+2*mass2)
c     Z leptonic current, with leptonic Z coupling already included
         jlepZ(:,-3)=(v_l+a_l)/2d0*(Vmm(:)-Amm(:))
     $        + (v_l-a_l)/2d0*(Vmm(:)+Amm(:))
         jlepZ(:,-1)=(v_l+a_l)/2d0*(Vmp(:)-Amp(:))
     $        + (v_l-a_l)/2d0*(Vmp(:)+Amp(:))
         jlepZ(:,+1)=(v_l+a_l)/2d0*(Vpm(:)-Apm(:))
     $        + (v_l-a_l)/2d0*(Vpm(:)+Apm(:))
         jlepZ(:,+3)=(v_l+a_l)/2d0*(Vpp(:)-App(:))
     $        + (v_l-a_l)/2d0*(Vpp(:)+App(:))
c     A leptonic current, with leptonic gamma coupling already included
         jlepA(:,-3)=q_l*Vmm(:)
         jlepA(:,-1)=q_l*Vmp(:)
         jlepA(:,+1)=q_l*Vpm(:)
         jlepA(:,+3)=q_l*Vpp(:)
      endif

cccccccccccccccccccccccccccccc

c     qp
      if (px1(0,6).lt.0d0) then
         do mu=0,3
            pp6(mu) = -px1(mu,6)
         enddo         
         call bra(pp6,ferm_type(6),psi6)
      else
         call bra(px1(0,6),ferm_type(6),psi6)
      endif
c     qp
      if (px1(0,2).lt.0d0) then
         do mu=0,3
            pp2(mu) = -px1(mu,2)
         enddo         
         call ket(pp2,ferm_type(2),psi2)
      else
         call ket(px1(0,2),ferm_type(2),psi2)
      endif
c     correnti                
      do i=-1,1,2
         call bra_gamma_ket(psi6,psi2,i,jqua26(0,i))
         call bra_gamma_ket(psi5,psi1,i,jqua15(0,i))
      enddo

      amp2=0d0      

      do hel_lep=-3,3,2         
      do hel_1=-1,1,2            
      do hel_2=-1,1,2
cccccccccccc
c     Z
         call bra_gamma_ket_curr(psi6,psi2,hel_2,p6,p2,pcurr15,
     $        jqua15(0,hel_1),jtemp(0,hel_2))
      if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
         jtemp(0:3,-1) = - jtemp(0:3,-1) 
      endif
         amp_ljj_Z(1,hel_lep,hel_1,hel_2) = 
     $        ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_2))
c     A
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
            amp_ljj_A(1,hel_lep,hel_1,hel_2) = 
     $           ccdotp(jlepA(0,hel_lep),jtemp(0,hel_2))
         endif
c     Z
         call bra_gamma_ket_curr(psi5,psi1,hel_1,p5,p1,pcurr26,
     $        jqua26(0,hel_2),jtemp(0,hel_1))
      if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
         jtemp(0:3,-1) = - jtemp(0:3,-1) 
      endif
         amp_ljj_Z(2,hel_lep,hel_1,hel_2) = 
     $        ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_1))
c     A
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
            amp_ljj_A(2,hel_lep,hel_1,hel_2) = 
     $           ccdotp(jlepA(0,hel_lep),jtemp(0,hel_1))
         endif
ccccccccccc
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     bb/tata
            amp_ljj(1,hel_lep,hel_1,hel_2) = (
     $           amp_ljj_A(1,hel_lep,hel_1,hel_2)
     $           *(q_q*prop34gamma) + 
     $           amp_ljj_Z(1,hel_lep,hel_1,hel_2)
     $           *Zcoup_q(hel_2)/(2*ph_sthw*ph_cthw)**2
     $           *prop34V)
            
            amp_ljj(2,hel_lep,hel_1,hel_2) = (
     $           amp_ljj_A(2,hel_lep,hel_1,hel_2)
     $           *(q_q*prop34gamma) + 
     $           amp_ljj_Z(2,hel_lep,hel_1,hel_2)
     $           *Zcoup_q(hel_1)/(2*ph_sthw*ph_cthw)**2
     $           *prop34V)
         else
c     DM
            amp_ljj(1,hel_lep,hel_1,hel_2) =
     $           amp_ljj_Z(1,hel_lep,hel_1,hel_2)
     $           *prop34V *phdm_gSM
            
            amp_ljj(2,hel_lep,hel_1,hel_2) =
     $           amp_ljj_Z(2,hel_lep,hel_1,hel_2)
     $           *prop34V *phdm_gSM
         endif
      enddo
      enddo
      enddo
cccccccccccccc
c     
c     momenti fittizi 
c     (fermioni-> linea fermionica, bosoni-> outgoing)  
c     quindi +1 * il gluone outgoing
      do mu=0,3
         p1(mu) = ferm_type(1)*px2(mu,1)
         p2(mu) = ferm_type(2)*px2(mu,2)
         p3(mu) = ferm_type(3)*px2(mu,3)
         p4(mu) = ferm_type(4)*px2(mu,4)
         p5(mu) = ferm_type(5)*px2(mu,5)
         p6(mu) = ferm_type(6)*px2(mu,6)
         pcurr16(mu) = p6(mu)-p1(mu)
         pcurr25(mu) = p5(mu)-p2(mu)         
      enddo               


c     bra e ket usano momenti fisici               
c     q
      if (px2(0,1).lt.0d0) then
         do mu=0,3
            pp1(mu) = -px2(mu,1)
         enddo         
         call ket(pp1,ferm_type(1),psi1)
      else
         call ket(px2(0,1),ferm_type(1),psi1)
      endif               
c     q        
      if (px2(0,5).lt.0d0) then
         do mu=0,3
            pp5(mu) = -px2(mu,5)
         enddo         
         call bra(pp5,ferm_type(5),psi5)
      else
         call bra(px2(0,5),ferm_type(5),psi5)
      endif
c     qp
      if (px2(0,6).lt.0d0) then
         do mu=0,3
            pp6(mu) = -px2(mu,6)
         enddo         
         call bra(pp6,ferm_type(6),psi6)
      else
         call bra(px2(0,6),ferm_type(6),psi6)
      endif
c     qp 
      if (px2(0,2).lt.0d0) then
         do mu=0,3
            pp2(mu) = -px2(mu,2)
         enddo         
         call ket(pp2,ferm_type(2),psi2)
      else
         call ket(px2(0,2),ferm_type(2),psi2)
      endif
c     correnti       
      do i=-1,1,2
         call bra_gamma_ket(psi6,psi1,i,jqua16(0,i))
         call bra_gamma_ket(psi5,psi2,i,jqua25(0,i))
      enddo

      do hel_lep=-3,3,2         
         do hel_1=-1,1,2            
              do hel_2=-1,1,2                
cccccccccccc
c     Z
        call bra_gamma_ket_curr(psi6,psi1,hel_1,p6,p1,pcurr25,
     $        jqua25(0,hel_2),jtemp(0,hel_1))        
      if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
         jtemp(0:3,-1) = - jtemp(0:3,-1) 
      endif
         amp_ljj_Z(3,hel_lep,hel_1,hel_2) = 
     $        ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_1))
c     A
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
            amp_ljj_A(3,hel_lep,hel_1,hel_2) = 
     $           ccdotp(jlepA(0,hel_lep),jtemp(0,hel_1))
         endif
c     Z
         call bra_gamma_ket_curr(psi5,psi2,hel_2,p5,p2,pcurr16,
     $        jqua16(0,hel_1),jtemp(0,hel_2))         
      if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
         jtemp(0:3,-1) = - jtemp(0:3,-1) 
      endif
         amp_ljj_Z(4,hel_lep,hel_1,hel_2) = 
     $        ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_2))
c     A
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
            amp_ljj_A(4,hel_lep,hel_1,hel_2) = 
     $           ccdotp(jlepA(0,hel_lep),jtemp(0,hel_2))
         endif
cccccccccccc
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     bb/tata
            amp_ljj(3,hel_lep,hel_1,hel_2) = (
     $           amp_ljj_A(3,hel_lep,hel_1,hel_2)
     $           *(q_q*prop34gamma) + 
     $           amp_ljj_Z(3,hel_lep,hel_1,hel_2)
     $           *Zcoup_q(hel_1)/(2*ph_sthw*ph_cthw)**2
     $           *prop34V)
            
            amp_ljj(4,hel_lep,hel_1,hel_2) = (
     $           amp_ljj_A(4,hel_lep,hel_1,hel_2)
     $           *(q_q*prop34gamma) + 
     $           amp_ljj_Z(4,hel_lep,hel_1,hel_2)
     $           *Zcoup_q(hel_2)/(2*ph_sthw*ph_cthw)**2
     $           *prop34V)
         else
c     DM
            amp_ljj(3,hel_lep,hel_1,hel_2) = 
     $           amp_ljj_Z(3,hel_lep,hel_1,hel_2)
     $           *prop34V *phdm_gSM
            
            amp_ljj(4,hel_lep,hel_1,hel_2) =
     $           amp_ljj_Z(4,hel_lep,hel_1,hel_2)
     $           *prop34V *phdm_gSM
         endif
cccccccccccccccccccc
c     final coherent sum   
c     minus sign for fermion statistic
         z1=amp_ljj(1,hel_lep,hel_1,hel_2)+
     $        amp_ljj(2,hel_lep,hel_1,hel_2)
         
         z2=-amp_ljj(3,hel_lep,hel_1,hel_2)
     $        -amp_ljj(4,hel_lep,hel_1,hel_2)
         
         amp2 = amp2 + 
     $        CF*nc/2*(z1*DCONJG(z1)+z2*DCONJG(z2)) 
         
         if (hel_1.eq.hel_2) then
            amp2 = amp2
     $           -CF/2*(z1*DCONJG(z2)+z2*DCONJG(z1))               
c     !ER: 4 feb 2015, D Salek request
c     Not 100% sure this is correct also when doing AV case, but it should, because after
c     flipping jtemp, the hel_1 and hel_2 helicity labels of amp_ljj_Z are consistent (they have
c     been filled with the correct content), so z1 and z2 are also ok.
         endif               
      enddo      
      enddo         
      enddo
c     coupling costants and averaging factors 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2/nc/nc/4/2
      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         amp2 = amp2 * ph_unit_e**4 
      endif
      end
      
      
      subroutine aq_q_to_l_al_q_aq(pphy,fermion_type,fermion_charge,
     $     amp2)      
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2
      integer mu,i
         
c      print*, 'aq_q_to_l_al_q_aq'

      do i = 1,6
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      do mu=0,3
c     exchange initial antiquark <-> final antiquark
         pp(mu,6) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,6)         
      enddo
      
c     no useful information is in ferm_type(1) or ferm_charge(1), 
c     since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(6)
      ferm_type(6) = -fermion_type(1)
c     NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(6)
      ferm_charge(6) = -fermion_charge(1)
      call q_q_to_l_al_q_q(pp,ferm_type,ferm_charge,amp2)
      amp2= amp2*2d0
      end


      subroutine q_aq_to_l_al_q_aq(pphy,fermion_type,fermion_charge,
     $     amp2)      
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2
      integer mu,i

c      print*, 'q_aq_to_l_al_q_aq'

      
      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      do mu=0,3
c     exchange initial antiquark <-> final antiquark
         pp(mu,6) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,6)         
      enddo
      
c     no useful information is in ferm_type(1) or ferm_charge(1), 
c     since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(6)
      ferm_type(6) = -fermion_type(2)
c     NOTE the MINUS sign!!!
      ferm_charge(2) = -ferm_charge(6)
      ferm_charge(6) = -fermion_charge(2)
      
      call q_q_to_l_al_q_q(pp,ferm_type,ferm_charge,amp2)
      amp2= amp2*2d0
      end
      
      
c     this subroutine compute the Born amplitude for the process
c     q(p1) qp(p2) -> Z(p3+p4) q(p5) qp(p6) con Z -> l-(p3) l+(p4) 
c     NB flavour of qp MUST be different from that of q
c     if it's not the case MUST use q_q_to_l_al_q_q
      subroutine q_qp_to_l_al_q_qp(pphy,fermion_type,fermion_charge,
     $     amp2)
      implicit none
c     the 5 4-momentum vectors
c     p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real *8  p5(0:3),p6(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1),
     $     psi5(2,-1:1),psi6(2,-1:1)
      complex*16 jlepA(0:3,-3:3),jlepZ(0:3,-3:3),jqua15(0:3,-1:1),jqua26(0:3,-1:1)
      complex*16 jtemp(0:3,-1:1)
      complex*16 amp_ljj(2,-3:3,-1:1,-1:1),
     $      amp_ljj_Z(2,-3:3,-1:1,-1:1),amp_ljj_A(2,-3:3,-1:1,-1:1)
      integer mu,i,hel_15,hel_26,hel_lep
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 pcurr15(0:3),pcurr26(0:3)
      integer utype_q,utype_qp,utype_l
      real * 8 q_q,v_q,a_q,L_q,R_q
      real * 8 q_qp,v_qp,a_qp,L_qp,R_qp
      real * 8 q_l,v_l,a_l,L_l,R_l
      real*8 Zcoup_q(-1:1),Zcoup_qp(-1:1),Zcoup_l(-1:1)
      complex * 16 prop34V, prop34gamma
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 Amm(0:3),Amp(0:3),Apm(0:3),App(0:3)
      complex * 16 Vmm(0:3),Vmp(0:3),Vpm(0:3),Vpp(0:3)
      complex * 16 respp,resmm
ccccccccccccccccccccccccc      

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

c     exchance particle 1 and 5
      if (ferm_type(1).eq.-1) then
        if (ferm_type(5).eq.-1) then
            call exchange_momenta(p(0,1),p(0,5))
            tmp = ferm_charge(1)
            ferm_charge(1)=-ferm_charge(5)
            ferm_charge(5)=-tmp
            tmp = ferm_type(1)
            ferm_type(1)=ferm_type(5)
            ferm_type(5)=tmp
         else
            write(*,*) 'Error in the type of the quark 1-5'
            stop
         endif
      endif
      
c     exchance particle 2 and 6
      if (ferm_type(2).eq.-1) then
         if (ferm_type(6).eq.-1) then
            call exchange_momenta(p(0,2),p(0,6))
            tmp = ferm_charge(2)
            ferm_charge(2)=-ferm_charge(6)
            ferm_charge(6)=-tmp
            tmp = ferm_type(2)
            ferm_type(2)=ferm_type(6)
            ferm_type(6)=tmp
         else
            write(*,*) 'Error in the type of the quark 2-6'
            stop
         endif
      endif

c     utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c     utype = -1 otherwise
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
      
      if (abs(ferm_charge(2)).eq.2d0/3) then
         utype_qp = +1
         q_qp = 2d0/3
      elseif (abs(ferm_charge(2)).eq.1d0/3) then
         utype_qp = -1
         q_qp = -1d0/3
      else
         write(*,*) 'What charge is this??', ferm_charge(2)
         stop
      endif

      if (abs(ferm_charge(3)).eq.1d0) then
c     Z->ll
         utype_l = -1
         q_l = -1d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
c     Z->nunu
         utype_l = +1
         q_l = 0d0
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
c     Z->bb
         utype_l = -1
         q_l = -1d0/3
      else
         write(*,*) 'What charge is this??',ferm_charge(4)
         stop
      endif      
            
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw**2 
      a_q = utype_q*1.d0/2
      
      v_qp = utype_qp*1.d0/2 - 2*q_qp*ph_sthw**2 
      a_qp = utype_qp*1.d0/2
      
      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw**2 
      a_l = utype_l*1.d0/2
      
      L_q = v_q + a_q
      R_q = v_q - a_q

      L_qp = v_qp + a_qp
      R_qp = v_qp - a_qp
      
      L_l = v_l + a_l
      R_l = v_l - a_l
      
c     copy of z couplings useful for do loops
      Zcoup_q(-1)=L_q
      Zcoup_q(1)=R_q
      Zcoup_qp(-1)=L_qp
      Zcoup_qp(1)=R_qp
      Zcoup_l(-1)=L_l
      Zcoup_l(1)=R_l
c      
c     momenti fittizi 
c    (fermioni-> linea fermionica, bosoni-> outgoing)  
c     quindi +1 * il gluone outgoing
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
         p3(mu) = ferm_type(3)*p(mu,3)
         p4(mu) = ferm_type(4)*p(mu,4)
         p5(mu) = ferm_type(5)*p(mu,5)
         p6(mu) = ferm_type(6)*p(mu,6)
         pcurr15(mu) = p5(mu)-p1(mu)
         pcurr26(mu) = p6(mu)-p2(mu)
      enddo

      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34V = 1d0/phdm_LambdaUV**2
      else
         prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,phdm_Vmass*phdm_Vwidth)
         if(phdm_rw) prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,(2*p34+2*mass2)*phdm_Vwidth/phdm_Vmass)
      endif
ccccccccccccccccccccccccccccccccccccccccc
      
c     bra e ket usano momenti fisici
c     q
      call ket(p(0,1),ferm_type(1),psi1)
c     q
      call bra(p(0,5),ferm_type(5),psi5)

ccccccccccccccccccccccccccccccccccccccccccccc
c     massive->massless momenta
c     em -> p3 (fermion)
c     ep -> p4 (antifermion)
      beta=sqrt(1-4d0*mass2/2d0/(p34+mass2))
      apl=(1+beta)/2d0
      ami=(1-beta)/2d0
      do mu=0,3
         p_f(mu)=p(mu,3)
         p_af(mu)=p(mu,4)
         kbar(mu)=(ami*p_f(mu)-apl*p_af(mu))/(ami**2-apl**2)
         k(mu)=p_f(mu)+p_af(mu)-kbar(mu)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     opposite helicity leptonic currents
c     em
      call bra(k,   +1,psi3)
c     ep
      call ket(kbar,-1,psi4)

      call bra_gamma_ket(psi3,psi4,-1,Vmp)
      call bra_gamma_ket(psi3,psi4,+1,Vpm)
      do mu=0,3
         Amp(mu)=Vmp(mu)*(+1)*(1-2*apl)
         Apm(mu)=Vpm(mu)*(-1)*(1-2*apl)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      do mu=0,3
         Vmm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/resmm
         Vpp(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/respp
         Amm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/resmm
         App(mu)=-2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/respp
      enddo
cccccccccccccccccccccccccccccccccccccccccccc

c     V/A current, universal  couplings set to 1
      if(phdm_mode.eq.'VE'.or.phdm_mode.eq.'AV') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Vmm(:) * phdm_gDM
         jlepZ(:,-1)=Vmp(:) * phdm_gDM
         jlepZ(:,+1)=Vpm(:) * phdm_gDM
         jlepZ(:,+3)=Vpp(:) * phdm_gDM
      elseif(phdm_mode.eq.'AX'.or.phdm_mode.eq.'VA') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Amm(:) * phdm_gDM
         jlepZ(:,-1)=Amp(:) * phdm_gDM
         jlepZ(:,+1)=Apm(:) * phdm_gDM
         jlepZ(:,+3)=App(:) * phdm_gDM
      elseif(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         prop34V = 1d0/dcmplx(2*p34+2*mass2-ph_Zmass2,ph_ZmZw)
         prop34gamma = 1d0/(2*p34+2*mass2)
c     Z leptonic current, with leptonic Z coupling already included
         jlepZ(:,-3)=(v_l+a_l)/2d0*(Vmm(:)-Amm(:))
     $        + (v_l-a_l)/2d0*(Vmm(:)+Amm(:))
         jlepZ(:,-1)=(v_l+a_l)/2d0*(Vmp(:)-Amp(:))
     $        + (v_l-a_l)/2d0*(Vmp(:)+Amp(:))
         jlepZ(:,+1)=(v_l+a_l)/2d0*(Vpm(:)-Apm(:))
     $        + (v_l-a_l)/2d0*(Vpm(:)+Apm(:))
         jlepZ(:,+3)=(v_l+a_l)/2d0*(Vpp(:)-App(:))
     $        + (v_l-a_l)/2d0*(Vpp(:)+App(:))
c     A leptonic current, with leptonic gamma coupling already included
         jlepA(:,-3)=q_l*Vmm(:)
         jlepA(:,-1)=q_l*Vmp(:)
         jlepA(:,+1)=q_l*Vpm(:)
         jlepA(:,+3)=q_l*Vpp(:)
      endif

cccccccccccccccccccccccccccccc

c     qp
      call bra(p(0,6),ferm_type(6),psi6)
c     qp
      call ket(p(0,2),ferm_type(2),psi2)
      
c     correnti      
      do i=-1,1,2
         call bra_gamma_ket(psi6,psi2,i,jqua26(0,i))
         call bra_gamma_ket(psi5,psi1,i,jqua15(0,i))
      enddo
      
      amp2=0d0

      do hel_lep=-3,3,2         
      do hel_15=-1,1,2         
      do hel_26=-1,1,2
ccccccccc
c     Z
         call bra_gamma_ket_curr(psi6,psi2,hel_26,p6,p2,pcurr15,
     $        jqua15(0,hel_15),jtemp(0,hel_26))
      if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
         jtemp(0:3,-1) = - jtemp(0:3,-1) 
      endif
         amp_ljj_Z(1,hel_lep,hel_15,hel_26) = 
     $        ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_26))
c     A
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
            amp_ljj_A(1,hel_lep,hel_15,hel_26) = 
     $           ccdotp(jlepA(0,hel_lep),jtemp(0,hel_26))         
         endif
c     Z
         call bra_gamma_ket_curr(psi5,psi1,hel_15,p5,p1,pcurr26,
     $        jqua26(0,hel_26),jtemp(0,hel_15))
      if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
         jtemp(0:3,-1) = - jtemp(0:3,-1) 
      endif
         amp_ljj_Z(2,hel_lep,hel_15,hel_26) = 
     $        ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_15))
c     A
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
            amp_ljj_A(2,hel_lep,hel_15,hel_26) = 
     $           ccdotp(jlepA(0,hel_lep),jtemp(0,hel_15))
         endif
ccccccccc
         if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     bb/tata
            amp_ljj(1,hel_lep,hel_15,hel_26) = (
     $           amp_ljj_A(1,hel_lep,hel_15,hel_26)
     $           *(q_qp*prop34gamma) + 
     $           amp_ljj_Z(1,hel_lep,hel_15,hel_26)
     $           *Zcoup_qp(hel_26)/(2*ph_sthw*ph_cthw)**2
     $           *prop34V)
            
            amp_ljj(2,hel_lep,hel_15,hel_26) = (
     $           amp_ljj_A(2,hel_lep,hel_15,hel_26)
     $           *(q_q*prop34gamma) + 
     $           amp_ljj_Z(2,hel_lep,hel_15,hel_26)
     $           *Zcoup_q(hel_15)/(2*ph_sthw*ph_cthw)**2
     $           *prop34V)
         else
c     DM
            amp_ljj(1,hel_lep,hel_15,hel_26) = 
     $           amp_ljj_Z(1,hel_lep,hel_15,hel_26)
     $           *prop34V *phdm_gSM
            
            amp_ljj(2,hel_lep,hel_15,hel_26) = 
     $           amp_ljj_Z(2,hel_lep,hel_15,hel_26)
     $           *prop34V *phdm_gSM
         endif
cccccccccccc
c final coherent sum               
         amp2 = amp2 + CF*nc/2*
     $        (amp_ljj(1,hel_lep,hel_15,hel_26)+
     $        amp_ljj(2,hel_lep,hel_15,hel_26))
     $        * DCONJG(amp_ljj(1,hel_lep,hel_15,hel_26)+
     $          amp_ljj(2,hel_lep,hel_15,hel_26))           
      enddo      
      enddo         
      enddo
c     coupling costants and averaging factors 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2/nc/nc/4
      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         amp2 = amp2 * ph_unit_e**4 
      endif
      end
      

      
c     this subroutine compute the Born amplitude for the process
c     q(p1) aq(p2) -> Z(p3+p4) qp(p5) aqp(p6) con Z -> l-(p3) l+(p4) 
c     NB flavour of qp MUST be different from that of q
c     if it's not the case MUST use q_aq_to_l_al_q_aq
      subroutine q_aq_to_l_al_qp_aqp(pphy,fermion_type,fermion_charge,
     $     amp2)   
      implicit none
c     the 5 4-momentum vectors
c     p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real *8 amp2
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real *8  p5(0:3),p6(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1),
     $     psi5(2,-1:1),psi6(2,-1:1)      
      complex*16 jlepZ(0:3,-3:3),jlepA(0:3,-3:3),jqua56(0:3,-1:1),jqua12(0:3,-1:1)
      complex*16 jtemp(0:3,-1:1)
      complex*16 amp_ljj(2,-3:3,-1:1,-1:1),
     $      amp_ljj_Z(2,-3:3,-1:1,-1:1),amp_ljj_A(2,-3:3,-1:1,-1:1)
      integer mu,i,hel_12,hel_56,hel_lep
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 pcurr56(0:3),pcurr12(0:3)
      integer utype_q,utype_qp,utype_l
      real * 8 q_q,v_q,a_q,L_q,R_q
      real * 8 q_qp,v_qp,a_qp,L_qp,R_qp
      real * 8 q_l,v_l,a_l,L_l,R_l
      real * 8 Zcoup_q(-1:1),Zcoup_qp(-1:1),Zcoup_l(-1:1)
      complex * 16 prop34V, prop34gamma
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 Amm(0:3),Amp(0:3),Apm(0:3),App(0:3)
      complex * 16 Vmm(0:3),Vmp(0:3),Vpm(0:3),Vpp(0:3)
      complex * 16 respp,resmm
ccccccccccccccccccccccccc      

c      print*, 'q_aq_to_l_al_qp_aqp'

      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif
     
c     copy of local variables
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
      
c     exchance particle 5 and 6
      if (ferm_type(5).eq.-1) then
         if (ferm_type(6).eq.1) then
            call exchange_momenta(p(0,5),p(0,6))
            tmp = ferm_charge(5)
            ferm_charge(5)=-ferm_charge(6)
            ferm_charge(6)=-tmp
            tmp = ferm_type(5)
            ferm_type(5)=ferm_type(6)
            ferm_type(6)=tmp
         else
            write(*,*) 'Error in the type of the quark 5-6'
            stop
         endif
      endif
      
c     utype = +1 if this is an up-type quark (u,c,ubar,cbar)
c     utype = -1 otherwise
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
      
      if (abs(ferm_charge(5)).eq.2d0/3) then
         utype_qp = +1
         q_qp = 2d0/3
      elseif (abs(ferm_charge(5)).eq.1d0/3) then
         utype_qp = -1
         q_qp = -1d0/3
      else
         write(*,*) 'What charge is this??', ferm_charge(5)
         stop
      endif

      if (abs(ferm_charge(3)).eq.1d0) then
c     Z->ll
         utype_l = -1
         q_l = -1d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
c     Z->nunu
         utype_l = +1
         q_l = 0d0
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
c     Z->bb
         utype_l = -1
         q_l = -1d0/3
      else
         write(*,*) 'What charge is this??',ferm_charge(4)
         stop
      endif           
      
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw2
      a_q = utype_q*1.d0/2
      
      v_qp = utype_qp*1.d0/2 - 2*q_qp*ph_sthw2
      a_qp = utype_qp*1.d0/2
      
      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw2
      a_l = utype_l*1.d0/2
      
      L_q = v_q + a_q
      R_q = v_q - a_q

      L_qp = v_qp + a_qp
      R_qp = v_qp - a_qp
      
      L_l = v_l + a_l
      R_l = v_l - a_l
      
c     copy of z couplings useful for do loops      
      Zcoup_q(-1)=L_q
      Zcoup_q(1)=R_q
      Zcoup_qp(-1)=L_qp
      Zcoup_qp(1)=R_qp
      Zcoup_l(-1)=L_l
      Zcoup_l(1)=R_l
c     
c     momenti fittizi 
c     (fermioni-> linea fermionica, bosoni-> outgoing)  
c     quindi +1 * il gluone outgoing
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
         p3(mu) = ferm_type(3)*p(mu,3)
         p4(mu) = ferm_type(4)*p(mu,4)
         p5(mu) = ferm_type(5)*p(mu,5)
         p6(mu) = ferm_type(6)*p(mu,6)
         pcurr56(mu) = p5(mu)-p6(mu)
         pcurr12(mu) = p2(mu)-p1(mu)
      enddo

      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34V = 1d0/phdm_LambdaUV**2
      else
         prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,phdm_Vmass*phdm_Vwidth)
         if(phdm_rw) prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,(2*p34+2*mass2)*phdm_Vwidth/phdm_Vmass)
      endif
ccccccccccccccccccccccccccccccccccccccccc

c     bra e ket usano momenti fisici
c     q
      call ket(p(0,1),ferm_type(1),psi1)
c     aq
      call bra(p(0,2),ferm_type(2),psi2)

ccccccccccccccccccccccccccccccccccccccccccccc
c     massive->massless momenta
c     em -> p3 (fermion)
c     ep -> p4 (antifermion)
      beta=sqrt(1-4d0*mass2/2d0/(p34+mass2))
      apl=(1+beta)/2d0
      ami=(1-beta)/2d0
      do mu=0,3
         p_f(mu)=p(mu,3)
         p_af(mu)=p(mu,4)
         kbar(mu)=(ami*p_f(mu)-apl*p_af(mu))/(ami**2-apl**2)
         k(mu)=p_f(mu)+p_af(mu)-kbar(mu)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     opposite helicity leptonic currents
c     em
      call bra(k,   +1,psi3)
c     ep
      call ket(kbar,-1,psi4)

      call bra_gamma_ket(psi3,psi4,-1,Vmp)
      call bra_gamma_ket(psi3,psi4,+1,Vpm)
      do mu=0,3
         Amp(mu)=Vmp(mu)*(+1)*(1-2*apl)
         Apm(mu)=Vpm(mu)*(-1)*(1-2*apl)
      enddo
cccccccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      do mu=0,3
         Vmm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/resmm
         Vpp(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)-k(mu))/respp
         Amm(mu)=+2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/resmm
         App(mu)=-2d0*sqrt(dabs(mass2))*(kbar(mu)+k(mu))/respp
      enddo
cccccccccccccccccccccccccccccccccccccccccccc

c     V/A current, universal  couplings set to 1
      if(phdm_mode.eq.'VE'.or.phdm_mode.eq.'AV') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Vmm(:) * phdm_gDM
         jlepZ(:,-1)=Vmp(:) * phdm_gDM
         jlepZ(:,+1)=Vpm(:) * phdm_gDM
         jlepZ(:,+3)=Vpp(:) * phdm_gDM
      elseif(phdm_mode.eq.'AX'.or.phdm_mode.eq.'VA') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Amm(:) * phdm_gDM
         jlepZ(:,-1)=Amp(:) * phdm_gDM
         jlepZ(:,+1)=Apm(:) * phdm_gDM
         jlepZ(:,+3)=App(:) * phdm_gDM
      elseif(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         prop34V = 1d0/dcmplx(2*p34+2*mass2-ph_Zmass2,ph_ZmZw)
         prop34gamma = 1d0/(2*p34+2*mass2)
c     Z leptonic current, with leptonic Z coupling already included
         jlepZ(:,-3)=(v_l+a_l)/2d0*(Vmm(:)-Amm(:))
     $        + (v_l-a_l)/2d0*(Vmm(:)+Amm(:))
         jlepZ(:,-1)=(v_l+a_l)/2d0*(Vmp(:)-Amp(:))
     $        + (v_l-a_l)/2d0*(Vmp(:)+Amp(:))
         jlepZ(:,+1)=(v_l+a_l)/2d0*(Vpm(:)-Apm(:))
     $        + (v_l-a_l)/2d0*(Vpm(:)+Apm(:))
         jlepZ(:,+3)=(v_l+a_l)/2d0*(Vpp(:)-App(:))
     $        + (v_l-a_l)/2d0*(Vpp(:)+App(:))
c     A leptonic current, with leptonic gamma coupling already included
         jlepA(:,-3)=q_l*Vmm(:)
         jlepA(:,-1)=q_l*Vmp(:)
         jlepA(:,+1)=q_l*Vpm(:)
         jlepA(:,+3)=q_l*Vpp(:)
      endif

cccccccccccccccccccccccccccccc

c     qp
      call bra(p(0,5),ferm_type(5),psi5)
c     aqp
      call ket(p(0,6),ferm_type(6),psi6)
      
c     correnti       
      do i=-1,1,2
         call bra_gamma_ket(psi5,psi6,i,jqua56(0,i))
         call bra_gamma_ket(psi2,psi1,i,jqua12(0,i))
      enddo
      
      amp2=0d0

      do hel_lep=-3,3,2         
         do hel_12=-1,1,2         
            do hel_56=-1,1,2     
ccccccccc
c     Z
               call bra_gamma_ket_curr(psi2,psi1,hel_12,p2,p1,pcurr56,
     $              jqua56(0,hel_56),jtemp(0,hel_12))
               if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
                  jtemp(0:3,-1) = - jtemp(0:3,-1) 
               endif
               amp_ljj_Z(1,hel_lep,hel_12,hel_56) = 
     $              ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_12))
c     A
               if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
                  amp_ljj_A(1,hel_lep,hel_12,hel_56) = 
     $                 ccdotp(jlepA(0,hel_lep),jtemp(0,hel_12))
               endif
c     Z
               call bra_gamma_ket_curr(psi5,psi6,hel_56,p5,p6,pcurr12,
     $              jqua12(0,hel_12),jtemp(0,hel_56))
               if(phdm_mode.eq.'AV') then
c     !ER: 4 feb 2015, D Salek request
c     jtemp is used just below to contract with the leptonic current. Its helicity
c     index is the helicity index of the quark current that will be dotted with the
c     leptonic one via the mediator exchange. Therefore, if q-q-med is axial, one of the 2
c     helicity components of jtemp gets a minus sign. I've chosen always to flip hel=-1
                  jtemp(0:3,-1) = - jtemp(0:3,-1) 
               endif
               amp_ljj_Z(2,hel_lep,hel_12,hel_56) = 
     $              ccdotp(jlepZ(0,hel_lep),jtemp(0,hel_56))
c     A
               if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
                  amp_ljj_A(2,hel_lep,hel_12,hel_56) = 
     $                 ccdotp(jlepA(0,hel_lep),jtemp(0,hel_56))
               endif
ccccccccc
               if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     bb/tata
                  amp_ljj(1,hel_lep,hel_12,hel_56) = (
     $                 amp_ljj_A(1,hel_lep,hel_12,hel_56)
     $                 *(q_q*prop34gamma) + 
     $                 amp_ljj_Z(1,hel_lep,hel_12,hel_56)
     $                 *Zcoup_q(hel_12)/(2*ph_sthw*ph_cthw)**2
     $                 *prop34V)
                  amp_ljj(2,hel_lep,hel_12,hel_56) = (
     $                 amp_ljj_A(2,hel_lep,hel_12,hel_56)
     $                 *(q_qp*prop34gamma) + 
     $                 amp_ljj_Z(2,hel_lep,hel_12,hel_56)
     $                 *Zcoup_qp(hel_56)/(2*ph_sthw*ph_cthw)**2
     $                 *prop34V)
               else
c     DM
                  amp_ljj(1,hel_lep,hel_12,hel_56) =
     $              amp_ljj_Z(1,hel_lep,hel_12,hel_56)
     $                 *prop34V *phdm_gSM
                  amp_ljj(2,hel_lep,hel_12,hel_56) =
     $                 amp_ljj_Z(2,hel_lep,hel_12,hel_56)
     $                 *prop34V *phdm_gSM
               endif
cccccccccccc
c     final coherent sum               
               amp2 = amp2 + CF*nc/2*
     $              (amp_ljj(1,hel_lep,hel_12,hel_56)+
     $              amp_ljj(2,hel_lep,hel_12,hel_56))
     $              * DCONJG(amp_ljj(1,hel_lep,hel_12,hel_56)+
     $              amp_ljj(2,hel_lep,hel_12,hel_56))           
            enddo      
         enddo         
      enddo
c     coupling costants and averaging factors 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2/nc/nc/4
      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         amp2 = amp2 * ph_unit_e**4 
      endif
      end
      
