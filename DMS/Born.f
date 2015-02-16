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
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,nleg)
      integer bflav(nleg)
      real * 8 amp2,born,bmunu(0:3,0:3)
      integer ferm_type(nleg)
      integer i,j,k
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

c     lepton-antilepton from Z decay
      ferm_type(3) = +1
      ferm_type(4) = -ferm_type(3)
      
c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     k is the flavour of outgoing partons in the order particle,antiparticle,gluon
c     with the convention:
      i = bflav(1)
      j = bflav(2)
      k = bflav(5)

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
         call q_aq_to_l_al_g(p,ferm_type,bflav,amp2,bmunu)
      elseif ((i.eq.k).and.(j.eq.0).and.(i.ne.0)) then
c     q g -> q 
         call q_g_to_l_al_q(p,ferm_type,bflav,amp2,bmunu)
      elseif ((j.eq.k).and.(i.eq.0).and.(j.ne.0)) then
c     g q -> q g  
         call g_q_to_l_al_q(p,ferm_type,bflav,amp2,bmunu)
      else
        amp2 = 0d0
        write(*,*) 'WARNING: returning 0 amplitude, will stop!'
        call exit(-1)
      endif

ccccccccccccccccccccccccccccccccccccccc
c     !: to check with madgraph
c$$$      if(phdm_efftheory.eq.'F') then
c$$$         call mad_setparam
c$$$         if(abs(bflav(1)).eq.5.or.abs(bflav(2)).eq.5) then
c$$$            call compborn_mad(p,bflav,amp2mad)
c$$$            if(dabs(amp2mad/amp2-1).gt.tiny) then
c$$$               write(*,*) 'PROBLEM (b) ',bflav,amp2mad/amp2
c$$$               stop
c$$$            endif
c$$$         endif
c$$$      endif
cccccccccccccccccccccccccccccccccccccccc

      born=amp2
      end



c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4) g(p5)  con Z -> l-(p3) l+(p4) 
      subroutine q_aq_to_l_al_g(pphy,fermion_type,fermion_fl,
     $     amp2,bmunu)
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),fermion_fl(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3)
c      include 'couplings.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34,dotp
      integer itmp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlepZ(-3:3),jquark(-1:1),
     $     Jlep_dot_Jquark,Jlep_dot_Jquark_vec(2,-3:3,-1:1)
      integer i,pol,hel_lep,hel_quark
      real * 8 p(0:3,nleg)
      integer ferm_type(nleg),fl_tag
      complex * 16 prop34
      integer mu,nu,pol1,pol2
      complex * 16 Smm,Spp,PSmm,PSpp,ctemp
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
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
         ferm_type(i) = fermion_type(i)
      enddo

c     exchance particle 1 and 2
      if (ferm_type(1).eq.-1) then
        if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            itmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=itmp
         else
            write(*,*) 'Error in the type of the quark 1-2'
            stop
         endif
      endif

      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
      enddo

      mass2=dotp(p(0,3),p(0,3))

      p34=dotp(p(0,3),p(0,4))

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
         if(phdm_rw) prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,(2*p34+2*mass2)*phdm_phiwidth/phdm_phimass)
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
cccccccccccccccccccccccccccccccccccccccccc
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
c     sanity check: <ij>[ji]= <i-|j+> <j+|i-> =  2ki*kj
c      print*, ferm_type(3),ferm_type(4)
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
c     SC/PS current, universal  couplings set to 1
      fl_tag=abs(fermion_fl(1))
      if(phdm_mode.eq.'SC') then
         jlepZ(-3)=Smm * phdm_gDM
         jlepZ(+3)=Spp * phdm_gDM
c     notationally the following 2 lines should be with
c     (-3),(3), since quark and antiquark have same helicity
c     Id = P_L + P_R
         jquark(-1)=phdm_qqphi(fl_tag)
         jquark(+1)=jquark(-1)
      elseif(phdm_mode.eq.'PS') then
         jlepZ(-3)=PSmm * phdm_gDM
         jlepZ(+3)=PSpp * phdm_gDM
c     gamma5 = P_R - P_L
         jquark(-1)=phdm_qqphi(fl_tag)
         jquark(+1)=-jquark(-1)
      endif
cccccccccccccccccccccccccccccc
      
      amp2=0d0
      do pol=1,2
         call polvec(p(0,5),pol,epsg(0,pol))         
         do hel_lep=-3,3,6             
            do hel_quark=-1,1,2               
               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark)=0d0
               call bra_slash_ket_sc_g1(psi2,psi1,hel_quark,p2,p1,
     $              p(0,5),epsg(0,pol),ctemp)
               Jlep_dot_Jquark = ctemp *prop34 
     $              *jlepZ(hel_lep) *jquark(hel_quark)
               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) = 
     $              Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) +
     $              Jlep_dot_Jquark
               amp2 = amp2 + Jlep_dot_Jquark*DCONJG(Jlep_dot_Jquark)    
c$$$               powamp(pol)=Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark) /sqrt(2d0)
c$$$               print*, 'powampsq >> ',hel_quark,hel_lep,cdabs(powamp(1))**2+cdabs(powamp(2))**2
            enddo      
         enddo         
      enddo

cccccccccccccccccccccccccccccccccccccccccccccccccccccc
c$$$c     !: CHECK BORN LEVEL
cccccccccccccccccccccccccccccccccccccccccccccccccccccc


      do mu=0,3
      do nu=0,3
         bmunu(mu,nu) = 0d0
         do pol1=1,2
         do pol2=1,2
         do hel_lep=-3,3,6
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

      end


c this subroutine compute the tree-level amplitude for the process
c q(p1) g(p2) -> Z(p3+p4) q(p5)  con Z -> l-(p3) l+(p4) 
      subroutine q_g_to_l_al_q(pphy,fermion_type,fermion_fl,
     $     amp2,bmunu)   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),fermion_fl(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),p5(0:3)
c      include 'couplings.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp
      integer temp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi3(2,-1:1),psi4(2,-1:1),
     $     psi5(2,-1:1)
      complex*16 jlepZ(-3:3),Jquark(-1:1)
      complex*16 Jlep_dot_Jquark,Jlep_dot_Jquark_vec(2,-3:3,-1:1)
      integer mu,nu,i,pol,hel_lep,hel_quark,pol1,pol2
      real * 8 p(0:3,nleg)
      integer ferm_type(nleg)
      integer fl_tag
      complex * 16 prop34
      complex * 16 Smm,Spp,PSmm,PSpp,ctemp
ccccccccccccccccccccccccc
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta
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
         ferm_type(i) = fermion_type(i)
      enddo

      fl_tag=abs(fermion_fl(1))
c check initial configuration qg or gq
      if ((ferm_type(1).eq.0)) then
c exchance particle 1 and 2
         call exchange_momenta(p(0,1),p(0,2))
         temp = ferm_type(1)
         ferm_type(1)=ferm_type(2)
         ferm_type(2)=temp
         fl_tag=abs(fermion_fl(2))
      elseif ((ferm_type(2).ne.0)) then
         write(*,*) 'Error in the initial configuration'
         stop
      endif
      
c exchance particle 1 and 5
      if (ferm_type(1).eq.-1) then
        if (ferm_type(5).eq.-1) then
            call exchange_momenta(p(0,1),p(0,5))
            temp = ferm_type(1)
            ferm_type(1)=ferm_type(5)
            ferm_type(5)=temp
         else
            write(*,*) 'Error in the type of the quark 1-5'
            stop
         endif
      endif

      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = -p(mu,2)
         p5(mu) = ferm_type(5)*p(mu,5)         
      enddo

      mass2=dotp(p(0,3),p(0,3))

      p34=dotp(p(0,3),p(0,4))
     
cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
         if(phdm_rw) prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,(2*p34+2*mass2)*phdm_phiwidth/phdm_phimass)
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
cccccccccccccccccccccccccccccccccccccccc
c     SC/PS current, universal  couplings set to 1
      if(phdm_mode.eq.'SC') then
         jlepZ(-3)=Smm * phdm_gDM
         jlepZ(+3)=Spp * phdm_gDM
c     notationally the following 2 lines should be with
c     (-3),(3), since quark and antiquark have same helicity
c     Id = P_L + P_R
         jquark(-1)=phdm_qqphi(fl_tag)
         jquark(+1)=jquark(-1)
      elseif(phdm_mode.eq.'PS') then
         jlepZ(-3)=PSmm * phdm_gDM
         jlepZ(+3)=PSpp * phdm_gDM
c     gamma5 = P_R - P_L
         jquark(-1)=phdm_qqphi(fl_tag)
         jquark(+1)=-jquark(-1)
      endif
cccccccccccccccccccccccccccccc
      
      amp2=0d0
      do pol=1,2        
         call polvec(p(0,2),pol,epsg(0,pol))         
         do hel_lep=-3,3,6
            do hel_quark=-1,1,2 
               Jlep_dot_Jquark_vec(pol,hel_lep,hel_quark)=0d0
               call bra_slash_ket_sc_g1(psi5,psi1,hel_quark,p5,p1,p2,
     $              epsg(0,pol),ctemp)
               Jlep_dot_Jquark = ctemp *prop34 
     $              *jlepZ(hel_lep) *jquark(hel_quark)
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
         do hel_lep=-3,3,6
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
      end



      subroutine g_q_to_l_al_q(pphy,fermion_type,fermion_fl,
     $     amp2,bmunu)   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),fermion_fl(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      call q_g_to_l_al_q(pphy,fermion_type,fermion_fl,amp2,bmunu)   
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

      if(ini) then
         idDM=powheginput('#idDM')
         ini=.false.
      endif
      if(idup(3).eq.19.and.idDM.gt.0) then
         idup(3)=idDM
         idup(4)=-idDM
      endif

      do j=1,nlegborn
         if(j.eq.3.or.j.eq.4) then
            icolup(1,j)=0
            icolup(2,j)=0
         else
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
      include 'LesHouches.h'
      include 'pwhg_flg.h'
c     include 'nlegborn.h'
c     include 'pwhg_kn.h'
c     If user has selected the LOonly flag, then set scalup equal to the
c     generated jets. The default would be the total energy in the
c     partonic CoM frame. In the paper, however, I've used the choice
c     below, that is more consistent with the fact that we already have a 
c     jet at LO.
      if(flg_LOevents) then
         scalup=sqrt(pup(1,5)**2+pup(2,5)**2)
      endif

c     Set up the resonance whose mass must be preserved
c     on the Les Houches interface.
c     resonance Z -> e-(3) e+(4)
      call add_resonance(23,3,4)
c     give masses to final-state products
      call lhefinitemasses
      end

ccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccc
c     New bra/ket routines needed 
c     to handle a scalar current
ccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccc

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

c This subroutine adds the emission of a gluon to a fermionic line 
c with a single attached scalar current.
c Scalar current is reconstructed from momentum conservation.
c It sums 2 graphs and attaches the right propagators too.
      subroutine bra_slash_ket_sc_g1
     $     (bra,ket,helket,pbra,pket,pg1,eps1,ris)
      implicit none
      complex * 16 bra(2,-1:1),ket(2,-1:1)
      integer helket
      real * 8 pbra(0:3),pket(0:3),pg1(0:3),eps1(0:3),psc(0:3)
      complex * 16 ris
      complex * 16 ris1,ris2
      complex * 16 local_list(0:3,2)
      complex * 16 ccdotp

c     assumptions for momenta here is the following:
c     pket=Sum(all other momenta):
c     pket(in) -->--*-->--*-->-- pbra (out)
c                   |     |
c                   |     |
c                   v     v
c                 (out) (out)
c     therefore
      psc(:)=pket(:)-pg1(:)-pbra(:)

c emission  <bra| eps1,psc |ket>
      local_list(:,1) = eps1(:)
      local_list(:,2) = pg1(:)+pbra(:)
      call bra_slash_ket(bra,ket,helket,local_list,2,ris1)
      ris1 = ris1 / ccdotp(local_list(0,2),local_list(0,2))

c emission  <bra| psc,eps1 |ket>
      local_list(:,1) = pbra(:)+psc(:)
      local_list(:,2) = eps1(:)
      call bra_slash_ket(bra,ket,helket,local_list,2,ris2)
      ris2 = ris2 / ccdotp(local_list(0,1),local_list(0,1))

      ris = ris1+ris2
      end

c This subroutine adds the emission of 2 gluons to a fermionic line 
c with a single attached scalar current, preserving colour ordering
c of gluonic emissions.
c Scalar current is reconstructed from momentum conservation.
c It sums 3 graphs and attaches the right propagators too.
c !!!!!!! NO TRIPLE GLUON VERTEX !!!!!!
      subroutine bra_slash_ket_sc_g1_g2
     $     (bra,ket,helket,pbra,pket,pg1,eps1,pg2,eps2,ris)
      implicit none
      complex * 16 bra(2,-1:1),ket(2,-1:1)
      integer helket
      real * 8 pbra(0:3),pket(0:3),pg1(0:3),eps1(0:3),pg2(0:3),eps2(0:3)
     $     ,psc(0:3)
      complex * 16 ris
      complex * 16 ris1,ris2,ris3
      complex * 16 local_list(0:3,4)
      complex * 16 ccdotp

c     assumptions for momenta here is the following:
c     pket=Sum(all other momenta):
c     pket(in) -->--*-->--*-->--*-->-- pbra (out)
c                   |     |     |
c                   |     |     |
c                   v     v     v
c                 (out) (out) (out)
c     therefore
      psc(:)=pket(:)-pg1(:)-pg2(:)-pbra(:)

c emission  <bra| eps1,eps2,psc |ket>
      local_list(:,1) = eps1(:)
      local_list(:,2) = pg1(:)+pbra(:)
      local_list(:,3) = eps2(:)
      local_list(:,4) = pg1(:)+pg2(:)+pbra(:)

      call bra_slash_ket(bra,ket,helket,local_list,4,ris1)
      ris1 = ris1 / ccdotp(local_list(0,2),local_list(0,2))
     $     / ccdotp(local_list(0,4),local_list(0,4))

c emission  <bra| eps1,psc,eps2 |ket>
      local_list(:,1) = eps1(:)
      local_list(:,2) = pg1(:)+pbra(:)
      local_list(:,3) = pg1(:)+pbra(:)+psc(:)
      local_list(:,4) = eps2(:)

      call bra_slash_ket(bra,ket,helket,local_list,4,ris2)
      ris2 = ris2 / ccdotp(local_list(0,2),local_list(0,2))
     $     / ccdotp(local_list(0,3),local_list(0,3))

c emission  <bra| psc,eps1,eps2 |ket>
      local_list(:,1) = pbra(:)+psc(:)
      local_list(:,2) = eps1(:)
      local_list(:,3) = pg1(:)+pbra(:)+psc(:)
      local_list(:,4) = eps2(:)

      call bra_slash_ket(bra,ket,helket,local_list,4,ris3)
      ris3 = ris3 / ccdotp(local_list(0,1),local_list(0,1))
     $     / ccdotp(local_list(0,3),local_list(0,3))

      ris = ris1+ris2+ris3
      end

c This subroutine attaches a couple of gluon with polarization vector eps1, eps2 
c via a triple gluon vertex along a fermionic line  (NO COLOR STRUCTURE!!) 
c with a single attached scalar current
      subroutine bra_slash_ket_sc_3gv
     $     (bra,ket,helket,pbra,pket,pg1,eps1,pg2,eps2,ris)
      implicit none
      complex * 16 bra(2,-1:1),ket(2,-1:1)
      integer helket
      real * 8 pbra(0:3),pket(0:3),pg1(0:3),pg2(0:3),eps1(0:3),eps2(0:3)
     $     ,psc(0:3),pg1g2(0:3)
      complex * 16 ris
      complex * 16 ris1,ris2
      complex * 16 local_list(0:3,2)
      real * 8 coeff1,coeff2,coeff3
      real * 8 jtemp(0:3)
      real * 8 dotp
      complex * 16 ccdotp

c     assumptions for momenta here is the following:
c     pket=Sum(all other momenta):
c     pket(in) -->--*-->--*-->-- pbra (out)
c                   |     |
c                   |     |
c                   |     *
c                   |    / \
c                   |   /   \
c                   v   v   v
c                 (out)(out)(out)
c     therefore
      psc(:)=pket(:)-pg1(:)-pg2(:)-pbra(:)

      pg1g2(:)=pg1(:)+pg2(:)


      coeff1=2d0*dotp(pg1,eps2)+dotp(pg2,eps2)
      coeff2=-2d0*dotp(pg2,eps1)-dotp(pg1,eps1)
      coeff3=dotp(eps1,eps2)

      jtemp(:)=coeff1*eps1(:)+coeff2*eps2(:)+
     $     coeff3*(pg2(:)-pg1(:))

c emission  <bra| 3gv,psc |ket>
      local_list(:,1) = jtemp(:)
      local_list(:,2) = pg1(:)+pg2(:)+pbra(:)
      call bra_slash_ket(bra,ket,helket,local_list,2,ris1)
      ris1 = ris1 / ccdotp(local_list(0,2),local_list(0,2))

c emission  <bra| psc,3gv |ket>
      local_list(:,1) = pbra(:)+psc(:)
      local_list(:,2) = jtemp(:)
      call bra_slash_ket(bra,ket,helket,local_list,2,ris2)
      ris2 = ris2 / ccdotp(local_list(0,1),local_list(0,1))

      ris = (ris1+ris2) / dotp(pg1g2,pg1g2)
      end

c This subroutine adds the emission of a complex current
c to a fermionic line with a single attached scalar current.
c Scalar current is reconstructed from momentum conservation.
c It sums 2 graphs and attaches the right propagators too.
ccccccccccccccccccccc
c     VERY SIMILAR TO bra_slash_ket_sc_g1, BUT
c     HERE THE 'gluon polarization' IS COMPLEX !
cccccccccccccccccccccc

      subroutine bra_slash_ket_sc_curr
     $     (bra,ket,helket,pbra,pket,pg1,eps1,ris)
      implicit none
      complex * 16 bra(2,-1:1),ket(2,-1:1)
      integer helket
      real * 8 pbra(0:3),pket(0:3),pg1(0:3),psc(0:3)
      complex * 16 ris,eps1(0:3)
      complex * 16 ris1,ris2
      complex * 16 local_list(0:3,2)
      complex * 16 ccdotp

c     assumptions for momenta here is the following:
c     pket=Sum(all other momenta):
c     pket(in) -->--*-->--*-->-- pbra (out)
c                   |     |
c                   |     |
c                   v     v
c                 (out) (out)
c     therefore
      psc(:)=pket(:)-pg1(:)-pbra(:)

c emission  <bra| eps1,psc |ket>
      local_list(:,1) = eps1(:)
      local_list(:,2) = pg1(:)+pbra(:)
      call bra_slash_ket(bra,ket,helket,local_list,2,ris1)
      ris1 = ris1 / ccdotp(local_list(0,2),local_list(0,2))

c emission  <bra| psc,eps1 |ket>
      local_list(:,1) = pbra(:)+psc(:)
      local_list(:,2) = eps1(:)
      call bra_slash_ket(bra,ket,helket,local_list,2,ris2)
      ris2 = ris2 / ccdotp(local_list(0,1),local_list(0,1))

      ris = ris1+ris2
      end



