      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs)
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
               if(abs(bflav(k)).le.6) then
                  if(bflav(j).ne.0.and.bflav(k).ne.0) then
                     colcf=(2*cf-ca)/2
                  else
                     colcf=ca/2
                  endif
                  bornjk(j,k)=born*colcf
                  bornjk(k,j)=bornjk(j,k)
               endif
            enddo
         endif
      enddo
      end


      subroutine compborn(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
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
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,nleg)
      integer bflav(nleg)
      real * 8 amp2,born,bmunu(0:3,0:3)
      integer ferm_type(nleg)
      integer i,j,k
      real * 8 ferm_charge(nleg)
      integer colourfact
ccccccccccccccccc
c     !: to check with madgraph
c$$$      include 'PhysPars.h'
c$$$      double precision amp2mad
c$$$      double precision tiny
c$$$      integer times
c$$$      data times/0/
c$$$      save times
c$$$      parameter (tiny=1d-6)
ccccccccccccccccc

      if (abs(bflav(3)).le.6.or.abs(bflav(4)).le.6) then
         write(*,*) 'born_ampsq: ERROR in flavor assignement'
         stop
      endif

      if(abs(bflav(3)).lt.16.and.abs(bflav(4)).lt.16) then
c     lepton-antilepton from Z decay
         ferm_type(3) = +1
         ferm_charge(3) = -1
         colourfact=1
      elseif(bflav(3).eq.95.and.bflav(4).eq.-95) then
c     bbar from Z decay
         ferm_type(3) = +1
         ferm_charge(3) = -1d0/3d0
         colourfact=nc
      elseif(bflav(3).eq.19.and.bflav(4).eq.-19) then
c     DM
c     assign, although not really used
         ferm_type(3) = +1
         ferm_charge(3) = -1
         colourfact=1
      else
         write(*,*) 'compborn: invalid bflav(3)'
         call exit(-1)
      endif        
      ferm_type(4) = -ferm_type(3)
      ferm_charge(4) = -ferm_charge(3)

      i = bflav(1)
      j = bflav(2)
      k = bflav(5)
      ferm_charge(1) = charge(i)
      ferm_charge(2) = charge(j)
      ferm_charge(5) = charge(k)

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

      if ((i.eq.(-j)).and.(k.eq.0).and.(i.ne.0)) then
c     q q~ -> g 
         call q_aq_to_l_al_g(p,ferm_type,ferm_charge,amp2,bmunu)
      elseif ((i.eq.k).and.(j.eq.0).and.(i.ne.0)) then
c     q g -> q 
         call q_g_to_l_al_q(p,ferm_type,ferm_charge,amp2,bmunu)
      elseif ((j.eq.k).and.(i.eq.0).and.(j.ne.0)) then
c     g q -> q g  
         call g_q_to_l_al_q(p,ferm_type,ferm_charge,amp2,bmunu)
      else
        amp2 = 0d0
        write(*,*) 'WARNING: returning 0 amplitude!'
        call exit(-1)
      endif

ccccccccccccccccccccccccccccccccccccccc
c     !: to check with madgraph
c$$$      if(phdm_mode.eq.'ta') then
c$$$         call mad_setparam
c$$$         call compborn_mad(p,bflav,amp2mad)
c$$$         if(dabs(amp2mad/amp2-1).gt.tiny) then
c$$$            write(*,*) 'PROBLEM (b) ',bflav,amp2mad/amp2
c$$$            stop
c$$$         endif
c$$$      endif
cccccccccccccccccccccccccccccccccccccccc

      born=amp2

      born = born * colourfact
      bmunu(:,:)=bmunu(:,:) * colourfact

      end


c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4) g(p5)  con Z -> l-(p3) l+(p4) 
      subroutine q_aq_to_l_al_g(pphy,fermion_type,fermion_charge,
     $     amp2,bmunu)
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34,dotp,tmp
      complex * 16 ccdotp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlepA(0:3,-3:3),jlepZ(0:3,-3:3),jquark(0:3,-1:1),
     $     Jlep_dot_Jquark,Jlep_dot_Jquark_vec(2,-3:3,-1:1)
      integer i,pol,hel_lep,hel_quark
      real * 8 p(0:3,nleg),ferm_charge(nleg)
      integer ferm_type(nleg),utype_q, utype_l
      real * 8 q_q,v_q,a_q,q_l,v_l,a_l,Zcoup_q(-1:1),Zcoup_l(-1:1)
      complex * 16 prop34V, prop34gamma
      integer mu,nu,pol1,pol2
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
     
c     copy to local variables
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
      Zcoup_q(-1) = v_q + a_q
      Zcoup_q(+1) = v_q - a_q

      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw**2 
      a_l = utype_l*1.d0/2     
      Zcoup_l(-1) = (v_l + a_l )
      Zcoup_l(+1) = (v_l - a_l )

      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
      enddo

      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34V = 1d0/phdm_LambdaUV**2
      else
         prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,phdm_Vmass*phdm_Vwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc

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
      
c$$$      do i=1,nleg
c$$$         do mu=0,3
c$$$            pmassless(mu,i)=pphy(mu,i)
c$$$         enddo
c$$$      enddo
c$$$      do mu=0,3
c$$$         pmassless(mu,3)=k(mu)
c$$$         pmassless(mu,4)=kbar(mu)
c$$$      enddo
c$$$      call mom_to_MCFM(pmassless,pmcfmmassless)


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
c     sanity check: <ij>[ji]= <i-|j+> <j+|i-> =  2ki*kj
c$$$  print*, ferm_type(3),ferm_type(4)
c$$$      call bra(kbar ,1   ,psi4)
c$$$      call ket(k    ,-1  ,psi3)
c$$$      call bra_ket(psi4,psi3,-1,resmm)
c$$$
c$$$      call bra(k,    1  , psi4)
c$$$      call ket(kbar,-1  , psi3)
c$$$      call bra_ket(psi4,psi3,+1,respp)
c$$$
c$$$      print*, '-----> ',respp*resmm,2d0*dotp(k,kbar)
c$$$      stop

c     sanity check: [ij]=<ji>*
c$$$      call bra(k,    1  , psi4)
c$$$      call ket(kbar,-1  , psi3)
c$$$      call bra_ket(psi4,psi3,+1,respp)
c$$$
c$$$      call bra(kbar  ,1   ,psi4)
c$$$      call ket(k     ,-1  ,psi3)
c$$$      call bra_ket(psi4,psi3,-1,resmm)
c$$$
c$$$
c$$$      print*, '-----> ',respp,dconjg(resmm)
c$$$      stop

cccccccccccccccccccccccccccccccccccccccccccc

c     V/A current, universal  couplings set to 1
      if(phdm_mode.eq.'VE') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Vmm(:)
         jlepZ(:,-1)=Vmp(:)
         jlepZ(:,+1)=Vpm(:)
         jlepZ(:,+3)=Vpp(:)
      elseif(phdm_mode.eq.'AX') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Amm(:)
         jlepZ(:,-1)=Amp(:)
         jlepZ(:,+1)=Apm(:)
         jlepZ(:,+3)=App(:)
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
      do pol=1,2
         call polvec(p(0,5),pol,epsg(0,pol))         
         do hel_lep=-3,3,2             
            do hel_quark=-1,1,2               
               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark)=0d0
               call bra_gamma_ket_gluon(psi2,psi1,hel_quark,p2,p1,
     $              p(0,5),epsg(0,pol),jquark(0,hel_quark))                  
               
               if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     bb/tata
                  Jlep_dot_Jquark = 
     $                 ccdotp(jlepA(0,hel_lep),jquark(0,hel_quark))
     $                 *q_q*prop34gamma + 
     $                 ccdotp(jlepZ(0,hel_lep),jquark(0,hel_quark))
     $                 *Zcoup_q(hel_quark)/(2*ph_sthw*ph_cthw)**2
     $                 *prop34V
               else
c     DM
                  Jlep_dot_Jquark = 
     $                 ccdotp(jlepZ(0,hel_lep),jquark(0,hel_quark))
     $                 *prop34V
               endif

               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) = 
     $              Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) +
     $              Jlep_dot_Jquark
               amp2 = amp2 + Jlep_dot_Jquark*DCONJG(Jlep_dot_Jquark)    
            enddo      
         enddo         
      enddo


      do mu=0,3
      do nu=0,3
         bmunu(mu,nu) = 0d0
         do pol1=1,2
         do pol2=1,2
         do hel_lep=-3,3,2
         do hel_quark=-1,1,2
c     we don't conjugate epsg(mu,pol1) since it is real
            bmunu(mu,nu) = bmunu(mu,nu) +                  
     $       Jlep_dot_Jquark_vec(pol1,hel_lep,hel_quark)
     $           *DCONJG(Jlep_dot_Jquark_vec(pol2,hel_lep,hel_quark))
     $           * epsg(mu,pol1) * epsg(nu,pol2)
         enddo
         enddo
         enddo
         enddo
      enddo
      enddo
      amp2 = amp2 * (4*pi*st_alpha)

c     1/4 from average over initial-state polarization
c     1/nc^2 * nc = 1/nc from average over initial-state colors and sum over 
c     quark colors 
      amp2=  amp2*CF/4/nc 

      do mu=0,3
         do nu=0,3
            bmunu(mu,nu) = bmunu(mu,nu) *(4*pi*st_alpha)*
     $           CF/4/nc
         enddo
      enddo

      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         amp2 = amp2 * ph_unit_e**4 
         bmunu(:,:)=bmunu(:,:) * ph_unit_e**4 
      endif

      end


c this subroutine compute the tree-level amplitude for the process
c q(p1) g(p2) -> Z(p3+p4) q(p5)  con Z -> l-(p3) l+(p4) 
      subroutine q_g_to_l_al_q(pphy,fermion_type,fermion_charge,
     $     amp2,bmunu)   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),p5(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      integer temp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi3(2,-1:1),psi4(2,-1:1),
     $     psi5(2,-1:1)
      complex*16 jlepA(0:3,-3:3),jlepZ(0:3,-3:3),Jquark(0:3,-1:1)
      complex*16 Jlep_dot_Jquark,Jlep_dot_Jquark_vec(2,-3:3,-1:1)
      integer mu,nu,i,pol,hel_lep,hel_quark,pol1,pol2
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer utype_q, utype_l
      real * 8 q_q,v_q,a_q,q_l,v_l,a_l
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
      do i=1,5
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

c check initial configuration qg or gq
      if ((ferm_type(1).eq.0).and.(ferm_charge(1).eq.0d0)) then
c exchance particle 1 and 2
         call exchange_momenta(p(0,1),p(0,2))
         tmp = ferm_charge(1)
         ferm_charge(1)=-ferm_charge(2)
         ferm_charge(2)=-tmp
         temp = ferm_type(1)
         ferm_type(1)=ferm_type(2)
         ferm_type(2)=temp
      elseif ((ferm_type(2).ne.0).or.(ferm_charge(2).ne.0d0)) then
         write(*,*) 'Error in the initial configuration'
         stop
      endif
      
c exchance particle 1 and 5
      if (ferm_type(1).eq.-1) then
        if (ferm_type(5).eq.-1) then
            call exchange_momenta(p(0,1),p(0,5))
            tmp = ferm_charge(1)
            ferm_charge(1)=-ferm_charge(5)
            ferm_charge(5)=-tmp
            temp = ferm_type(1)
            ferm_type(1)=ferm_type(5)
            ferm_type(5)=temp
         else
            write(*,*) 'Error in the type of the quark 1-5'
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
      Zcoup_q(-1) = v_q + a_q
      Zcoup_q(+1) = v_q - a_q
      
      v_l = utype_l*1.d0/2 - 2*q_l*ph_sthw**2 
      a_l = utype_l*1.d0/2
      Zcoup_l(-1) = (v_l + a_l)
      Zcoup_l(+1) = (v_l - a_l)

      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = -p(mu,2)
         p5(mu) = ferm_type(5)*p(mu,5)         
      enddo

      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))
     
cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34V = 1d0/phdm_LambdaUV**2
      else
         prop34V = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_Vmass**2,phdm_Vmass*phdm_Vwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc

c     q
      call ket(p(0,1),ferm_type(1),psi1)
c     qp
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
      if(phdm_mode.eq.'VE') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Vmm(:)
         jlepZ(:,-1)=Vmp(:)
         jlepZ(:,+1)=Vpm(:)
         jlepZ(:,+3)=Vpp(:)
      elseif(phdm_mode.eq.'AX') then
         prop34gamma = 0d0
         jlepA(:,:)=0d0
         jlepZ(:,-3)=Amm(:)
         jlepZ(:,-1)=Amp(:)
         jlepZ(:,+1)=Apm(:)
         jlepZ(:,+3)=App(:)
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
      do pol=1,2        
         call polvec(p(0,2),pol,epsg(0,pol))         
         do hel_lep=-3,3,2            
            do hel_quark=-1,1,2 
               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark)=0d0
               call bra_gamma_ket_gluon(psi5,psi1,hel_quark,p5,p1,p2,
     $              epsg(0,pol),Jquark(0,hel_quark))                

               if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     bb/tata
                  Jlep_dot_Jquark = 
     $                 ccdotp(jlepA(0,hel_lep),jquark(0,hel_quark))
     $                 *q_q*prop34gamma + 
     $                 ccdotp(jlepZ(0,hel_lep),jquark(0,hel_quark))
     $                 *Zcoup_q(hel_quark)/(2*ph_sthw*ph_cthw)**2
     $                 *prop34V
               else
c     DM
                  Jlep_dot_Jquark = 
     $                 ccdotp(jlepZ(0,hel_lep),jquark(0,hel_quark))
     $                 *prop34V
               endif

               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) = 
     $              Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) +
     $              Jlep_dot_Jquark
               amp2 = amp2 + Jlep_dot_Jquark*DCONJG(Jlep_dot_Jquark)
            enddo      
         enddo
      enddo
      
      do mu=0,3
      do nu=0,3
         bmunu(mu,nu) = 0d0
         do pol1=1,2
         do pol2=1,2
         do hel_lep=-3,3,2             
         do hel_quark=-1,1,2               
c     we don't conjugate epsg(mu,pol1) since it is real
            bmunu(mu,nu) = bmunu(mu,nu) +                  
     $       Jlep_dot_Jquark_vec(pol1,hel_lep,hel_quark)
     $           *DCONJG(Jlep_dot_Jquark_vec(pol2,hel_lep,hel_quark))
     $           * epsg(mu,pol1) * epsg(nu,pol2)
         enddo
         enddo
         enddo
         enddo
      enddo
      enddo

      amp2 = amp2 * (4*pi*st_alpha)
c     1/4 from average over initial-state polarization
c     1/nc/(nc^2-1) * nc from average over initial-state colors and sum over   
c     quark colors
      amp2=  amp2*CF/4/(nc**2-1) 

      do mu=0,3
         do nu=0,3
            bmunu(mu,nu) = bmunu(mu,nu) *(4*pi*st_alpha)*
     $           CF/4/(nc**2-1)
         enddo
      enddo

      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
         amp2 = amp2 * ph_unit_e**4 
         bmunu(:,:)=bmunu(:,:) * ph_unit_e**4 
      endif

      end



      subroutine g_q_to_l_al_q(pphy,fermion_type,fermion_charge,
     $     amp2,bmunu)   
      implicit none
c the nleg 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      call q_g_to_l_al_q(pphy,fermion_type,fermion_charge,amp2,bmunu)   
      end


      subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      double precision powheginput
      logical ini
      data ini/.true./
      save ini
      integer idDM
      save idDM
c colours of incoming quarks, antiquarks
      integer icolqi(2),icolai(2),icolgi(2),
     $        icolqf(2),icolaf(2),icolgf(2)
      data icolqi/ 501, 0   /
      data icolai/ 0  , 502 /
      data icolgi/ 502, 501 /
      data icolqf/ 502, 0   /
      data icolaf/ 0  , 501 /
      data icolgf/ 501, 502 /
      save icolqi,icolai,icolgi,icolqf,icolaf,icolgf
c neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
      if(idup(3).eq.95.and.idup(4).eq.-95) then
         idup(3)=5
         idup(4)=-5
         icolup(1,3)=505
         icolup(2,3)=0
         icolup(1,4)=0
         icolup(2,4)=505
      endif

      if(ini) then
         idDM=powheginput('#idDM')
         ini=.false.
      endif
      if(idup(3).eq.19.and.idDM.gt.0) then
         idup(3)=idDM
         idup(4)=-idDM
      endif

      do j=1,nlegborn
         if(j.ne.3.and.j.ne.4) then
            if(idup(j).gt.0.and.idup(j).le.5) then
               if(j.le.2) then
                  icolup(1,j)=icolqi(1)
                  icolup(2,j)=icolqi(2)
               else
                  icolup(1,j)=icolqf(1)
                  icolup(2,j)=icolqf(2)
               endif
            elseif(idup(j).lt.0.and.idup(j).ge.-5) then
               if(j.le.2) then
                  icolup(1,j)=icolai(1)
                  icolup(2,j)=icolai(2)
               else
                  icolup(1,j)=icolaf(1)
                  icolup(2,j)=icolaf(2)
               endif
            elseif(idup(j).eq.21) then
               if(j.le.2) then
                  icolup(1,j)=icolgi(1)
                  icolup(2,j)=icolgi(2)
               else
                  icolup(1,j)=icolgf(1)
                  icolup(2,j)=icolgf(2)
               endif
            else
               write(*,*) ' invalid flavour'
               stop
            endif
         endif
      enddo
      end

      subroutine finalize_lh
      implicit none
      include 'PhysPars.h'
c     Set up the resonance whose mass must be preserved
c     on the Les Houches interface.
c     resonance Z -> e-(3) e+(4)
      call add_resonance(23,3,4)
c     give masses to final-state products
      if(phdm_mode.eq.'bb'.or.phdm_mode.eq.'ta') then
c     !: Z decay products are in this case already massive.
c     Perhaps should modify reshuffling machinery to
c     reshuffle other particles BUT not these 2...
c     For now, don't reshuffle anything.
         goto 12
      endif
      call lhefinitemasses
 12   continue
      end

c     helicity of bra and ket are assumed to be opposite,
c     and helbra is interpreted as the bra helicity
c     <pb,helbra|pk,-helbra>
      subroutine bra_ket(bra,ket,helbra,res)
      implicit none
      complex *16 res
      complex * 16 bra(2,-1:1),ket(2,-1:1)
      complex * 16 b(2),k(2)
      integer helbra
      complex * 16 I
      parameter (I=(0,1))
      b(1) = bra(1,helbra)
      b(2) = bra(2,helbra)
      k(1) = ket(1,-helbra)
      k(2) = ket(2,-helbra)
      res = b(1)*k(1)+k(2)*b(2)
      end


