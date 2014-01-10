ccccccccccccccccccccccccccccccccccccccccccccccccc
c     
c     compute leptonic tensors for VBF pp->ZZjj 
c     
      subroutine compute_tensors_zz(pin)

c     fully leptonic decays
c     
ccccccccccccccccccccccccccccccccccccccccccccccccc
c     
      implicit none
c     
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'cvecbos.h'
c     
      integer nlegs
      parameter (nlegs=nlegborn)
      real*8 pin(0:3,nlegs)
c     
c     vbfnlo stuff:
      include 'global.inc'
      include 'coupl.inc'
      include 'tensor_zz_born.inc'
      include 'higgs_graphs.h'
      real*8 p(0:3,np), v(0:3,nv)
      real*8 q12(0:4,3),q34(0:4,3),qww(0:3),qq,qvv(0:3)

      complex*16 zero
      parameter (zero=(0d0,0d0))

      double complex dotrc
      external dotrc
c     
c     declare local variables
      integer i,j,mu

      integer h
      integer ie,iu
      integer ttype
      logical ini_tensor_born
      data ini_tensor_born/.true./
      save ini_tensor_born
c     
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     
      ttype = 1                 ! tensors are Born-type

      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   
         do i = 1,4
            v(mu,i) = pin(mu,i+2)
         enddo                  !i     
         p(mu,3) = pin(mu,7)
         p(mu,4) = pin(mu,8) 
         p(mu,5) = 0d0   
      enddo                     ! mu

c     compute invariants:
      call calc_invariants(p,v,q12,q34,1)

c     reset leptonic tensors:
      if(ini_tensor_born) then !Only initialize tensors the first time
         call vtozz_born_reset
         ini_tensor_born=.false.
      endif

      do mu = 0,3
         qe_born(mu) = v(mu,1)+v(mu,2)
         qu_born(mu) = v(mu,3)+v(mu,4)
         qvv(mu) = qe_born(mu) + qu_born(mu)
      enddo
      
      qe_born(4)=qe_born(0)**2-qe_born(1)**2-qe_born(2)**2-qe_born(3)**2
      qu_born(4)=qu_born(0)**2-qu_born(1)**2-qu_born(2)**2-qu_born(3)**2
      
      if(decmode_lep) then
c     consider 4 different combinations of lepton helicities:
         do h = 1,4,1
            
            ie = sign(1,2-h)
            iu = (-1)**(h+1)
            
            CALL IXXXXX_5(v(0,1),ZERO ,+ie,-1,lep_born(1,h)) !e+	
            CALL OXXXXX_5(v(0,2),ZERO ,-ie, 1,lem_born(1,h)) !e- 
            CALL IXXXXX_5(v(0,3),ZERO ,+iu,-1,lup_born(1,h)) !mu+	
            CALL OXXXXX_5(v(0,4),ZERO ,-iu, 1,lum_born(1,h)) !mu- 
            
            CALL J_Z_BOSON_e(lep_born(1,h),lem_born(1,h),GC_43,
     &           GC_46,MZ,WZ,ze_born(1,h)) !Zl
            CALL J_A_BOSON(lep_born(1,h),lem_born(1,h),-GC_3,
     &           ZERO ,ZERO  ,ae_born(1,h)) !Al
            CALL J_Z_BOSON_e(lup_born(1,h),lum_born(1,h),GC_43,
     &           GC_46,MZ,WZ,zu_born(1,h)) !Zl
            CALL J_A_BOSON(lup_born(1,h),lum_born(1,h),-GC_3,
     &           ZERO ,ZERO  ,au_born(1,h)) !Al
            
!     determine V polarization vectors 
c     zet(mu) = ze(mu) - xxez*qe(mu) and zut(mu) = zu(mu) - xxmz*qu(mu)
            qq = qe_born(0)*qvv(0)-qe_born(1)*qvv(1)-
     &           qe_born(2)*qvv(2)-qe_born(3)*qvv(3)
            xxez_born = dotrc(qvv,ze_born)/qq
            xxea_born = dotrc(qvv,ae_born)/qq
            
            qq = qu_born(0)*qvv(0)-qu_born(1)*qvv(1)-
     &           qu_born(2)*qvv(2)-qu_born(3)*qvv(3)
            xxuz_born = dotrc(qvv,zu_born)/qq            
            xxua_born = dotrc(qvv,au_born)/qq
            do mu = 0,3
               zet_born(mu+1,h) = ze_born(mu+1,h)-xxez_born*qe_born(mu)
               zut_born(mu+1,h) = zu_born(mu+1,h)-xxuz_born*qu_born(mu)
               
               aet_born(mu+1,h) = ae_born(mu+1,h)-xxea_born*qe_born(mu)
               aut_born(mu+1,h) = au_born(mu+1,h)-xxua_born*qu_born(mu)
            enddo
            do mu = 5,6
               zet_born(mu,h) = ze_born(mu,h)
               zut_born(mu,h) = zu_born(mu,h)
               
               aet_born(mu,h) = ae_born(mu,h)
               aut_born(mu,h) = au_born(mu,h)
            enddo
            
c     leptonic tensors
            j = 1
C     for AA,AZ,ZA,ZZ -> e+ e- mu+ mu- :
            call vvtozz(q12(0,j),q34(0,j),v,h,
     #           aazz_born(0,0,j,h),azzz_born(0,0,j,h),
     #           zazz_born(0,0,j,h),zzzz_born(0,0,j,h),ttype)
            
            
C     for W+W-
            
            call wwtozz(q12(0,j),q34(0,j),v,h,wwzz5_born(0,0,j,h),ttype) ! q12 = W+
            call wwtozz(q34(0,j),q12(0,j),v,h,wwzz6_born(0,0,j,h),ttype) ! q12 = W-
            
            if (.not.higgs_only) then
               
C     for V1V2 --> e+ e- or  V1V2 -->  mu+ mu- (Vi=A,Z)
c     NCl tensors for NC process (k=1...4)
c     
               call VVtoll(2,1,h,q34(0,j),v,
     #              aaee_born(0,0,1,j,h),azee_born(0,0,1,j,h),
     #              zaee_born(0,0,1,j,h),zzee_born(0,0,1,j,h),ttype) ! V on upper     
               call VVtoll(1,1,h,q12(0,j),v,
     #              aaee_born(0,0,2,j,h),azee_born(0,0,2,j,h),
     #              zaee_born(0,0,2,j,h),zzee_born(0,0,2,j,h),ttype) ! V on lower_born
               call VVtoll(2,2,h,q34(0,j),v,
     #              aauu_born(0,0,1,j,h),azuu_born(0,0,1,j,h),
     #              zauu_born(0,0,1,j,h),zzuu_born(0,0,1,j,h),ttype) ! V on upper    
               call VVtoll(1,2,h,q12(0,j),v,
     #              aauu_born(0,0,2,j,h),azuu_born(0,0,2,j,h),
     #              zauu_born(0,0,2,j,h),zzuu_born(0,0,2,j,h),ttype) ! V on lower
c     
C     for W+W- --> e+ e- or  W+W- -->  mu+ mu-
c     CCl tensors for CC (k=5)
               
               call WWtoll(2,1,h,q34(0,j),v,CCee_born(0,0,1,j,h),ttype) ! V on upper
               call WWtoll(1,1,h,q12(0,j),v,CCee_born(0,0,2,j,h),ttype) ! V on lower
               call WWtoll(2,2,h,q34(0,j),v,CCuu_born(0,0,1,j,h),ttype) ! V on upper
               call WWtoll(1,2,h,q12(0,j),v,CCuu_born(0,0,2,j,h),ttype) ! V on lower
c     
C     for W-W+ --> e+ e- or mu+ mu-
c     CCl for CC (k=6)
c     
               call WWtoll(1,1,h,q34(0,j),v,CCee6_born(0,0,1,j,h),ttype) ! V on upper
               call WWtoll(2,1,h,q12(0,j),v,CCee6_born(0,0,2,j,h),ttype) ! V on lower
               call WWtoll(1,2,h,q34(0,j),v,CCuu6_born(0,0,1,j,h),ttype) ! V on upper
               call WWtoll(2,2,h,q12(0,j),v,CCuu6_born(0,0,2,j,h),ttype) ! V on lower
               
c     for V-> llll
c     
               call vto4l(v,h,azz_born(0,h),zzz_born(0,h),ttype)
               
            endif               !not higgsonly
            
         enddo                  !h
      elseif(decmode_lnu) then
         do h = 1,3,2
            
            ie = sign(1,2-h)
            iu = -1
            
            CALL IXXXXX_5(v(0,1),ZERO ,-ie,-1,lep_born(1,h)) !e+	
            CALL OXXXXX_5(v(0,2),ZERO ,+ie, 1,lem_born(1,h)) !e- 
            CALL OXXXXX_5(v(0,3),ZERO ,+iu,+1,lum_born(1,h)) !vm	
            CALL IXXXXX_5(v(0,4),ZERO ,-iu,-1,lup_born(1,h)) !vm~ 
            
            CALL J_Z_BOSON_e(lep_born(1,h),lem_born(1,h),GC_43,
     &           GC_46,MZ,WZ,ze_born(1,h)) !Zl
            CALL J_A_BOSON(lep_born(1,h),lem_born(1,h),-GC_3,
     &           ZERO ,ZERO  ,ae_born(1,h)) !Al
            
            CALL J_Z_BOSON_v(lup_born(1,h),lum_born(1,h),-GC_74,
     &           ZMASS,ZWIDTH,zu_born(1,h)) !Zv
            
            do i = 1,4
               au_born(i,h) = 0d0
               zu_born(i,h) = -zu_born(i,h) !??
            enddo   			
            do i = 5,6          !add momentum info to A->vv current (au vanishes anyway) 
               au_born(i,h) = zu_born(i,h)
            enddo    
            
            
!     determine V polarization vectors 
c     zet(mu) = ze(mu) - xxez*qe(mu) and zut(mu) = zu(mu) - xxmz*qu(mu)
            qq = qe_born(0)*qvv(0)-qe_born(1)*qvv(1)-
     &           qe_born(2)*qvv(2)-qe_born(3)*qvv(3)
            xxez_born = dotrc(qvv,ze_born)/qq
            xxea_born = dotrc(qvv,ae_born)/qq
            
            qq = qu_born(0)*qvv(0)-qu_born(1)*qvv(1)-
     &           qu_born(2)*qvv(2)-qu_born(3)*qvv(3)
            xxuz_born = dotrc(qvv,zu_born)/qq            
            xxua_born = dotrc(qvv,au_born)/qq
            do mu = 0,3
               zet_born(mu+1,h) = ze_born(mu+1,h)-xxez_born*qe_born(mu)
               zut_born(mu+1,h) = zu_born(mu+1,h)-xxuz_born*qu_born(mu)
               
               aet_born(mu+1,h) = ae_born(mu+1,h)-xxea_born*qe_born(mu)
               aut_born(mu+1,h) = au_born(mu+1,h)-xxua_born*qu_born(mu)
            enddo
            do mu = 5,6
               zet_born(mu,h) = ze_born(mu,h)
               zut_born(mu,h) = zu_born(mu,h)
               
               aet_born(mu,h) = ae_born(mu,h)
               aut_born(mu,h) = au_born(mu,h)
            enddo
            
c     leptonic tensors
            j = 1
C     for AA,AZ,ZA,ZZ -> e+ e- vm vm~ :
            call vvtozzn(q12(0,j),q34(0,j),v,h,
     #           aazz_born(0,0,j,h),azzz_born(0,0,j,h),
     #           zazz_born(0,0,j,h),zzzz_born(0,0,j,h),ttype)
            
C     for W+W-
            call wwtozzn(q12(0,j),q34(0,j),v,h,wwzz5_born(0,0,j,h),ttype) ! q12 = W+
            call wwtozzn(q34(0,j),q12(0,j),v,h,wwzz6_born(0,0,j,h),ttype) ! q12 = W-
            
            if (.not.higgs_only) then
               
C     for V1V2 --> e+ e- or  V1V2 --> vm vm~ (Vi=A,Z)
c     NCl tensors for NC process (k=1...4)
c     
               call VVtoll(2,1,h,q34(0,j),v,
     #              aaee_born(0,0,1,j,h),azee_born(0,0,1,j,h),
     #              zaee_born(0,0,1,j,h),zzee_born(0,0,1,j,h),ttype) ! V on upper     
               call VVtoll(1,1,h,q12(0,j),v,
     #              aaee_born(0,0,2,j,h),azee_born(0,0,2,j,h),
     #              zaee_born(0,0,2,j,h),zzee_born(0,0,2,j,h),ttype) ! V on lower_born
               call VVtolln(2,h,q34(0,j),v,
     #              aauu_born(0,0,1,j,h),azuu_born(0,0,1,j,h),
     #              zauu_born(0,0,1,j,h),zzuu_born(0,0,1,j,h),ttype) ! V on upper    
               call VVtolln(1,h,q12(0,j),v,
     #              aauu_born(0,0,2,j,h),azuu_born(0,0,2,j,h),
     #              zauu_born(0,0,2,j,h),zzuu_born(0,0,2,j,h),ttype) ! V on lower
               
C     for W+W- --> e+ e- or  W+W- --> vm vm~
c     CCl tensors for CC (k=5)
c     
               call WWtoll(2,1,h,q34(0,j),v,CCee_born(0,0,1,j,h),ttype) ! V on upper
               call WWtoll(1,1,h,q12(0,j),v,CCee_born(0,0,2,j,h),ttype) ! V on lower
               call WWtolln(2,h,q34(0,j),v,CCuu_born(0,0,1,j,h),ttype) ! V on upper
               call WWtolln(1,h,q12(0,j),v,CCuu_born(0,0,2,j,h),ttype) ! V on lower
c     
C     for W-W+ --> e+ e- or vm vm~
c     CCl for CC (k=6)
c     
               call WWtoll(1,1,h,q34(0,j),v,CCee6_born(0,0,1,j,h),ttype) ! V on upper
               call WWtoll(2,1,h,q12(0,j),v,CCee6_born(0,0,2,j,h),ttype) ! V on lower 
               call WWtolln(1,h,q34(0,j),v,CCuu6_born(0,0,1,j,h),ttype) ! V on upper
               call WWtolln(2,h,q12(0,j),v,CCuu6_born(0,0,2,j,h),ttype) ! V on lower
               
c     for V-> llvv
c     
               call vto4ln(v,h,azz_born(0,h),zzz_born(0,h),ttype)
               
            endif               !not higgsonly
            
         enddo                  !h
      else
         print*, 'Only llll and llvv decaymode implemented for anomalous couplings'
         STOP
      endif                     !decaymode_lep
      
      
      return
      end

