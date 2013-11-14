C     This file is generated AUTOMATICALLY by the
C     write_pwhg_files.f program.
C     Do NOT edit by hand
      
C     returns 2 Re(M_B * M_V)/(as/(2pi)), 
C     where M_B is the Born amplitude and 
C     M_V is the finite parte of the virtual amplitude.
C     The as/(2pi) factor is attached at a later point.
C     The virtual amplitude is generated using GoSam. 
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual
      integer vflavloc(nlegborn)
      integer proc, i, iprod,iq1,iq2
      integer vflav_gosam(1:nlegborn,0:maxprocborn-1)
      logical equalintlists
      external equalintlists
      integer dim_mom_array
      parameter (dim_mom_array=50)
      real * 8 pgosam(dim_mom_array)
C     real * 8 pgosam(5*nlegborn)
      real * 8 params(10),muren,res(4)
      real * 8 virtualold
      logical debug
      parameter (debug=.false.)
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      data(vflav_gosam(i,   12),i=1,nlegborn)/
     $      -1,
     $       2,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,   18),i=1,nlegborn)/
     $      -1,
     $       4,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,   13),i=1,nlegborn)/
     $      -1,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -2/
      data(vflav_gosam(i,   19),i=1,nlegborn)/
     $      -1,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -4/
      data(vflav_gosam(i,   14),i=1,nlegborn)/
     $       2,
     $      -1,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,    0),i=1,nlegborn)/
     $       2,
     $      -3,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,   15),i=1,nlegborn)/
     $       2,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       1/
      data(vflav_gosam(i,    1),i=1,nlegborn)/
     $       2,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       3/
      data(vflav_gosam(i,   20),i=1,nlegborn)/
     $       4,
     $      -1,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,    6),i=1,nlegborn)/
     $       4,
     $      -3,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,   21),i=1,nlegborn)/
     $       4,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       1/
      data(vflav_gosam(i,    7),i=1,nlegborn)/
     $       4,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       3/
      data(vflav_gosam(i,    2),i=1,nlegborn)/
     $      -3,
     $       2,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,    8),i=1,nlegborn)/
     $      -3,
     $       4,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       0/
      data(vflav_gosam(i,    3),i=1,nlegborn)/
     $      -3,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -2/
      data(vflav_gosam(i,    9),i=1,nlegborn)/
     $      -3,
     $       0,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -4/
      data(vflav_gosam(i,   16),i=1,nlegborn)/
     $       0,
     $      -1,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -2/
      data(vflav_gosam(i,   22),i=1,nlegborn)/
     $       0,
     $      -1,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -4/
      data(vflav_gosam(i,   17),i=1,nlegborn)/
     $       0,
     $       2,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       1/
      data(vflav_gosam(i,    4),i=1,nlegborn)/
     $       0,
     $       2,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       3/
      data(vflav_gosam(i,   23),i=1,nlegborn)/
     $       0,
     $       4,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       1/
      data(vflav_gosam(i,   10),i=1,nlegborn)/
     $       0,
     $       4,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $       3/
      data(vflav_gosam(i,    5),i=1,nlegborn)/
     $       0,
     $      -3,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -2/
      data(vflav_gosam(i,   11),i=1,nlegborn)/
     $       0,
     $      -3,
     $     -11,
     $      12,
     $       5,
     $      -5,
     $      -4/
 
      if(idvecbos.eq.-24) then
         call cconj(vflav,nlegborn)
         call pconj(p,nlegborn)
      endif

c     transfor the flavor list into a list with only up and down quark or antiquark
      vflavloc=vflav
      iq1 = 0
      iq2 = 0
      do i=1,nlegborn
         if (vflavloc(i).ne.0) then
            if (mod(abs(vflavloc(i)),2).eq.1.and.abs(vflavloc(i)).le.4) 
     $           then
               iq1 = abs(vflavloc(i))
               vflavloc(i)=sign(1,vflavloc(i))
            elseif (mod(abs(vflavloc(i)),2).eq.0.and.
     $              abs(vflavloc(i)).le.4) then
               iq2 = abs(vflavloc(i))
               vflavloc(i)=sign(2,vflavloc(i))
            endif
         endif
      enddo

      do i=0,flst_nborn-1
         if (equalintlists(nlegborn,vflavloc,vflav_gosam(1,i))) then
            proc=i
            goto 222
         endif
      enddo
 111  write(*,*) 'NO matching flavour string between POWHEG and GoSam'
      write(*,*) 'PROGRAM ABORT'
      call exit(1)

      
 222  call gosam_momenta(p,pgosam)
      
      muren=sqrt(st_muren2)
      params(1)=1d0
      
      call OLP_EvalSubProcess(proc,pgosam,muren,params,res)
      virtual=res(3)
     
c     trick to figure out which case we are dealing with
c     iq1    iq2    iq1*iq2
c      1      2        2  
c      1      4        4
c      3      2        6
c      3      4       12
      iprod=iq1*iq2
      if (iprod.eq.4) then
         virtual=virtual*ph_CKM(2,1)**2 /ph_CKM(1,1)**2
      elseif (iprod.eq.6) then
         virtual=virtual*ph_CKM(1,2)**2 /ph_CKM(1,1)**2
      elseif (iprod.eq.12) then
         virtual=virtual*ph_CKM(2,2)**2 /ph_CKM(1,1)**2
      endif


      if (debug) then
         do i=0,flst_nborn-1
            if (equalintlists(nlegborn,vflav,vflav_gosam(1,i))) then
               proc=i
               goto 987
            endif
         enddo
 182     call exit(1)         
 987     call OLP_EvalSubProcess(proc,pgosam,muren,params,res)
         virtualold=res(3)                 
         write(*,*) 'MUST be 1 ===> ',virtualold/virtual
      endif


CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C     GOSAM returns Virtual with NO gs factor ==>
C     virt_gosam ->  virt_gosam * (gs^2)^AlphasPower =  
C     virt_gosam * (4*pi*st_alpha)^AlphasPower
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      virtual=virtual * (4*pi*ph_alphaem)** 2
     $                * (4*pi*st_alpha)** 3
C     The as/(2pi) factor is attached at a later point
C     We have then to multiply for 2*pi
     $                * (2*pi)

      if(idvecbos.eq.-24) then
         call cconj(vflav,nlegborn)
         call pconj(p,nlegborn)
      endif

      end
