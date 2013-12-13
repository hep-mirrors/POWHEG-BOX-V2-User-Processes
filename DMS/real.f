      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2
      logical gluonic
      double precision mass2,p34,dotp
      external dotp
cccccccccccccccccccccc
c     !: to check with madgraph
c$$$      double precision amp2mad
c$$$      double precision tiny
c$$$      parameter (tiny=1d-6)
c$$$      double complex cfac
ccccccccccccccccccccccc

ccccccccccccccccccccccccc
c     !: mcfm crosscheck code to be removed
ccccccccccccccccccccccccc


cccccccccccccccccccccccccccccccccccccccccccccc     
      gluonic=rflav(1)*rflav(2)*rflav(5)*rflav(6).eq.0
      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))
      call real_ampsq_loc(p,rflav,amp2)
cccccccccccccccccccccccccccccccccccccccccccccc


cccccccccccccccccccccccccccccccccccccccccccc
c     !: mcfm crosscheck code to be removed
cccccccccccccccccccccccccccccccccccccccccccc


ccccccccccccccccccccccccccccccccccc
c     !: check with madgraph
ccccccccccccccccccccccccccccccccccc
c$$$      if(phdm_efftheory.eq.'F') then
c$$$         call mad_setparam
c$$$         call compreal_mad(p,rflav,amp2mad)
c$$$         if(phdm_efftheory.eq.'T') then
c$$$            cfac=dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
c$$$     $           /phdm_LambdaUV**2
c$$$            amp2mad=amp2mad*cdabs(cfac)**2
c$$$         endif
c$$$         if(amp2mad.ne.0d0) then
c$$$c     GLUONIC
c$$$            if(gluonic) goto 123
c$$$
c$$$c     BQ > BQ
c$$$c         if(abs(rflav(1)).eq.5.and.abs(rflav(2)).ne.5.and..not.gluonic) goto 123
c$$$c     QB > QB
c$$$c         if(abs(rflav(1)).ne.5.and.abs(rflav(2)).eq.5.and..not.gluonic) goto 123
c$$$c     QQ > BB
c$$$c         if(abs(rflav(1)).ne.5.and.abs(rflav(2)).ne.5.and..not.gluonic) goto 123
c$$$c         if(abs(rflav(1)).ne.5.and.abs(rflav(2)).ne.5.and.abs(rflav(5)).eq.5.and..not.gluonic) goto 123
c$$$c     BB > QQ
c$$$c         if(abs(rflav(1)).eq.5.and.abs(rflav(2)).eq.5.and..not.gluonic.and.abs(rflav(5)).ne.5) goto 123
c$$$
c$$$c     BB > BB (B or BX)
c$$$c         if(abs(rflav(1)).eq.5.and.abs(rflav(2)).eq.5.and.abs(rflav(5)).eq.5) goto 123
c$$$
c$$$c     BB > BB
c$$$c         if((rflav(1)).eq.5.and.(rflav(2)).eq.5.and.(rflav(5)).eq.5) goto 123
c$$$c     BXBX > BXBX
c$$$c         if((rflav(1)).eq.-5.and.(rflav(2)).eq.-5.and.(rflav(5)).eq.-5) goto 123
c$$$c     BXB > BXB
c$$$c         if((rflav(1)).eq.-5.and.(rflav(2)).eq.5.and.(rflav(5)).eq.-5) goto 123
c$$$c     BXB > BBX
c$$$c         if((rflav(1)).eq.-5.and.(rflav(2)).eq.5.and.(rflav(5)).eq.5) goto 123
c$$$
c$$$            goto 124
c$$$ 123        continue
c$$$c     if(dabs(amp2mad/amp2-1).gt.tiny) then
c$$$            write(*,*) 'ratio(MAD/ME),MAD,ME  ',rflav(1:2),rflav(5:6),amp2mad/amp2,amp2mad,amp2
c$$$c     stop
c$$$c     endif            
c$$$ 124        continue
c$$$         endif
c$$$      endif
ccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccc

cccccccccccccccccccccccccc
c     KEEP THIS !!!!!!
c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2*pi))     
ccccccccccccccccccccccccccc
      end


      subroutine real_ampsq_loc(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
      integer rflav(nlegreal),rflavs(nlegreal)
      double precision p(0:3,nlegreal),ps(0:3,nlegreal),amp2
      if (abs(rflav(3)).le.6.or.abs(rflav(4)).le.6) then
         write(*,*) 'real_ampsq_loc: ERROR in flavor assignement'
         stop
      endif
      
      ps(:,:)=p(:,:)
      rflavs(:)=rflav(:)
 11   continue
      call real_ampsq_g_last(ps,rflavs,amp2)

cccccccccccccccccccccccccccc
c     IMPORTANT: flavour ordering must match
      if(amp2.lt.0.) then
         rflavs(5)=rflav(6)
         rflavs(6)=rflav(5)
         ps(:,5)=p(:,6)
         ps(:,6)=p(:,5)
c         print*, 'switched 5 and 6...',rflav
         goto 11
      endif
cccccccccccccccccccccccccc
      end


c     Select and call the proper Born subroutine.
c     NB: If present, a final-state gluon must be the last particle
c     in the list.
      subroutine real_ampsq_g_last(p,realflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer realflav(nlegreal)
      double precision p(0:3,nlegreal)
      double precision amp2
      integer ferm_type(nlegreal)
      integer i,j,k,l

c     lepton-antilepton from Z decay
      ferm_type(3) = +1
      ferm_type(4) = -1
      
c     i: flavour index of first incoming parton
c     j: flavour index of second incoming parton
c     k,l: flavours of outgoing partons
      i = realflav(1)
      j = realflav(2)
      k = realflav(5)
      l = realflav(6)      

c     assign ferm_type for QCD particles
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

c     choose subprocess, assign bjk and bmunu (when needed)
      if ((i.eq.(-j)).and.(k.eq.0).and.(l.eq.0).and.(i.ne.0)) then
c     q q~ -> g g
         call q_aq_to_l_al_g_g(p,ferm_type,realflav,amp2)
      elseif ((i.eq.k).and.(j.eq.l).and.(abs(i).ne.abs(j))
     $        .and. ((i*j).ne.0)) then
c     q qp -> q qp (DIFF FLAVOURS)
         call q_qp_to_l_al_q_qp(p,ferm_type,realflav,amp2)


c$$$      elseif ((i.eq.l).and.(j.eq.k).and.(abs(i).ne.abs(j))
c$$$     $        .and. ((i*j).ne.0)) then
c$$$cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c$$$c     ADDED IN LH, to check.
c$$$c     WITH MY FLAVOUR ORDERING, IT SHOULD NOT BE CALLED.
c$$$cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c$$$c     q qp -> qp q (DIFF FLAVOURS)
c$$$c         call q_qp_to_l_al_qp_q(p,ferm_type,realflav,amp2)
c$$$c         write(*,*) 'Called the LH flavour config'


      elseif ((i.eq.j).and.(k.eq.l).and.(i.eq.k)
     $        .and. ((i*k).ne.0)) then
c     q q -> q q (SAME FLAVOURS)
         call q_q_to_l_al_q_q(p,ferm_type,realflav,amp2)
      elseif ((i.eq.(-j)).and.(k.eq.(-l)).and.
     $        (abs(i).ne.abs(k)).and.((i*k).ne.0)
     $        .and.(k.gt.0))      then
c     q q~ -> qp qp~ (DIFF FLAVOURS)
         call q_aq_to_l_al_qp_aqp(p,ferm_type,realflav,amp2)
      elseif ((i.eq.(-j)).and.(k.eq.(-l)).and.(j.eq.k) 
     $        .and.((i*k).ne.0).and.(i.lt.0) )      then
c     q~ q -> q q~ (SAME FLAVOURS)
         call aq_q_to_l_al_q_aq(p,ferm_type,realflav,amp2)
      elseif ((i.eq.(-j)).and.(k.eq.(-l)).and.(i.eq.k) 
     $        .and.((i*k).ne.0).and.(i.gt.0) )      then
c     q q~ -> q q~ (SAME FLAVOURS)
         call q_aq_to_l_al_q_aq(p,ferm_type,realflav,amp2)
      elseif ((i.eq.k).and.(j.eq.0).and.(l.eq.0) 
     $        .and.(i.ne.0)) then
c     q g -> q g  
         call q_g_to_l_al_q_g(p,ferm_type,realflav,amp2)
      elseif ((j.eq.k).and.(i.eq.0).and.(l.eq.0).and.(j.ne.0)) then
c     g q -> q g  
         call g_q_to_l_al_q_g(p,ferm_type,realflav,amp2)
      elseif ((i.eq.0).and.(j.eq.0).and.(k.eq.(-l))
     $        .and.((k*l).ne.0).and.(k.gt.0))        then
c     g g  -> q q~  
         call g_g_to_l_al_q_aq(p,ferm_type,realflav,amp2)
      else
c         write(*,*) 'WARNING: in real_ampsq_g_last'
c         write(*,*) 'did not match flavour string',i,j,k,l
         amp2 = -1.d0
      endif
      end


c     Compute the tree-level squared amplitude for the process
c     q(p1) aq(p2) -> Z(p3+p4) g(p5) g(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     It also returns the spin-correlated and the color-linked
c     squared amplitudes.
c
c     q   --->---ggggggggg  g
c                \  
c                 \ 
c                  ZZZZZZZ  Z  +  u-channel + 3g vertex
c                 /
c                /  
c     aq  ---<---ggggggggg  g
c     
c     fermion_type = +1 fermion
c     fermion_type = -1 antifermion
      subroutine q_aq_to_l_al_g_g(pphy,fermion_type,fermion_fl,amp2)
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg),itmp
      integer fermion_fl(nleg),fl_tag
      double precision pphy(0:3,nleg),p(0:3,nleg)
      double precision amp2,amp2check
      logical cross12
      include '../include/pwhg_st.h'
      include '../include/pwhg_math.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      double precision afact,bfact
      parameter (afact=CF*CF*nc,bfact=-CF/2d0) !c. factors for tree level
      double complex unit_I
      parameter (unit_I=(0,1))
      double precision p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3)
      double precision pp1(0:3),pp2(0:3),pp5(0:3),pp6(0:3)
      double complex psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      double precision epsg5(0:3,1:2),epsg6(0:3,1:2)
      double precision p34,dotp
      double complex jlep(-3:3),jqua(-1:1)
      double complex amp_Ta_Tb(-3:3,-1:1),amp_Tb_Ta(-3:3,-1:1),
     $     amp_3gv(-3:3,-1:1)
      integer mu,i,pol5,pol6,hel_lep,hel_qua
      double complex prop34
      double precision tiny
      parameter (tiny=1.d-5)
      complex * 16 Smm,Spp,PSmm,PSpp
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 respp,resmm
ccccccccccccc
c$$$      double complex amp_Ta_Tb_vec56(2,2,-1:1,-1:1)
c$$$      double complex amp_Tb_Ta_vec56(2,2,-1:1,-1:1)
c$$$      double complex amp_3gv_vec56(2,2,-1:1,-1:1)

c     check Z decay products
      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif
     
c     local copy of variables
      do i=1,nleg
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_type(i) = fermion_type(i)
      enddo

c     now only p and ferm_type should be modified, if
c     needed

c     exchance particle 1 and 2 if needed
      cross12=.false.
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            cross12=.true.
            call exchange_momenta(p(0,1),p(0,2))
            itmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=itmp
         else
            write(*,*) 'Error in quark type 1-2 (q_aq_to_l_al_g_g)'
            stop
         endif
      endif

c     define momenta according to fermionic lines
c     gluon momenta always outgoing
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
         p3(mu) = ferm_type(3)*p(mu,3)
         p4(mu) = ferm_type(4)*p(mu,4)
         p5(mu) = p(mu,5)
         p6(mu) = p(mu,6)
      enddo
      mass2=dotp(p3,p3)
      p34=dotp(p(0,3),p(0,4))

c     build wave functions from px (bra/ket need positive energies)
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

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc
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
ccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      Smm=(2d0*apl-1d0)*resmm
      Spp=(2d0*apl-1d0)*respp
      PSmm=resmm
      PSpp=-respp
cccccccccccccccccccccccccccccccccccccccccccc
c     SC/PS current, universal  couplings set to 1
      fl_tag=abs(fermion_fl(1))
      if(phdm_mode.eq.'SC') then
cccccccccccccccccc
c     !: xxxxxxxxxxxx
c     This squared amplitude, in the scalar case, agrees with mcfm
c     exactly if I use PSmm and PSpp.
c     Instead if I use Smm and Spp, I have a disagreement of order permille.
c     In the Born case instead, all is as expected, ie powheg=mcfm 
c     for scalar if I use (Smm,Spp) and for PS if I use (PSmm,PSpp).
c     However, I trust my version more, especially because it gives a better
c     agreement when I check the limits.....
cccccccccccccccccc
         jlep(-3)=Smm 
         jlep(+3)=Spp
c     notationally the following 2 lines should be with
c     (-3),(3), since quark and antiquark have same helicity
c     Id = P_L + P_R
         jqua(-1)=phdm_qqphi(fl_tag)
         jqua(+1)=jqua(-1)
      elseif(phdm_mode.eq.'PS') then
         jlep(-3)=PSmm
         jlep(+3)=PSpp
c     gamma5 = P_R - P_L
         jqua(-1)=-phdm_qqphi(fl_tag)
         jqua(+1)=-jqua(-1)
      endif
ccccccccccccccccccccccccccccccccccc

      amp2=0d0
      amp2check=0d0
      do pol5=1,2
         do pol6=1,2
c     build gluon wave functions
            if (p(0,5).lt.0d0) then
               do mu=0,3
                  pp5(mu) = -p(mu,5)
               enddo         
               call polvec(pp5,pol5,epsg5(0,pol5))
            else   
               call polvec(p(0,5),pol5,epsg5(0,pol5))
            endif
            if (p(0,6).lt.0d0) then
               do mu=0,3
                  pp6(mu) = -p(mu,6)
               enddo         
               call polvec(pp6,pol6,epsg6(0,pol6))
            else
               call polvec(p(0,6),pol6,epsg6(0,pol6))
            endif
            do hel_lep=-3,3,6            
               do hel_qua=-1,1,2

cccccccccccccccccccccccccccccccccccc
c     first colour order: 5 before 6
cccccccccccccccccccccccccccccccccccc             
                  call bra_slash_ket_sc_g1_g2(psi2,psi1,hel_qua,p2,p1,
     $ p5,epsg5(0,pol5),p6,epsg6(0,pol6),amp_Ta_Tb(hel_lep,hel_qua))

ccccccccccccccccccccccccccccccccccccc
c     second colour order: 6 before 5
ccccccccccccccccccccccccccccccccccccc         
                  call bra_slash_ket_sc_g1_g2(psi2,psi1,hel_qua,p2,p1,
     $ p6,epsg6(0,pol6),p5,epsg5(0,pol5),amp_Tb_Ta(hel_lep,hel_qua))

cccccccccccccccccccccccccccccccccccc
c     third configuration: 3g vertex
cccccccccccccccccccccccccccccccccccc
                  call bra_slash_ket_sc_3gv(psi2,psi1,hel_qua,p2,p1,p5,
     $ epsg5(0,pol5),p6,epsg6(0,pol6),amp_3gv(hel_lep,hel_qua))

cccccccccccccccccccccccccc
c     Z/gamma interference
cccccccccccccccccccccccccc
                 
                  amp_Ta_Tb(hel_lep,hel_qua) = 
     $                 amp_Ta_Tb(hel_lep,hel_qua)
     $                 *prop34 *jqua(hel_qua) *jlep(hel_lep)

                  amp_Tb_Ta(hel_lep,hel_qua) = 
     $                 amp_Tb_Ta(hel_lep,hel_qua)
     $                 *prop34 *jqua(hel_qua) *jlep(hel_lep)
                  
                  amp_3gv(hel_lep,hel_qua) = 
     $                 amp_3gv(hel_lep,hel_qua)
     $                 *prop34 *jqua(hel_qua) *jlep(hel_lep)

cccccccccccccccccccccccc
c     final coherent sum
cccccccccccccccccccccccc

c     the new one, which is more compact.
c     (use that 3gv is |ab>-|ba>)
c     it has been checked, it gives the same result as the old one
                  amp2=amp2
     $+ afact *
     $(amp_Ta_Tb(hel_lep,hel_qua)+amp_3gv(hel_lep,hel_qua))*
     $DCONJG(amp_Ta_Tb(hel_lep,hel_qua)+amp_3gv(hel_lep,hel_qua))
     $+ afact *
     $(amp_Tb_Ta(hel_lep,hel_qua)-amp_3gv(hel_lep,hel_qua))*
     $DCONJG(amp_Tb_Ta(hel_lep,hel_qua)-amp_3gv(hel_lep,hel_qua))
     $+ bfact *
     $(amp_Ta_Tb(hel_lep,hel_qua)+amp_3gv(hel_lep,hel_qua))*
     $DCONJG(amp_Tb_Ta(hel_lep,hel_qua)-amp_3gv(hel_lep,hel_qua))
     $+ bfact *
     $(amp_Tb_Ta(hel_lep,hel_qua)-amp_3gv(hel_lep,hel_qua))*
     $DCONJG(amp_Ta_Tb(hel_lep,hel_qua)+amp_3gv(hel_lep,hel_qua))

               enddo      
            enddo
         enddo
      enddo ! close all the helicity loops

ccccccccccccccccccccccccccccccccccccccccccccc
c     coupling costants and averaging factors
ccccccccccccccccccccccccccccccccccccccccccccc 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2/4/nc/nc/2

      end
      

c     Compute the tree-level squared amplitude for the process
c     q(p1) g(p2) -> Z(p3+p4) q(p5) g(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     It also returns the spin-correlated and the color-linked
c     squared amplitudes.
c     Perform crossing and call q_aq_to_l_al_g_g.
      subroutine q_g_to_l_al_q_g(pphy,fermion_type,fermion_fl,amp2)      
      implicit none
      include 'nlegborn.h'
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg)
      integer fermion_fl(nleg),ferm_fl(nleg)
      double precision pphy(0:3,nleg),pp(0:3,nleg)
      double precision amp2
      integer mu,i

c     copy of local variables     
      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo
      
c     exchange initial gluon <-> final quark
      do mu=0,3
         pp(mu,5) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,5)
      enddo
      
c     assign type and charge informations to do the crossing
c     NB: no useful information is in ferm_type(1),
c     since they represented gluons.
c     NOTE the MINUS sign!!!
      ferm_type(2) = -ferm_type(5)
c     !: xxxx
      ferm_fl(2) = -ferm_fl(5)
      call q_aq_to_l_al_g_g(pp,ferm_type,ferm_fl,amp2)
      
c     correct for color average
      amp2 = amp2 *2d0 *3d0/8d0

      end
      
      
c     Compute the tree-level squared amplitude for the process
c     g(p1) q(p2) -> Z(p3+p4) q(p5) g(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     It also returns the spin-correlated and the color-linked
c     squared amplitudes.
c     Perform crossing and call q_aq_to_l_al_g_g.      
      subroutine g_q_to_l_al_q_g(pphy,fermion_type,fermion_fl,amp2)
      implicit none
      include 'nlegborn.h'
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg)
      integer fermion_fl(nleg),ferm_fl(nleg)
      double precision pphy(0:3,nleg),pp(0:3,nleg)
      double precision amp2
      integer mu,i

c     copy of local variables     
      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange initial gluon <-> final quark
      do mu=0,3
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
      enddo

c     assign type and charge informations to do the crossing
c     NB: no useful information is in ferm_type(1),
c     since they represented gluons.
c     NOTE the MINUS sign!!!
      ferm_type(1) = -ferm_type(5)
c     !: xxxxxx
      ferm_fl(1) = -ferm_fl(5)      
      call q_aq_to_l_al_g_g(pp,ferm_type,ferm_fl,amp2)
c     correct for color average
      amp2 = amp2 *2d0* 3d0/8d0

      end

      

c     Compute the tree-level squared amplitude for the process
c     g(p1) g(p2) -> Z(p3+p4) q(p5) aq(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     It also returns the spin-correlated and the color-linked
c     squared amplitudes.
c     Perform crossing and call q_aq_to_l_al_g_g.
      subroutine g_g_to_l_al_q_aq(pphy,fermion_type,fermion_fl,amp2)
      implicit none
      include 'nlegborn.h'
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg)
      integer fermion_fl(nleg),ferm_fl(nleg)
      double precision pphy(0:3,nleg),pp(0:3,nleg)
      double precision amp2
      integer mu,i

c     copy of local variables     
      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange initial gluons <-> final quarks
      do mu=0,3
         pp(mu,5) = -pphy(mu,1)
         pp(mu,2) = -pphy(mu,5)
         pp(mu,6) = -pphy(mu,2)
         pp(mu,1) = -pphy(mu,6)         
      enddo

c     assign type and charge informations to do the crossing
c     NB: no useful information is in ferm_type(1),
c     since they represented gluons.
c     NOTE the MINUS sign!!!
      ferm_type(2) = -ferm_type(5)
      ferm_type(1) = -ferm_type(6)
c     !: xxxxxx
      ferm_fl(2) = -ferm_fl(5)
      ferm_fl(1) = -ferm_fl(6)

      ferm_type(5) = 0
      ferm_type(6) = 0
c     !: xxxxxxx
      ferm_fl(5) = 0
      ferm_fl(6) = 0

      call q_aq_to_l_al_g_g(pp,ferm_type,ferm_fl,amp2)

c     correct for color average
      amp2 = amp2 *2d0 *3d0/8 *3d0/8

      end
      

      
c     Compute the tree-level squared amplitude for the process
c     q(p1) q(p2) -> Z(p3+p4) q(p5) q(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     NB: flavour of q(p1) MUST be equal from that of q(p2).
c     If it's not the case, use q_qp_to_l_al_q_qp.
c     It also returns the color-linked squared amplitudes.
c
c     q   --->---g--->--- q
c                g
c                g                +  u-channel
c                g
c     q   --->---g--->--- q
c     
c     Z/gamma current inserted on all quark legs
c
c     fermion_type = +1 fermion
c     fermion_type = -1 antifermion
      subroutine q_q_to_l_al_q_q(pphy,fermion_type,fermion_fl,amp2)   
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg)
      integer fermion_fl(nleg),ferm_fl(nleg),fl_tag
      double precision pphy(0:3,nleg),p(0:3,nleg)
      double precision amp2
      include '../include/pwhg_st.h'
      include '../include/pwhg_math.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      double complex unit_I
      parameter (unit_I=(0,1))
      double precision px1(0:3,nleg),px2(0:3,nleg)
      double precision p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3)
      double precision pp1(0:3),pp2(0:3),pp5(0:3),pp6(0:3)
      double complex psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),
     $     psi4(2,-1:1),psi5(2,-1:1),psi6(2,-1:1)      
      double precision p34,dotp,p15,p16,p25,p26
      double complex zz1,zz2,zz3,zz4
      double complex jlep(-3:3),jqua15(0:3,-1:1),jqua26(0:3,-1:1),
     $     jqua16(0:3,-1:1),jqua25(0:3,-1:1),jtemp(-1:1),jqua(-1:1)
      double complex amp_ljj(4,-3:3,-1:1,-1:1)
      integer mu,i,hel_1,hel_2,hel_lep
      double precision pcurr15(0:3),pcurr26(0:3),
     $     pcurr16(0:3),pcurr25(0:3)
      double complex prop34
      double precision tiny
      parameter (tiny=1.d-5)
      complex * 16 Smm,Spp,PSmm,PSpp
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 respp,resmm
ccccccccccccc


c     check Z decay products
      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif
      
c     local copy of variables
      do i=1,6
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     now only p and ferm_type should be modified, if
c     needed

cccccccccccccccccccccccccccccccccccccccccccccc
c     !: for reasons that are not totally clear,
c     these crossings in px1/px2 introduce some
c     problems for case qb qb -> qb qb
c     However, if I don't do it, all the rest is
c     working OK (it agrees with MadGraph).
c     Therefore, I decided to comment it.
c$$$c     px1: momenta for t-ch topology
c$$$c     do the crossings, if needed
c$$$c     exchance particle 1 and 5
c$$$      if (ferm_type(1).eq.-1) then
c$$$         if (ferm_type(5).eq.-1) then
c$$$            call exchange_mom(p,1,5,6,px1)
c$$$         else
c$$$            write(*,*) 'Error in the type of the quark 1-5'
c$$$            stop
c$$$         endif
c$$$      else  
c$$$         call exchange_mom(p,1,1,6,px1)    
c$$$      endif
c$$$c     exchance particle 2 and 6
c$$$      if (ferm_type(2).eq.-1) then
c$$$         if (ferm_type(6).eq.-1) then
c$$$            call exchange_mom(px1,2,6,6,px1)
c$$$         else
c$$$            write(*,*) 'Error in the type of the quark 2-6'
c$$$            stop
c$$$         endif
c$$$      endif
c$$$
c$$$c     px2: momenta for u-ch topology
c$$$c     do the crossings, if needed
c$$$c     exchance particle 1 and 6
c$$$      if (ferm_type(1).eq.-1) then
c$$$         if (ferm_type(6).eq.-1) then
c$$$            call exchange_mom(p,1,6,6,px2)
c$$$         else
c$$$            write(*,*) 'Error in the type of the quark 1-6'
c$$$            stop
c$$$         endif
c$$$      else  
c$$$         call exchange_mom(p,1,1,6,px2)   
c$$$      endif
c$$$c     exchance particle 2 and 5
c$$$      if (ferm_type(2).eq.-1) then
c$$$         if (ferm_type(5).eq.-1) then
c$$$            call exchange_mom(px2,2,5,6,px2)
c$$$         else
c$$$            write(*,*) 'Error in the type of the quark 2-5'
c$$$            stop
c$$$         endif
c$$$      endif
cccccccccccccccccccccccccccccccccccccccccccccc
c     !: this seems not needed, but see comment above
      px1(:,:)=p(:,:)
      px2(:,:)=p(:,:)
cccccccccccccccccccccccccccccccccccccccccccccc

      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc
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
ccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      Smm=(2d0*apl-1d0)*resmm
      Spp=(2d0*apl-1d0)*respp
      PSmm=resmm
      PSpp=-respp
cccccccccccccccccccccccccccccccccccccccccccc
c     SC/PS current, universal  couplings set to 1
      fl_tag=abs(fermion_fl(1))
      if(phdm_mode.eq.'SC') then
         jlep(-3)=Smm
         jlep(+3)=Spp
c     notationally the following 2 lines should be with
c     (-3),(3), since quark and antiquark have same helicity
c     Id = P_L + P_R
         jqua(-1)=phdm_qqphi(fl_tag)
         jqua(+1)=jqua(-1)
      elseif(phdm_mode.eq.'PS') then
         jlep(-3)=PSmm
         jlep(+3)=PSpp
c     gamma5 = P_R - P_L
         jqua(-1)=-phdm_qqphi(fl_tag)
         jqua(+1)=-jqua(-1)
      endif
ccccccccccccccccccccccccccccccccccc

      amp2=0d0      
      do hel_lep=-3,3,6
      do hel_1=-1,1,2            
      do hel_2=-1,1,2
ccccccccccccccccccc
c     t-ch topology
ccccccccccccccccccc
c     define momenta according to fermionic lines
c     current momenta are built from physical vectors always outgoing
         do mu=0,3
            p1(mu) = ferm_type(1)*px1(mu,1)
            p2(mu) = ferm_type(2)*px1(mu,2)
            p3(mu) = ferm_type(3)*px1(mu,3)
            p4(mu) = ferm_type(4)*px1(mu,4)
            p5(mu) = ferm_type(5)*px1(mu,5)
            p6(mu) = ferm_type(6)*px1(mu,6)
            pcurr15(mu) = p5(mu)-p1(mu)
            pcurr26(mu) = p6(mu)-p2(mu)
         enddo               
         p15=dotp(px1(0,1),px1(0,5))
         p26=dotp(px1(0,2),px1(0,6))

c     build wave functions from px (bra/ket need positive energies)
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
c     q
         if (px1(0,6).lt.0d0) then
            do mu=0,3
               pp6(mu) = -px1(mu,6)
            enddo         
            call bra(pp6,ferm_type(6),psi6)
         else
            call bra(px1(0,6),ferm_type(6),psi6)
         endif
c     q
         if (px1(0,2).lt.0d0) then
            do mu=0,3
               pp2(mu) = -px2(mu,2)
            enddo         
            call ket(pp2,ferm_type(2),psi2)
         else
            call ket(px1(0,2),ferm_type(2),psi2)
         endif
c     build currents (15,26)
         do i=-1,1,2
            call bra_gamma_ket(psi6,psi2,i,jqua26(0,i))
            call bra_gamma_ket(psi5,psi1,i,jqua15(0,i))
         enddo
         
         jqua26(:,:)=jqua26(:,:)/2d0/(-p26)
         jqua15(:,:)=jqua15(:,:)/2d0/(-p15)

         call bra_slash_ket_sc_curr(psi6,psi2,hel_2,p6,p2,pcurr15,
     $        jqua15(0,hel_1),jtemp(hel_2))
         amp_ljj(1,hel_lep,hel_1,hel_2) = 
     $        jtemp(hel_2) *jqua(hel_2) *prop34
     $        *jlep(hel_lep)
         
         call bra_slash_ket_sc_curr(psi5,psi1,hel_1,p5,p1,pcurr26,
     $        jqua26(0,hel_2),jtemp(hel_1))
         amp_ljj(2,hel_lep,hel_1,hel_2) = 
     $        jtemp(hel_1) *jqua(hel_1) *prop34
     $        *jlep(hel_lep)


ccccccccccccccccccc
c     u-ch topology
ccccccccccccccccccc
c     define momenta according to fermionic lines
c     current momenta are built from physical vectors always outgoing
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
         p16=dotp(px2(0,1),px2(0,6))
         p25=dotp(px2(0,2),px2(0,5))            

c     build wave functions from px (bra/ket need positive energies)              
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
c     q
         if (px2(0,6).lt.0d0) then
            do mu=0,3
               pp6(mu) = -px2(mu,6)
            enddo         
            call bra(pp6,ferm_type(6),psi6)
         else
            call bra(px2(0,6),ferm_type(6),psi6)
         endif
c     q 
         if (px1(0,2).lt.0d0) then
            do mu=0,3
               pp2(mu) = -px2(mu,2)
            enddo         
            call ket(pp2,ferm_type(2),psi2)
         else
            call ket(px2(0,2),ferm_type(2),psi2)
         endif
c     build currents (16,25)
         do i=-1,1,2
            call bra_gamma_ket(psi6,psi1,i,jqua16(0,i))
            call bra_gamma_ket(psi5,psi2,i,jqua25(0,i))
         enddo
         
         jqua16(:,:)=jqua16(:,:)/2d0/(-p16)
         jqua25(:,:)=jqua25(:,:)/2d0/(-p25)

         
         call bra_slash_ket_sc_curr(psi6,psi1,hel_1,p6,p1,pcurr25,
     $        jqua25(0,hel_2),jtemp(hel_1))
         amp_ljj(3,hel_lep,hel_1,hel_2) = 
     $        jtemp(hel_1) *jqua(hel_1) *prop34
     $        *jlep(hel_lep)
         
         call bra_slash_ket_sc_curr(psi5,psi2,hel_2,p5,p2,pcurr16,
     $        jqua16(0,hel_1),jtemp(hel_2))
         amp_ljj(4,hel_lep,hel_1,hel_2) = 
     $        jtemp(hel_2) *jqua(hel_2) *prop34
     $        *jlep(hel_lep)

cccccccccccccccccccccccccc
c     Z/gamma interference
cccccccccccccccccccccccccc
c     propagator and couplings already inserted above...
         
cccccccccccccccccccccccc
c     final coherent sum
cccccccccccccccccccccccc

c     !: starred combination means same helicity,
c     because a scalar current has been inserted
c     on the fermionic line.
c     !: Notice that the structure for the final
c     coherent sum here has a different structure
c     than in the V/A case...
c     !: minus sign for fermion statistic.
c     (26*,15)
         zz1=+amp_ljj(1,hel_lep,hel_1,hel_2)
c     (15*,26)
         zz2=+amp_ljj(2,hel_lep,hel_1,hel_2)
c     (16*,25)
         zz3=-amp_ljj(3,hel_lep,hel_1,hel_2)
c     (25*,16)
         zz4=-amp_ljj(4,hel_lep,hel_1,hel_2)

         amp2=amp2+CF*nc/2*(
     $        +cdabs(zz1)**2
     $        +cdabs(zz2)**2
     $        +cdabs(zz3)**2
     $        +cdabs(zz4)**2)


c     !: interferences possible only for
c     the following helicity structures
c
c     1-,5+,2-,6-: zz1,zz3, when hel1=hel2
c     1-,5+,2+,6+: zz1,zz4, when hel1=-hel2
c
c     2-,6+,1-,5-: zz2,zz4, when hel1=hel2
c     2-,6+,1+,5+: zz2,zz3, when hel1=-hel2

c     ...and analogous ones...
c     !: Again, this is different wrt the V/A case!

c     OK for qq>qq
c     OK for qbq>qbq
c     OK for qbq>qqb
c     OK for qbqb>qbqb
         if(hel_1.eq.+hel_2) then
            amp2 = amp2
     $           -CF/2*(
     $           +zz1*DCONJG(zz3)+zz3*DCONJG(zz1)
     $           +zz2*DCONJG(zz4)+zz4*DCONJG(zz2))
         endif
         if(hel_1.eq.-hel_2) then
            amp2 = amp2
     $           -CF/2*(
     $           +zz1*DCONJG(zz4)+zz4*DCONJG(zz1)
     $           +zz2*DCONJG(zz3)+zz3*DCONJG(zz2))
         endif

      enddo      
      enddo         
      enddo ! close all the helicity loops
ccccccccccccccccccccccccccccccccccccccccccccc
c     coupling costants and averaging factors
ccccccccccccccccccccccccccccccccccccccccccccc 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2/nc/nc/4/2

      end




c     Compute the tree-level squared amplitude for the process
c     aq(p1) q(p2) -> Z(p3+p4) q(p5) aq(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     It also returns the color-linked squared amplitudes.
c     Perform crossing and call q_q_to_l_al_q_q.      
      subroutine aq_q_to_l_al_q_aq(pphy,fermion_type,fermion_fl,
     $     amp2)      
      implicit none
      include 'nlegborn.h'
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg)
      integer fermion_fl(nleg),ferm_fl(nleg)
      double precision pphy(0:3,nleg),pp(0:3,nleg)
      double precision amp2
      integer mu,i

c     copy of local variables          
      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange initial antiquark <-> final antiquark
      do mu=0,3
         pp(mu,6) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,6)         
      enddo
      
c     assign type and charge informations to do the crossing
c     NOTE the MINUS sign!!!
      ferm_type(1) = -ferm_type(6)
      ferm_type(6) = -fermion_type(1)
c     !: xxxxx
      ferm_fl(1) = -ferm_fl(6)
      ferm_fl(6) = -fermion_fl(1)
      call q_q_to_l_al_q_q(pp,ferm_type,ferm_fl,amp2)

c     correct for different symmetry factor
      amp2= amp2*2d0


      end


c     Compute the tree-level squared amplitude for the process
c     q(p1) aq(p2) -> Z(p3+p4) q(p5) aq(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     It also returns the color-linked squared amplitudes.
c     Perform crossing and call q_q_to_l_al_q_q.
      subroutine q_aq_to_l_al_q_aq(pphy,fermion_type,fermion_fl,
     $     amp2)      
      implicit none
      include 'nlegborn.h'
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg)
      integer fermion_fl(nleg),ferm_fl(nleg)
      double precision pphy(0:3,nleg),pp(0:3,nleg)
      double precision amp2
      integer mu,i

c     copy of local variables           
      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange initial antiquark <-> final antiquark
      do mu=0,3
         pp(mu,6) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,6)         
      enddo

c     assign type and charge informations to do the crossing
c     NOTE the MINUS sign!!!
      ferm_type(2) = -ferm_type(6)
      ferm_type(6) = -fermion_type(2)
c     !: xxxxx
      ferm_fl(2) = -ferm_fl(6)
      ferm_fl(6) = -fermion_fl(2)
      call q_q_to_l_al_q_q(pp,ferm_type,ferm_fl,amp2)

c     correct for different symmetry factor
      amp2= amp2*2d0

      end


c     Compute the tree-level squared amplitude for the process
c     q(p1) qp(p2) -> Z(p3+p4) q(p5) qp(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     NB: flavour of q(p1) MUST be DIFFFERENT to that of q(p2).
c     If it's not the case, use q_q_to_l_al_q_q.
c     It also returns the color-linked squared amplitudes.
c
c     q   --->---g--->--- q
c                g
c                g          
c                g
c     qp  --->---g--->--- qp
c     
c     Z/gamma current inserted on all quark legs
c
c     fermion_type = +1 fermion
c     fermion_type = -1 antifermion
      subroutine q_qp_to_l_al_q_qp(pphy,fermion_type,fermion_fl,
     $     amp2)
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg),itmp,ifltmp
      integer fermion_fl(nleg),ferm_fl(nleg),fl_tag15,fl_tag26
      double precision pphy(0:3,nleg),p(0:3,nleg)
      double precision amp2
      logical cross15,cross26
      include '../include/pwhg_st.h'
      include '../include/pwhg_math.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      double complex unit_I
      parameter (unit_I=(0,1))
      double precision p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3)
      double complex psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),
     $     psi4(2,-1:1),psi5(2,-1:1),psi6(2,-1:1)      
      double precision p34,dotp,p15,p26
      double complex jlep(-3:3),jqua15(0:3,-1:1),jqua26(0:3,-1:1),
     $     jtemp(-1:1),jqua_c15(-1:1),jqua_c26(-1:1)
      double complex amp_ljj(2,-3:3,-1:1,-1:1)
      integer mu,i,hel_15,hel_26,hel_lep
      double precision pcurr15(0:3),pcurr26(0:3)
      double complex prop34
      double precision tiny
      parameter (tiny=1.d-5)
      complex * 16 Smm,Spp,PSmm,PSpp
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 respp,resmm
ccccccccccccc

c     check Z decay products
      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif

c     local copy of variables
      do i=1,nleg
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     now only p and ferm_type should be modified, if
c     needed

c     exchance particle 1 and 5 if needed
      cross15=.false.
      if (ferm_type(1).eq.-1) then
         if (ferm_type(5).eq.-1) then
            cross15=.true.
            call exchange_momenta(p(0,1),p(0,5))
            ifltmp = ferm_fl(1)
            ferm_fl(1)=-ferm_fl(5)
            ferm_fl(5)=-ifltmp
            itmp = ferm_type(1)
            ferm_type(1)=ferm_type(5)
            ferm_type(5)=itmp
         else
            write(*,*) 'Error in quark type 1-5 (q_qp_to_l_al_q_qp)'
            stop
         endif
      endif
      
c     exchance particle 2 and 6 if needed
      cross26=.false.
      if (ferm_type(2).eq.-1) then
         if (ferm_type(6).eq.-1) then
            cross26=.true.
            call exchange_momenta(p(0,2),p(0,6))
            ifltmp = ferm_fl(2)
            ferm_fl(2)=-ferm_fl(6)
            ferm_fl(6)=-ifltmp
            itmp = ferm_type(2)
            ferm_type(2)=ferm_type(6)
            ferm_type(6)=itmp
         else
            write(*,*) 'Error in quark type 2-6 (q_qp_to_l_al_q_qp)'
            stop
         endif
      endif

c     define momenta according to fermionic lines
c     current momenta are built from physical vectors always outgoing
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
      mass2=dotp(p3,p3)
      p34=dotp(p(0,3),p(0,4))
      p15=dotp(p(0,1),p(0,5))
      p26=dotp(p(0,2),p(0,6))

c     build wave functions from p (p here are always physical - positive
c     energies)
c     q
      call ket(p(0,1),ferm_type(1),psi1)
c     q
      call bra(p(0,5),ferm_type(5),psi5)
cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc
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
ccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      Smm=(2d0*apl-1d0)*resmm
      Spp=(2d0*apl-1d0)*respp
      PSmm=resmm
      PSpp=-respp
cccccccccccccccccccccccccccccccccccccccccccc
c     SC/PS current, universal  couplings set to 1
      fl_tag15=abs(fermion_fl(1))
      fl_tag26=abs(fermion_fl(2))
      if(phdm_mode.eq.'SC') then
         jlep(-3)=Smm
         jlep(+3)=Spp
c     notationally the following 2 lines should be with
c     (-3),(3), since quark and antiquark have same helicity
c     Id = P_L + P_R
c$$$         jqua_c15(-1)=0d0 !:xxxxxxxxxx
c$$$         jqua_c15(+1)=0d0 !:xxxxxxxxxx
c$$$         jqua_c26(-1)=1d0 !:xxxxxxxxxx
c$$$         jqua_c26(+1)=1d0 !:xxxxxxxxxx
         jqua_c15(-1)=phdm_qqphi(fl_tag15)
         jqua_c15(+1)=jqua_c15(-1)
         jqua_c26(-1)=phdm_qqphi(fl_tag26)
         jqua_c26(+1)=jqua_c26(-1)
      elseif(phdm_mode.eq.'PS') then
         jlep(-3)=PSmm
         jlep(+3)=PSpp
c     gamma5 = P_R - P_L
c$$$         jqua_c15(-1)=-1d0 !:xxxxxxxxxxx
c$$$         jqua_c15(+1)=1d0  !:xxxxxxxxxxx
c$$$         jqua_c26(-1)=-1d0 !:xxxxxxxxxxx
c$$$         jqua_c26(+1)=1d0  !:xxxxxxxxxxx
         jqua_c15(-1)=-phdm_qqphi(fl_tag15)
         jqua_c15(+1)=-jqua_c15(-1)
         jqua_c26(-1)=-phdm_qqphi(fl_tag26)
         jqua_c26(+1)=-jqua_c26(-1)
      endif
ccccccccccccccccccccccccccccccccccc
c     qp
      call bra(p(0,6),ferm_type(6),psi6)
c     qp
      call ket(p(0,2),ferm_type(2),psi2)
c     build currents (15,26)
      do i=-1,1,2
         call bra_gamma_ket(psi6,psi2,i,jqua26(0,i))
         call bra_gamma_ket(psi5,psi1,i,jqua15(0,i))
      enddo
      
      jqua26(:,:)=jqua26(:,:)/2d0/(-p26)
      jqua15(:,:)=jqua15(:,:)/2d0/(-p15)

      amp2=0d0
      do hel_lep=-3,3,6
      do hel_15=-1,1,2         
      do hel_26=-1,1,2

         call bra_slash_ket_sc_curr(psi6,psi2,hel_26,p6,p2,pcurr15,
     $        jqua15(0,hel_15),jtemp(hel_26))
         amp_ljj(1,hel_lep,hel_15,hel_26) = 
     $        jtemp(hel_26) *jqua_c26(hel_26) *prop34
     $        *jlep(hel_lep)

         call bra_slash_ket_sc_curr(psi5,psi1,hel_15,p5,p1,pcurr26,
     $        jqua26(0,hel_26),jtemp(hel_15))
         amp_ljj(2,hel_lep,hel_15,hel_26) = 
     $        jtemp(hel_15) *jqua_c15(hel_15) *prop34
     $        *jlep(hel_lep)
         
cccccccccccccccccccccccccc
c     Z/gamma interference
cccccccccccccccccccccccccc   
c     propagator and couplings already inserted above...

cccccccccccccccccccccccc
c     final coherent sum
cccccccccccccccccccccccc
c     !: V/A case
c$$$         amp2 = amp2 + CF*nc/2*
c$$$     $        (amp_ljj(1,hel_lep,hel_15,hel_26)+
c$$$     $        amp_ljj(2,hel_lep,hel_15,hel_26))
c$$$     $        * DCONJG(amp_ljj(1,hel_lep,hel_15,hel_26)+
c$$$     $          amp_ljj(2,hel_lep,hel_15,hel_26))  

c     !: starred combination means same helicity,
c     because a scalar current has been inserted
c     on the fermionic line.
c     !: Notice that the structure for the final
c     coherent sum here has a different structure
c     than in the V/A case...
c     amp_ljj(1): (26)*,(15), ie hel_26=+ means 2+6+
c     amp_ljj(2): (26),(15)*, ie hel_26=+ means 2+6-
         amp2 = amp2 + CF*nc/2* (
     $        +cdabs(amp_ljj(1,hel_lep,hel_15,hel_26))**2
     $        +cdabs(amp_ljj(2,hel_lep,hel_15,hel_26))**2
     $        )

      enddo      
      enddo         
      enddo ! close all the helicity loops

ccccccccccccccccccccccccccccccccccccccccccccc
c     coupling costants and averaging factors
ccccccccccccccccccccccccccccccccccccccccccccc 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2 /nc/nc/4

      end
      
c     Compute the tree-level squared amplitude for the process
c     q(p1) aq(p2) -> Z(p3+p4) qp(p5) aqp(p6), with Z -> l-(p3) l+(p4)
c     It uses the bra/ket formalism (HagZep).
c     NB: flavour of q(p1) MUST be DIFFFERENT to that of qp(p5).
c     If it's not the case, use q_q_to_l_al_q_q.
c     It also returns the color-linked squared amplitudes.
c
c     q   --->---\        --->---  qp
c                 \      /
c                  ggggg/ 
c                 /     \
c     aq  ---<---/       \---<---  aqp
c     
c     Z/gamma current inserted on all quark legs
c
c     fermion_type = +1 fermion
c     fermion_type = -1 antifermion
      subroutine q_aq_to_l_al_qp_aqp(pphy,fermion_type,fermion_fl,
     $     amp2)   
      implicit none
      integer nleg
      parameter (nleg=6)
      integer fermion_type(nleg),ferm_type(nleg),itmp,ifltmp
      integer fermion_fl(nleg),ferm_fl(nleg),fl_tag12,fl_tag56
      double precision pphy(0:3,nleg),p(0:3,nleg)
      double precision amp2
      logical cross12,cross56
      include '../include/pwhg_st.h'
      include '../include/pwhg_math.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      double complex unit_I
      parameter (unit_I=(0,1))
      double precision p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3)
      double complex psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),
     $     psi4(2,-1:1),psi5(2,-1:1),psi6(2,-1:1)    
      double precision p34,p12,p56,dotp
      double complex jlep(-3:3),jqua56(0:3,-1:1),jqua12(0:3,-1:1),
     $     jtemp(-1:1),jqua_c56(-1:1),jqua_c12(-1:1)
      double complex amp_ljj(2,-3:3,-1:1,-1:1)
      integer mu,i,hel_12,hel_56,hel_lep
      double precision pcurr56(0:3),pcurr12(0:3)
      double complex prop34
      double precision tiny
      parameter (tiny=1.d-5)
      complex * 16 Smm,Spp,PSmm,PSpp
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
      complex * 16 respp,resmm
ccccccccccccc

c      print*, 'q_aq_to_l_al_qp_aqp'

c     check Z decay products
      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif

c     local copy of variables
      do i=1,nleg
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_fl(i) = fermion_fl(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     now only p and ferm_type should be modified, if
c     needed
      
c     exchance particle 1 and 2 if needed
      cross12=.false.
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            cross12=.true.
            call exchange_momenta(p(0,1),p(0,2))
            ifltmp = ferm_fl(1)
            ferm_fl(1)=-ferm_fl(2)
            ferm_fl(2)=-ifltmp
            itmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=itmp
         else
            write(*,*) 'Error in quark type 1-2 (q_aq_to_l_al_qp_aqp)'
            stop
         endif
      endif
      
c     exchance particle 5 and 6 if needed
      cross56=.false.
      if (ferm_type(5).eq.-1) then
         if (ferm_type(6).eq.1) then
            cross56=.true.
            call exchange_momenta(p(0,5),p(0,6))
            ifltmp = ferm_fl(5)
            ferm_fl(5)=-ferm_fl(6)
            ferm_fl(6)=-ifltmp
            itmp = ferm_type(5)
            ferm_type(5)=ferm_type(6)
            ferm_type(6)=itmp
         else
            write(*,*) 'Error in quark type 5-6 (q_aq_to_l_al_qp_aqp)'
            stop
         endif
      endif
      
c     define momenta according to fermionic lines
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
         p3(mu) = ferm_type(3)*p(mu,3)
         p4(mu) = ferm_type(4)*p(mu,4)
c     !: the following 2 minus signs have been checked
c     carefully against madgraph results...
         p5(mu) = -ferm_type(5)*p(mu,5) !:xxxxxxxx
         p6(mu) = -ferm_type(6)*p(mu,6) !:xxxxxxxx
      enddo
      mass2=dotp(p3,p3)
      p34=dotp(p(0,3),p(0,4))
      p12=dotp(p(0,1),p(0,2))
      p56=dotp(p(0,5),p(0,6))
      pcurr56(:)=p(:,5)+p(:,6)
      pcurr12(:)=p(:,1)+p(:,2)

c     build wave functions from p (p here are always physical - positive
c     energies)
c     q
      call ket(p(0,1),ferm_type(1),psi1)
c     aq
      call bra(p(0,2),ferm_type(2),psi2)
cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc
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
ccccccccccccccccccccccccccccccccccccc
c     same sign leptonic currents
      call bra(kbar,+1, psi3)
      call ket(k,   -1, psi4)
c     minus-minus
      call bra_ket(psi3,psi4,-1,resmm)
c     plus-plus
      call bra_ket(psi3,psi4,+1,respp)
      Smm=(2d0*apl-1d0)*resmm
      Spp=(2d0*apl-1d0)*respp
      PSmm=resmm
      PSpp=-respp
cccccccccccccccccccccccccccccccccccccccccccc
c     SC/PS current, universal  couplings set to 1
      fl_tag12=abs(fermion_fl(1))
      fl_tag56=abs(fermion_fl(5))
      if(phdm_mode.eq.'SC') then
         jlep(-3)=Smm
         jlep(+3)=Spp
c     notationally the following 2 lines should be with
c     (-3),(3), since quark and antiquark have same helicity
c     Id = P_L + P_R
c$$$         jqua_c12(-1)=1d0 !:xxxxxxxxxx
c$$$         jqua_c12(+1)=1d0 !:xxxxxxxxxx
c$$$         jqua_c56(-1)=0d0 !:xxxxxxxxxx
c$$$         jqua_c56(+1)=0d0 !:xxxxxxxxxx
         jqua_c12(-1)=phdm_qqphi(fl_tag12)
         jqua_c12(+1)=jqua_c12(-1)
         jqua_c56(-1)=phdm_qqphi(fl_tag56)
         jqua_c56(+1)=jqua_c56(-1)
      elseif(phdm_mode.eq.'PS') then
         jlep(-3)=PSmm
         jlep(+3)=PSpp
c     gamma5 = P_R - P_L
c$$$         jqua_c12(-1)=-1d0
c$$$         jqua_c12(+1)=1d0
c$$$         jqua_c56(-1)=-1d0
c$$$         jqua_c56(+1)=1d0
         jqua_c12(-1)=-phdm_qqphi(fl_tag12)
         jqua_c12(+1)=-jqua_c12(-1)
         jqua_c56(-1)=-phdm_qqphi(fl_tag56)
         jqua_c56(+1)=-jqua_c56(-1)
      endif
ccccccccccccccccccccccccccccccccccc
c     qp
      call bra(p(0,5),ferm_type(5),psi5)
c     aqp
      call ket(p(0,6),ferm_type(6),psi6)
c     build currents (12,56)
      do i=-1,1,2
         call bra_gamma_ket(psi5,psi6,i,jqua56(0,i))
         call bra_gamma_ket(psi2,psi1,i,jqua12(0,i))
      enddo
      
      jqua56(:,:)=jqua56(:,:)/2d0/p56
      jqua12(:,:)=jqua12(:,:)/2d0/p12

      amp2=0d0
      do hel_lep=-3,3,6         
         do hel_12=-1,1,2         
            do hel_56=-1,1,2                            

               call bra_slash_ket_sc_curr(psi2,psi1,hel_12,p2,p1,pcurr56
     $              ,jqua56(0,hel_56),jtemp(hel_12))
               amp_ljj(1,hel_lep,hel_12,hel_56) = 
     $              jtemp(hel_12) *jqua_c12(hel_12) *prop34
     $              *jlep(hel_lep)

               call bra_slash_ket_sc_curr(psi5,psi6,hel_56,p5,p6,pcurr12
     $              ,jqua12(0,hel_12),jtemp(hel_56))
               amp_ljj(2,hel_lep,hel_12,hel_56) = 
     $              jtemp(hel_56) *jqua_c56(hel_56) *prop34
     $              *jlep(hel_lep)

c$$$               print*, 'A2> ',hel_12,hel_lep,hel_56,cdabs(amp_ljj(2,hel_lep,hel_12,hel_56))**2
c$$$               print*, 'A1> ',hel_12,hel_lep,hel_56,cdabs(amp_ljj(1,hel_lep,hel_12,hel_56))**2
               
cccccccccccccccccccccccccc
c     Z/gamma interference
cccccccccccccccccccccccccc       
c     propagator and couplings already inserted above...

cccccccccccccccccccccccc
c     final coherent sum
cccccccccccccccccccccccc
c     !: V/A case
c$$$               amp2 = amp2 + CF*nc/2*
c$$$     $              (amp_ljj(1,hel_lep,hel_12,hel_56)+
c$$$     $              amp_ljj(2,hel_lep,hel_12,hel_56))
c$$$     $              * DCONJG(amp_ljj(1,hel_lep,hel_12,hel_56)+
c$$$     $              amp_ljj(2,hel_lep,hel_12,hel_56))           

c     !: starred combination means same helicity,
c     because a scalar current has been inserted
c     on the fermionic line.
c     !: Notice that the structure for the final
c     coherent sum here has a different structure
c     than in the V/A case...
c     amp_ljj(1): (12)*,(56), ie hel_12=+ means 1+2+
c     amp_ljj(2): (12),(56)*, ie hel_12=+ means 1+2-
         amp2 = amp2 + CF*nc/2* (
     $        +cdabs(amp_ljj(1,hel_lep,hel_12,hel_56))**2
     $        +cdabs(amp_ljj(2,hel_lep,hel_12,hel_56))**2
     $        )

            enddo      
         enddo         
      enddo ! close all the helicity loops

ccccccccccccccccccccccccccccccccccccccccccccc
c     coupling costants and averaging factors
ccccccccccccccccccccccccccccccccccccccccccccc 
      amp2 = amp2 * (4*pi*st_alpha)**2
      amp2=  amp2 /nc/nc/4

      end


ccccccccccccccccccccccccccccccccccccccccccccccc    
c     !: mcfm crosscheck code to be removed
c$$$      subroutine mom_to_MCFM_r(cmpreal,pmcfm)
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$c      include 'pwhg_flst.h'
c$$$c      include 'pwhg_kn.h'
c$$$      include 'MCFM_include/constants.f'
c$$$      real * 8 cmpreal(0:3,6)
c$$$      real * 8 pmcfm(mxpart,1:4)
c$$$      integer i,mu
c$$$      do i=1,2
c$$$         pmcfm(i,4)=-cmpreal(0,i)
c$$$         do mu=1,3
c$$$            pmcfm(i,mu)=-cmpreal(mu,i)
c$$$         enddo
c$$$      enddo
c$$$c THIRD  momentum must be the lepton
c$$$c FOURTH momentum must be the antilepton
c$$$      do i=3,6
c$$$         pmcfm(i,4)=cmpreal(0,i)
c$$$         do mu=1,3
c$$$            pmcfm(i,mu)=cmpreal(mu,i)
c$$$         enddo
c$$$      enddo
c$$$ccccccccccccccccccccccccccc
c$$$c     !: xxxxxxxxxxxx
c$$$c$$$      pmcfm(5,4)=cmpreal(0,6)
c$$$c$$$      do mu=1,3
c$$$c$$$         pmcfm(5,mu)=cmpreal(mu,6)
c$$$c$$$      enddo
c$$$c$$$
c$$$c$$$      pmcfm(6,4)=cmpreal(0,5)
c$$$c$$$      do mu=1,3
c$$$c$$$         pmcfm(6,mu)=cmpreal(mu,5)
c$$$c$$$      enddo
c$$$ccccccccccccccccccccccccccc
c$$$      end
cccccccccccccccccccccccccccccccccccccccccccc



