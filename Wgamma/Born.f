      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      real * 8 pp(0:3,nlegborn)
      integer bflav(nlegborn),bflavp(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),bmunuWj(0:3,0:3),
     +         bmunuWgam(0:3,0:3)
      real * 8 born,bornWj,bornWgam,colcf
      integer j,k,mu,nu

c Colour factors for colour-correlated Born amplitudes;
c Rule from 2.98 in FNO2007, leads to B_ij=Cj * B,
c where i#j

      do j=1,nlegborn
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu,j)=0d0
            enddo
         enddo
         do k=j+1,nlegborn
            bornjk(j,k)=0d0
            bornjk(k,j)=bornjk(j,k)
         enddo
      enddo

      bflavp=bflav
      pp=p

      if(bflav(5).eq.22)  then
         call compbornWgam(p,bflav,bornWgam,bmunuWgam)
         born=bornWgam
         do j=1,nlegborn
            if(abs(bflav(j)).le.6) then
               do mu=0,3
                  do nu=0,3
                     bmunu(mu,nu,j)=bmunuWgam(mu,nu)  !=0
                  enddo
               enddo
               do k=j+1,nlegborn
                  if(abs(bflav(k)).le.6) then
                     bornjk(j,k)=born*cf
                     bornjk(k,j)=bornjk(j,k)
                  endif
               enddo
            endif
         enddo
      else
c exchange neutrino-lepton
         bflavp(3)=bflav(4)
         bflavp(4)=bflav(3)
         pp(:,3)=p(:,4)
         pp(:,4)=p(:,3)
         call compbornWj(pp,bflavp,bornWj,bmunuWj)
         born=bornWj
         do j=1,nlegborn
            if(abs(bflav(j)).le.6) then
               if(bflav(j).eq.0) then
                  do mu=0,3
                     do nu=0,3
                        bmunu(mu,nu,j)=bmunuWj(mu,nu)
                     enddo
                  enddo
               endif
               do k=j+1,nlegborn
                  if(abs(bflav(k)).le.6) then
                     if(bflav(j).ne.0.and.bflav(k).ne.0) then
                        bornjk(j,k)=born*(2*cf-ca)/2d0
                        bornjk(k,j)=bornjk(j,k)
                     else
                        bornjk(j,k)=born*ca/2d0
                        bornjk(k,j)=bornjk(j,k)
                     endif
                  endif
               enddo
            endif
         enddo
      endif

      end



c     q q' -> ve e+ gam
      subroutine compbornWgam(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn)
      integer bflav(nlegborn)
      real * 8 born,born2,bmunu(0:3,0:3)
      integer i,j,k
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode   
      real * 8 pmcfm(nlegreal,4),ptmp(4),pe(0:3),pn(0:3)

      real*8 dotp
      external dotp
     
c use MCFM routines
c define momenta for MCFM routines
      do i=1,nlegborn
          pmcfm(i,4)=p(0,i)
          do j=1,3
              pmcfm(i,j)=p(j,i)
          enddo
      enddo
      pmcfm(nlegreal,:)=(/0d0,0d0,0d0,0d0/)
      do i=1,2
          do j=1,4
              pmcfm(i,j)=-pmcfm(i,j)
          enddo
      enddo
      if(idvecbos.lt.0)then
          ptmp = pmcfm(3,:)
          pmcfm(3,:) = pmcfm(4,:)
          pmcfm(4,:) = ptmp
      endif

      call qqb_wgam(pmcfm,bflav,born)

      i = bflav(1)
      j = bflav(2)
      
      if(mod(abs(i),2).eq.0) then
         born=born*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      elseif(mod(abs(i),2).eq.1) then   
         born=born*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif

      do i=0,3
         do j=0,3
            bmunu(i,j)=0d0
         enddo
      enddo

      end

*
***
*

      subroutine compbornWj(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,nleg)
      integer bflav(nleg)
      real * 8 amp2,born,bmunu(0:3,0:3)
      integer ferm_type(nleg)
      integer i,j,k,mu,nu
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode  
     

      if (abs(bflav(3)).le.6.or.abs(bflav(4)).le.6) then
         write(*,*) 'born_ampsq: ERROR in flavor assignement'
         stop
      endif


c     lepton-neutrino from W decay
      ferm_type(3) = bflav(3)/abs(bflav(3))
      ferm_type(4) = -ferm_type(3)

c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     k is the flavour of outgoing parton in the order particle,antiparticle,gluon
c     with the convention:
c     
c      -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6                    
c      t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t                    
      
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



      if(idvecbos.eq.24) then
         if (i.eq.0) then
c     g q -> W+ qp
            call g_aqp_to_al_vl_aq(p,ferm_type,amp2,bmunu)         
         elseif ((i.ne.0).and.(j.ne.0)) then
c     q aqp -> W+ g
            call q_aqp_to_al_vl_g(p,ferm_type,amp2,bmunu)
         elseif (j.eq.0) then
c     q g -> W+ qp
            call q_g_to_al_vl_qp(p,ferm_type,amp2,bmunu)
         else
            write(*,*) 'Invalid bflav in compborn'
            amp2 = 0d0
         endif
      elseif(idvecbos.eq.-24) then
         if (i.eq.0) then
c     g q -> W- qp
            call g_aqp_to_l_avl_aq(p,ferm_type,amp2,bmunu)         
         elseif ((i.ne.0).and.(j.ne.0)) then
c     q aqp -> W- g
            call q_aqp_to_l_avl_g(p,ferm_type,amp2,bmunu)
         elseif (j.eq.0) then
c     q g -> W- qp
            call q_g_to_l_avl_qp(p,ferm_type,amp2,bmunu)
         else
            write(*,*) 'Invalid bflav in compborn'
            amp2 = 0d0
         endif

      else
         write(*,*) 'ERROR: this subroutine deals only with W+ or W- '
         call exit(1)
      endif

      if (i.eq.0) i=abs(k)
      if (j.eq.0) j=abs(k)
      if(mod(abs(i),2).eq.0) then
         amp2=amp2*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu)=bmunu(mu,nu)*ph_CKM(abs(i)/2,(abs(j)+1)/2)
     $              **2
            enddo
         enddo
      elseif(mod(abs(i),2).eq.1) then   
         amp2=amp2*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu)=bmunu(mu,nu)*ph_CKM(abs(j)/2,(abs(i)+1)/2)
     $              **2
            enddo
         enddo
      endif

      born=amp2
      end


c this subroutine compute the Born amplitude for the process
c q(p1) qp(p2) -> W(p3+p4) g(p5)   con W -> l(p3) vl(p4)
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic
c amplitude
c It gets the matrix p with all the momenta and gives
c the amplitude squared (amp2) averaged over initial
c polarization
c
c         q  --->----------->------ g
c                     |
c                     |            l
c                     |           /
c         aqp ---<-----/\/\/\/\/\/
c                           W    \
c                                 \ vl
c     ferm_type = 1 fermion
c     ferm_type = -1 antifermion


      subroutine q_aqp_to_al_vl_g(pphy,fermion_type,amp2,bmunu)
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      complex *16 unit_I
      parameter (unit_I=(0,1))
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlep(0:3),jqua(0:3)
      complex*16 Jlep_dot_Jquark,Jlep_dot_Jquark_vec(2)
      integer mu,nu,i,pol,pol1,pol2
      real * 8 p(0:3,nleg)
      integer ferm_type(nleg)
      complex *16 prop34w

      if ((fermion_type(3).ne.-1).and.(fermion_type(4).ne.1)) then
         write(*,*) 'ERROR: this subroutine deals only with W+ decay'
         stop
      endif

c  copy of local variables
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
            tmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=tmp
         else
            write(*,*) 'Error in the type of the quark 1-2'
            stop
         endif
      endif

c     fake momenta:
c     for bosons always outgoing
c     for fermions along fermionic current
      do mu=0,3
         p1(mu) = ferm_type(1)*p(mu,1)
         p2(mu) = ferm_type(2)*p(mu,2)
      enddo

      p34=dotp(p(0,3),p(0,4))
      
c     W propagator
      prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)

c     bra and ket are built with physical momenta, but a check on positivity
c     of energy is needed when one uses this function to evaluate a
c     crossing related amplitudes. NOTE that this affects only the
c     construction of spinors or polarization vectors on external legs
c     that may be crossed. All other momenta are unchanged 
c
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
c     l
      call ket(p(0,3),ferm_type(3),psi3)
c     vl
      call bra(p(0,4),ferm_type(4),psi4)

c     leptonic current
      call bra_gamma_ket(psi4,psi3,-1,jlep)
      

      amp2=0d0

      do  pol=1,2
         
         if (p(0,5).lt.0d0) then
            do mu=0,3
               pp5(mu) = -p(mu,5)
            enddo         
            call POLVEC(pp5(0),pol,epsg(0,pol))
         else   
            call polvec(p(0,5),pol,epsg(0,pol))
         endif
         Jlep_dot_Jquark_vec(pol)=0d0
         call bra_gamma_ket_gluon(psi2,psi1,-1,p2,p1,
     $        p(0,5),epsg(0,pol),jqua)

         Jlep_dot_Jquark = ccdotp(jlep,jqua)*prop34w
         Jlep_dot_Jquark_vec(pol) =
     $              Jlep_dot_Jquark_vec(pol) +
     $              Jlep_dot_Jquark
        
         amp2 = amp2 + Jlep_dot_Jquark *
     $     DCONJG(Jlep_dot_Jquark)  
      
      enddo     
      
      do mu=0,3
      do nu=0,3
         bmunu(mu,nu) = 0d0
         do pol1=1,2
         do pol2=1,2
c     we don't conjugate epsg(mu,pol1) since it is real
            bmunu(mu,nu) = bmunu(mu,nu) +                  
     $       Jlep_dot_Jquark_vec(pol1)
     $           *DCONJG(Jlep_dot_Jquark_vec(pol2))
     $           * epsg(mu,pol1) * epsg(nu,pol2)
         enddo
         enddo
      enddo
      enddo



      amp2 = amp2*((ph_unit_e/ph_sthw)**4)/4d0 *(4d0*pi*st_alpha)

c     1/4 from average over initial-state polarization
c     1/nc^2 * nc = 1/nc from average over initial-state colors and sum over 
c     quark colors 
      amp2=  amp2*CF/4d0/nc

      do mu=0,3
         do nu=0,3
            bmunu(mu,nu) = bmunu(mu,nu) * ((ph_unit_e/ph_sthw)**4)/4d0
     $           *(4*pi*st_alpha)*CF/4/nc
         enddo
      enddo

      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C AMPLITUDES RELATES BY CROSSING:
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine g_aqp_to_al_vl_aq(pphy,fermion_type,
     #     amp2,bmunu)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg)
      integer ferm_type(nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      integer mu,nu,i

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_type(i) = fermion_type(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
      enddo

c no useful information is in ferm_type(1) 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c NOTE the MINUS sign     !!!
c     if the following two lines are missing 
      ferm_type(5)=0
c     ferm_type(5) doesn't contain
c     their correct values, but this does not affect 
c     the correct call of

       call q_aqp_to_al_vl_g(pp,ferm_type,
     #     amp2,bmunu)

c     correct for color average
      amp2 = amp2 * 3d0/8d0
      do mu=0,3
         do nu=0,3
            bmunu(mu,nu)=bmunu(mu,nu)* 3d0/8d0
         enddo
      enddo
      
      end

ccccccccccccccccccccccccccccccccccccccccccccc

      subroutine q_g_to_al_vl_qp(pphy,fermion_type,
     #     amp2,bmunu)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg)
      integer ferm_type(nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      integer mu,nu,i

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_type(i) = fermion_type(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,5)
      enddo

c no useful information is in ferm_type(2) , 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(5)
c NOTE the MINUS sign     !!!

c     if the following two lines are missing 
      ferm_type(5)=0
c     ferm_type(5)  doesn't contain
c     their correct values, but this does not affect 
c     the correct call of

       call q_aqp_to_al_vl_g(pp,ferm_type,
     #     amp2,bmunu)

c     correct for color average
      amp2 = amp2 * 3d0/8d0
      do mu=0,3
         do nu=0,3
            bmunu(mu,nu)=bmunu(mu,nu)* 3d0/8d0
         enddo
      enddo
      
      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC


      subroutine q_aqp_to_l_avl_g(pphy,fermion_type,
     #     amp2,bmunu)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_aqp_to_al_vl_g(pphy,ferm_type,
     #     amp2,bmunu)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine g_aqp_to_l_avl_aq(pphy,fermion_type,
     #     amp2,bmunu)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call g_aqp_to_al_vl_aq(pphy,ferm_type,
     #     amp2,bmunu)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine q_g_to_l_avl_qp(pphy,fermion_type,
     #     amp2,bmunu)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 pphy(0:3,nleg)
      real * 8 amp2,bmunu(0:3,0:3)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_g_to_al_vl_qp(pphy,ferm_type,amp2,bmunu)

      end

ccccccccccccccccccccccccccccccccccccccccccccccccccc
*
***
*
      complex*16 function e_(q1,q2,q3,q4)
      implicit none
      real*8 q1(0:3),q2(0:3),q3(0:3),q4(0:3)

      complex*16 esign

      esign = -(0.d0,1.d0)

      e_ = q1(1)*q2(2)*q3(3)*q4(0) - q1(1)*q2(2)*q3(0)*q4(3) +
     .     q1(1)*q2(3)*q3(0)*q4(2) - q1(1)*q2(3)*q3(2)*q4(0) +
     .     q1(1)*q2(0)*q3(2)*q4(3) - q1(1)*q2(0)*q3(3)*q4(2) +
     .     q1(2)*q2(1)*q3(0)*q4(3) - q1(2)*q2(1)*q3(3)*q4(0) +
     .     q1(2)*q2(3)*q3(1)*q4(0) - q1(2)*q2(3)*q3(0)*q4(1) +
     .     q1(2)*q2(0)*q3(3)*q4(1) - q1(2)*q2(0)*q3(1)*q4(3) +
     .     q1(3)*q2(1)*q3(2)*q4(0) - q1(3)*q2(1)*q3(0)*q4(2) +
     .     q1(3)*q2(2)*q3(0)*q4(1) - q1(3)*q2(2)*q3(1)*q4(0) +
     .     q1(3)*q2(0)*q3(1)*q4(2) - q1(3)*q2(0)*q3(2)*q4(1) +
     .     q1(0)*q2(1)*q3(3)*q4(2) - q1(0)*q2(1)*q3(2)*q4(3) +
     .     q1(0)*q2(2)*q3(1)*q4(3) - q1(0)*q2(2)*q3(3)*q4(1) +
     .     q1(0)*q2(3)*q3(2)*q4(1) - q1(0)*q2(3)*q3(1)*q4(2)

      e_ = esign * e_ 

      return
      end function e_


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
c colours of incoming quarks, antiquarks
      integer icolqi(2),icolai(2),icolgi(2),
     #        icolqf(2),icolaf(2),icolgf(2)
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

      if (idup(nlegborn).eq.22) then
          if((idup(1).gt.0).and.(idup(2).lt.0)) then
             icolup(1,1)=501
             icolup(2,1)=0
             icolup(1,2)=0
             icolup(2,2)=501
          elseif((idup(1).lt.0).and.(idup(2).gt.0)) then
             icolup(1,1)=0
             icolup(2,1)=501
             icolup(1,2)=501
             icolup(2,2)=0
          else
             write(*,*) ' invalid flavour'
             stop
          endif
          icolup(1,5)=0
          icolup(2,5)=0
      else
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
      endif
      end


      subroutine finalize_lh
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

c      call add_resonance(idvecbos,3,4)

      call add_resonance_Wgam(idvecbos,3,4)

      call lhefinitemasses

      end

c     i1<i2
      subroutine add_resonance_Wgam(idpdg,i1,i2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'LesHouches.h'
      include 'PhysPars.h'
      real * 8 iduptmp(maxnup),istuptmp(maxnup),mothuptmp(2,maxnup),
     #     icoluptmp(2,maxnup),puptmp(5,maxnup),vtimuptmp(maxnup),
     #     spinuptmp(maxnup)
      integer idpdg,i1,i2,i,j
      real * 8 pe(5),pg(5),pnu(5),m_enu,m_enugam
      real * 8 p_enu(0:3),p_enugam(0:3) 
      real * 8 random
      external random
      if (i1.ge.i2) then
         write(*,*) 'wrong sequence in add_resonance'
         stop
      endif
      do i=i1,nup
         iduptmp(i) = idup(i)
         istuptmp(i) = istup(i)
         mothuptmp(1,i) = mothup(1,i)
         mothuptmp(2,i) = mothup(2,i)
         icoluptmp(1,i) = icolup(1,i)
         icoluptmp(2,i) = icolup(2,i)
         do j=1,5
            puptmp(j,i)=pup(j,i)
         enddo
         vtimuptmp(i)=vtimup(i)
         spinuptmp(i)=spinup(i)
      enddo
      idup(i1)=idpdg
      istup(i1)=+2
      mothup(1,i1)=1
      mothup(2,i1)=2
      icolup(1,i1)=0
      icolup(2,i1)=0
      do j=1,4
         pup(j,i1)=puptmp(j,i1)+puptmp(j,i2)
      enddo 
c In Wgamma(+j) the resonance might be the mother of the photon too
      if(idup(5).eq.22) then
         pg = pup(:,5)
         pe = pup(:,4)
         pnu= pup(:,3)
         p_enu(0) = pe(4) + pnu(4) 
         do i=1,3
            p_enu(i) = pe(i) + pnu(i)
         enddo
         p_enugam(0) = pe(4) + pnu(4) + pg(4) 
         do i=1,3
            p_enugam(i) = pe(i) + pnu(i) + pg(i)
         enddo
         call getinvmass(p_enu,m_enu)
         call getinvmass(p_enugam,m_enugam)
         if(abs(m_enugam-ph_wmass).lt.abs(m_enu-ph_wmass)) then
            do j=1,4
               pup(j,i1)=pup(j,i1)+puptmp(j,5)
            enddo
            mothuptmp(1,5)=i1
            mothuptmp(2,5)=i1
         endif
      endif
c In FSR Wj+gamma for emitter=lepton 
c the resonance is the mother of the photon too
      if(idup(6).eq.22.and.rad_kinreg.eq.2) then
         do j=1,4
            pup(j,i1)=pup(j,i1)+puptmp(j,6)
         enddo
         mothuptmp(1,6)=i1
         mothuptmp(2,6)=i1
      endif    
      pup(5,i1)=sqrt(pup(4,i1)**2-
     #     (pup(1,i1)**2+pup(2,i1)**2+pup(3,i1)**2))
      vtimup(i1)=0
      spinup(i1)=9
c     change mothers of decaying particles
      mothuptmp(1,i1)=i1
      mothuptmp(2,i1)=i1
      mothuptmp(1,i2)=i1
      mothuptmp(2,i2)=i1     
      nup=nup+1      
      do i=i1+1, nup
         idup(i) = iduptmp(i-1)
         istup(i) = istuptmp(i-1)
         mothup(1,i) = mothuptmp(1,i-1)
         mothup(2,i) = mothuptmp(2,i-1)
         icolup(1,i) = icoluptmp(1,i-1)
         icolup(2,i) = icoluptmp(2,i-1)
         do j=1,5
            pup(j,i)=puptmp(j,i-1)
         enddo
         vtimup(i)=vtimuptmp(i-1)
         spinup(i)=spinuptmp(i-1)     
      enddo

c      do i=1,nup
c         write(*,*)'pup4',pup(:,i)
c      enddo


      
      end
