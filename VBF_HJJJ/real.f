c     BJ : start from original file real.f
c     (public POWHEG-BOX-V2 version March 2018)
c     and implement improved VBFNLO real-emission contributions
c     (version VBFNLO-3.0.0beta5)
c     
      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer nleg, i, mu
      parameter (nleg=nlegreal)
      real * 8 p(0:3,nleg)
      integer rflav(nleg)
      real * 8 amp2    


      include 'pwhg_flst.h'
      include 'pwhg_flst_2.h'

      integer k,j  
      logical, save :: init_real = .true. 

c
cccccccccccccccccccccccccccccccccccccccccccccccc
c
      if (init_real) then
      do k=1, 2!nlegreal
         do j=1, maxalr
            flst_alr_tag(k,j)=abs(flst_alr(k,j))*10000 + flst_alrtags(k,j)
            if(flst_alr(k,j).lt.0) flst_alr_tag(k,j)=-flst_alr_tag(k,j)
         enddo
      enddo
      do k=4,nlegreal
         do j=1, maxalr
            flst_alr_tag(k,j)=abs(flst_alr(k,j))*10000 + flst_alrtags(k,j)
            if(flst_alr(k,j).lt.0) flst_alr_tag(k,j)=-flst_alr_tag(k,j)
         enddo
      enddo      
      do k=1, 2!nlegreal
         do j=1, flst_nreal
            flst_real_tag(k,j)=abs(flst_real(k,j))*10000 + flst_realtags(k,j)
            if(flst_real(k,j).lt.0) flst_real_tag(k,j)=-flst_real_tag(k,j)
         enddo
      enddo
      do k=4,nlegreal
         do j=1, flst_nreal
            flst_real_tag(k,j)=abs(flst_real(k,j))*10000 + flst_realtags(k,j)
            if(flst_real(k,j).lt.0) flst_real_tag(k,j)=-flst_real_tag(k,j)
         enddo
      enddo       
      init_real = .false.
      endif

c test only:
c      if (.not.rflav(6).eq.0) return
c      if (rflav(1)*rflav(2).ne.0) return
c      print*,'flav=',rflav

      call calc_als
      call ctrans(1)  ! SETS GG to the right value!!! Argument not needed for 2nd etc call

c subprocesses with 2 gluons:
      if (rflav(1)*rflav(2)*rflav(4)*rflav(5)*
     &    rflav(6)*rflav(7).eq.0) then 
         call compreal_hjjj(p,rflav,amp2) 
      elseif (rflav(1)*rflav(2)*rflav(4)*
     &        rflav(5)*rflav(6)*rflav(7).ne.0) then 
         call compreal_hqqqq(p,rflav,amp2) 
      else
         print*,'real sub-processes of type ',rflav
         print*,'not yet implemented'
         stop
      endif    

c     cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi))

      return
      end

c
ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      subroutine compreal_hjjj(pin,bflav,amp2)
      implicit none
c
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_flst.h'
      include 'pwhg_flst_2.h'
c
      integer nlegs
      parameter (nlegs=nlegreal)
      real*8 pin(0:3,nlegs)  
      integer bflav(nlegs)
      real*8 amp2 
      real*8 amp2_cross 
c
c vbfnlo stuff:
      include 'global_col.inc'
      real*8 p(0:3,np)
      real*8 pbar(0:3,4+nv),qbar(0:4,2)
      real*8 polcol,polcolqq,polcolgq,polcolgg
      real*8 res,res_cross,temp(0:4)

      real*8 N ! color factors
      parameter(N=3d0)

      complex*16 zero
      parameter (zero=(0d0,0d0))
c
c declare local variables
c
      integer i,mu
      integer FSIGN(4+nv),gsign(2),physToDiag(5)
      integer k,icc

      integer ftype(1:7)
      logical g1_in_type,g2_in_type
      integer gen(nlegs)

c identify as CC or NC type sub-process:
      logical cc_type,nc_type
      integer hww,hzz
c
      logical need_cross

      logical new_vbfnlo
      parameter (new_vbfnlo=.true.)
      logical test_amps
      parameter (test_amps=.false.)

      real*8 NCmatrix_r(0:1,0:1,0:6),CCmatrix_r(0:1,0:6)
      real*8 resc(6)
      real*8 uucc,uuss,ddcc,ddss,udsc,ducs
      real*8 res_vbf(6),res_pwg
c     Set up a cache
      integer ncache, icache, cache
      parameter (ncache = 4)    ! Number of old points to store
      integer physToDiag_cache(5,ncache)
      real * 8 res_vbf_cache(6,ncache)
      data icache/1/
      save icache, physToDiag_cache, res_vbf_cache
      logical use_old, cache_on
      parameter (cache_on = .false.)
      integer ncall
      data ncall/0/
      save ncall

c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c average on color and spin, and symmetry factor for identical particles
      polcol = 0d0
      polcolqq = 1d0/(8d0*N**2) !includes symmetry factor 2 for 2 fin.gluons
      polcolgq = 1d0/(4d0*N*(N**2-1))
      polcolgg = 1d0/(4d0*(N**2-1)**2) 

      call particle_identif(HWW,HZZ)

      if (bflav(3).eq.hww) then 
          cc_type=.true.
          nc_type=.false.
      elseif (bflav(3).eq.hzz) then 
          cc_type=.false.
          nc_type=.true.
      else
         stop 'compreal_hjjj: wrong ID for Higgs'
      endif   
      need_cross = .false.
c
c iinit:
      fsign(:)=0
      
c ini:
      gen(:) = 0
      ftype(:) = 0
      fsign(1:4) = 0
      fsign(5:6) = 1
      gsign(:) = 1
      do mu = 0,3
         p(mu,:) = 0d0
         pbar(mu,:) = 0d0
         qbar(mu,:) = 0d0
      enddo

c      print*,'init qbar:',qbar(0,:)

      do mu = 0,3

         if (bflav(7).eq.0) then ! gluon2 is outgoing
            gsign(2) = 1
            qbar(mu,2) = pin(mu,7)
            g2_in_type = .false.
            g1_in_type = .true.

            p(mu,1) = pin(mu,1)
            p(mu,2) = pin(mu,2) 

            if (bflav(1)*bflav(2).ne.0) then ! gluon1 is outgoing 

               if (bflav(6).eq.0) then
                  gsign(1) = 1
                  p(mu,3) = pin(mu,4)
                  p(mu,4) = pin(mu,5) 
                  p(mu,5) = pin(mu,6)     
               elseif (bflav(4).eq.0) then
                  gsign(1) = 1
                  p(mu,3) = pin(mu,5)
                  p(mu,4) = pin(mu,6) 
                  p(mu,5) = pin(mu,4)  
                  print*, 'This should not happen bflav(4).eq.0'
               elseif (bflav(5).eq.0) then
                  gsign(1) = 1
                  p(mu,3) = pin(mu,4)
                  p(mu,4) = pin(mu,6) 
                  p(mu,5) = pin(mu,5)  
                  print*, 'This should not happen bflav(5).eq.0'
               endif
            else   ! initial-state gluon1 
               gsign(1) = -1
               p(mu,3) = pin(mu,4)
               p(mu,4) = pin(mu,5) 
               p(mu,5) = pin(mu,6) 
            endif ! fin/in state gluon1

         elseif (bflav(6).eq.0) then ! g1 is outgoing, g2 incoming
            g1_in_type = .false.
            g2_in_type = .true.
            gsign(1) = 1
            gsign(2) = -1
            qbar(mu,1) = pin(mu,6) 

            p(mu,1) = pin(mu,1)
            p(mu,2) = pin(mu,2) 

            p(mu,3) = pin(mu,4)
            p(mu,4) = pin(mu,5) 
            p(mu,5) = pin(mu,7) 

         elseif (bflav(1).eq.0.and.bflav(2).eq.0) then ! g1 and g2 incoming
            g1_in_type = .true.
            g2_in_type = .true.
            gsign(1) = -1
            gsign(2) = -1
            qbar(mu,1) = pin(mu,1) 
            qbar(mu,2) = pin(mu,2) 

            p(mu,5) = pin(mu,3) !dummy
    
            p(mu,2) = pin(mu,4) 
            p(mu,4) = pin(mu,5)
            p(mu,1) = pin(mu,6)
            p(mu,3) = pin(mu,7) 

         else 
            print*,'rflav = ',bflav
            print*,'processes without gluons'
            print*,'not implemented yet'
            stop            
         endif ! g2 outgoing/incoming

      enddo ! mu

      if (bflav(6).eq.0.and.bflav(7).eq.0) then  ! g1,g2 outgoing

      if (bflav(1).gt.0.and.bflav(2).gt.0) then

C*******************  q1 q3 ---> q2 q4 g g H   **********************

      physToDiag(1)=1    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=3
      physToDiag(3)=2    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=4
      physToDiag(5)=5   ! gluon

      fsign(1) = 1
      fsign(2) = 1
      fsign(3) = 1
      fsign(4) = 1
      gsign(1) = 1

      polcol = polcolqq

c up- or down-type quark: 
      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif   

      elseif (bflav(1).gt.0.and.bflav(2).lt.0) then
c            
C******************* q1 qb4 ---> q2 qb3 g g H   **********************
      
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
      gsign(1) =  1
      
      polcol = polcolqq
      
c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).gt.0) then
      
C******************* qbar2 q3 ---> qbar1 q4 g g H   **********************
      
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
      gsign(1) =  1
      
      polcol = polcolqq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).lt.0) then

C*******************  qbar2 qb4 ---> qbar1 qb3 g g H   **********************

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
      gsign(1) =  1
      
      polcol = polcolqq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc

      else
         
         print*,'this flav combination is not implemented'
         print*,'bflav=',bflav

      endif

ccccccccccccccc

      elseif (bflav(7).eq.0) then ! g1 incoming, g2 outgoing
      
      if (bflav(1).eq.0.and.bflav(2).gt.0.and.bflav(4).gt.0) then
         
c*******************  g q ---> q q qb g H   **********************

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
      gsign(1) = -1
      
      polcol = polcolgq  

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).eq.0.and.bflav(2).gt.0.and.bflav(4).lt.0) then
         
c*******************  g q ---> qb q q g H   **********************
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
      gsign(1) = -1
      
      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)     

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).gt.0.and.bflav(2).eq.0.
     &    and.bflav(4).gt.0.and.bflav(5).gt.0) then
      
C*******************  q g ---> q q qb g H   **********************
      
      physToDiag(1)=1             
      physToDiag(2)=5            
      physToDiag(3)=2                
      physToDiag(4)=4
      physToDiag(5)=3
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      gsign(1) = -1

      polcol = polcolgq
c
c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).gt.0.and.bflav(2).eq.0.and.
     &        bflav(4).gt.0.and.bflav(5).lt.0) then
      
C*******************  q g ---> q qb q g H   **********************

      physToDiag(1)=1
      physToDiag(2)=5                            
      physToDiag(3)=2             
      physToDiag(4)=3
      physToDiag(5)=4
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      gsign(1) = -1

      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).eq.0.and.bflav(2).lt.0.and.bflav(4).gt.0) then
        
C*******************  g qbar ---> q qb qb g H  **********************

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
      gsign(1) = -1

      polcol = polcolgq 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).eq.0.and.bflav(2).lt.0.and.bflav(4).lt.0) then
        
C*******************  g qbar ---> qb qb q g H  **********************

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
      gsign(1) = -1

      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).eq.0.and.bflav(5).lt.0) then
 
C*******************  qbar2 g ---> qbar1 qb3 q4 g H   **********************
c
      physToDiag(1)=2 
      physToDiag(2)=5                  
      physToDiag(3)=1             
      physToDiag(4)=3!4
      physToDiag(5)=4!3

      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) =  1
      gsign(1) = -1
      
      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).eq.0.and.bflav(5).gt.0) then
 
C*******************  qbar2 g ---> qbar1 q4 q3bar g H ****************
c
      physToDiag(1)=2 
      physToDiag(2)=5
      physToDiag(3)=1             
      physToDiag(4)=4
      physToDiag(5)=3

      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) =  1
      gsign(1) = -1
      
      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      else
         
         print*,'this flav combination is not implemented'
         print*,'bflav=',bflav

      endif

ccccccccccccccc

      elseif (bflav(6).eq.0) then ! g2 incoming, g1 outgoing

c        print*,'incoming g2:'

      if (bflav(1).eq.0.and.bflav(2).gt.0.and.bflav(4).gt.0) then

c         print*,'g q ---> q q qb g'
         
c*******************  g q ---> q q qb g H   **********************

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
      gsign(2) = -1
      
      polcol = polcolgq  

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).eq.0.and.bflav(2).gt.0.and.bflav(4).lt.0) then

c         print*,'g q ---> qb q q g '
         
c*******************  g q ---> qb q q g H   **********************
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
      gsign(2) = -1
      
      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)     

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).gt.0.and.bflav(2).eq.0.
     &    and.bflav(4).gt.0.and.bflav(5).gt.0) then

c         print*,'q g ---> q q qb g '
      
C*******************  q g ---> q q qb g H   **********************
      
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
      gsign(2) = -1

      polcol = polcolgq
c
c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(7)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).gt.0.and.bflav(2).eq.0.and.
     &        bflav(4).gt.0.and.bflav(5).lt.0) then
      
c         print*,'q g ---> q qb q g '

C*******************  q g ---> q qb q g H   **********************

      physToDiag(1)=1  
      physToDiag(2)=5
      physToDiag(3)=2
      physToDiag(4)=3            
      physToDiag(5)=4
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      gsign(2) = -1

      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(7)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).eq.0.and.bflav(2).lt.0.and.bflav(4).gt.0) then

c         print*,'g qbar ---> q qb qb g '
        
C*******************  g qbar ---> q qb qb g H  **********************

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
      gsign(2) = -1

      polcol = polcolg q 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).eq.0.and.bflav(2).lt.0.and.bflav(4).lt.0) then

c         print*,' g qbar ---> qb qb q g '
        
C*******************  g qbar ---> qb qb q g H  **********************

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
      gsign(2) = -1

      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).eq.0.and.bflav(5).lt.0) then

c         print*,' qbar2 g ---> qbar1 qb3 q4 g'
 
C*******************  qbar2 g ---> qbar1 qb3 q4 g H   **********************
c
      physToDiag(1)=2             
      physToDiag(2)=5           
      physToDiag(3)=1                  
      physToDiag(4)=3!4
      physToDiag(5)=4!3 

      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) =  1
      gsign(2) = -1
      
      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(7)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).eq.0.and.bflav(5).gt.0) then

c         print*,'qbar2 g ---> qbar1 q4 q3bar g'
 
C*******************  qbar2 g ---> qbar1 q4 q3bar g H ****************
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
      gsign(2) = -1
      
      polcol = polcolgq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(7)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if ((ftype(1).eq.ftype(4))) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      else
         
         print*,'this flav combination is not implemented'
         print*,'bflav=',bflav


      endif ! g2 incoming   



ccccccccccccccccccc

      elseif (bflav(1).eq.0.and.bflav(2).eq.0) then !g1 & g2 incoming
         
         do i = 1,nlegs
            if (bflav(i).eq.0) then !gluon
               gen(i) = 0
            elseif (abs(bflav(i)).lt.3) then !1st generation quarks
               gen(i) = 1
            elseif (abs(bflav(i)).lt.5) then !2nd gen.
               gen(i) = 2
            elseif (abs(bflav(i)).le.6) then !3rd gen.
               gen(i) = 3
            else !no quark
               gen(i) = 0
            endif
         enddo   

      if (bflav(4).gt.0.and.bflav(5).gt.0) then

         if (cc_type) then 
         
c*******************  g g ---> q q qb qb H   **********************

      if ((abs(bflav(4)).ne.abs(bflav(6))).and.
     &    (gen(4).eq.gen(6))) then   
         
      physToDiag(1)=1          
      physToDiag(2)=2           
      physToDiag(3)=3           
      physToDiag(4)=4
      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(7)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      icc = (3*(bflav(6)/abs(bflav(6)))+5)/2
      k = 7-ftype(icc)

c********

      elseif ((abs(bflav(4)).ne.abs(bflav(7))).and.
     &        (gen(4).eq.gen(7))) then   

      physToDiag(1)=3          
      physToDiag(2)=2           
      physToDiag(3)=1           
      physToDiag(4)=4
      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      icc = (3*(bflav(7)/abs(bflav(7)))+5)/2
      k = 7-ftype(icc)
   
      else 
         print*,'this gg->qq type for CC is not supported'
         print*,'bflav =',bflav
         stop

      endif

      else !nc_type

c*******************  g g ---> q q qb qb H   **********************

      if (bflav(4).eq.(-bflav(6))) then   

      physToDiag(1)=1          
      physToDiag(2)=2           
      physToDiag(3)=3           
      physToDiag(4)=4
      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(7)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      k = -2*ftype(1)-ftype(2)+7

c need to consider crossed process in addition for identical flavors
c (same as the combi given below):
         if (bflav(6).eq.bflav(7)) need_cross = .true.


      elseif (bflav(4).eq.(-bflav(7))) then 

      physToDiag(1)=3          
      physToDiag(2)=2           
      physToDiag(3)=1           
      physToDiag(4)=4
      physToDiag(5)=5

      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

         k = -2*ftype(1)-ftype(2)+7
        
      else 
         print*,'this gg->qq type for NC is not supported'
         print*,'bflav =',bflav
         stop

      endif

      endif !nc/cc


      elseif (bflav(4).lt.0.and.bflav(5).gt.0) then

         if (cc_type) then 
         
c*******************  g g ---> qb1 q2 qb2 q1 H   **********************

      physToDiag(1)=3
      physToDiag(2)=1           
      physToDiag(3)=2
      physToDiag(4)=4
      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(4)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(7)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      icc = (3*(-bflav(4)/abs(bflav(4)))+7)/2
      k = 7-ftype(icc)

      else !nc
       if (bflav(4).eq.(-bflav(6))) then 
         
c*******************  g g ---> qb1 q2  q1 qb2 H   **********************

      physToDiag(1)=1
      physToDiag(2)=2           
      physToDiag(3)=4
      physToDiag(4)=3
      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      polcol = polcolgg 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(4)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(7)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

         k = -2*ftype(1)-ftype(2)+7

      
      
        elseif (bflav(4).eq.(-bflav(7))) then 
         
c*******************  g g ---> qb1 q2 qb2 q1 H   **********************

      physToDiag(1)=4
      physToDiag(2)=2           
      physToDiag(3)=1
      physToDiag(4)=3
      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(4)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(7)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

         k = -2*ftype(1)-ftype(2)+7

      endif 

      endif !nc /cc


      elseif (bflav(4).gt.0.and.bflav(5).lt.0) then

         if (cc_type) then 

c*******************  g g ---> q qb qb q H   **********************

      if ((abs(bflav(4)).ne.abs(bflav(6))).and.
     &    (gen(4).eq.gen(6))) then   

      physToDiag(1)=1
      physToDiag(2)=2
      physToDiag(3)=4
      physToDiag(4)=3

      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(4)),2)         
      ftype(2) = 2-mod(abs(bflav(5)),2)      
      ftype(4) = 2-mod(abs(bflav(6)),2)   
      ftype(5) = 2-mod(abs(bflav(7)),2)

      icc = (3*(-bflav(5)/abs(bflav(5)))+7)/2
      k = 7-ftype(icc)

      else 
         print*,'this gg->qqb type for CC is not supported'
         print*,'bflav =',bflav
         stop


      endif

      else !nc_type
         
c*******************  g g ---> q qb qb q H   **********************

      if (bflav(4).eq.(-bflav(6))) then 

      physToDiag(1)=1
      physToDiag(2)=2
      physToDiag(3)=4
      physToDiag(4)=3

      physToDiag(5)=5
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(4)),2)         
      ftype(2) = 2-mod(abs(bflav(5)),2)      
      ftype(4) = 2-mod(abs(bflav(6)),2)   
      ftype(5) = 2-mod(abs(bflav(7)),2)

         k = -2*ftype(1)-ftype(2)+7

      else 
         print*,'this gg->qqb type for NC is not supported'
         print*,'bflav =',bflav
         stop
      endif

      endif !nc/cc

      else
         
         print*,'this flav combination is not implemented'
         print*,'bflav=',bflav

      endif
           
         
      endif !g1,g2    
      
      if(fsign(1).eq.0) then
         print*,'this flav combination is not implemented'
         print*,'bflav=',bflav  
         print*, realequiv_tag
         print*, flst_real_tag(:,realequiv_tag)
         print*, fsign(1:4)
      endif
         
C*****************  end of process evaluation  **********************

      do mu = 0,3
         do i = 1,5
            pbar(mu,physToDiag(i))=p(mu,i)
         enddo
         if (g1_in_type.neqv.g2_in_type) then 
            if (g1_in_type) qbar(mu,1) = pbar(mu,5)
            if (g2_in_type) qbar(mu,2) = pbar(mu,5) 
         endif   
      enddo 
      qbar(4,:) = 0d0

c Higgs:
      do mu = 0,3
         pbar(mu,5) = pin(mu,3)
      enddo
      
      if (k.lt.1.or.k.gt.6) then 
         print*,'in real you obtained k=',k
         stop 'something went wrong'
      endif   

c original version:      
      if (.not.new_vbfnlo) call qqHqqjj_channel(pbar,fsign,qbar,gsign,k,res,resc)

c     new VBFNLO:
      if(ncall.le.2*maxprocreal) ncall = ncall + 1

c     new VBFNLO:
      use_old = .false.
      if (new_vbfnlo) then 
         do i=1,ncache
            if(cache_on.and.ncall.gt.2*maxprocreal.and.
     $           all(physToDiag(:).eq.physToDiag_cache(:,i))) then
               use_old = .true.
               cache = i
               exit
            endif
         enddo
         if(use_old) then
            res_vbf(:) = res_vbf_cache(:,cache) ! use old result
         else                   ! recompute
            call qqh2q2g(pbar,fsign,qbar,gsign,NCmatrix_r,CCmatrix_r)
            
            res_vbf(1)=ncmatrix_r(0,0,0)
            res_vbf(2)=ncmatrix_r(0,1,0)
            res_vbf(3)=ncmatrix_r(1,0,0)
            res_vbf(4)=ncmatrix_r(1,1,0)
            res_vbf(5)=ccmatrix_r(0,0)
            res_vbf(6)=ccmatrix_r(1,0)
            
            res_vbf_cache(:,icache) = res_vbf(:)
            physToDiag_cache(:,icache) = physToDiag(:)
            
            if(icache.eq.ncache) then
               icache = 1       ! Return to first index of cache
            elseif(icache.lt.ncache) then
               icache = icache + 1
            else
               print*, 'Cache in under/overflow....', icache, ncache
               stop
            endif
         endif
         
         res = res_vbf(k)
         
         if (test_amps) then 
            call qqHqqjj_channel(pbar,fsign,qbar,gsign,k,res_pwg,resc) 
            
c     call qqhqqgg_mg(pbar,fsign,qbar,gsign,
c     $            uucc,uuss,ddcc,ddss,udsc,ducs)
            
            print*,'old pwg res =',res_pwg
            print*,'new nCmatrix=',res_vbf
            print*,'ratio pwg/nc=',res_pwg/res_vbf(k)
            if (abs(1d0-res_pwg/res_vbf(k)).gt.1d-4) then 
               print*,'check 1-rat, rat',
     &              abs(1d0-res_pwg/res_vbf(k)),res_pwg/res_vbf(k)
               print*,'gsign=',gsign
               print*,'fsign=',fsign
            endif
            print*,'###############'
         endif                  !test_amps
         
      endif                     !new vbfnlo   

      amp2 = res*polcol

c identical quarks in gg->qqqbqbH:
      if (need_cross) then ! need qqqb(6)qb(7)+qqqb(7)qb(6)
        
      physToDiag(1)=3          
      physToDiag(2)=2           
      physToDiag(3)=1           
      physToDiag(4)=4
      physToDiag(5)=5

      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolgg 

      ftype(1) = 2-mod(abs(bflav(7)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      k = -2*ftype(1)-ftype(2)+7

      do mu = 0,3
         do i = 1,5
            pbar(mu,physToDiag(i))=p(mu,i)
         enddo
      enddo 
      qbar(4,:) = 0d0

c Higgs:
      do mu = 0,3
         pbar(mu,5) = pin(mu,3)
      enddo
      if (.not.new_vbfnlo) then 
        call qqHqqjj_channel(pbar,fsign,qbar,gsign,k,res_cross,resc)
        amp2_cross = res_cross*polcol
        amp2 = amp2 + amp2_cross
      endif

c     new VBFNLO:
      if (new_vbfnlo) then 

         call qqh2q2g(pbar,fsign,qbar,gsign,NCmatrix_r,CCmatrix_r)

          res_vbf(1)=ncmatrix_r(0,0,0)
          res_vbf(2)=ncmatrix_r(0,1,0)
          res_vbf(3)=ncmatrix_r(1,0,0)
          res_vbf(4)=ncmatrix_r(1,1,0)
          res_vbf(5)=ccmatrix_r(0,0)
          res_vbf(6)=ccmatrix_r(1,0)
          
          res_cross = res_vbf(k)

          if (test_amps) then 

             call qqHqqjj_channel(pbar,fsign,qbar,gsign,k,res_pwg,resc)
             
c             call qqhqqgg_mg(pbar,fsign,qbar,gsign,
c     $            uucc,uuss,ddcc,ddss,udsc,ducs)
             
             write(*,*) "crossed Hjjj 2q2g Comparison:"
            
             print*,'k=',k

             print*,'old pwg res =',res_pwg
             print*,'new nCmatrix=',res_vbf(k)
             print*,'ratio pwg/Nc=',res_pwg/res_vbf(k)
             
             if (abs(1d0-res_pwg/res_vbf(k)).gt.1d-4) then
                print*,'check 1-rat, rat',
     &               abs(1d0-res_pwg/res_vbf(k)),res_pwg/res_vbf(k)
                print*,'gsign=',gsign
                print*,'fsign=',fsign
                print*,'need_cross =',need_cross
             endif
             print*,'###############'
             
             endif !test_amps

             amp2_cross = res_cross*polcol
             amp2 = amp2 + amp2_cross

          endif  !new_vbfnlo

      endif !need_cross

c symmetry factor:
c      amp2 = amp2*wsymfact

      return
      end
