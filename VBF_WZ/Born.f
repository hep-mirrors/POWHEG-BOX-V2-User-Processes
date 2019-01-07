c
      subroutine setborn(p,bflav,born,bornjk,bmunu)

      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      include 'cvecbos.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),born,colcf
      integer bflav(nlegs)
      integer j,k,mu,nu
      real*8 col_dec,had_sum
      integer ttype

      logical, save :: firstborn = .true. 
      real*8 psum
      real*8 pid 
      common /ps_id/ pid  
	
      real*8 pmg(0:3,1:8)
      real*8 mg,mg_down,mg_up
      logical down_called

      integer bcount
      common /bcounter/bcount
	
c----------------------------------------------------
c init:
      born = 0d0

      if (firstborn) then
         pid = 0d0
         firstborn = .false.

         bcount = 0
      endif   
      
      bcount = bcount+1

      psum = 0d0
      do j = 1,nlegs
         psum = psum+real(j)*p(0,j)
      enddo

    
      had_sum = 1d0
      col_dec = 1d0

      if (decmode_slp) then
         col_dec = 3d0
         if ((abs(vdecaymodeZ).eq.107).or.(abs(vdecaymodeZ).eq.108)) then
            had_sum = 2d0
         endif
      endif   
      
c     test/init:
c      born = 1d-10

      if ( psum.ne.pid) then    ! new PS point -> compute tensors
         call compute_tensors_wz(p) 
         pid = 0d0
         do j = 1,nlegs
            pid = pid + real(j)*p(0,j)
         enddo
      endif   
      ttype = 1
      call provide_tensors_wz(ttype)
      call compborn_wzjj_ew(p,bflav,born) 
      
      born = born*col_dec*had_sum

      do j=1,nlegs
         if(abs(bflav(j)).le.6) then
            do k=j+1,nlegs
               if (((j.eq.1).and.(k.eq.7)).or.
     #             ((j.eq.2).and.(k.eq.8))) then   
                  colcf = cf    
               else
                  colcf = 0
               endif
               bornjk(j,k)=born*colcf
               bornjk(k,j)=bornjk(j,k)
               
            enddo               !k
         endif                  !abs(bflav)
      enddo                     !j
      
      end
c     
c==================================================
c
      subroutine compborn_wzjj_ew(pin,bflav,born)
      implicit none
c
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_flst.h'
      include 'cvecbos.h'
c
      integer nlegs,nf
      parameter (nlegs=nlegborn)
      real*8 pin(0:3,nlegs)  
      integer bflav(nlegs)
      real*8 born
c
c vbfnlo stuff:
      include 'global.inc'
      integer bos,nlo
      real*8 p(0:3,np), v(0:3,nv)
      real*8 pbar(0:3,4+nv), polcol
      real*8 res

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

c comp:
      real*8 res_comp(4),dum
      logical mg_comp
c      parameter (mg_comp=.true.)
      parameter (mg_comp=.false.)

c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c

      if (decmode_lep.or.decmode_slp) then 
         bos = 32               ! for W+Z>lvl'l' 
      else
         stop 'unsupported decay mode'
      endif    
      nlo = 0 ! LO
      polcol =1d0/(4d0*N**2)

      ftype(1:8) = 1
      
      born = 0d0

      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   
         
         !lepton momenta needed for comparison only
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
         pbar(mu,7) = v(mu,3) ! mu+
         pbar(mu,8) = v(mu,4) ! mu-
      enddo
      if (bos.eq.32) then
      fsign(5) = -1
      fsign(6) = 1
      fsign(7) = -1
      fsign(8) = 1
c      elseif (bos.eq.21) then 
c      fsign(5) = -1
c      fsign(6) = 1
c      fsign(7) = 1
c      fsign(8) = -1
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

c test only
c      goto 111


      elseif (bflav(1).gt.0.and.bflav(2).lt.0) then

C******************* q1 qb4 ---> q2 qb3 W Z  **********************
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

 111  continue

      else
         
         write(*,*) 'wrong value of bflav(1) and bflav(2)'
         write(*,*) 'bflav(1) = ',bflav(1)
         write(*,*) 'bflav(2) = ',bflav(2)
         stop

      endif
            
C*****************  end of process evaluation  **********************

c get the amplitude squared:
      do mu = 0,3
         do i = 1,4
            pbar(mu,physToDiag(i))=p(mu,i)
         enddo
      enddo	 

c      print*,'bflav=',bflav(1:2),bflav(7:8)

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

      if (mg_comp) then
      	if(decmode_lep) then 
         call qqwzqq_comp(pbar,fsign,0,bos,
     &        res_comp(1),res_comp(2),res_comp(3),res_comp(4))
	elseif(decmode_slp) then
	 stop 'Not implemented yet'
	endif !decmode
      endif !mg

      call qqwpzqq_channel(pbar,fsign,0,1,k,bos,res)



      if (mg_comp) then
         if (abs((abs(res/res_comp(k))-1d0)).gt.1d-1) then
            print*,'for k=',k
            print*,'qq res =',res
            print*,'mg res =',res_comp(k)
            print*,'qq/mg=',res/res_comp(k)
            print*,'ALLE ACHTUNG --->'
            print*,'abs(res/res_comp(k))=',abs(res/res_comp(k))
            print*,'abs(res/res_comp(k))-1=',abs(res/res_comp(k))-1d0
         endif       
      endif

      born = res*polcol
c symmetry factor for leptons:
      born = born*vsymfact 

      return
      end
c
c==================================================
c
      subroutine borncolour_lh
      implicit none
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structures, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface

      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer i

C     -- neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
      icolup(1,5)=0
      icolup(2,5)=0
      icolup(1,6)=0
      icolup(2,6)=0
c If we have hadronic decays
      call fixifhadrW(3,4)
      call fixifhadrZ(5,6)

c     -- colored particles
      icolup(1,1)=0
      icolup(2,1)=0
      icolup(1,2)=0
      icolup(2,2)=0
      icolup(1,7)=0
      icolup(2,7)=0
      icolup(1,8)=0
      icolup(2,8)=0

      if(idup(1).gt.0) then
         icolup(1,1)=501
         icolup(2,1)=0
      else
         icolup(1,1)=0
         icolup(2,1)=501
      endif
      
      if(idup(2).gt.0) then
         icolup(1,2)=502
         icolup(2,2)=0
      else
         icolup(1,2)=0
         icolup(2,2)=502
      endif
      
      do i=1,2
         icolup(i,7)=icolup(i,1)
         icolup(i,8)=icolup(i,2)
      enddo
      end

c============================================

      subroutine fixifhadrZ(i1,i2)
      implicit none
      include 'LesHouches.h'
      include 'PhysPars.h'
      integer i1,i2
      integer m1,m2,id1,id2
      integer ic
      real * 8 random
      external random

      if(idup(i1).gt.0) then
         m1=i1
         m2=i2
      else
         m1=i2
         m2=i1
      endif
      id1=idup(m1)
      id2=idup(m2)
      if(abs(id1+id2).ne.0) then
         write(*,*) ' inconsistent pair in Z decay'
         call exit(-1)
      endif
      if(id1.gt.100) then
         idup(m1)=idup(m1)-100
         idup(m2)=idup(m2)+100
         call getnewcolor(ic)
         icolup(1,m1)=ic
         icolup(2,m1)=0
         icolup(1,m2)=0
         icolup(2,m2)=ic
c strong correction to hadronic width
         xwgtup = xwgtup*(1+ph_deltas)
c in this case it is any hadron
         if(idup(m1).eq.7) then
            if(random().gt.0.5d0) then
               idup(m1) = 3
               idup(m2) = -4
            else
               idup(m1) = 1
               idup(m2) = -2
            endif
c            xwgtup = xwgtup*2d0
         elseif(idup(m1).eq.8) then
            if(random().gt.0.5d0) then
               idup(m1) = 4
               idup(m2) = -3
            else
               idup(m1) = 2
               idup(m2) = -1
            endif
c            xwgtup = xwgtup*2d0
         endif
      endif
      end

      subroutine fixifhadrW(i1,i2)
      implicit none
      include 'LesHouches.h'
      include 'PhysPars.h'
      integer i1,i2
      integer m1,m2,id1,id2
      integer ic
      real * 8 random
      external random


      if(idup(i1).gt.0) then
         m1=i1
         m2=i2
      else
         m1=i2
         m2=i1
      endif
      id1=idup(m1)
      id2=idup(m2)
      if(abs(id1+id2).ne.1) then
         write(*,*) ' inconsistent pair in W decay'
         call exit(-1)
      endif
      if(id1.gt.100) then
         idup(m1)=idup(m1)-100
         idup(m2)=idup(m2)+100
         call getnewcolor(ic)
         icolup(1,m1)=ic
         icolup(2,m1)=0
         icolup(1,m2)=0
         icolup(2,m2)=ic
c strong correctino to hadronic width
         xwgtup = xwgtup*(1+ph_deltas)
c in this case it is any hadron
         if(idup(m1).eq.7) then
            if(random().gt.0.5d0) then
               idup(m1) = 3
               idup(m2) = -4
            else
               idup(m1) = 1
               idup(m2) = -2
            endif
c            xwgtup = xwgtup*2d0
         elseif(idup(m1).eq.8) then
            if(random().gt.0.5d0) then
               idup(m1) = 4
               idup(m2) = -3
            else
               idup(m1) = 2
               idup(m2) = -1
            endif
c            xwgtup = xwgtup*2d0
         endif
      endif
      end
c
c==================================================
c
      subroutine finalize_lh
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface. 

      implicit none 

      include 'pwhg_physpar.h'   
      include 'cvecbos.h'
      logical ini
      data ini/.true./
      save ini

c W id:
      idvecbos1=24
      call add_resonance(idvecbos1,3,4)
C     need to shift (56) to (67) since previous res adds a label 
c Z id:
      idvecbos2=23
      call add_resonance(idvecbos2,6,7)
      if(ini) then
         write(*,*) 'Adding resoncance'
      endif

c  now add finite masses:
         call lhefinitemasses
         if(ini) then
            write(*,*) 'Adding finite electron/muon masses'
            ini=.false.
         endif
      
      end
