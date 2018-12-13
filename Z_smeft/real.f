      subroutine setreal(p,rflav,amp2real)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2real

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

      real *8 amp2,ploc(0:3,nlegreal), amp2edm, amp2st
      real *8 amp2scalar, amp2t, amp2l
      integer i,mu,ii(nlegreal)
      integer ferm_type(nlegreal)
      real * 8 ferm_charge(nlegreal)

c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      logical check,cond
      parameter (check=.false.)

      do i=1,nlegreal
         ii(i)=rflav(i)
         do mu=0,3
            ploc(mu,i)=p(mu,i)
         enddo
      enddo

      if(check) then
         do mu=0,3
            if(
     $dabs(ploc(mu,1)+ploc(mu,2)-ploc(mu,3)-ploc(mu,4)-ploc(mu,5))
     $.gt.1d-6) then
               write(*,*) 'momentum non conservation in setreal'
               stop
            endif
         enddo
         if(ii(3).le.0.or.ii(4).ge.0) then
            write(*,*) 'Error in setreal'
            stop
         endif
      endif
      ferm_type(3) = +1
      ferm_type(4) = -1

      if(mod(vdecaymode,2).eq.1) then
         ferm_charge(3) = -1d0
         ferm_charge(4) = +1d0
      elseif(mod(vdecaymode,2).eq.0) then
         ferm_charge(3) = 0d0
         ferm_charge(4) = 0d0
      else
         write(*,*) 'Error in vdecaymode in setreal'
         stop
      endif

      amp2edm = 0d0
      amp2scalar = 0d0
      amp2l = 0d0
    
      if((ii(1)*ii(2).ne.0)) then
c     q q -> e- e+ g
         cond=.false.
         if((ii(1).eq.1).or.(ii(1).eq.3).or.(ii(1).eq.5)) then
c     d d~ -> Z g
            ferm_charge(1) = charge(1)
            ferm_charge(2) = charge(-1)
            ferm_charge(5) = 0d0
            ferm_type(1) = 1
            ferm_type(2) = -1
            ferm_type(5) = 0
            cond=.true.
         elseif((ii(1).eq.-1).or.(ii(1).eq.-3).or.(ii(1).eq.-5)) then
c     d~ d -> Z g
            ferm_charge(1) = charge(-1)
            ferm_charge(2) = charge(1)
            ferm_charge(5) = 0d0
            ferm_type(1) = -1
            ferm_type(2) = 1
            ferm_type(5) = 0
            cond=.true.
         elseif((ii(1).eq.2).or.(ii(1).eq.4)) then
c     u u~ -> Z g
            ferm_charge(1) = charge(2)
            ferm_charge(2) = charge(-2)
            ferm_charge(5) = 0d0
            ferm_type(1) = 1
            ferm_type(2) = -1
            ferm_type(5) = 0
            cond=.true.
         elseif((ii(1).eq.-2).or.(ii(1).eq.-4)) then
c     u~ u -> Z g
            ferm_charge(1) = charge(-2)
            ferm_charge(2) = charge(2)
            ferm_charge(5) = 0d0
            ferm_type(1) = -1
            ferm_type(2) = 1
            ferm_type(5) = 0
            cond=.true.
         endif
         
         if(cond) then
            call q_aq_to_l_al_g(ploc,ferm_type,ferm_charge,rflav,amp2)
            if(edm) then 
	      call q_aq_to_l_al_g_edm(ploc,ferm_type,ferm_charge,rflav,	
     #				     amp2edm,amp2l)
	      call q_aq_to_l_al_g_4f(ploc,ferm_type,ferm_charge,rflav,	
     #				     amp2scalar,amp2t,amp2st)
	    endif  
         else
            write(*,*) 'Error in setreal'
            stop
         endif

      elseif((ii(1).eq.0).and.(ii(2).ne.0)) then
c     g q -> e- e+ q
         cond=.false.
         if((ii(2).eq.1).or.(ii(2).eq.3).or.(ii(2).eq.5)) then
c     g d -> Z d
            ferm_charge(1) = 0d0
            ferm_charge(2) = charge(1)
            ferm_charge(5) = charge(1)
            ferm_type(1) = 0
            ferm_type(2) = 1
            ferm_type(5) = 1
            cond=.true.
         elseif((ii(2).eq.-1).or.(ii(2).eq.-3).or.(ii(2).eq.-5)) then
c     g d~ -> Z d~
            ferm_charge(1) = 0d0
            ferm_charge(2) = charge(-1)
            ferm_charge(5) = charge(-1)
            ferm_type(1) = 0
            ferm_type(2) = -1
            ferm_type(5) = -1   
            cond=.true.
         elseif((ii(2).eq.2).or.(ii(2).eq.4)) then
c     g u -> Z u
            ferm_charge(1) = 0d0
            ferm_charge(2) = charge(2)
            ferm_charge(5) = charge(2)
            ferm_type(1) = 0
            ferm_type(2) = 1
            ferm_type(5) = 1
            cond=.true.
         elseif((ii(2).eq.-2).or.(ii(2).eq.-4)) then
c     g u~ -> Z u~
            ferm_charge(1) = 0d0
            ferm_charge(2) = charge(-2)
            ferm_charge(5) = charge(-2)
            ferm_type(1) = 0
            ferm_type(2) = -1
            ferm_type(5) = -1            
            cond=.true.
         endif
         if(cond) then
            call g_q_to_l_al_q(ploc,ferm_type,ferm_charge,rflav,amp2)
            if(edm) then 
	      call g_q_to_l_al_q_edm(ploc,ferm_type,ferm_charge,rflav,	
     #				     amp2edm,amp2l)
	      call g_q_to_l_al_q_4f(ploc,ferm_type,ferm_charge,rflav,	
     #				     amp2scalar,amp2t,amp2st)
	    endif  
         else
            write(*,*) 'Error in setreal'
            stop
         endif
         
      elseif((ii(2).eq.0).and.(ii(1).ne.0)) then
c     q g -> e- e+ q
         cond=.false.
         if((ii(1).eq.1).or.(ii(1).eq.3).or.(ii(1).eq.5)) then
c     d g -> Z d
            ferm_charge(2) = 0d0
            ferm_charge(1) = charge(1)
            ferm_charge(5) = charge(1)
            ferm_type(2) = 0
            ferm_type(1) = 1
            ferm_type(5) = 1
            cond=.true.
         elseif((ii(1).eq.-1).or.(ii(1).eq.-3).or.(ii(1).eq.-5)) then
c     d~ g -> Z d~
            ferm_charge(2) = 0d0
            ferm_charge(1) = charge(-1)
            ferm_charge(5) = charge(-1)
            ferm_type(2) = 0
            ferm_type(1) = -1
            ferm_type(5) = -1
            cond=.true.
         elseif((ii(1).eq.2).or.(ii(1).eq.4)) then
c     u g  -> Z u
            ferm_charge(2) = 0d0
            ferm_charge(1) = charge(2)
            ferm_charge(5) = charge(2)
            ferm_type(2) = 0
            ferm_type(1) = 1
            ferm_type(5) = 1
            cond=.true.
         elseif((ii(1).eq.-2).or.(ii(1).eq.-4)) then
c     u~ g -> Z u~
            ferm_charge(2) = 0d0
            ferm_charge(1) = charge(-2)
            ferm_charge(5) = charge(-2)
            ferm_type(2) = 0
            ferm_type(1) = -1
            ferm_type(5) = -1   
            cond=.true.
         endif
         if(cond) then
            call q_g_to_l_al_q(ploc,ferm_type,ferm_charge,rflav,amp2)
            if(edm) then 
	      call q_g_to_l_al_q_edm(ploc,ferm_type,ferm_charge,rflav,	
     #				     amp2edm,amp2l)
     	      call q_g_to_l_al_q_4f(ploc,ferm_type,ferm_charge,rflav,	
     #				     amp2scalar,amp2t,amp2st)
	    endif     
         else
            write(*,*) 'Error in setreal'
            stop
         endif

      else
         write(*,*) 'Error in setreal'
         stop
      endif

      
      amp2real=amp2 + amp2edm + amp2scalar + amp2t +  amp2st + amp2l

      
c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2real = amp2real/(st_alpha/(2*pi))

      end




c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4) g(p5)  con Z -> f(p3) af(p4) 
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic 
c amplitude
c It gets the matrix p with all the momenta and gives   
c the amplitude squared (amp2) averaged over initial 
c polarization     
c
c         q  --->----------->------ g
c                     |
c                     |            f
c                     |          /  
c         aq ---<-----/\/\/\/\/\/
c                       Z/gamma \
c                                \ af
c     ferm_type = 1 fermion
c     ferm_type = -1 antifermion
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aq_to_l_al_g(pphy,fermion_type,fermion_charge,
     #     rflav,amp2)
   
      implicit none
c the nleg 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      include 'PhysPars.h'
      include 'pwhg_math.h'  
      include 'pwhg_st.h'  
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      real * 8 p34
      real * 8 dotp,tmp
      complex * 16 ccdotp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlep(0:3,-1:1),jqua(0:3,-1:1)
      complex*16 jlep_dot_jqua
      integer mu,i,pol,hel_lep,hel_qua
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer utype_q,utype_f
      real * 8 q_q,v_q,a_q,q_f,v_f,a_f, zql, zqr
      real*8 Zcoup_q(-1:1),Zcoup_f(-1:1)
      real*8 Z4f(-1:1,-1:1) 
      complex *16 prop34zeta,prop34gamma
      integer rflav(nleg)
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

c exchance particle 1 and 2
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
         utype_f = -1
         q_f = -1d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
         utype_f = +1
         q_f = 0d0
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
         utype_f = -1
         q_f = -1d0/3
      elseif (abs(ferm_charge(3)).eq.2d0/3) then
         utype_f = +1
         q_f = 2d0/3
      else
         write(*,*) 'What charge is this??',ferm_charge(3)
         stop
      endif
      
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw2 
      a_q = utype_q*1.d0/2
      Zcoup_q(-1) = v_q + a_q
      Zcoup_q(+1) = v_q - a_q

      v_f = utype_f*1.d0/2 - 2*q_f*ph_sthw2 
      a_f = utype_f*1.d0/2     
      Zcoup_f(-1) = v_f + a_f
      Zcoup_f(+1) = v_f - a_f

c  impose that the flavor changing neutral current contributions from the SM is 0      
      if(abs(rflav(1)).ne.abs(rflav(2)) ) then
	Zcoup_q(-1) = 1d-20
	Zcoup_q(+1) = 1d-20
	q_q = 1d-20
      endif      
      
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

      if(ph_runwidth) then
         prop34zeta=teo_fact/dcmplx(2d0*p34-ph_Zmass2
     $     ,ph_ZmZw*2d0*p34/ph_Zmass2)
      else
         prop34zeta=teo_fact/dcmplx(2d0*p34-ph_Zmass2,ph_ZmZw)
      endif
c     teo_fact is the square root of the ratio between the experimental
c     width of the Z boson and the theoretical one.  This last is
c     evaluated by summing over species and flavours the quantity
c     (g_a)^2+(g_v)^2, multiplying then for the appropriate factor.
c     In this way one can safely push Z width to zero, avoiding
c     the cross section to diverge

c     photon propagator
      prop34gamma=1d0/(2d0*p34)

c     four-fermion operators       
      Z4f = 0d0
c     u e      
      if(utype_q.eq.1.and.utype_f.eq.-1) then
	Z4f(-1,-1) = ph_QLu(abs(rflav(1))/2,abs(rflav(2))/2)
	Z4f(-1, 1) = ph_Qeu(abs(rflav(1))/2,abs(rflav(2))/2)
	Z4f( 1,-1) = ph_CLu(abs(rflav(1))/2,abs(rflav(2))/2)
	Z4f( 1, 1) = ph_Ceu(abs(rflav(1))/2,abs(rflav(2))/2)
	zql   =    ph_QphiU(abs(rflav(1))/2,abs(rflav(2))/2)  
     	zqr   =    ph_Uphi (abs(rflav(1))/2,abs(rflav(2))/2)
c     u nu      
      elseif(utype_q.eq.1.and.utype_f.eq.1) then
	Z4f(-1,-1) = ph_QLu_nu(abs(rflav(1))/2,abs(rflav(2))/2)
	Z4f(-1, 1) = 0
	Z4f( 1,-1) = ph_CLu(abs(rflav(1))/2,abs(rflav(2))/2)
	Z4f( 1, 1) = 0
	zql   =    ph_QphiU(abs(rflav(1))/2,abs(rflav(2))/2)  
     	zqr   =    ph_Uphi (abs(rflav(1))/2,abs(rflav(2))/2)
c     d e	
      elseif(utype_q.eq.-1.and.utype_f.eq.-1) then
	Z4f(-1,-1) = ph_QLd((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	Z4f(-1, 1) = ph_Qe((abs(rflav(1))+1)/2, (abs(rflav(2))+1)/2)
	Z4f( 1,-1) = ph_CLd((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	Z4f( 1, 1) = ph_Ced((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	zql     =  ph_QphiD((abs(rflav(1))+1)/2, (abs(rflav(2))+1)/2)  
     	zqr   =    ph_Dphi ((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
c     d nu	
      elseif(utype_q.eq.-1.and.utype_f.eq.1) then
	Z4f(-1,-1) = ph_QLd_nu((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	Z4f(-1, 1) = 0
	Z4f( 1,-1) = ph_CLd((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	Z4f( 1, 1) = 0
	zql   =    ph_QphiD((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2) 
     	zqr   =    ph_Dphi ((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
      endif      

      if(edm) then
	Zcoup_q(-1) = Zcoup_q(-1) + zql  
	Zcoup_q(+1) = Zcoup_q(+1) + zqr
      endif
      
c     bra and ket are made with actual momenta,but a check on positivity
c     of energy is needed when one uses this function to evaluate a
c     crossing related amplitudes. NOTE that this affect only the
c     construction of spinors or polarization vectors on external leg
c     that may be crossed, all other momenta are unchanged 
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
c     em
      call bra(p(0,3),ferm_type(3),psi3)
c     ep
      call ket(p(0,4),ferm_type(4),psi4)
      
c     leptonic currents
      call bra_gamma_ket(psi3,psi4,-1,jlep(0,-1))
      call bra_gamma_ket(psi3,psi4,+1,jlep(0,1))
      
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

                  
         do hel_lep=-1,1,2
             
            do hel_qua=-1,1,2
               
               call bra_gamma_ket_gluon(psi2,psi1,hel_qua,p2,p1,
     #              p(0,5),epsg(0,pol),jqua(0,hel_qua))
               
   
               jlep_dot_jqua = 
     #               ccdotp(jlep(0,hel_lep),jqua(0,hel_qua))

c to take account of the gamma/Z interference         

               jlep_dot_jqua = (
     #              q_q*q_f*prop34gamma +
     #              (prop34zeta* Zcoup_q(hel_qua)*Zcoup_f(hel_lep) 
     #                -2./ph_Zmass2 * Z4f(hel_qua,hel_lep) )*
     #              (ph_gcweff/2d0/ph_unit_e)**2  )
     #              * jlep_dot_jqua
     
               amp2 = amp2 + jlep_dot_jqua *
     #              DCONJG(jlep_dot_jqua)    
        
            enddo      
         enddo
         
      enddo
      amp2 = amp2* ph_unit_e**4 * (4*pi*st_alpha)
c     1/4 from average over initial-state polarization
c     1/nc^2 * nc = 1/nc from average over initial-state colors and sum over 
c     quark colors 
      amp2=  amp2*CF/4d0/nc

      end



CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C AMPLITUDES RELATES BY CROSSING:
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c this subroutine compute the born amplitude for the process
c q(p1) g(p2) -> Z(p3+p4) q(p5)  con Z -> l-(p3) l+(p4) 
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic 
c amplitude. This amplitude is obtained by crossing the formula for 
c q_aq_to_l_al_g
      
      subroutine q_g_to_l_al_q(pphy,fermion_type,fermion_charge,
     #     rflav,amp2)
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
      integer rflav(nleg), rflav2(nleg)
      

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
         rflav2(i)    = rflav(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,2)
         pp(mu,2) = -pphy(mu,5)
      enddo
      
      rflav2(2) = rflav(5)
      rflav2(5) = rflav(2)      
      
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
      
      call q_aq_to_l_al_g(pp,ferm_type,ferm_charge,
     #     rflav2,amp2)

c     correct for color average
      amp2 = amp2 * 3d0/8d0

      end


ccccccccccccccccccccccccccccccccccccccccccccc
c this subroutine compute the Born amplitude for the process
c g(p1) q(p2) -> Z(p3+p4) q(p5)   con Z -> l-(p3) l+(p4) 
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic 
c amplitude. This amplitude is obtained by crossing the formula for 
c q_aq_to_l_al_g


      subroutine g_q_to_l_al_q(pphy,fermion_type,fermion_charge,
     #     rflav,amp2)
      
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
      integer rflav(nleg), rflav2(nleg)	  

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
         rflav2(i)    = rflav(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
      enddo

      rflav2(1) = rflav(5)
      rflav2(5) = rflav(1)

      
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(5)

          
      call q_aq_to_l_al_g(pp,ferm_type,ferm_charge,
     #     rflav2,amp2)
      
c     correct for color average
      amp2 = amp2 *3d0/8d0
     
      end
      
c EDM amplitudes      
c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4) g(p5)  con Z -> f(p3) af(p4) 
c induce by the Z and photon dipole moments.
c The amplitudes were computed in form
c
c         q  --->----------->------ g
c                     |
c                     |            f
c                     |          /  
c         aq ---<-----/\/\/\/\/\/
c                       Z/gamma \
c                                \ af
c     ferm_type = 1 fermion
c     ferm_type = -1 antifermion
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aq_to_l_al_g_edm(pphy,fermion_type,fermion_charge,
     #     rflav,amp2edm,amp2l)
   
      implicit none
c the nleg 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2Z, amp2g, amp2Zg, amp2, amp2edm, amp2a, amp2l
      real * 8 amp2Z_l, amp2g_l, amp2Zg_l
      include 'PhysPars.h'
      include 'pwhg_math.h'  
      include 'pwhg_st.h'  
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      real * 8 p34, pae1, pae2, pge1, pge2
      real * 8 tk, uk, s, s2, pbe1, pbe2
      real * 8 dotp,tmp, rg
      complex * 16 ccdotp
      real * 8 epsg(0:3,1:2)
      complex*16 psi1(2,-1:1),psi2(2,-1:1),psi3(2,-1:1),psi4(2,-1:1)
      complex*16 jlep(0:3,-1:1),jqua(0:3,-1:1)
      complex*16 jlep_dot_jqua
      integer mu,i,pol,hel_lep,hel_qua
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer utype_q,utype_f
      real * 8 q_q,v_q,a_q,q_f,v_f,a_f
      real*8 Zcoup_q(-1:1),Zcoup_f(-1:1)
      complex *16 prop34zeta,prop34gamma
      real *8 cw2, vev
      real *8 zdmRe_1, edmRe_1, zdmIm_1, edmIm_1
      real *8 zdmRe_2, edmRe_2, zdmIm_2, edmIm_2
      real *8 zdmRe_l, edmRe_l, zdmIm_l, edmIm_l
      integer rflav(nleg)
      real * 8 teo_fact

      if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with Z decay'
         stop
      endif
     
      cw2 = 1- ph_sthw2
      vev = ph_vev
c     vev = 2d0 * ph_Zmass * ph_cthw * ph_sthw/ph_unit_e

c  copy of local variables
      do i=1,nleg
         do mu=0,3
            p(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo

c exchange particle 1 and 2
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
c set also the EDM couplings     
      if (abs(ferm_charge(1)).eq.2d0/3) then
         utype_q = +1
         q_q = 2d0/3
         zdmRe_1 =          ph_ReGUw(abs(rflav(1))/2,abs(rflav(2))/2) 
     .	       - ph_sthw2 * ph_ReGUe(abs(rflav(1))/2,abs(rflav(2))/2) 
	 edmRe_1 = 	    ph_ReGUe(abs(rflav(1))/2,abs(rflav(2))/2) 
	 zdmIm_1 = 	    ph_ImGUw(abs(rflav(1))/2,abs(rflav(2))/2) 
     .	       - ph_sthw2 * ph_ImGUe(abs(rflav(1))/2,abs(rflav(2))/2) 
	 edmIm_1 = 	    ph_ImGUe(abs(rflav(1))/2,abs(rflav(2))/2) 
         zdmRe_2 =          ph_ReGUw(abs(rflav(2))/2,abs(rflav(1))/2) 
     .	       - ph_sthw2 * ph_ReGUe(abs(rflav(2))/2,abs(rflav(1))/2) 
	 edmRe_2 = 	    ph_ReGUe(abs(rflav(2))/2,abs(rflav(1))/2) 
	 zdmIm_2 = 	    ph_ImGUw(abs(rflav(2))/2,abs(rflav(1))/2) 
     .	       - ph_sthw2 * ph_ImGUe(abs(rflav(2))/2,abs(rflav(1))/2) 
	 edmIm_2 = 	    ph_ImGUe(abs(rflav(2))/2,abs(rflav(1))/2) 	 
	 
      elseif (abs(ferm_charge(1)).eq.1d0/3) then
         utype_q = -1
         q_q = -1d0/3
         zdmRe_1 = - 	    ph_ReGDw((abs(rflav(1))+1)/2,
     .				     (abs(rflav(2))+1)/2  ) 
     .	       - ph_sthw2 * ph_ReGDe((abs(rflav(1))+1)/2,
     .				     (abs(rflav(2))+1)/2  ) 
	 edmRe_1 = 	    ph_ReGDe((abs(rflav(1))+1)/2, 
     .				     (abs(rflav(2))+1)/2) 
	 zdmIm_1 = - 	    ph_ImGDw((abs(rflav(1))+1)/2,
     .				     (abs(rflav(2))+1)/2) 
     .	       - ph_sthw2 * ph_ImGDe((abs(rflav(1))+1)/2,
     .				     (abs(rflav(2))+1)/2) 
	 edmIm_1 =  	    ph_ImGDe((abs(rflav(1))+1)/2,
     .				     (abs(rflav(2))+1)/2) 
         zdmRe_2 = - 	    ph_ReGDw((abs(rflav(2))+1)/2,
     .				     (abs(rflav(1))+1)/2  ) 
     .	       - ph_sthw2 * ph_ReGDe((abs(rflav(2))+1)/2,
     .				     (abs(rflav(1))+1)/2  ) 
	 edmRe_2 = 	    ph_ReGDe((abs(rflav(2))+1)/2, 
     .				     (abs(rflav(1))+1)/2) 
	 zdmIm_2 = - 	    ph_ImGDw((abs(rflav(2))+1)/2,
     .				     (abs(rflav(1))+1)/2) 
     .	       - ph_sthw2 * ph_ImGDe((abs(rflav(2))+1)/2,
     .				     (abs(rflav(1))+1)/2) 
	 edmIm_2 =  	    ph_ImGDe((abs(rflav(2))+1)/2,
     .				     (abs(rflav(1))+1)/2) 
     
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif

                 
      if (abs(ferm_charge(3)).eq.1d0) then
         utype_f = -1
         q_f = -1d0
         zdmRe_l = - ph_ReGEw - ph_sthw2 * ph_ReGEe
         edmRe_l =   ph_ReGEe
         zdmIm_l = - ph_ImGEw - ph_sthw2 * ph_ImGEe
         edmIm_l =   ph_ImGEe
      elseif (abs(ferm_charge(3)).eq.0d0) then
         utype_f = +1
         q_f = 0d0
         zdmRe_l = 0d0
         edmRe_l = 0d0
         zdmRe_l = 0d0
         edmRe_l = 0d0
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
         utype_f = -1
         q_f = -1d0/3
         zdmRe_1 = 0 
	 edmRe_1 = 0 
	 zdmIm_1 = 0 
	 edmIm_1 = 0  
      elseif (abs(ferm_charge(3)).eq.2d0/3) then
         utype_f = +1
         q_f = 2d0/3
         zdmRe_1 = 0 
	 edmRe_1 = 0 
	 zdmIm_1 = 0 
	 edmIm_1 = 0 
      else
         write(*,*) 'What charge is this??',ferm_charge(3)
         stop
      endif
      
      
      v_q = utype_q*1.d0/2 - 2*q_q*ph_sthw2 
      a_q = utype_q*1.d0/2
      Zcoup_q(-1) = v_q + a_q
      Zcoup_q(+1) = v_q - a_q

      v_f = utype_f*1.d0/2 - 2*q_f*ph_sthw2 
      a_f = utype_f*1.d0/2     
      Zcoup_f(-1) = v_f + a_f
      Zcoup_f(+1) = v_f - a_f

      vev = ph_vev
      
c     scalar products 
      p34=dotp(p(0,3),p(0,4))
      s  =2d0*dotp(p(0,1),p(0,2))	    
      s2 = 2d0 * p34
      tk = - 2d0 * dotp( p(0,1), p(0,5))
      uk = - 2d0 * dotp( p(0,2), p(0,5))
      
      
      pae1 = dotp(p(0,3) , p(0,1) )
      pae2 = dotp(p(0,4) , p(0,1) )
      pbe1 = dotp(p(0,3) , p(0,2) )
      pbe2 = dotp(p(0,4) , p(0,2) )
      pge1 = dotp(p(0,3) , p(0,5) )
      pge2 = dotp(p(0,4) , p(0,5) )

      
c     Z propagator (see eq 2.13 in Nason-Webber,Nucl.Phys B421 pp.473-517)

c     Here, simply use teo_fact=1
      teo_fact=1

      if(ph_runwidth) then
         prop34zeta=teo_fact/dcmplx(2d0*p34-ph_Zmass2
     $     ,ph_ZmZw*2d0*p34/ph_Zmass2)
      else
         prop34zeta=teo_fact/dcmplx(2d0*p34-ph_Zmass2,ph_ZmZw)
      endif
c     teo_fact is the square root of the ratio between the experimental
c     width of the Z boson and the theoretical one.  This last is
c     evaluated by summing over species and flavours the quantity
c     (g_a)^2+(g_v)^2, multiplying then for the appropriate factor.
c     In this way one can safely push Z width to zero, avoiding
c     the cross section to diverge

c     photon propagator
      prop34gamma=1d0/(2d0*p34)
     


      
      amp2 = (-4*s2*(pbe1*pge1*s - pge1**2*s + pbe2*pge2*s - pge2**2*s 
     .+ pbe1**2*tk + pbe2**2*tk - pbe1*pge1*tk - pbe2*pge2*tk 
     .+ pae1**2*uk + pae2**2*uk + pbe1*pge1*uk + pbe2*pge2*uk 
     .- pae1*(-(pge1*(s + tk - uk)) + pbe1*(2*s + tk + uk)) 
     .- pae2*(-(pge2*(s + tk - uk)) +pbe2*(2*s + tk + uk))))/(3.*tk*uk)
    
    
      amp2a = ( -4*pbe1*pge1*s + 4*pbe2*pge1*s + 4*pbe1*pge2*s 
     .- 4*pbe2*pge2*s + 2*s**2*s2 - 4*pbe1**2*tk + 8*pbe1*pbe2*tk 
     .- 4*pbe2**2*tk + 2*s*s2*tk + s2*tk**2 -  4*pae1**2*uk 
     .- 4*pae2**2*uk - 4*pbe1*pge1*uk + 4*pbe2*pge1*uk + 4*pbe1*pge2*uk 
     .- 4*pbe2*pge2*uk + 2*s*s2*uk + s2*uk**2 -  4*pae2*(-((pge1 
     .- pge2)*(s + tk)) + pbe1*(2*s + tk + uk) - pbe2*(2*s + tk + uk)) 
     .+ 4*pae1*(-((pge1 - pge2)*(s + tk)) + 2*pae2*uk + pbe1*(2*s + tk 
     .+ uk) - pbe2*(2*s + tk + uk)) ) * (s2/(3d0*tk*uk))
    
      amp2Z = (v_f**2 + a_f**2)*amp2 * prop34zeta * DCONJG(prop34zeta) 
      
      amp2g = 4d0 * prop34gamma**2 * amp2 * abs(q_f)**2
      
      amp2Zg = -4d0 * (s2 - ph_Zmass2) *prop34zeta * DCONJG(
     .prop34zeta) * prop34gamma * amp2 * v_f * abs(q_f)
    
      amp2Z_l = (v_q**2 + a_q**2)/2d0*amp2a * prop34zeta 
     .* DCONJG(prop34zeta) 
      
      amp2g_l = 2d0 * q_q**2 * prop34gamma**2 * amp2a
      
      amp2Zg_l = 2d0 *q_q * v_q* (s2 - ph_Zmass2) *prop34zeta * DCONJG(
     .prop34zeta) * prop34gamma * amp2a 
    
    
    
      amp2Z  = amp2Z * CF * ph_gcweff**4 * 
     .(4*pi*st_alpha)/vev**2
     
      amp2g = amp2g * CF * ph_unit_e**4 * (4*pi*st_alpha)/vev**2
      
      amp2Zg = amp2Zg * CF * ph_unit_e**2* ph_gcweff**2 *
     . (4*pi*st_alpha)/vev**2
      
      amp2Z_l  = amp2Z_l * CF * ph_gcweff**4 * 
     .(4*pi*st_alpha)/vev**2
     
      amp2g_l = amp2g_l * CF * ph_unit_e**4 * (4*pi*st_alpha)/vev**2
      
      amp2Zg_l = amp2Zg_l * CF * ph_unit_e**2* ph_gcweff**2 *
     . (4*pi*st_alpha)/vev**2
      
      
      
      amp2edm= 1/2d0*( amp2Z * (zdmRe_1**2 + zdmIm_1**2) 
     .         + amp2g * (edmRe_1**2 + edmIm_1**2) 
     .	       + amp2Zg * (zdmRe_1*edmRe_1 + zdmIm_1*edmIm_1) ) 
      
      
      amp2edm= amp2edm + 1/2d0*( amp2Z * (zdmRe_2**2 + zdmIm_2**2) 
     .         + amp2g * (edmRe_2**2 + edmIm_2**2) 
     .	       + amp2Zg * (zdmRe_2*edmRe_2 + zdmIm_2*edmIm_2) ) 
      
      
      
      amp2l= (   amp2Z_l  * (zdmRe_l**2 + zdmIm_l**2) 
     .         + amp2g_l  * (edmRe_l**2 + edmIm_l**2) 
     .	       + amp2Zg_l * (zdmRe_l*edmRe_l + zdmIm_l*edmIm_l) ) 
      
      call RGE(LambdaNP,rg)
      
      amp2edm = rg**2 * amp2edm
      
      end



CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C AMPLITUDES RELATES BY CROSSING:
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c this subroutine compute the born amplitude for the process
c q(p1) g(p2) -> Z(p3+p4) q(p5)  con Z -> l-(p3) l+(p4) 
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic 
c amplitude. This amplitude is obtained by crossing the formula for 
c q_aq_to_l_al_g
      
      subroutine q_g_to_l_al_q_edm(pphy,fermion_type,fermion_charge,
     #     rflav,amp2edm,amp2l)
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2edm, amp2l
      integer mu,i
      integer rflav(nleg), rflav2(nleg)


      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
         rflav2(i)    = rflav(i)
      enddo

      rflav2(2) = rflav(5)
      rflav2(5) = rflav(2)      
      
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
      
      call q_aq_to_l_al_g_edm(pp,ferm_type,ferm_charge,
     #     rflav2,amp2edm,amp2l)

c     correct for color average
      amp2edm = -amp2edm * 3d0/8d0
      amp2l   = - amp2l * 3d0/8d0
      
      end


ccccccccccccccccccccccccccccccccccccccccccccc
c this subroutine compute the Born amplitude for the process
c g(p1) q(p2) -> Z(p3+p4) q(p5)   con Z -> l-(p3) l+(p4) 
c NUMERICALLY, with the bra/ket formalism, not by squaring the analytic 
c amplitude. This amplitude is obtained by crossing the formula for 
c q_aq_to_l_al_g


      subroutine g_q_to_l_al_q_edm(pphy,fermion_type,fermion_charge,
     #     rflav,amp2edm,amp2l)
      
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2, amp2edm, amp2l
      integer mu,i
      integer rflav(nleg)
      integer rflav2(nleg)

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
         rflav2(i)    = rflav(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
      enddo
      
      rflav2(1) = rflav(5)
      rflav2(5) = rflav(1)
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(5)

          
      call q_aq_to_l_al_g_edm(pp,ferm_type,ferm_charge,
     #     rflav2,amp2edm,amp2l)
      
c     correct for color average
      amp2edm = -amp2edm * 3d0/8d0
      amp2l   = - amp2l * 3d0/8d0 
     
      end
      
      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C
C     semileptonic four-fermion operators 
C     scalar and tensor structures 
C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      
      
      subroutine q_aq_to_l_al_g_4f(pphy,fermion_type,fermion_charge,
     #     rflav,amp2,amp2t,amp2st)
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2, amp2t, amp2st
      include 'PhysPars.h'
      include 'pwhg_math.h'  
      include 'pwhg_st.h'  
      real * 8 p1(0:3),p2(0:3),pp1(0:3),pp2(0:3),pp5(0:3)
      real * 8 p34, pae1, pae2, pge1, pge2
      real * 8 tk, uk, s, s2, pbe1, pbe2
      real * 8 dotp,tmp, rg_s, rg_t
      integer mu,i
      real * 8 p(0:3,nleg)
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer utype_q,utype_f
      real* 8 Z4fs, Z4ft, Z4fst, vev 
      real* 8 Re_Z4fs_1, Re_Z4ft_1, Im_Z4fs_1, Im_Z4ft_1
      real* 8 Re_Z4fs_2, Re_Z4ft_2, Im_Z4fs_2, Im_Z4ft_2
      integer rflav(nleg)

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

c exchance particle 1 and 2
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
      elseif (abs(ferm_charge(1)).eq.1d0/3) then
         utype_q = -1
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif

                 
      if (abs(ferm_charge(3)).eq.1d0) then
         utype_f = -1
      elseif (abs(ferm_charge(3)).eq.0d0) then
         utype_f = +1
      elseif (abs(ferm_charge(3)).eq.1d0/3) then
         utype_f = -1
      elseif (abs(ferm_charge(3)).eq.2d0/3) then
         utype_f = +1
      else
         write(*,*) 'What charge is this??',ferm_charge(3)
         stop
      endif
      

            
      p34=dotp(p(0,3),p(0,4))
      
c     Z propagator (see eq 2.13 in Nason-Webber,Nucl.Phys B421 pp.473-517)

c     four-fermion operators       
      Re_Z4fs_1  = 0d0
      Re_Z4ft_1  = 0d0
      Im_Z4fs_1  = 0d0
      Im_Z4ft_1  = 0d0
      Re_Z4fs_2  = 0d0
      Re_Z4ft_2  = 0d0
      Im_Z4fs_2  = 0d0
      Im_Z4ft_2  = 0d0
      
c     u e      
c     u e      
      if(utype_q.eq.1.and.utype_f.eq.-1) then
	Re_Z4fs_1  = -ph_Re_LeQu (abs(rflav(1))/2,abs(rflav(2))/2)
	Re_Z4ft_1  =- ph_Re_LeQu3(abs(rflav(1))/2,abs(rflav(2))/2)
	Im_Z4fs_1  = -ph_Im_LeQu (abs(rflav(1))/2,abs(rflav(2))/2)
	Im_Z4ft_1  =- ph_Im_LeQu3(abs(rflav(1))/2,abs(rflav(2))/2)
	Re_Z4fs_2  = -ph_Re_LeQu (abs(rflav(2))/2,abs(rflav(1))/2)
	Re_Z4ft_2  =- ph_Re_LeQu3(abs(rflav(2))/2,abs(rflav(1))/2)
	Im_Z4fs_2  = -ph_Im_LeQu (abs(rflav(2))/2,abs(rflav(1))/2)
	Im_Z4ft_2  =- ph_Im_LeQu3(abs(rflav(2))/2,abs(rflav(1))/2)
c     u nu      
      elseif(utype_q.eq.1.and.utype_f.eq.1) then
	Re_Z4fs_1  = 0
	Re_Z4ft_1  = 0
	Im_Z4fs_1  = 0
	Im_Z4ft_1  = 0
	Re_Z4fs_2  = 0
	Re_Z4ft_2  = 0
	Im_Z4fs_2  = 0
	Im_Z4ft_2  = 0
c     d e	
      elseif(utype_q.eq.-1.and.utype_f.eq.-1) then
	Re_Z4fs_1 = ph_Re_LedQ((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	Im_Z4fs_1 = ph_Im_LedQ((abs(rflav(1))+1)/2,(abs(rflav(2))+1)/2)
	Re_Z4fs_2 = ph_Re_LedQ((abs(rflav(2))+1)/2,(abs(rflav(1))+1)/2)
	Im_Z4fs_2 = ph_Im_LedQ((abs(rflav(2))+1)/2,(abs(rflav(1))+1)/2)
	Re_Z4ft_1  = 0
	Im_Z4ft_1  = 0
	Re_Z4ft_2  = 0
	Im_Z4ft_2  = 0
c     d nu	
      elseif(utype_q.eq.-1.and.utype_f.eq.1) then
	Re_Z4fs_1  = 0
	Re_Z4ft_1  = 0
	Im_Z4fs_1  = 0
	Im_Z4ft_1  = 0
	Re_Z4fs_2  = 0
	Re_Z4ft_2  = 0
	Im_Z4fs_2  = 0
	Im_Z4ft_2  = 0
      endif

      Z4fs = ( Re_Z4fs_1**2 + Im_Z4fs_1**2
     . 	    +  Re_Z4fs_2**2 + Im_Z4fs_2**2)/2d0
      Z4ft = ( Re_Z4ft_1**2 + Im_Z4ft_1**2
     . 	    +  Re_Z4ft_2**2 + Im_Z4ft_2**2)/2d0
      Z4fst = (Re_Z4fs_1*Re_Z4ft_1 + Im_Z4fs_1*Im_Z4ft_1
     . 	    +  Re_Z4fs_2*Re_Z4ft_2 + Im_Z4fs_2*Im_Z4ft_2)/2d0
      
      vev =  ph_vev
      
c     scalar products 
      p34=dotp(p(0,3),p(0,4))
      s  =2d0*dotp(p(0,1),p(0,2))	    
      s2 = 2d0 * p34
      tk = - 2d0 * dotp( p(0,1), p(0,5))
      uk = - 2d0 * dotp( p(0,2), p(0,5))
      
      pae1 = dotp(p(0,3) , p(0,1) )
      pae2 = dotp(p(0,4) , p(0,1) )
      pbe1 = dotp(p(0,3) , p(0,2) )
      pbe2 = dotp(p(0,4) , p(0,2) )
      pge1 = dotp(p(0,3) , p(0,5) )
      pge2 = dotp(p(0,4) , p(0,5) )
      
      call RGE(LambdaNP,rg_t)
      call RGE_s(LambdaNP,rg_s)
      
      amp2 = s2*(2d0*s**2 + 2d0*s*(tk + uk) 
     .	   + (tk + uk)**2)/(6d0*tk*uk)
 
      amp2 = amp2 *(4*pi*st_alpha)* CF * (2d0/vev**2)**2 * Z4fs
     .* rg_s**2
 
      amp2t =  8/(3d0 * tk * uk)* (  
     .  -8*pbe2*pge1*s - 8*pbe1*pge2*s + 16*pge1*pge2*s - 2*s**2*s2 - 
     .  16*pbe1*pbe2*tk + 8*pbe2*pge1*tk + 8*pbe1*pge2*tk - 2*s*s2*tk 
     . - s2*tk**2 - 2*(4*pbe2*pge1 + 4*pbe1*pge2 + s*s2 - s2*tk)*uk 
     . - s2*uk**2 +  8*pae2*(-(pge1*(s + tk)) + (-2*pae1 + pge1)*uk 
     . + pbe1*(2*s + tk + uk)) +   8*pae1*(-(pge2*(s + tk - uk)) 
     . + pbe2*(2*s + tk + uk)) )
     
      amp2t = amp2t * (4*pi*st_alpha)* CF * (2d0/vev**2)**2 * Z4ft
     .* rg_t**2
     
      
      amp2st = -16d0/(3d0 * tk * uk)*( 
     . (pbe2*pge1 - pbe1*pge2)*(s + tk + uk) 
     .+ pae2*(-pge1*(s + tk + uk) 
     .+ pbe1*(2*s + tk + uk)) + pae1*(pge2*(s + tk + uk) 
     .- pbe2*(2*s + tk + uk)) )

      amp2st = amp2st *(4*pi*st_alpha)* CF * (2d0/vev**2)**2*rg_t*rg_s 
     .  * Z4fst
      
c     hermitian conjugate      
      amp2   = 2*amp2
      amp2t  = 2*amp2t
      amp2st = 2*amp2st 
     
     
      end


CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C AMPLITUDES RELATES BY CROSSING:
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      
      subroutine q_g_to_l_al_q_4f(pphy,fermion_type,fermion_charge,
     #     rflav,amp2,amp2t,amp2st)
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2, amp2t, amp2st
      integer mu,i
      integer rflav(nleg), rflav2(nleg)


      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
         rflav2(i)    = rflav(i)
      enddo

      rflav2(2) = rflav(5)
      rflav2(5) = rflav(2)      
      
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
      
      call q_aq_to_l_al_g_4f(pp,ferm_type,ferm_charge,
     #     rflav2,amp2,amp2t,amp2st)

c     correct for color average
      amp2 = -amp2 * 3d0/8d0
      amp2t = -amp2t * 3d0/8d0
      amp2st = -amp2st * 3d0/8d0
      
      end


      subroutine g_q_to_l_al_q_4f(pphy,fermion_type,fermion_charge,
     #     rflav,amp2,amp2t,amp2st)
      
      implicit none
      integer nleg
      parameter (nleg=5)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 pp(0:3,nleg), ferm_charge(nleg)
      integer ferm_type(nleg)
      real * 8 amp2,amp2t, amp2st
      integer mu,i
      integer rflav(nleg)
      integer rflav2(nleg)

      do i = 1,nleg
         do mu=0,3
            pp(mu,i) = pphy(mu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
         rflav2(i)    = rflav(i)
      enddo

      do mu=0,3
c     exchange initial gluon <-> final quark
         pp(mu,5) = -pphy(mu,1)
         pp(mu,1) = -pphy(mu,5)
      enddo
      
      rflav2(1) = rflav(5)
      rflav2(5) = rflav(1)
c no useful information is in ferm_type(1) or ferm_charge(1), 
c since it's the gluon, BEFORE the following exchange
      ferm_type(1) = -ferm_type(5)
c NOTE the MINUS sign!!!
      ferm_charge(1) = -ferm_charge(5)

          
      call q_aq_to_l_al_g_4f(pp,ferm_type,ferm_charge,
     #     rflav2,amp2,amp2t,amp2st)
      
c     correct for color average
      amp2 = -amp2 * 3d0/8d0
      amp2t = -amp2t * 3d0/8d0
      amp2st = -amp2st * 3d0/8d0
      
     
      end