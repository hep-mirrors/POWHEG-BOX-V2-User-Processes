ccccccccccccccccccccccccccccccccccccccccccccccccc
c     
c     compute leptonic tensors for VBF pp->W+Zjj 
c     
      subroutine compute_tensors_wz_real(pin)

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
      parameter (nlegs=nlegreal)
      real*8 pin(0:3,nlegs)
c     
c     vbfnlo stuff:
      include 'global.inc'
      include 'coupl.inc'
      include 'tensor_wz_real.inc'
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
      logical ini_tensor_real
      data ini_tensor_real/.true./
      save ini_tensor_real

c BJ need to generalize that:
      integer bos
      parameter (bos=32) 
c     
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     
      ttype = 3                 ! tensors are real-type

c order of particles in ME is: q q ->  e+ ve mu+ mu- q q  

      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   
         do i = 3,4!1,4             !3,4
            v(mu,i) = pin(mu,i+2)
         enddo                  !i     
         p(mu,3) = pin(mu,7)
         p(mu,4) = pin(mu,8) 
         p(mu,5) = pin(mu,9)   
      enddo                     ! mu
c lepton order complying with syntax of MEs:
      v(:,1) = pin(:,4)
      v(:,2) = pin(:,3)
      

c     compute invariants:
      call calc_invariants(p,v,q12,q34,3)


c     reset leptonic tensors:
      if(ini_tensor_real) then !Only initialize tensors the first time
         call vtowz_real_reset
         ini_tensor_real=.false.
      endif

      do mu = 0,3
         qe_real(mu) = v(mu,1)+v(mu,2)
         qu_real(mu) = v(mu,3)+v(mu,4)
         qvv(mu) = qe_real(mu) + qu_real(mu)
      enddo
      
      qe_real(4)=qe_real(0)**2-qe_real(1)**2-qe_real(2)**2-qe_real(3)**2
      qu_real(4)=qu_real(0)**2-qu_real(1)**2-qu_real(2)**2-qu_real(3)**2
      

         if (bos.eq.32) then ! W+Z

         if(decmode_lep) then
            do h = 1,2

               ie = 1
               iu = sign(1,1-h)
     
               CALL IXXXXX(v(0,1),ZERO ,+ie,-1,wl_real(1,h)) !e+	
               CALL OXXXXX(v(0,2),ZERO ,-ie, 1,wn_real(1,h)) !ve 
               CALL IXXXXX(v(0,3),ZERO ,+iu,-1,lp_real(1,h)) !mu+	
               CALL OXXXXX(v(0,4),ZERO ,-iu, 1,lm_real(1,h)) !mu- 
               
               CALL JIOXXX(wl_real(1,h),wn_real(1,h),GWF ,WMASS,WWIDTH,
     &              we_real(1,h)) !Wl
               CALL JIOXXX(lp_real(1,h),lm_real(1,h),GZL ,ZMASS,ZWIDTH,
     &             zu_real(1,h)) !Zl
               CALL JIOXXX(lp_real(1,h),lm_real(1,h),GAL ,ZERO ,ZERO  ,
     &              au_real(1,h)) !Al

c leptonic tensors:
               do j = 2,3
c for ZW+,AW+ -> e+ ve mu+ mu-:
               call vwtovwp(q12(0,j),q34(0,j),v,h,
     &              zwwv_real(0,0,j,h),awwv_real(0,0,j,h),ttype) !q12 = V
               call vwtovwp(q34(0,j),q12(0,j),v,h,
     &             wzwv_real(0,0,j,h),wawv_real(0,0,j,h),ttype) !q12 = W+

C for V1V2 -->  mu+ mu- (Vi=A,Z)
               call VVtomm(1,h,q12(0,j),v,
     &             aauu_real(0,0,2,j,h),azuu_real(0,0,2,j,h),
     #		   zauu_real(0,0,2,j,h),zzuu_real(0,0,2,j,h),ttype)    	 !emit W on lower
               call VVtomm(2,h,q34(0,j),v,
     &             aauu_real(0,0,1,j,h),azuu_real(0,0,1,j,h),
     #		   zauu_real(0,0,1,j,h),zzuu_real(0,0,1,j,h),ttype)    	 !emit W on upper

C for WW -->  mu+ mu-
               call WWtomm(1,h,q34(0,j),v,wwuu_real(0,0,1,j,h),ttype) !emit V->e nu on upper
               call WWtomm(1,h,q12(0,j),v,wwuu_real(0,0,2,j,h),ttype) !emit V->e nu on lower

C for WV --> e+ ve
               call WPVtoln(1,h,q34(0,j),v,
     &             awen_real(0,0,1,j,h),zwen_real(0,0,1,j,h),ttype) !emit V->mu+mu- on upper
               call WPVtoln(2,h,q12(0,j),v,
     &             awen_real(0,0,2,j,h),zwen_real(0,0,2,j,h),ttype) !emit V->mu+mu- on lower
c        
               call WPVtoln(1,h,q12(0,j),v,
     &             waen_real(0,0,2,j,h),wzen_real(0,0,2,j,h),ttype) !emit V->mu+mu- on lower
               call WPVtoln(2,h,q34(0,j),v,
     &             waen_real(0,0,1,j,h),wzen_real(0,0,1,j,h),ttype) !emit V->mu+mu- on upper
  
            enddo !j 
	 
c for W+ --> e+ ve mu+ mu-	
               call wpto4l(v,h,wwv_real(0,h),ttype)

            enddo !h
            
          elseif(decmode_slp) then
           stop 'Not implemented yet'
	  endif ! decmode
        else !bos=32
           stop 'this final state combination is not supported'
        endif
      
      return
      end

