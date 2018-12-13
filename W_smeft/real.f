      subroutine setreal(p,fermion_flav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
c -*- Fortran -*-
c      character *2 flav(-5:5)
      real * 8 charge(-5:5)
c      data (charge(ijkh),ijkh=-5,5) 
c      data (flav(ijkh),ijkh=-5,5) 
c      data flav
c     #     /'b~','c~','s~','u~','d~','g','d','u','s','c','b'/
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
c      include 'QuarkFlavs.h'
      include 'PhysPars.h'
      integer nleg
      parameter (nleg=nlegreal)
      real * 8 p(0:3,nleg), p34, dotp
      complex *16 prop34w
      integer fermion_flav(nleg)
      real * 8 amp2, amp2d, amp2u, amp2xi, amp2s, amp2t, amp2st,amp2_im
      real * 8 amp2e
      integer ferm_type(nleg)
      real * 8 ferm_charge(nleg)
      integer i,j,k,l,count,tmp_type
      real *8 tmp_charge
c     vector boson id and decay
      integer idvecbos,vdecaymode
      external dotp
      common/cvecbos/idvecbos,vdecaymode  

c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     k is the flavour of outgoing parton in the order particle,antiparticle,gluon
c     with the convention:
c     
c      -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6                    
c      t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t                    
      
      i = fermion_flav(1)
      j = fermion_flav(2)
      k = fermion_flav(5)
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

c     antilepton-neutrino from W decay
      ferm_type(3) = fermion_flav(3)/abs(fermion_flav(3))
      ferm_charge(3) = ferm_type(3)*(-1d0)
      ferm_type(4) = -ferm_type(3)
      ferm_charge(4) = 0d0

      p34=dotp(p(0,3),p(0,4))
      
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif      
      
      amp2u = 0d0
      amp2d = 0d0
      amp2e =0d0 
      amp2xi = 0d0
      amp2st = 0d0
      amp2_im =0d0

      if(idvecbos.eq.24) then
         if(wdm) then
	   if (i.eq.0) then
c     g q -> W+ qp
	      call g_aqp_to_al_vl_aq(p,ferm_type,ferm_charge,amp2)
	      call g_aqp_to_al_vl_aq_xi(p,ferm_type,ferm_charge,amp2xi)
	      call g_aqp_to_al_vl_aq_4f(p,ferm_type,ferm_charge,amp2s,
     #       amp2t,amp2st,amp2_im)
	      call g_aqp_to_al_vl_aq_wedm(p,ferm_type,ferm_charge,amp2d,
     #       amp2u,amp2e)
	   elseif ((i.ne.0).and.(j.ne.0)) then
c     q aqp -> W+ g
	      call q_aqp_to_al_vl_g(p,ferm_type,ferm_charge,amp2)
	      call q_aqp_to_al_vl_g_xi(p,ferm_type,ferm_charge,amp2xi)
	      call q_aqp_to_al_vl_g_4f(p,ferm_type,ferm_charge,amp2s
     #	    ,amp2t,amp2st,amp2_im)
	      call q_aqp_to_al_vl_g_wedm(p,ferm_type,ferm_charge,amp2d,
     #       amp2u,amp2e)

	  elseif (j.eq.0) then
c     q g -> W+ qp
	      call q_g_to_al_vl_qp(p,ferm_type,ferm_charge,amp2)
	      call q_g_to_al_vl_qp_xi(p,ferm_type,ferm_charge,amp2xi)
	      call q_g_to_al_vl_qp_wedm(p,ferm_type,ferm_charge,amp2d,
     #       amp2u,amp2e)
	      call q_g_to_al_vl_qp_4f(p,ferm_type,ferm_charge,amp2s,
     #       amp2t,amp2st,amp2_im)
	  else
            amp2 = 0d0
          endif
         else
	   if (i.eq.0) then
c     g q -> W+ qp
	      call g_aqp_to_al_vl_aq(p,ferm_type,ferm_charge,amp2)         
	   elseif ((i.ne.0).and.(j.ne.0)) then
c     q aqp -> W+ g
	      call q_aqp_to_al_vl_g(p,ferm_type,ferm_charge,amp2)
	  elseif (j.eq.0) then
c     q g -> W+ qp
	      call q_g_to_al_vl_qp(p,ferm_type,ferm_charge,amp2)
	  else
            amp2 = 0d0
	  endif
         endif
         
      elseif(idvecbos.eq.-24) then
         if(wdm) then
	  if (i.eq.0) then
c     g q -> W- qp
	      call g_aqp_to_l_avl_aq(p,ferm_type,ferm_charge,amp2) 
	      call g_aqp_to_l_avl_aq_xi(p,ferm_type,ferm_charge,amp2xi)
	      call g_aqp_to_l_avl_aq_wedm(p,ferm_type,ferm_charge,amp2d,
     #       amp2u,amp2e)      	      
     	      call g_aqp_to_l_avl_aq_4f(p,ferm_type,ferm_charge,amp2s,
     #       amp2t,amp2st,amp2_im)      	      
	  elseif ((i.ne.0).and.(j.ne.0)) then
c     q aqp -> W- g
	      call q_aqp_to_l_avl_g(p,ferm_type,ferm_charge,amp2)
	      call q_aqp_to_l_avl_g_xi(p,ferm_type,ferm_charge,amp2xi)
	      call q_aqp_to_l_avl_g_wedm(p,ferm_type,ferm_charge,amp2d,
     #       amp2u,amp2e)
	      call q_aqp_to_l_avl_g_4f(p,ferm_type,ferm_charge,amp2s,
     #       amp2t,amp2st,amp2_im)
	  elseif (j.eq.0) then
c     q g -> W- qp
	      call q_g_to_l_avl_qp(p,ferm_type,ferm_charge,amp2)
	      call q_g_to_l_avl_qp_xi(p,ferm_type,ferm_charge,amp2xi)
	      call q_g_to_l_avl_qp_wedm(p,ferm_type,ferm_charge,amp2d,
     #       amp2u,amp2e)
	      call q_g_to_l_avl_qp_4f(p,ferm_type,ferm_charge,amp2s,
     #       amp2t,amp2st,amp2_im)
	  else
	      amp2 = 0d0
	  endif
         else
	  if (i.eq.0) then
c     g q -> W- qp
	      call g_aqp_to_l_avl_aq(p,ferm_type,ferm_charge,amp2)         
	  elseif ((i.ne.0).and.(j.ne.0)) then
c     q aqp -> W- g
	      call q_aqp_to_l_avl_g(p,ferm_type,ferm_charge,amp2)
	  elseif (j.eq.0) then
c     q g -> W- qp
	      call q_g_to_l_avl_qp(p,ferm_type,ferm_charge,amp2)
	  else
	      amp2 = 0d0
	  endif
	endif
c              
         
         
      else
         write(*,*) 'ERROR: this subroutine deals only with W+ or W- '
         call exit(1)
      endif

      if (i.eq.0) i=abs(k)
      if (j.eq.0) j=abs(k)
      if(mod(abs(i),2).eq.0) then
         amp2=amp2*(  
     .     ph_CKM(abs(i)/2,(abs(j)+1)/2)**2   
     .   - 2d0*( 2*p34 - ph_Wmass2)/ph_Wmass2 *
     .     ph_QL3(abs(i)/2,(abs(j)+1)/2)*ph_CKM(abs(i)/2,(abs(j)+1)/2)
     .   + 1d0/(prop34w * DCONJG(prop34w))/ph_Wmass2**2*
     .     ph_QL3(abs(i)/2,(abs(j)+1)/2)**2      )  + 
     .	      amp2d *( ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .               + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2)
     .	    + amp2u *( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .               + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2)
     .      + amp2e *( ph_ReGEw**2 + ph_ImGEw**2) 
     .      + amp2xi*(  ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .		      + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2  )
     .      + amp2s *     
     .       ( ph_Re_LeQu(abs(i)/2,(abs(j)+1)/2)**2 
     .       + ph_Re_LedQ(abs(i)/2,(abs(j)+1)/2)**2  
     .       + ph_Im_LeQu(abs(i)/2,(abs(j)+1)/2)**2 
     .       + ph_Im_LedQ(abs(i)/2,(abs(j)+1)/2)**2  )  
     .      + amp2t *(  
     .         ph_Re_LeQu3(abs(i)/2,(abs(j)+1)/2)**2 
     .        +ph_Im_LeQu3(abs(i)/2,(abs(j)+1)/2)**2 )
     .      + amp2st * 
     .       (ph_Re_LeQu3(abs(i)/2,(abs(j)+1)/2)*
     .	      ph_Re_LeQu (abs(i)/2,(abs(j)+1)/2) +
     .        ph_Im_LeQu3(abs(i)/2,(abs(j)+1)/2)*
     .	      ph_Im_LeQu (abs(i)/2,(abs(j)+1)/2)     )
     .      + amp2_im  * 
     .       ( ph_Re_LeQu3(abs(i)/2,(abs(j)+1)/2)*
     .	       ph_Im_LeQu (abs(i)/2,(abs(j)+1)/2) 
     .        +ph_Im_LeQu3(abs(i)/2,(abs(j)+1)/2)
     .	       *ph_Re_LeQu(abs(i)/2,(abs(j)+1)/2))
      elseif(mod(abs(i),2).eq.1) then   
         amp2=amp2*( ph_CKM(abs(j)/2,(abs(i)+1)/2)**2  
     .   - 2d0*( 2*p34 - ph_Wmass2)/ph_Wmass2 *
     .     ph_QL3(abs(j)/2,(abs(i)+1)/2)*ph_CKM(abs(j)/2,(abs(i)+1)/2)
     .   + 1d0/(prop34w * DCONJG(prop34w))/ph_Wmass2**2*
     .     ph_QL3(abs(j)/2,(abs(i)+1)/2)**2      ) +
     .	      amp2d *( ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .               + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2)
     .      + amp2u *( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .               + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2)
     .      + amp2e *( ph_ReGEw**2 + ph_ImGEw**2)
     .     + amp2xi*(ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2 
     .             + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2 )      
     .      + amp2s   *   
     .       ( ph_Re_LeQu(abs(j)/2,(abs(i)+1)/2)**2 
     .       + ph_Re_LedQ(abs(j)/2,(abs(i)+1)/2)**2 
     .       + ph_Im_LeQu(abs(j)/2,(abs(i)+1)/2)**2
     . 	      +ph_Im_LedQ(abs(j)/2,(abs(i)+1)/2)**2)  
     .      + amp2t *( 
     .         ph_Re_LeQu3(abs(j)/2,(abs(i)+1)/2)**2 
     .      +  ph_Im_LeQu3(abs(j)/2,(abs(i)+1)/2)**2)      
     .      + amp2st * 
     .        (ph_Re_LeQu3(abs(j)/2,(abs(i)+1)/2)* 
     .	       ph_Re_LeQu (abs(j)/2,(abs(i)+1)/2)
     .  +      ph_Im_LeQu3(abs(j)/2,(abs(i)+1)/2)* 
     .	       ph_Im_LeQu (abs(j)/2,(abs(i)+1)/2)          )
     .      + amp2_im  *( 
     .	       ph_Re_LeQu3(abs(j)/2,(abs(i)+1)/2)
     .	      *ph_Im_LeQu (abs(j)/2,(abs(i)+1)/2)  
     .	      -ph_Im_LeQu3(abs(j)/2,(abs(i)+1)/2)
     .	      *ph_Re_LeQu (abs(j)/2,(abs(i)+1)/2))     
      endif
c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2*pi))
      
      
      
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
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aqp_to_al_vl_g(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
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
      complex*16 jlep_dot_jqua
      integer mu,i,pol
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
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
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchance particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=ferm_charge(2)
            ferm_charge(2)=tmp
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
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif

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
            call POLVEC(pp5,pol,epsg(0,pol))
         else   
            call polvec(p(0,5),pol,epsg(0,pol))
         endif
         
         call bra_gamma_ket_gluon(psi2,psi1,-1,p2,p1,
     #        p(0,5),epsg(0,pol),jqua)

         jlep_dot_jqua = ccdotp(jlep,jqua)*prop34w
         
         amp2 = amp2 + jlep_dot_jqua *
     #     DCONJG(jlep_dot_jqua)  
      
      enddo     
      
      amp2 = amp2*((ph_geff)**4)/4d0 *(4d0*pi*st_alpha)

c     1/4 from average over initial-state polarization
c     1/nc^2 * nc = 1/nc from average over initial-state colors and sum over 
c     quark colors 
      amp2=  amp2*CF/4d0/nc

      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C AMPLITUDES RELATES BY CROSSING:
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine g_aqp_to_al_vl_aq(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
      integer nleg
      parameter (nleg=5)
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

c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c NOTE the MINUS sign     !!!
      ferm_charge(1) = -ferm_charge(5)

c     if the following two lines are missing 
      ferm_type(5)=0
      ferm_charge(5)=0d0 
c     ferm_type(5) and ferm_charge(5) don't contain
c     their correct values, but this does not affect 
c     the correct call of

       call q_aqp_to_al_vl_g(pp,ferm_type,ferm_charge,
     #     amp2)

c     correct for color average
      amp2 = amp2 * 3d0/8d0
      
      end

ccccccccccccccccccccccccccccccccccccccccccccc

      subroutine q_g_to_al_vl_qp(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
      integer nleg
      parameter (nleg=5)
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
         pp(mu,5) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,5)
      enddo

c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(5)
c NOTE the MINUS sign     !!!
      ferm_charge(2) = -ferm_charge(5)

c     if the following two lines are missing 
      ferm_type(5)=0
      ferm_charge(5)=0d0 
c     ferm_type(5) and ferm_charge(5) don't contain
c     their correct values, but this does not affect 
c     the correct call of

       call q_aqp_to_al_vl_g(pp,ferm_type,ferm_charge,
     #     amp2)

c     correct for color average
      amp2 = amp2 * 3d0/8d0
      
      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC


      subroutine q_aqp_to_l_avl_g(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_aqp_to_al_vl_g(pphy,ferm_type,ferm_charge,
     #     amp2)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine g_aqp_to_l_avl_aq(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call g_aqp_to_al_vl_aq(pphy,ferm_type,ferm_charge,
     #     amp2)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine q_g_to_l_avl_qp(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_g_to_al_vl_qp(pphy,ferm_type,ferm_charge,
     #     amp2)

      end


c WEDM      
c this subroutine compute the Born amplitude for the process
c q(p1) qp(p2) -> W(p3+p4) g(p5)   con W -> l(p3) vl(p4) 
c mediated by weak dipole moments.
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
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aqp_to_al_vl_g_wedm(pphy,fermion_type,fermion_charge,
     #     amp2d, amp2u, amp2e)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2d, amp2u, amp2e
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp, rg
      integer mu,i,pol, i1, i2
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
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
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=ferm_charge(2)
            ferm_charge(2)=tmp
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

c     scalar product 
      p34=dotp(p(0,3),p(0,4))
      s  =2d0*dotp(p(0,1),p(0,2))	    
      s2 = 2d0 * p34
      tk = - 2d0 * dotp( p(0,1), p(0,5))
      uk = - 2d0 * dotp( p(0,2), p(0,5))
      
      pae1 = dotp(p(0,4) , p(0,1) )
      pae2 = dotp(p(0,3) , p(0,1) )
      pbe1 = dotp(p(0,4) , p(0,2) )
      pbe2 = dotp(p(0,3) , p(0,2) )
      pge1 = dotp(p(0,4) , p(0,5) )
      pge2 = dotp(p(0,3) , p(0,5) )
	
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif

c     ReGD^2 and ImGD^2
      amp2d = - ( (pbe2 - pge2) *  (pge2 * s + pbe2 * tk)      
     . +  pae2**2 * uk +   pbe2 * pge2 * uk  
     . -  pae2 * ( -pge2 * (s + tk - uk) 
     . +  pbe2 * (2d0* s + tk + uk) )  ) 

      
c     ReGU^2 and ImGU^2 
      amp2u =  - ( (pbe1 - pge1) *  (pge1 * s + pbe1 * tk)      
     . +  pae1**2 * uk +   pbe1 * pge1 * uk  
     . -  pae1 * ( -pge1 * (s + tk - uk) 
     . +  pbe1 * (2d0* s + tk + uk) )  ) 

c      ReGE^2 + ImGE^2
      amp2e =  ( -4*pbe1*pge1*s + 4*pbe2*pge1*s + 4*pbe1*pge2*s 
     .- 4*pbe2*pge2*s + 2*s**2*s2 - 4*pbe1**2*tk + 8*pbe1*pbe2*tk 
     .- 4*pbe2**2*tk + 2*s*s2*tk + s2*tk**2 -  4*pae1**2*uk 
     .- 4*pae2**2*uk - 4*pbe1*pge1*uk + 4*pbe2*pge1*uk + 4*pbe1*pge2*uk 
     .- 4*pbe2*pge2*uk + 2*s*s2*uk + s2*uk**2 -  4*pae2*(-((pge1 
     .- pge2)*(s + tk)) + pbe1*(2*s + tk + uk) - pbe2*(2*s + tk + uk)) 
     .+ 4*pae1*(-((pge1 - pge2)*(s + tk)) + 2*pae2*uk + pbe1*(2*s + tk 
     .+ uk) - pbe2*(2*s + tk + uk)) )
     
      amp2d = amp2d * 8d0/3d0 * s2/tk/uk
      amp2u = amp2u * 8d0/3d0 * s2/tk/uk
      amp2e = amp2e * 1d0/6d0 * s2/tk/uk  
     
      amp2d = amp2d * prop34w * DCONJG(prop34w) 
      amp2u = amp2u * prop34w * DCONJG(prop34w) 
      amp2e = amp2e * prop34w * DCONJG(prop34w)
      
c     weak and strong couplings      
      amp2d = amp2d*((ph_geff)**4) *(4d0*pi*st_alpha)
      amp2u = amp2u*((ph_geff)**4) *(4d0*pi*st_alpha)
      amp2e = amp2e*((ph_geff)**4) *(4d0*pi*st_alpha)
      
c     divide by higgs vev  
      amp2d = amp2d /ph_vev**2
      amp2u = amp2u /ph_vev**2
      amp2e = amp2e /ph_vev**2
      
c color structure
      amp2d=  amp2d*CF
      amp2u=  amp2u*CF
      amp2e=  amp2e*CF
      
c     add the RGE factor 
      call RGE(LambdaNP,rg)
      amp2d = rg**2 * amp2d
      amp2u = rg**2 * amp2u
      
      
      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine q_aqp_to_l_avl_g_wedm(pphy,fermion_type,fermion_charge,
     #     amp2d,amp2u,amp2e)
   
      implicit none
c same function as before.
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2d, amp2u, amp2e
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_aqp_to_al_vl_g_wedm(pphy,ferm_type,ferm_charge,
     #     amp2d,amp2u,amp2e)

      end
      
      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C gluon channels
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine g_aqp_to_al_vl_aq_wedm(pphy,fermion_type,
     # fermion_charge,amp2d,amp2u,amp2e)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp, rg
      real * 8 amp2d, amp2u, amp2e
      integer mu,i
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      complex *16 prop34w 

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      
      
c     scalar product 
      p34=dotp(pp(0,3),pp(0,4))
      s  =2d0*dotp(pp(0,1),pp(0,2))	    
      s2 = 2d0 * p34
c form code had pa = pquark, pb = pgluon
      tk = - 2d0 * dotp(pp(0,2),pp(0,5))
      uk = - 2d0 * dotp(pp(0,1),pp(0,5))
      
      pae1 = dotp(pp(0,4) , pp(0,2) )
      pae2 = dotp(pp(0,3) , pp(0,2) )
      pbe1 = dotp(pp(0,4) , pp(0,1) )
      pbe2 = dotp(pp(0,3) , pp(0,1) )
      pge1 = dotp(pp(0,4) , pp(0,5) )
      pge2 = dotp(pp(0,3) , pp(0,5) )
	
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif
      
      
      amp2d = -(pbe2 - pge2) * (pge2 * s + pbe2 * tk) 
     . + pae2**2 * uk + pbe2 * pge2 * uk 
     . + pae2 * (-pbe2 * (s + tk - uk) 
     . + pge2 * (s + 2d0 * tk + uk))
     
      amp2u = -(pbe1 - pge1) * (pge1 * s + pbe1 * tk) 
     . + pae1**2 * uk + pbe1 * pge1 * uk 
     . + pae1 * (-pbe1 * (s + tk - uk) 
     . + pge1 * (s + 2d0 * tk + uk))
     
     
      amp2e = ( 4*pge1**2*s - 8*pge1*pge2*s + 4*pge2**2*s - s**2*s2
     . + 4*pbe1*pge1*tk - 4*pbe2*pge1*tk - 4*pbe1*pge2*tk 
     . + 4*pbe2*pge2*tk - 2*s*s2*tk - 2*s2*tk**2 + 4*pae1**2*uk 
     . + 4*pae2**2*uk + 4*pbe1*pge1*uk - 4*pbe2*pge1*uk -4*pbe1*pge2*uk 
     . + 4*pbe2*pge2*uk - 2*s2*tk*uk - s2*uk**2 - 4*pae1*(pbe1*(s + tk)
     . - pbe2*(s + tk) + 2*pae2*uk - (pge1 - pge2)*(s + 2*tk + uk)) - 
     .  4*pae2*(-(pbe1*(s + tk)) + pbe2*(s + tk) + (pge1 - pge2)*(s 
     .+ 2*tk + uk)))
     
      amp2d = amp2d*4d0 *s2/3d0/uk/s
      amp2u = amp2u*4d0 *s2/3d0/uk/s 
      amp2e = amp2e * s2/12d0/uk/s
     
      amp2d = amp2d * prop34w * DCONJG(prop34w)  
      amp2u = amp2u * prop34w * DCONJG(prop34w)  
      amp2e = amp2e * prop34w * DCONJG(prop34w)  
      
      amp2d = amp2d*((ph_geff)**4) *(4d0*pi*st_alpha)
      amp2u = amp2u*((ph_geff)**4) *(4d0*pi*st_alpha)
      amp2e = amp2e*((ph_geff)**4) *(4d0*pi*st_alpha)
      
      amp2d = amp2d /(ph_vev)**2
      amp2u = amp2u /(ph_vev)**2
      amp2e = amp2e /(ph_vev)**2
      
c     add the RGE factor 
      call RGE(LambdaNP,rg)
      amp2d = rg**2 * amp2d
      amp2u = rg**2 * amp2u      
      
      
      end

ccccccccccccccccccccccccccccccccccccccccccccc

      subroutine q_g_to_al_vl_qp_wedm(pphy,fermion_type,fermion_charge,
     #     amp2d,amp2u,amp2e)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2, rg
      real * 8 dotp,tmp
      real * 8 amp2d, amp2u, amp2e
      integer mu,i
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      complex *16 prop34w 

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      
      
c     scalar product 
      p34=dotp(pp(0,3),pp(0,4))
      s  =2d0*dotp(pp(0,1),pp(0,2))	    
      s2 = 2d0 * p34
c form code had pa = pquark, pb = pgluon
      tk = - 2d0 * dotp(pp(0,1),pp(0,5))
      uk = - 2d0 * dotp(pp(0,2),pp(0,5))
      
      pae1 = dotp(pp(0,4) , pp(0,1) )
      pae2 = dotp(pp(0,3) , pp(0,1) )
      pbe1 = dotp(pp(0,4) , pp(0,2) )
      pbe2 = dotp(pp(0,3) , pp(0,2) )
      pge1 = dotp(pp(0,4) , pp(0,5) )
      pge2 = dotp(pp(0,3) , pp(0,5) )
	
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif
      
      
      amp2d = -(pbe2 - pge2) * (pge2 * s + pbe2 * tk) 
     . + pae2**2 * uk + pbe2 * pge2 * uk 
     . + pae2 * (-pbe2 * (s + tk - uk) 
     . + pge2 * (s + 2d0 * tk + uk))
     
      amp2u = -(pbe1 - pge1) * (pge1 * s + pbe1 * tk) 
     . + pae1**2 * uk + pbe1 * pge1 * uk 
     . + pae1 * (-pbe1 * (s + tk - uk) 
     . + pge1 * (s + 2d0 * tk + uk))
     
      amp2e = ( 4*pge1**2*s - 8*pge1*pge2*s + 4*pge2**2*s - s**2*s2
     . + 4*pbe1*pge1*tk - 4*pbe2*pge1*tk - 4*pbe1*pge2*tk 
     . + 4*pbe2*pge2*tk - 2*s*s2*tk - 2*s2*tk**2 + 4*pae1**2*uk 
     . + 4*pae2**2*uk + 4*pbe1*pge1*uk - 4*pbe2*pge1*uk -4*pbe1*pge2*uk 
     . + 4*pbe2*pge2*uk - 2*s2*tk*uk - s2*uk**2 - 4*pae1*(pbe1*(s + tk)
     . - pbe2*(s + tk) + 2*pae2*uk - (pge1 - pge2)*(s + 2*tk + uk)) - 
     .  4*pae2*(-(pbe1*(s + tk)) + pbe2*(s + tk) + (pge1 - pge2)*(s 
     .+ 2*tk + uk)))
     
     
      amp2d = amp2d*4d0 *s2/3d0/uk/s
      amp2u = amp2u*4d0 *s2/3d0/uk/s 
      amp2e = amp2e * s2/12d0/uk/s

      
      amp2d = amp2d * prop34w * DCONJG(prop34w)  
      amp2u = amp2u * prop34w * DCONJG(prop34w)  
      amp2e = amp2e * prop34w * DCONJG(prop34w)  


      amp2d = amp2d*((ph_geff)**4) *(4d0*pi*st_alpha)
      amp2u = amp2u*((ph_geff)**4) *(4d0*pi*st_alpha)
      amp2e = amp2e*((ph_geff)**4) *(4d0*pi*st_alpha)
      
      amp2d = amp2d /(ph_vev)**2
      amp2u = amp2u /(ph_vev)**2
      amp2e = amp2e /(ph_vev)**2
      
c     add the RGE factor 
      call RGE(LambdaNP,rg)
      amp2d = rg**2 * amp2d
      amp2u = rg**2 * amp2u
      
      end


ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine g_aqp_to_l_avl_aq_wedm(pphy,fermion_type,
     #  fermion_charge, amp2d, amp2u,amp2e)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2d, amp2u, amp2e
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call g_aqp_to_al_vl_aq_wedm(pphy,ferm_type,ferm_charge,
     #     amp2d,amp2u,amp2e)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine q_g_to_l_avl_qp_wedm(pphy,fermion_type,fermion_charge,
     #     amp2d, amp2u,amp2e)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2d, amp2u, amp2e
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_g_to_al_vl_qp_wedm(pphy,ferm_type,ferm_charge,
     #     amp2d,amp2u,amp2e)

      end      
      
      
c  Xi: right handed current 
c this subroutine compute the Born amplitude for the process
c q(p1) qp(p2) -> W(p3+p4) g(p5)   con W -> l(p3) vl(p4) 
c mediated by weak dipole moments.
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
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aqp_to_al_vl_g_xi(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp
      integer mu,i,pol, i1, i2
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
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
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=ferm_charge(2)
            ferm_charge(2)=tmp
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

c     scalar product 
      p34=dotp(p(0,3),p(0,4))
      s  =2d0*dotp(p(0,1),p(0,2))	    
      s2 = 2d0 * p34
      tk = - 2d0 * dotp( p(0,1), p(0,5))
      uk = - 2d0 * dotp( p(0,2), p(0,5))
      
      pae1 = dotp(p(0,4) , p(0,1) )
      pae2 = dotp(p(0,3) , p(0,1) )
      pbe1 = dotp(p(0,4) , p(0,2) )
      pbe2 = dotp(p(0,3) , p(0,2) )
      pge1 = dotp(p(0,4) , p(0,5) )
      pge2 = dotp(p(0,3) , p(0,5) )
	
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif

      
      amp2 = -2*(pbe2*(pbe1*tk + pge1*(s + uk)) + pae1*(pge2*(s + tk) 
     .+ pae2*uk - pbe2*(2*s + tk + uk)))

      

      amp2 = amp2/3d0/tk/uk
     
      amp2 = amp2 * prop34w * DCONJG(prop34w) 
      
c     weak and strong couplings      
      amp2 = CF*amp2*((ph_geff)**4) *(4d0*pi*st_alpha)

      


      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine q_aqp_to_l_avl_g_xi(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c same function as before.
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_aqp_to_al_vl_g_xi(pphy,ferm_type,ferm_charge,
     #     amp2)

      end
      
      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C gluon channels
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine g_aqp_to_al_vl_aq_xi(pphy,fermion_type,
     # fermion_charge,amp2)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp
      real * 8 amp2
      integer mu,i
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      complex *16 prop34w 

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      
      
c     scalar product 
      p34=dotp(pp(0,3),pp(0,4))
      s  =2d0*dotp(pp(0,1),pp(0,2))	    
      s2 = 2d0 * p34
c form code had pa = pquark, pb = pgluon
      tk = - 2d0 * dotp(pp(0,2),pp(0,5))
      uk = - 2d0 * dotp(pp(0,1),pp(0,5))
      
      if(ferm_type(2).lt.0) then
	pae1 = dotp(pp(0,4) , pp(0,2) )
	pae2 = dotp(pp(0,3) , pp(0,2) )
	pbe1 = dotp(pp(0,4) , pp(0,1) )
	pbe2 = dotp(pp(0,3) , pp(0,1) )
	pge1 = dotp(pp(0,4) , pp(0,5) )
	pge2 = dotp(pp(0,3) , pp(0,5) )
      else 	   
	pae1 = dotp(pp(0,3) , pp(0,2) )
	pae2 = dotp(pp(0,4) , pp(0,2) )
	pbe1 = dotp(pp(0,3) , pp(0,1) )
	pbe2 = dotp(pp(0,4) , pp(0,1) )
	pge1 = dotp(pp(0,3) , pp(0,5) )
	pge2 = dotp(pp(0,4) , pp(0,5) )
      endif	  
	
	
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif
      
      
      amp2 = (pge1*(pge2*s + pbe2*(tk + uk)) + pae2*(-(pbe1*(s + tk)) 
     .+ pae1*uk + pge1*(s + 2*tk + uk)))
     
     
      amp2 = amp2/3d0/uk/s

      amp2 = amp2 * prop34w * DCONJG(prop34w)  
      
      amp2 = amp2*((ph_geff)**4) *(4d0*pi*st_alpha)
      
      end

ccccccccccccccccccccccccccccccccccccccccccccc

      subroutine q_g_to_al_vl_qp_xi(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp
      real * 8 amp2
      integer mu,i
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      complex *16 prop34w 

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

      
      
c     scalar product 
      p34=dotp(pp(0,3),pp(0,4))
      s  =2d0*dotp(pp(0,1),pp(0,2))	    
      s2 = 2d0 * p34
c form code had pa = pquark, pb = pgluon
      tk = - 2d0 * dotp(pp(0,1),pp(0,5))
      uk = - 2d0 * dotp(pp(0,2),pp(0,5))
      
      if(ferm_type(1).gt.0) then
	pae1 = dotp(pp(0,4) , pp(0,1) )
	pae2 = dotp(pp(0,3) , pp(0,1) )
	pbe1 = dotp(pp(0,4) , pp(0,2) )
	pbe2 = dotp(pp(0,3) , pp(0,2) )
	pge1 = dotp(pp(0,4) , pp(0,5) )
	pge2 = dotp(pp(0,3) , pp(0,5) )
      else 	   
	pae1 = dotp(pp(0,3) , pp(0,1) )
	pae2 = dotp(pp(0,4) , pp(0,1) )
	pbe1 = dotp(pp(0,3) , pp(0,2) )
	pbe2 = dotp(pp(0,4) , pp(0,2) )
	pge1 = dotp(pp(0,3) , pp(0,5) )
	pge2 = dotp(pp(0,4) , pp(0,5) )
      endif	  
	
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif
      
      
      amp2 = (pge2*(pge1*s + pbe1*(tk + uk)) + pae1*(-(pbe2*(s + tk)) 
     .+ pae2*uk + pge2*(s + 2*tk + uk)))
      
      amp2 = amp2/3d0/uk/s
       
      amp2 = amp2 * prop34w * DCONJG(prop34w)  
      
      amp2 = amp2*((ph_geff)**4) *(4d0*pi*st_alpha)
      
       end


ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine g_aqp_to_l_avl_aq_xi(pphy,fermion_type,
     #  fermion_charge, amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call g_aqp_to_al_vl_aq_xi(pphy,ferm_type,ferm_charge,
     #     amp2)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine q_g_to_l_avl_qp_xi(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_g_to_al_vl_qp_xi(pphy,ferm_type,ferm_charge,
     #     amp2)

      end      


CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC      
C      
C  Scalar and tensor semileptonic interactions    
C      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC            
      
      
      subroutine q_aqp_to_al_vl_g_4f(pphy,fermion_type,fermion_charge,
     #     amp2,amp2t,amp2st,amp2_im)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2, amp2t, amp2st, amp2_im
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2, vev 
      real * 8 dotp,tmp, rg_s, rg_t
      real * 8 eps
      integer mu,i,pol, i1, i2
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
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
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

c     exchange particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=ferm_charge(2)
            ferm_charge(2)=tmp
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

c     scalar product 
      p34=dotp(p(0,3),p(0,4))
      s  =2d0*dotp(p(0,1),p(0,2))	    
      s2 = 2d0 * p34
      tk = - 2d0 * dotp( p(0,1), p(0,5))
      uk = - 2d0 * dotp( p(0,2), p(0,5))
      
      pae1 = dotp(p(0,4) , p(0,1) )
      pae2 = dotp(p(0,3) , p(0,1) )
      pbe1 = dotp(p(0,4) , p(0,2) )
      pbe2 = dotp(p(0,3) , p(0,2) )
      pge1 = dotp(p(0,4) , p(0,5) )
      pge2 = dotp(p(0,3) , p(0,5) )
	
      vev =  ph_vev
      
      call RGE(LambdaNP,rg_t)
      call RGE_s(LambdaNP,rg_s)
      call LeviCivita(p(:,1),p(:,2),p(:,3),p(:,5),eps)
      
      amp2 = s2*(2d0*s**2 + 2d0*s*(tk + uk) 
     .	   + (tk + uk)**2)/(6d0*tk*uk)
 
      amp2 = amp2 *(4*pi*st_alpha)* CF * (2d0/vev**2)**2 * rg_s**2
 
      amp2t =  8/(3d0 * tk * uk)* (  
     .  -8*pbe2*pge1*s - 8*pbe1*pge2*s + 16*pge1*pge2*s - 2*s**2*s2 - 
     .  16*pbe1*pbe2*tk + 8*pbe2*pge1*tk + 8*pbe1*pge2*tk - 2*s*s2*tk 
     . - s2*tk**2 - 2*(4*pbe2*pge1 + 4*pbe1*pge2 + s*s2 - s2*tk)*uk 
     . - s2*uk**2 +  8*pae2*(-(pge1*(s + tk)) + (-2*pae1 + pge1)*uk 
     . + pbe1*(2*s + tk + uk)) +   8*pae1*(-(pge2*(s + tk - uk)) 
     . + pbe2*(2*s + tk + uk)) )
     
     
      amp2t = amp2t * (4*pi*st_alpha)* CF * (2d0/vev**2)**2 * rg_t**2 

      amp2st = -16d0/(3d0 * tk * uk)*( 
     . (pbe2*pge1 - pbe1*pge2)*(s + tk + uk) 
     .+ pae2*(-pge1*(s + tk + uk) 
     .+ pbe1*(2*s + tk + uk)) + pae1*(pge2*(s + tk + uk) 
     .- pbe2*(2*s + tk + uk)) )

      amp2st = amp2st *(4*pi*st_alpha)* CF * (2d0/vev**2)**2*rg_t*rg_s 

      amp2_im = eps *  4/3d0 * 1/(tk*uk)**2 * (       
     .  2*(-2*(pbe1 + pbe2) + s)*tk**2 + 
     .  tk*(-2*pbe1 - 2*pbe2 + 4*pge1 + 4*pge2 + s + 8*tk)*uk + 
     .  (-4*pae1 - 4*pae2 + 2*s + 9*tk)*uk**2)  
     
      amp2_im = amp2_im *(4*pi*st_alpha)* CF *(2d0/vev**2)**2*rg_t*rg_s
     
C      amp2_im = 0d0*amp2_im
     
      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine q_aqp_to_l_avl_g_4f(pphy,fermion_type,fermion_charge,
     #     amp2,amp2t,amp2st,amp2_im)
   
      implicit none
c same function as before.
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2, amp2t,amp2st,amp2_im
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_aqp_to_al_vl_g_4f(pphy,ferm_type,ferm_charge,
     #     amp2,amp2t,amp2st,amp2_im)

      end
      
      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C gluon channels
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine g_aqp_to_al_vl_aq_4f(pphy,fermion_type,
     # fermion_charge,amp2,amp2t,amp2st,amp2_im)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp
      real * 8 amp2, amp2t, amp2st,amp2_im
      integer mu,i
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      complex *16 prop34w 

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
      
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(5)

          
      call q_aqp_to_al_vl_g_4f(pp,ferm_type,ferm_charge,
     #     amp2,amp2t,amp2st,amp2_im)
      
c     correct for color average
      amp2 = -amp2 * 3d0/8d0
      amp2t = -amp2t * 3d0/8d0
      amp2st = -amp2st * 3d0/8d0
      amp2_im = -amp2_im * 3d0/8d0
      
      end

ccccccccccccccccccccccccccccccccccccccccccccc

      subroutine q_g_to_al_vl_qp_4f(pphy,fermion_type,fermion_charge,
     #     amp2,amp2t,amp2st,amp2_im)
   
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 p34, pbe2, pge2, pae2
      real * 8 pbe1, pge1, pae1
      real * 8 s, tk, uk, s2
      real * 8 dotp,tmp
      real * 8 amp2, amp2t, amp2st, amp2_im
      integer mu,i
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      complex *16 prop34w 

      do i = 1,nleg
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
      
c no useful information is in ferm_type(2) or ferm_charge(2), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(2) = -ferm_type(5)
c NOTE the MINUS sign     !!!
      ferm_charge(2) = -ferm_charge(5)

c     if the following two lines are missing 
      ferm_type(5)=0
      ferm_charge(5)=0d0 
c     ferm_type(5) and ferm_charge(5) don't contain
c     their correct values, but this does not affect 
c     the correct call of
      
      call q_aqp_to_al_vl_g_4f(pp,ferm_type,ferm_charge,
     #     amp2,amp2t,amp2st,amp2_im)

c     correct for color average
      amp2 = -amp2 * 3d0/8d0
      amp2t = -amp2t * 3d0/8d0
      amp2st = -amp2st * 3d0/8d0
      amp2_im = -amp2_im * 3d0/8d0
      
      end


ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine g_aqp_to_l_avl_aq_4f(pphy,fermion_type,
     #  fermion_charge, amp2,amp2t,amp2st,amp2_im)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2, amp2t,amp2st, amp2_im
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call g_aqp_to_al_vl_aq_4f(pphy,ferm_type,ferm_charge,
     #     amp2,amp2t,amp2st,amp2_im)

      end

ccccccccccccccccccccccccccccccccccccccccccccc

       subroutine q_g_to_l_avl_qp_4f(pphy,fermion_type,fermion_charge,
     #     amp2,amp2t,amp2st,amp2_im)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2, amp2t, amp2st, amp2_im
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_g_to_al_vl_qp_4f(pphy,ferm_type,ferm_charge,
     #     amp2,amp2t,amp2st,amp2_im)

      end            

      
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc 
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

      