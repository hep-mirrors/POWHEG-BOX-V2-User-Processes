ccccccccccccccccccccccccccccccccccccccccccccccccc
c
c     compute leptonic tensors for VBF pp->ZZjj(j) 
c
      subroutine compute_tensors_zz_real(pin)

c     fully leptonic decays
c
ccccccccccccccccccccccccccccccccccccccccccccccccc
c
      implicit none
c
      include 'nlegborn.h'
      include 'pwhg_math.h'
c
      integer nlegs
      parameter (nlegs=nlegreal)
      real*8 pin(0:3,nlegs)
c
c vbfnlo stuff:
      include 'global.inc'
      include 'coupl.inc'
      include 'tensor_zz_real.inc'
      include 'higgs_graphs.h'
      include 'cvecbos.h'
      real*8 p(0:3,np), v(0:3,nv)
      real*8 q12(0:4,3), q34(0:4,3),qww(0:3),qvv(0:3)

      complex*16 zero
      parameter (zero=(0d0,0d0))
c
c declare local variables
      integer i,j,mu
      integer ie,iu
      
      integer h
      integer ttype
      logical ini_tensor_real
      data ini_tensor_real/.true./
      save ini_tensor_real

c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      ttype = 3 ! tensors are real-type

      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   
         do i = 1,4
            v(mu,i) = pin(mu,i+2)
         enddo !i     
         p(mu,3) = pin(mu,7)
         p(mu,4) = pin(mu,8) 
         p(mu,5) = pin(mu,9)   
      enddo ! mu

c compute invariants:
      call calc_invariants(p,v,q12,q34,3)
c
c reset leptonic tensors:
      if(ini_tensor_real) then
         call vtozz_real_reset
         ini_tensor_real=.false.
      endif

c compute leptonic tensors:

      do mu = 0,3
         qe_real(mu) = v(mu,1)+v(mu,2)
         qu_real(mu) = v(mu,3)+v(mu,4)
         qvv(mu) = qe_real(mu) + qu_real(mu)
      enddo
      
      qe_real(4) = qe_real(0)**2-qe_real(1)**2-
     &     qe_real(2)**2-qe_real(3)**2
      qu_real(4) = qu_real(0)**2-qu_real(1)**2-
     &     qu_real(2)**2-qu_real(3)**2
      
      if(decmode_lep) then
         
         do h = 1,4,1
            ie = sign(1,2-h)
            iu = (-1)**(h+1)
            
            CALL IXXXXX_5(v(0,1),ZERO ,+ie,-1,lep_real(1,h)) !e+	
            CALL OXXXXX_5(v(0,2),ZERO ,-ie, 1,lem_real(1,h)) !e- 
            CALL IXXXXX_5(v(0,3),ZERO ,+iu,-1,lup_real(1,h)) !mu+	
            CALL OXXXXX_5(v(0,4),ZERO ,-iu, 1,lum_real(1,h)) !mu- 
            
            CALL J_Z_BOSON_e(lep_real(1,h),lem_real(1,h),GC_43,
     &           GC_46,MZ,WZ,ze_real(1,h)) !Zl
            CALL J_A_BOSON(lep_real(1,h),lem_real(1,h),-GC_3,
     &           ZERO ,ZERO  ,ae_real(1,h)) !Al
            CALL J_Z_BOSON_e(lup_real(1,h),lum_real(1,h),GC_43,
     &           GC_46,MZ,WZ,zu_real(1,h)) !Zl
            CALL J_A_BOSON(lup_real(1,h),lum_real(1,h),-GC_3,
     &           ZERO ,ZERO  ,au_real(1,h)) !Al
            
            do j = 2,3
               
C     for AA,AZ,ZA,ZZ -> e+ e- mu+ mu-:
               call vvtozz(q12(0,j),q34(0,j),v,h,
     &              aazz_real(0,0,j,h),azzz_real(0,0,j,h),
     #              zazz_real(0,0,j,h),zzzz_real(0,0,j,h),ttype)
c     
C     for W+W-
               call wwtozz(q12(0,j),q34(0,j),v,h,wwzz5_real(0,0,j,h),ttype) !q12 = W+
               call wwtozz(q34(0,j),q12(0,j),v,h,wwzz6_real(0,0,j,h),ttype) !q12 = W-
               
               if (.not.higgs_only) then
                  
C     for V1V2 --> e+ e- or  V1V2 -->  mu+ mu- (Vi=A,Z)
c     NCl tensors for NC process (k=1...4)
                  
                  call VVtoll(2,1,h,q34(0,j),v,
     &                 aaee_real(0,0,1,j,h),azee_real(0,0,1,j,h),
     #                 zaee_real(0,0,1,j,h),zzee_real(0,0,1,j,h),ttype) !V on upper    
                  call VVtoll(1,1,h,q12(0,j),v,
     &                 aaee_real(0,0,2,j,h),azee_real(0,0,2,j,h),
     #                 zaee_real(0,0,2,j,h),zzee_real(0,0,2,j,h),ttype) !V on lower
                  call VVtoll(2,2,h,q34(0,j),v,
     &                 aauu_real(0,0,1,j,h),azuu_real(0,0,1,j,h),
     #                 zauu_real(0,0,1,j,h),zzuu_real(0,0,1,j,h),ttype) !V on upper    
                  call VVtoll(1,2,h,q12(0,j),v,
     &                 aauu_real(0,0,2,j,h),azuu_real(0,0,2,j,h),
     #                 zauu_real(0,0,2,j,h),zzuu_real(0,0,2,j,h),ttype) !V on lower
                  
C     for W+W- --> e+ e- or  W+W- -->  mu+ mu-
c     CCl tensors for CC (k=5)
                  call WWtoll(2,1,h,q34(0,j),v,CCee_real(0,0,1,j,h),ttype) !V on upper
                  call WWtoll(1,1,h,q12(0,j),v,CCee_real(0,0,2,j,h),ttype) !V on lower
                  call WWtoll(2,2,h,q34(0,j),v,CCuu_real(0,0,1,j,h),ttype) !V on upper
                  call WWtoll(1,2,h,q12(0,j),v,CCuu_real(0,0,2,j,h),ttype) !V on lower
                  
C     for W-W+ --> e+ e- or mu+ mu-
c     CCl for CC (k=6)	
                  call WWtoll(1,1,h,q34(0,j),v,CCee6_real(0,0,1,j,h),ttype) !V on upper
                  call WWtoll(2,1,h,q12(0,j),v,CCee6_real(0,0,2,j,h),ttype) !V on lower
                  call WWtoll(1,2,h,q34(0,j),v,CCuu6_real(0,0,1,j,h),ttype) !V on upper
                  call WWtoll(2,2,h,q12(0,j),v,CCuu6_real(0,0,2,j,h),ttype) !V on lower
                  
               endif            !not higgsonly
               
            enddo               !j
            
c     for V-> llll:	
            if (.not.higgs_only) 
     &           call vto4l(v,h,azz_real(0,h),zzz_real(0,h),ttype)	
            
         enddo                  !h  
      else if(decmode_lnu) then
         
         do h = 1,3,2
            ie = sign(1,2-h)
            iu = -1
            
            CALL IXXXXX_5(v(0,1),ZERO ,-ie,-1,lep_real(1,h)) !e+	
            CALL OXXXXX_5(v(0,2),ZERO ,+ie, 1,lem_real(1,h)) !e- 
            CALL OXXXXX_5(v(0,3),ZERO ,+iu,+1,lum_real(1,h)) !vm	
            CALL IXXXXX_5(v(0,4),ZERO ,-iu,-1,lup_real(1,h)) !vm~ 
            
            CALL J_Z_BOSON_e(lep_real(1,h),lem_real(1,h),GC_43,
     &           GC_46,MZ,WZ,ze_real(1,h)) !Zl
            CALL J_A_BOSON(lep_real(1,h),lem_real(1,h),-GC_3,
     &           ZERO ,ZERO  ,ae_real(1,h)) !Al
            
            CALL J_Z_BOSON_v(lup_real(1,h),lum_real(1,h),-GC_74,
     &           ZMASS,ZWIDTH,zu_real(1,h)) !Zv
            
            do i = 1,4
               au_real(i,h) = 0d0
               zu_real(i,h) = -zu_real(i,h) !??
            enddo   			
            do i = 5,6          !add momentum info to A->vv current (au vanishes anyway) 
               au_real(i,h) = zu_real(i,h)
            enddo    
            
            do j = 2,3
               
C     for AA,AZ,ZA,ZZ -> e+ e- mu+ mu-:
               call vvtozzn(q12(0,j),q34(0,j),v,h,
     &              aazz_real(0,0,j,h),azzz_real(0,0,j,h),
     #              zazz_real(0,0,j,h),zzzz_real(0,0,j,h),ttype)
c     
C     for W+W-
               call wwtozzn(q12(0,j),q34(0,j),v,h,wwzz5_real(0,0,j,h),ttype) !q12 = W+
               call wwtozzn(q34(0,j),q12(0,j),v,h,wwzz6_real(0,0,j,h),ttype) !q12 = W-
               
               if (.not.higgs_only) then
                  
C     for V1V2 --> e+ e- or  V1V2 -->  mu+ mu- (Vi=A,Z)
c     NCl tensors for NC process (k=1...4)
                  
                  call VVtoll(2,1,h,q34(0,j),v,
     &                 aaee_real(0,0,1,j,h),azee_real(0,0,1,j,h),
     #                 zaee_real(0,0,1,j,h),zzee_real(0,0,1,j,h),ttype) !V on upper    
                  call VVtoll(1,1,h,q12(0,j),v,
     &                 aaee_real(0,0,2,j,h),azee_real(0,0,2,j,h),
     #                 zaee_real(0,0,2,j,h),zzee_real(0,0,2,j,h),ttype) !V on lower
                  call VVtolln(2,h,q34(0,j),v,
     &                 aauu_real(0,0,1,j,h),azuu_real(0,0,1,j,h),
     #                 zauu_real(0,0,1,j,h),zzuu_real(0,0,1,j,h),ttype) !V on upper    
                  call VVtolln(1,h,q12(0,j),v,
     &                 aauu_real(0,0,2,j,h),azuu_real(0,0,2,j,h),
     #                 zauu_real(0,0,2,j,h),zzuu_real(0,0,2,j,h),ttype) !V on lower
                  
C     for W+W- --> e+ e- or  W+W- -->  mu+ mu-
c     CCl tensors for CC (k=5)
                  call WWtoll(2,1,h,q34(0,j),v,CCee_real(0,0,1,j,h),ttype) !V on upper
                  call WWtoll(1,1,h,q12(0,j),v,CCee_real(0,0,2,j,h),ttype) !V on lower
                  call WWtolln(2,h,q34(0,j),v,CCuu_real(0,0,1,j,h),ttype) !V on upper
                  call WWtolln(1,h,q12(0,j),v,CCuu_real(0,0,2,j,h),ttype) !V on lower
                  
C     for W-W+ --> e+ e- or mu+ mu-
c     CCl for CC (k=6)	
                  call WWtoll(1,1,h,q34(0,j),v,CCee6_real(0,0,1,j,h),ttype) !V on upper
                  call WWtoll(2,1,h,q12(0,j),v,CCee6_real(0,0,2,j,h),ttype) !V on lower
                  call WWtolln(1,h,q34(0,j),v,CCuu6_real(0,0,1,j,h),ttype) !V on upper
                  call WWtolln(2,h,q12(0,j),v,CCuu6_real(0,0,2,j,h),ttype) !V on lower
                  
               endif            !not higgsonly
               
            enddo               !j
            
c     for V-> llll:	
            if (.not.higgs_only) 
     &           call vto4ln(v,h,azz_real(0,h),zzz_real(0,h),ttype)	
            
         enddo                  !h  
      else
         print*, 'Only llll and llvv decaymode implemented for anomalous couplings'
         STOP
      endif
      return
      end
      

