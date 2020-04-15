c
      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'cvecbos.h'
      integer nleg
      parameter (nleg=nlegreal)
      real * 8 p(0:3,nleg),p0(0:3,nleg)
      integer rflav(nleg),rflav0(nleg)
      real * 8 amp2
      real*8 col_dec,had_sum
      integer ttype

      integer j
      real*8 pzsum
      logical, save :: firstreal = .true. 
      real*8 pidr 
      common /ps_idr/ pidr   
	
      real*8 pmg(0:3,1:9)
      real*8 mg

c----------------------------------------------------
c   
      
      if(idvecbos1.eq.24) then !W+Zjj
         rflav0=rflav
         p0=p
      else ! W-Zjj
c Apply CP to the kinematics
         rflav0=-rflav
         p0=p
         p0(1,:)=-p(1,:)
      endif
      

      if (firstreal) then
         pidr = 0d0
         firstreal = .false.
      endif     
      
      pzsum = 0d0
      do j = 1,nleg
            pzsum = pzsum+real(j)*p0(0,j)
      enddo              

      had_sum = 1d0
      col_dec = 1d0
      if (decmode_slp) then
         col_dec = 3d0
         if ((abs(vdecaymodeZ).eq.107).or.(abs(vdecaymodeZ).eq.108)) then
            had_sum = 2d0
         endif
      endif  

      if ( pzsum.ne.pidr) then ! new PS point -> compute tensors
         call compute_tensors_wz_real(p0) 
         pidr = 0d0
         do j = 1,nleg
            pidr = pidr+real(j)*p0(0,j)
         enddo  
      endif   
      ttype = 3
      call provide_tensors_wz(ttype)
      call compreal_wzjj_ew(p0,rflav0,amp2)

      amp2 = amp2*col_dec*had_sum


c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi))

      return
      end
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      subroutine compreal_wzjj_ew(pin,bflav,amp2)
      implicit none
c
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_flst.h'
      include 'cvecbos.h'
c
      integer nlegs
      parameter (nlegs=nlegreal)
      real*8 pin(0:3,nlegs)  
      integer bflav(nlegs),bflav_loc(nlegs)
      real*8 amp2 
c
c vbfnlo stuff:
      include 'global.inc'
      integer bos
      real*8 p(0:3,np), v(0:3,nv)
      real*8 pbar(0:3,4+nv),qbar(0:4)
      real*8 polcol,polcolq,polcolg
      real*8 res(3)

      real*8 N ! color factors
      parameter(N=3d0)

      complex*16 zero
      parameter (zero=(0d0,0d0))
c
c declare local variables
c
      integer i,mu
      integer FSIGN(4+nv),gsign,physToDiag(5)
      
      real*8 nans(2,2,3),cans(2,3)
      logical nc_type
      integer k,icc

      integer ftype(1:9)

c comp:
      real*8 res_comp(3,4),dum

      logical mg_comp
      parameter (mg_comp=.false.)
      
c for testing purposes:
      double complex tampwr
      integer ipwr
      common /wpzrtest/ tampwr(2000,-1:1,-1:1,2,-1:1,6), ipwr

c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      if (decmode_lep) then 
         bos = 32               ! for W+Z>lvl'l' 
c note: use bos=42 for hard-wired W-Z amplitudes (not necessary when crossing is used)         
      else
         stop 'unsupported decay mode'
      endif    

      polcol = 0d0
      polcolq = 1d0/(4d0*N**2)
      polcolg = 1d0/(4d0*N*(N**2-1))

      ftype(1:9) = 1
      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   

         do i = 1,4
            v(mu,i) = pin(mu,i+2)
         enddo !i  bos

         if (bflav(1)*bflav(2).ne.0) then ! final-state gluon 
            if (bflav(9).eq.0) then
               p(mu,3) = pin(mu,7)
               p(mu,4) = pin(mu,8) 
               p(mu,5) = pin(mu,9)     
            elseif (bflav(7).eq.0) then
               p(mu,3) = pin(mu,8)
               p(mu,4) = pin(mu,9) 
               p(mu,5) = pin(mu,7)  
            elseif (bflav(8).eq.0) then
               p(mu,3) = pin(mu,7)
               p(mu,4) = pin(mu,9) 
               p(mu,5) = pin(mu,8)  
            endif
         else   ! initial-state gluon 
            p(mu,3) = pin(mu,7)
            p(mu,4) = pin(mu,8) 
            p(mu,5) = pin(mu,9) 
         endif ! fin/in state gluon
      enddo ! mu

      if (bflav(1).gt.0.and.bflav(2).gt.0) then

C*******************  q1 q3 ---> q2 q4 g Z Z   **********************

      physToDiag(1)=1    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=3
      physToDiag(3)=2    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=4
      physToDiag(5)=5   ! gluon

      fsign(1) = 1
      fsign(2) = 1
      fsign(3) = 1
      fsign(4) = 1
      gsign    = 1

      polcol = polcolq

      elseif (bflav(1).gt.0.and.bflav(2).lt.0) then
c            
C******************* q1 qb4 ---> q2 qb3 g Z Z   **********************
      
      physToDiag(1)=1    
      physToDiag(2)=4
      physToDiag(3)=2    
      physToDiag(4)=3
      physToDiag(5)=5   ! gluon
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) = -1
      gsign    =  1
      
      polcol = polcolq
      

      elseif (bflav(1).lt.0.and.bflav(2).gt.0) then
      
C******************* qbar2 q3 ---> qbar1 q4 g Z Z   **********************
      
      physToDiag(1)=2    
      physToDiag(2)=3
      physToDiag(3)=1    
      physToDiag(4)=4
      physToDiag(5)=5   ! gluon
c
      fsign(1) = -1
      fsign(2) = -1
      fsign(3) =  1
      fsign(4) =  1
      gsign    =  1
      
      polcol = polcolq

      elseif (bflav(1).lt.0.and.bflav(2).lt.0) then

C*******************  qbar2 qb4 ---> qbar1 qb3 g Z Z   **********************

      physToDiag(1)=2    
      physToDiag(2)=4
      physToDiag(3)=1    
      physToDiag(4)=3
      physToDiag(5)=5   ! gluon
c
      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) = -1
      gsign    =  1
      
      polcol = polcolq
     
      elseif (bflav(1).eq.0.and.bflav(2).gt.0.and.bflav(7).gt.0) then
         
c*******************  g q ---> q q qb Z Z   **********************

      physToDiag(1)=5          
      physToDiag(2)=3           
      physToDiag(3)=2           
      physToDiag(4)=4
      physToDiag(5)=1
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) =  1
      fsign(4) =  1
      gsign    = -1
      
      polcol = polcolg  

      elseif (bflav(1).eq.0.and.bflav(2).gt.0.and.bflav(7).lt.0) then
         
c*******************  g q ---> qb q q Z Z   **********************
c
      physToDiag(1)=5          
      physToDiag(2)=3           
      physToDiag(3)=1           
      physToDiag(4)=4
      physToDiag(5)=2
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) =  1
      fsign(4) =  1
      gsign    = -1
      
      polcol = polcolg

      elseif (bflav(1).gt.0.and.bflav(2).eq.0.
     &    and.bflav(7).gt.0.and.bflav(8).gt.0) then
      
C*******************  q g ---> q q qb Z Z   **********************
      
      physToDiag(1)=1             
      physToDiag(5)=3            
      physToDiag(3)=2             
      physToDiag(2)=5
      physToDiag(4)=4
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      gsign    = -1

      polcol = polcolg
c

      elseif (bflav(1).gt.0.and.bflav(2).eq.0.and.
     &        bflav(7).gt.0.and.bflav(8).lt.0) then
      
C*******************  q g ---> q qb q Z Z   **********************

      physToDiag(1)=1             
      physToDiag(4)=3            
      physToDiag(3)=2             
      physToDiag(2)=5
      physToDiag(5)=4
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      gsign    = -1

      polcol = polcolg

      elseif (bflav(1).eq.0.and.bflav(2).lt.0.and.bflav(7).gt.0) then
        
C*******************  g qbar ---> q qb qb Z Z  **********************

      physToDiag(1)=5
      physToDiag(2)=4
      physToDiag(3)=2
      physToDiag(4)=3
      physToDiag(5)=1
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) = -1
      gsign    = -1

      polcol = polcolg  

      elseif (bflav(1).eq.0.and.bflav(2).lt.0.and.bflav(7).lt.0) then
        
C*******************  g qbar ---> qb qb q Z Z  **********************

      physToDiag(1)=5
      physToDiag(2)=4
      physToDiag(3)=1
      physToDiag(4)=3
      physToDiag(5)=2
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) = -1
      gsign    = -1

      polcol = polcolg

      elseif (bflav(1).lt.0.and.bflav(2).eq.0.and.bflav(8).lt.0) then
 
C*******************  qbar2 g ---> qbar1 qb3 q4 Z Z   **********************
c
      physToDiag(1)=2             
      physToDiag(5)=4!3            
      physToDiag(3)=1             
      physToDiag(2)=5
      physToDiag(4)=3!4

      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) =  1
      gsign    = -1
      
      polcol = polcolg

      elseif (bflav(1).lt.0.and.bflav(2).eq.0.and.bflav(8).gt.0) then
 
C*******************  qbar2 g ---> qbar1 q4 q3bar Z Z   **********************
c
      physToDiag(1)=2             
      physToDiag(5)=3            
      physToDiag(3)=1             
      physToDiag(2)=5
      physToDiag(4)=4

      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) =  1
      gsign    = -1
      
      polcol = polcolg

      else
         
         print*,'this flav combination is not implemented'
         print*,'real flavors are =',bflav

      endif
         
C*****************  end of process evaluation  **********************

      do mu = 0,3
         do i = 1,5
            pbar(mu,physToDiag(i))=p(mu,i)
         enddo
         qbar(mu) = pbar(mu,5)
      enddo 
      qbar(4) = 0d0

c lepton momenta:
      do mu = 0,3             ! kinematics for 4-lepton final state
         pbar(mu,5) = v(mu,2) ! e+
         pbar(mu,6) = v(mu,1) ! ve
         pbar(mu,7) = v(mu,3) ! ll+
         pbar(mu,8) = v(mu,4) ! ll-
      enddo
      if (bos.eq.32) then
      fsign(5) = -1
      fsign(6) = 1
      fsign(7) = -1
      fsign(8) = 1
      endif

c try to define general rule for computing k:
      ftype(:) = 1
      if (bflav(1)*bflav(2).ne.0) then 
         if (bflav(1).gt.0) then 
            if(mod(abs(bflav(1)),2).eq.0) ftype(1) = 2 ! fermion1 = up-type 
            if(mod(abs(bflav(7)),2).eq.0) ftype(7) = 2 ! fermion7 = up-type 
         else                   !crossed line:
            if(mod(abs(bflav(7)),2).eq.0) ftype(1) = 2 ! fermion1 = up-type 
            if(mod(abs(bflav(1)),2).eq.0) ftype(7) = 2 ! fermion7 = up-type 
         endif
         if (bflav(2).gt.0) then 
            if(mod(abs(bflav(2)),2).eq.0) ftype(2) = 2 ! fermion2 = up-type 
            if(mod(abs(bflav(8)),2).eq.0) ftype(8) = 2 ! fermion8 = up-type 
         else                   ! crossed
            if(mod(abs(bflav(8)),2).eq.0) ftype(2) = 2 ! fermion2 = up-type 
            if(mod(abs(bflav(2)),2).eq.0) ftype(8) = 2 ! fermion8 = up-type 
         endif

      elseif (bflav(1).eq.0) then  
         if (bflav(7).gt.0) then 
            if(mod(abs(bflav(9)),2).eq.0) ftype(1) = 2 
            if(mod(abs(bflav(7)),2).eq.0) ftype(7) = 2 
         else                   !crossed line:
            if(mod(abs(bflav(7)),2).eq.0) ftype(1) = 2 
            if(mod(abs(bflav(9)),2).eq.0) ftype(7) = 2 
         endif
         if (bflav(2).gt.0) then 
            if(mod(abs(bflav(2)),2).eq.0) ftype(2) = 2 
            if(mod(abs(bflav(8)),2).eq.0) ftype(8) = 2 
         else                   ! crossed
            if(mod(abs(bflav(8)),2).eq.0) ftype(2) = 2 
            if(mod(abs(bflav(2)),2).eq.0) ftype(8) = 2 
         endif

      elseif (bflav(2).eq.0) then  
         if (bflav(1).gt.0) then 
            if(mod(abs(bflav(1)),2).eq.0) ftype(1) = 2 
            if(mod(abs(bflav(7)),2).eq.0) ftype(7) = 2 
         else                   !crossed line:
            if(mod(abs(bflav(7)),2).eq.0) ftype(1) = 2 
            if(mod(abs(bflav(1)),2).eq.0) ftype(7) = 2 
         endif
         if (bflav(8).gt.0) then 
            if(mod(abs(bflav(9)),2).eq.0) ftype(2) = 2 
            if(mod(abs(bflav(8)),2).eq.0) ftype(8) = 2 
         else                   ! crossed
            if(mod(abs(bflav(8)),2).eq.0) ftype(2) = 2 
            if(mod(abs(bflav(9)),2).eq.0) ftype(8) = 2 
         endif

      else
         print*,'parton flavors are:',bflav(1:2),bflav(7:9)
         stop 'this combination is not supported in real.f'
      endif


      k = 6*ftype(1)+4*ftype(2)-7*ftype(7)-5*ftype(8)

 
      if (mg_comp) then 
         tampwr = 0d0
       	 if(decmode_lep) then      
            call qqwzqqj_comp(pbar,fsign,qbar,gsign,bos,
     1        res_comp(1,1),res_comp(1,2),res_comp(1,3),res_comp(1,4))
         elseif(decmode_slp) then
            call qqwzqqj_comp_slp(pbar,fsign,qbar,gsign,bos,
     1        res_comp(1,1),res_comp(1,2),res_comp(1,3),res_comp(1,4))
         endif !decmode
      endif! mg

      call qqwpzqqj(pbar,fsign,qbar,gsign,bos,k,res(1))

      if (mg_comp) then
         print*,'madgraph res =',res_comp(:,k)
         print*,'vbfnlo res =',res(:)
         if ((abs(1-abs(res(1)/res_comp(1,k)))).ge.1d-5) then
            print*,'bad point?'
         endif
      endif
            
      amp2 = res(1)*polcol
c symmetry factor for leptons:
      amp2 = amp2*vsymfact

      return
      end
