c
ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      subroutine compreal_hqqqq(pin,bflav,amp2)
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
      integer bflav(nlegs), bflav_tag(nlegs)
      real*8 amp2 
      real*8 amp2_cross 
c
c vbfnlo stuff:
      include 'global_col.inc'
      real*8 p(0:3,np)
      real*8 pbar(0:3,4+nv),qbar(0:4,2)
      real*8 pbar_cc(0:3,6+nv),pbar_nc(0:3,6+nv)
      real*8 polcol,polcolqq,polcolqq_no
      real*8 res,res_cross
      integer kl

      real*8 N ! color factors
      parameter(N=3d0)

      complex*16 zero
      parameter (zero=(0d0,0d0))
c
c declare local variables
c
      integer i,mu
      integer FSIGN(6+nv),qsign(2),physToDiag(5)
      integer k,icc

      integer ftype(1:7)
c      logical g1_in_type,g2_in_type
      integer gen(nlegs)

c identify as CC or NC type sub-process:
      logical cc_type,nc_type
      integer hww,hzz
c
      logical need_cross
      logical pair71,pair72
c
      
      logical new_vbfnlo
      parameter (new_vbfnlo=.true.)
      logical test_amps
      parameter (test_amps=.false.)

      
      real*8 uucc,uuss,ddcc,ddss,udsc,ducs
      real*8 res_vbf,res_pwg,res_mg
      real*8  uuccuu,uussuu,ddccuu,ddssuu,
     $      uuccdd,uussdd,ddccdd,ddssdd 

      
      double precision NCmatrix_r(0:1,0:1,0:1,1:2,0:1)
      double precision CCmatrix_r(0:1,0:1,0:1,1:4,0:1)
      
      logical lsymmcontrib, linterference
      parameter (lsymmcontrib = .true.)
      parameter (linterference = .false.)
c

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c average on color and spin, and symmetry factor for identical particles
      polcol = 0d0
      polcolqq = 1d0/(4d0*N**2) !includes no symmetry factor
      polcol = polcolqq


      if(alr_tag.eq.0) then
      do i=1, nlegs
         bflav_tag(i)=bflav(i)
      enddo
      else
      do i=1, nlegs
         bflav_tag(i)=flst_alr_tag(i,alr_tag)
      enddo
      endif

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

      pair71 = .false.
      pair72 = .false.
      col_del = 0
c
c initialize:
      gen(:) = 0
      ftype(:) = 0
      fsign(:) = 1
      qsign(:) = 1
      do mu = 0,3
         p(mu,:) = 0d0
         pbar(mu,:) = 0d0
         qbar(mu,:) = 0d0
      enddo

      ftype(7) =  2-mod(abs(bflav(7)),2)  !identify as up- or down-type

      do mu = 0,3
         
      ! outgoing (QQB) pair: 
      if (bflav_tag(7).eq.(-bflav_tag(6))) then 
        col_del = 2


         if (bflav_tag(6).gt.0) then 
            qsign(1) = -1
            qsign(2) = +1  
            qbar(mu,2) = pin(mu,6)
            qbar(mu,1) = pin(mu,7)
         elseif (bflav_tag(6).lt.0) then   
            qsign(1) = -1!+1
            qsign(2) = +1!-1
            qbar(mu,2) = pin(mu,7)
            qbar(mu,1) = pin(mu,6)
         endif   
            p(mu,1) = pin(mu,1)
            p(mu,2) = pin(mu,2) 
   
            p(mu,3) = pin(mu,4)
            p(mu,4) = pin(mu,5) 
       ! QQB outgoing   

      elseif (bflav_tag(7).eq.(bflav_tag(1))) then 
            if (bflav_tag(1).ne.bflav_tag(2)) then
               pair71=.true.
            else   
               if (bflav_tag(4).lt.0) then
                  pair72=.true.
               else    
                  pair71=.true.
               endif   
            endif   
      elseif (bflav_tag(7).eq.(bflav_tag(2))) then 
            pair72 = .true.
      endif    
 


      if (pair71) then !Q1 in, Q7 out
         if (bflav(7).lt.0) then 
            qsign(1) =-1
         qsign(2) =-1
         qbar(mu,2) = pin(mu,1)
         qbar(mu,1) = pin(mu,7)
      elseif (bflav(7).gt.0) then  
         qsign(1) =+1
         qsign(2) =+1
         qbar(mu,2) = pin(mu,7)
         qbar(mu,1) = pin(mu,1)
      endif   
         p(mu,1) = pin(mu,6)
         p(mu,2) = pin(mu,2) 

         p(mu,3) = pin(mu,4)
         p(mu,4) = pin(mu,5) 


      elseif (pair72) then !Q1 in, Q7 out
      if (bflav(7).lt.0) then 
         qsign(1) =-1
         qsign(2) =-1
         qbar(mu,2) = pin(mu,2)
         qbar(mu,1) = pin(mu,7)
      elseif (bflav(7).gt.0) then  
         qsign(1) =+1
         qsign(2) =+1
         qbar(mu,2) = pin(mu,7)
         qbar(mu,1) = pin(mu,2)
      endif   
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,6) 

         p(mu,3) = pin(mu,4)
         p(mu,4) = pin(mu,5) 

      endif ! QQB outgoing   

      enddo ! mu


      if (bflav_tag(7).eq.(-bflav_tag(6))) then 

      if (bflav(1).gt.0.and.bflav(2).gt.0) then


C*******************  q1 q3 ---> q2 q4 (qqb) H   **********************

      physToDiag(1)=1    !physToDiag(1/2) are labels of incoming quarks
      physToDiag(2)=3
      physToDiag(3)=2    !physToDiag(3/4) are labels of outgoing quarks.
      physToDiag(4)=4

      fsign(1) = 1
      fsign(2) = 1
      fsign(3) = 1
      fsign(4) = 1

c      polcol = polcolqq

c up- or down-type quark: 
      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif   

      elseif (bflav(1).gt.0.and.bflav(2).lt.0) then
c            
C******************* q1 qb4 ---> q2 qb3 (QQB) H   **********************
      
      physToDiag(1)=1    
      physToDiag(2)=4
      physToDiag(3)=2    
      physToDiag(4)=3
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) = -1
      
      polcol = polcolqq
      
c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).gt.0) then
      
C******************* qbar2 q3 ---> qbar1 q4 (QQB) H   **********************
      
      physToDiag(1)=2    
      physToDiag(2)=3
      physToDiag(3)=1    
      physToDiag(4)=4
c
      fsign(1) = -1
      fsign(2) = -1
      fsign(3) =  1
      fsign(4) =  1
      
      polcol = polcolqq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(2).lt.0) then

C*******************  qbar2 qb4 ---> qbar1 qb3 (QQB) H   **********************

      physToDiag(1)=2    
      physToDiag(2)=4
      physToDiag(3)=1    
      physToDiag(4)=3
c
      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) = -1
      
      polcol = polcolqq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc


      else 
         
         print*,'this qq-> qqQQ flav combination is not implemented'
         print*,'flav=',bflav
         return

      endif
          
ccccccccccccccc

      elseif (pair71) then ! Q incoming, Q outgoing
      col_del = 3

      if (bflav(2).gt.0.and.bflav(4).gt.0) then

c*******************  Q q ---> q q qb Q H   **********************

      physToDiag(1)=1          
      physToDiag(2)=3           
      physToDiag(3)=2           
      physToDiag(4)=4
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) =  1
      fsign(4) =  1
      
      polcol = polcolqq  

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

c      if (nc_type) then !nc
      if (nc_type) then 
         k = -2*ftype(1)-ftype(2)+7
      else !cc
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  


      elseif (bflav(2).lt.0.and.bflav(4).gt.0) then

C*******************  Q qbar ---> q qb qb Q H  **********************

      physToDiag(1)=1!5
      physToDiag(2)=4
      physToDiag(3)=2
      physToDiag(4)=3
c
      fsign(1) = -1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) = -1

      polcol = polcolqq 

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(6)),2)         
      ftype(2) = 2-mod(abs(bflav(2)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (3*(bflav(2)/abs(bflav(2)))+7)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      else
         
         print*,'this flav combination is not implemented'
         print*,'bflav=',bflav

      endif

ccccccccccccc

      elseif (pair72) then 
      
      col_del= 1


      if (bflav(1).gt.0
     &    .and.bflav(4).gt.0.and.bflav(5).gt.0) then

      
C*******************  q Q ---> q q qb Q H   **********************
      
      physToDiag(1)=1
      physToDiag(2)=3      
      physToDiag(3)=2
      physToDiag(4)=4
c
      fsign(1) =  1
      fsign(2) =  1
      fsign(3) = -1
      fsign(4) =  1

      polcol = polcolqq
c
c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then !nc
         k = -2*ftype(1)-ftype(2)+7
      else !cc 
         icc = (-3*(bflav(1)/abs(bflav(1)))+5)/2
         k = 7-ftype(icc)
      endif !nc/cc  

      elseif (bflav(1).lt.0.and.bflav(5).gt.0) then

C*******************  qbar2 Q ---> qbar1 q4 q3bar Q H ****************
c
      physToDiag(1)=2             
      physToDiag(2)=3!5
      physToDiag(3)=1             
      physToDiag(4)=4

      fsign(1) = -1
      fsign(2) = -1
      fsign(3) = -1
      fsign(4) =  1
      
      polcol = polcolqq

c up- or down-type quark:      
      ftype(1) = 2-mod(abs(bflav(1)),2)         
      ftype(2) = 2-mod(abs(bflav(6)),2)      
      ftype(4) = 2-mod(abs(bflav(4)),2)   
      ftype(5) = 2-mod(abs(bflav(5)),2)

      if (nc_type) then !nc
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


      else
         
         print*,'this rflav combination is not implemented'
         print*,'rflav=',bflav
         print*, 'tagged', bflav_tag
         return

      endif !crossing
         
C*****************  end of process evaluation  **********************

      do mu = 0,3
         do i = 1,4
            pbar(mu,physToDiag(i))=p(mu,i)
         enddo
      enddo 
      qbar(4,:) = 0d0

c Higgs:
      do mu = 0,3
         pbar(mu,5) = pin(mu,3)
      enddo

      do mu = 0,3
         do i = 1,4
            pbar_cc(mu,i) = pbar(mu,i)
         enddo
         pbar_cc(mu,5) = qbar(mu,1)
         pbar_cc(mu,6) = qbar(mu,2)
         pbar_cc(mu,7) = pbar(mu,5) !Higgs
      enddo   
      fsign(5) =qsign(1)
      fsign(6) =qsign(2)

      if (k.lt.1.or.k.gt.6) then 
         print*,'in real you obtained k=',k
         stop 'something went wrong'
      endif  

      if (col_del.eq.0) then 
         print*,'in real you obtained col_del=',col_del
         stop 'something went wrong'
      endif   
      
c      print*, col_del, 'ist coldel in hqqqq'

      if (k.le.4) then    
c k-ordering (1:8) is: uucc,uuss,ddcc,ddss (+tt for 1:4,+bb for 5:8)
         kl = k+4*ftype(7)-4

         if (.not.new_vbfnlo)
     &        call qqHqqQQ_nc_channel(pbar_cc,fsign,kl,res)

            res_pwg = res

         if (new_vbfnlo) then
            call qqh4q(pbar_cc,fsign,NCmatrix_r,CCmatrix_r,lsymmcontrib)
            
           if (kl.eq.1) then 
               res_vbf = NCmatrix_r(0,0,0,1,0)+NCmatrix_r(0,0,0,2,0) !uuccuu
            elseif (kl.eq.2) then 
               res_vbf = NCmatrix_r(0,1,0,1,0)+NCmatrix_r(0,1,0,2,0) !uussuu
            elseif (kl.eq.3) then
               res_vbf = NCmatrix_r(1,0,0,1,0)+NCmatrix_r(1,0,0,2,0) !ddccuu
            elseif (kl.eq.4) then
               res_vbf = NCmatrix_r(1,1,0,1,0)+NCmatrix_r(1,1,0,2,0) !ddssuu
            elseif (kl.eq.5) then
               res_vbf = NCmatrix_r(0,0,1,1,0)+NCmatrix_r(0,0,1,2,0) !uuccdd
            elseif (kl.eq.6) then
               res_vbf = NCmatrix_r(0,1,1,1,0)+NCmatrix_r(0,1,1,2,0) !uussdd
            elseif (kl.eq.7) then
               res_vbf = NCmatrix_r(1,0,1,1,0)+NCmatrix_r(1,0,1,2,0) !ddccdd
            elseif (kl.eq.8) then
               res_vbf = NCmatrix_r(1,1,1,1,0)+NCmatrix_r(1,1,1,2,0) !ddssdd               
            endif
            
            res = res_vbf

         if (test_amps) then 

            call qqHqqQQ_nc_channel(pbar_cc,fsign,kl,res_pwg)

            res_mg = 0d0
            
            call qqh4qnc_mg(pbar_cc,fsign,
     $           uuccuu,uussuu,ddccuu,ddssuu,
     $           uuccdd,uussdd,ddccdd,ddssdd)

            if (kl.eq.1) then 
               res_mg = uuccuu
            elseif (kl.eq.2) then 
               res_mg = uussuu
            elseif (kl.eq.3) then
               res_mg = ddccuu
            elseif (kl.eq.4) then
               res_mg =ddssuu
            elseif (kl.eq.5) then
               res_mg = uuccdd
            elseif (kl.eq.6) then
               res_mg = uussdd
            elseif (kl.eq.7) then
               res_mg =ddccdd
            elseif (kl.eq.8) then
               res_mg = ddssdd               
            endif 
            
            
               write(*,*) "Hjjj 4q NC Comparison: kl=",kl
               
               print*,'old pwg=',res_pwg
               print*,'mg vbfnlo=',res_mg
               print*,'new vbfnlo=',res_vbf
               print*,'pwg/vbf=',res_pwg/res_vbf
               print*,'pwg/mg=',res_pwg/res_mg
c
               if (abs(1d0-res_pwg/res_vbf).gt.1d-4) then
                  print*,'check 1-rat, rat',
     &                 abs(1d0-res_pwg/res_vbf),res_pwg/res_vbf
                  print*,'fsig=',fsign(5:6)
                  print*,'coldel=',col_del
               else
                  print*,'good point col=',col_del
               Endif
               print*,'###############'
               
            endif    !test_amps

            endif !new_vbfnlo

      else 
c k-ordering (5:6) is: udsc,ducs
         kl = k-4
         fsign(5) = qsign(1)
         fsign(6) = qsign(2)

         if (.not.new_vbfnlo) 
     &         call qqHqqQQ_cc_channel(pbar_cc,fsign,kl,res)

         if (new_vbfnlo) then
            call qqh4q(pbar_cc,fsign,NCmatrix_r,CCmatrix_r,lsymmcontrib)

            if (k.eq.5) then  
              res_vbf=CCmatrix_r(0,1,0,1,0)+CCmatrix_r(0,1,0,2,0)
            elseif (k.eq.6)then
              res_vbf=CCmatrix_r(1,0,0,1,0)+CCmatrix_r(1,0,0,2,0)
            endif
        
            res = res_vbf

            if (test_amps) then
               call qqHqqQQ_cc_channel(pbar_cc,fsign,kl,res_pwg)

c               call qqh4qcc_mg(pbar_cc,fsign,udsc,ducs)

               write(*,*) "Hjjj 4q CC Comparison:"
               
               print*,'old pwg=',res_pwg
               print*,'new vbfnlo=',res_vbf
               print*,'pwg/vbf=',res_pwg/res_vbf

               if (abs(1d0-res_pwg/res_vbf).gt.1d-4) then 
                  print*,'check 1-rat, rat',
     &                 abs(1d0-res_pwg/res_vbf),res_pwg/res_vbf
               endif
               print*,'###############'
            endif !test_amps
            
         endif !new_vbfnlo
         
      endif   

      amp2 = res*polcol

c symmetry factor:
c      amp2 = amp2*wsymfact

      return
      end
