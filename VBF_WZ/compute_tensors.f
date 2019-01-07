ccccccccccccccccccccccccccccccccccccccccccccccccc
c     
c     compute leptonic tensors for VBF pp->ZZjj 
c     
      subroutine compute_tensors_wz(pin)

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
      include 'tensor_wz_born.inc'
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

c BJ need to generalize that:
      integer bos
      parameter (bos=32) 
c     
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     
      ttype = 1                 ! tensors are Born-type

c order of particles in ME is: q q ->  e+ ve mu+ mu- q q  

      do mu = 0,3
         p(mu,1) = pin(mu,1)
         p(mu,2) = pin(mu,2)   
         do i = 3,4!1,4             !3,4
            v(mu,i) = pin(mu,i+2)
         enddo                  !i     
         p(mu,3) = pin(mu,7)
         p(mu,4) = pin(mu,8) 
         p(mu,5) = 0d0   
      enddo                     ! mu
c lepton order complying with syntax of MEs:
      v(:,1) = pin(:,4)
      v(:,2) = pin(:,3)
      

c     compute invariants:
      call calc_invariants(p,v,q12,q34,1)

c     reset leptonic tensors:
      if(ini_tensor_born) then !Only initialize tensors the first time
         call vtowz_born_reset
         ini_tensor_born=.false.
      endif
c-----
      do mu = 0,3
         qe_born(mu) = v(mu,1)+v(mu,2)
         qu_born(mu) = v(mu,3)+v(mu,4)
         qvv(mu) = qe_born(mu) + qu_born(mu)
      enddo
      
      qe_born(4)=qe_born(0)**2-qe_born(1)**2-qe_born(2)**2-qe_born(3)**2
      qu_born(4)=qu_born(0)**2-qu_born(1)**2-qu_born(2)**2-qu_born(3)**2    

      if (bos.eq.32) then ! W+Z

      if(decmode_lep) then

            do h = 1,2
               ie = 1
               iu = sign(1,1-h)
               CALL IXXXXX(v(0,1),ZERO ,+ie,-1,wl_born(1,h)) !e+	
               CALL OXXXXX(v(0,2),ZERO ,-ie, 1,wn_born(1,h)) !ve 
               CALL IXXXXX(v(0,3),ZERO ,+iu,-1,lp_born(1,h)) !mu+	
               CALL OXXXXX(v(0,4),ZERO ,-iu, 1,lm_born(1,h)) !mu-             
               CALL JIOXXX(wl_born(1,h),wn_born(1,h),GWF ,WMASS,WWIDTH,
     &              we_born(1,h)) !Wl
               CALL JIOXXX(lp_born(1,h),lm_born(1,h),GZL ,ZMASS,ZWIDTH,
     &             zu_born(1,h)) !Zl
               CALL JIOXXX(lp_born(1,h),lm_born(1,h),GAL ,ZERO ,ZERO  ,
     &              au_born(1,h)) !Al

            
!     determine V polarization vectors 
c     zet(mu) = ze(mu) - xxez*qe(mu) and zut(mu) = zu(mu) - xxmz*qu(mu)
            qq = qe_born(0)*qvv(0)-qe_born(1)*qvv(1)-
     &           qe_born(2)*qvv(2)-qe_born(3)*qvv(3)
            xxew_born = dotrc(qvv,we_born)/qq
            
            qq = qu_born(0)*qvv(0)-qu_born(1)*qvv(1)-
     &           qu_born(2)*qvv(2)-qu_born(3)*qvv(3)
            xxuz_born = dotrc(qvv,zu_born)/qq            
            xxua_born = dotrc(qvv,au_born)/qq
            do mu = 0,3
               wet_born(mu+1,h) = we_born(mu+1,h)-xxew_born*qe_born(mu)
               zut_born(mu+1,h) = zu_born(mu+1,h)-xxuz_born*qu_born(mu)
               aut_born(mu+1,h) = au_born(mu+1,h)-xxua_born*qu_born(mu)
            enddo
            do mu = 5,6
               wet_born(mu,h) = we_born(mu,h)
               zut_born(mu,h) = zu_born(mu,h)
               aut_born(mu,h) = au_born(mu,h)
            enddo

               
c leptonic tensors:
               j = 1
c for ZW+,AW+ -> e+ ve mu+ mu-:
               call vwtovwp(q12(0,j),q34(0,j),v,h,
     &              zwwv_born(0,0,j,h),awwv_born(0,0,j,h),ttype) !q12 = V
               call vwtovwp(q34(0,j),q12(0,j),v,h,
     &             wzwv_born(0,0,j,h),wawv_born(0,0,j,h),ttype) !q12 = W+
           
C for V1V2 -->  mu+ mu- (Vi=A,Z)
               call VVtomm(1,h,q12(0,j),v,
     &             aauu_born(0,0,2,j,h),azuu_born(0,0,2,j,h),
     #		   zauu_born(0,0,2,j,h),zzuu_born(0,0,2,j,h),ttype)    	 !emit W on lower
               call VVtomm(2,h,q34(0,j),v,
     &             aauu_born(0,0,1,j,h),azuu_born(0,0,1,j,h),
     #		   zauu_born(0,0,1,j,h),zzuu_born(0,0,1,j,h),ttype)    	 !emit W on upper

C for WW -->  mu+ mu-
               call WWtomm(1,h,q34(0,j),v,wwuu_born(0,0,1,j,h),ttype) !emit V->e nu on upper
               call WWtomm(1,h,q12(0,j),v,wwuu_born(0,0,2,j,h),ttype) !emit V->e nu on lower

C for WV --> e+ ve
               call WPVtoln(1,h,q34(0,j),v,
     &             awen_born(0,0,1,j,h),zwen_born(0,0,1,j,h),ttype) !emit V->mu+mu- on upper
               call WPVtoln(2,h,q12(0,j),v,
     &             awen_born(0,0,2,j,h),zwen_born(0,0,2,j,h),ttype) !emit V->mu+mu- on lower
c        
               call WPVtoln(1,h,q12(0,j),v,
     &             waen_born(0,0,2,j,h),wzen_born(0,0,2,j,h),ttype) !emit V->mu+mu- on lower
               call WPVtoln(2,h,q34(0,j),v,
     &             waen_born(0,0,1,j,h),wzen_born(0,0,1,j,h),ttype) !emit V->mu+mu- on upper 
	 
c for W+ --> e+ ve mu+ mu-	
               call wpto4l(v,h,wwv_born(0,h),ttype)


            enddo !h

       elseif(decmode_slp) then
        stop 'Not implemented yet'   
       endif ! decmode
      else ! bos = 32
       stop 'this final state combination is not supported'
      endif
      
      return
      end

