c
      subroutine setvirtual(p,vflav,virtual)

      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      include 'cvecbos.h'

      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),p0(0:3,nlegs),bornjk(nlegs,nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),born,colcf
      integer vflav(nlegs),vflav0(nlegs)
      real*8 virtual


      real*8 col_dec,had_sum
      integer ttype

      real *8 powheginput
      external powheginput 

      logical, save :: firsttime = .true. 
      logical, save :: secondtime = .false. 

      integer fakevirt
      save fakevirt 
      
      real*8 pwzsum
      integer j,nmomset
      parameter (nmomset=10)
      integer, save :: flst_counter = 0
      real*8 pid 
      common /ps_id/ pid 
	
c================================================

      virtual = 0d0
      if (abs(kn_jacborn).lt.1d-10) return
      if(idvecbos1.eq.24) then ! W+Zjj
         vflav0=vflav
         p0=p
      else
c Apply CP to the kinematics ! obtain W-Zjj
         vflav0=-vflav
         p0=p
         p0(1,:)=-p(1,:)
      endif
      
      pwzsum = 0d0
      do j = 1,nlegs
         pwzsum = pwzsum+real(j)*p0(0,j)
      enddo

      if (firsttime) then
         pid = 0d0

         fakevirt=powheginput("#fakevirt")
         if (fakevirt == 1) then 
            write(*,*) 'WARNING: Using fakevirt !'
            firsttime=.false.
         endif
         fakevirt = 1 !First point ALWAYS run with fakevirt. This ensures that smartsig works properly
         flst_counter=flst_counter+1
         if(flst_counter.ge.(flst_nborn*nmomset)) then
            firsttime = .false.
            secondtime=.true.
         endif
      elseif (secondtime) then 
         fakevirt=powheginput("#fakevirt")
         secondtime = .false.
      endif

c     
c VBF W+Z:    numbering of momenta is q(1) q(2) -> l1(3)v1(4) l2(5)l2(6) q(7)q(8) 
c     
      had_sum = 1d0
      col_dec = 1d0
      if (decmode_slp) then
       stop 'Not supported yet.'
c         col_dec = 3d0
      endif   

      if(fakevirt.eq.1) then  

      if ( pwzsum.ne.pid) then ! new PS point -> compute tensors
         call compute_tensors_wz(p0) 
         pid = 0d0
         do j = 1,nlegs
            pid = pid+real(j)*p0(0,j)
         enddo                
      endif
      ttype = 1
      call provide_tensors_wz(ttype)
      call compborn_wzjj_ew(p0,vflav0,born) 
      born = col_dec*had_sum*born
      virtual = 0.2d0*born
      
      else
c
         if ( pwzsum.ne.pid) then ! new PS point -> compute tensors
            
c            print*,'comp tensors:'

            call compute_tensors_wz(p0) 
            pid = 0d0
            do j = 1,nlegs
               pid = pid+real(j)*p0(0,j)
            enddo
         endif
         ttype = 1
         call provide_tensors_wz(ttype)
         call compvirt_wzjj_ew(p0,vflav0,virtual) 
         virtual = col_dec*had_sum*virtual
         
c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
         virtual = virtual/(st_alpha/(2d0*pi))
         
      endif
      
      return 
      end
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      subroutine compvirt_wzjj_ew(pin,bflav,virtual)
      implicit none
c
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_flst.h'
      include 'cvecbos.h'
      include 'higgs_graphs.h'
c
      integer nlegs,nf
      parameter (nlegs=nlegborn)
      real*8 pin(0:3,nlegs)  
      integer bflav(nlegs),bflav_loc(nlegs)
      real*8 virtual
c
c vbfnlo stuff:
      include 'global.inc'
      integer bos,nlo
      real*8 p(0:3,np), v(0:3,nv)
      real*8 pbar(0:3,4+nv), polcol
      real*8 res,tri,box,pent

      real*8 N ! color factors
      parameter(N=3d0)

      complex*16 zero
      parameter (zero=(0d0,0d0))
c
c declare local variables
c
      integer i,j,mu,nu
      integer FSIGN(4+nv),physToDiag(4)
      
      integer ftype(1:8)
      integer icc

      integer k

c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      if (decmode_lep.or.decmode_slp) then 
         bos = 32               ! for W+Z>lvl'l' 
      else
         stop 'unsupported decay mode'
      endif    
      nlo = 1 ! NLO
      polcol =1d0/(4d0*N**2)

      virtual = 0d0
      
      ftype(1:8) = 1
      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   

         do i = 1,4
            v(mu,i) = pin(mu,i+2)
         enddo !i     

         p(mu,3) = pin(mu,7)
         p(mu,4) = pin(mu,8) 
         p(mu,5) = 0d0   
      enddo ! mu

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
      
      if (bflav(1).gt.0.and.bflav(2).gt.0) then

C*******************  q1 q3 ---> q2 q4  W Z  **********************

c   physToDiag(ext.momentum label) = Feynman diagram label

      physToDiag(1)=1    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=3
      physToDiag(3)=2    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=4

      fsign(1) = 1
      fsign(2) = 1
      fsign(3) = 1
      fsign(4) = 1

      elseif (bflav(1).gt.0.and.bflav(2).lt.0) then

C******************* q1 qb4 ---> q2 qb3 W Z   **********************
c      
      physToDiag(1)=1    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=4
      physToDiag(3)=2    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=3
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) = -1      
      

      elseif (bflav(1).lt.0.and.bflav(2).gt.0) then

C******************* qbar2 q3 ---> qbar1 q4 W Z  **********************
      
      physToDiag(1)=2    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=3
      physToDiag(3)=1    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=4
c
      fsign(1) = -1
      fsign(2) = -1
      fsign(3) =  1
      fsign(4) =  1


      elseif (bflav(1).lt.0.and.bflav(2).lt.0) then

C*******************  qbar2 qb4 ---> qbar1 qb3 W Z  **********************

      physToDiag(1)=2    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=4
      physToDiag(3)=1    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=3
c
      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) = -1      

      elseif (bflav(1).lt.0.and.bflav(2).lt.0) then
         
         write(*,*) 'wrong value of bflav(1) and bflav(2)'
         write(*,*) 'bflav(1) = ',bflav(1)
         write(*,*) 'bflav(2) = ',bflav(2)

      endif
            
C*****************  end of process evaluation  **********************

c get the amplitude squared:
      do mu = 0,3
         do i = 1,4
            pbar(mu,physToDiag(i))=p(mu,i)
         enddo
      enddo

c use value of bflav to select appropriate uucc, uuss etc.
      if (bflav(1).gt.0) then 
         if(mod(abs(bflav(1)),2).eq.0) ftype(1) = 2 ! fermion1 = up-type 
         if(mod(abs(bflav(7)),2).eq.0) ftype(7) = 2 ! fermion7 = up-type 
      else !crossed line:
         if(mod(abs(bflav(7)),2).eq.0) ftype(1) = 2 ! fermion1 = up-type 
         if(mod(abs(bflav(1)),2).eq.0) ftype(7) = 2 ! fermion7 = up-type 
      endif
      if (bflav(2).gt.0) then 
         if(mod(abs(bflav(2)),2).eq.0) ftype(2) = 2 ! fermion2 = up-type 
         if(mod(abs(bflav(8)),2).eq.0) ftype(8) = 2 ! fermion8 = up-type 
      else ! crossed
         if(mod(abs(bflav(8)),2).eq.0) ftype(2) = 2 ! fermion2 = up-type 
         if(mod(abs(bflav(2)),2).eq.0) ftype(8) = 2 ! fermion8 = up-type 
      endif

      k = 6*ftype(1)+4*ftype(2)-7*ftype(7)-5*ftype(8)
	 
      tri = 0d0
      box = 0d0
      pent = 0d0
c triangles:
      call qqwpzqq_channel(pbar,fsign,4,1,k,bos,tri)
c boxes:
      call qqwpzqq_channel(pbar,fsign,-4,1,k,bos,box)
c pentagons:
      call qqwpzqq_channel(pbar,fsign,-5,1,k,bos,pent)
c
      res = tri+box+pent
c
      virtual = res*polcol  
c symmetry factor for leptons:
      virtual = virtual*vsymfact

      return
      end
