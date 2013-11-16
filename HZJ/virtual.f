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
      
      integer proc, i
      integer vflav_gosam(1:nlegborn,0:maxprocborn-1)
      logical equalintlists
      external equalintlists
      integer dim_mom_array
      parameter (dim_mom_array=50)
      real * 8 pgosam(dim_mom_array)
C     real * 8 pgosam(5*nlegborn)
      real * 8 params(10),muren,res(4)
      integer vflavloc(nlegborn)
      logical debug
      parameter (debug=.false.)
      logical inidebug
      data inidebug/.true./
      save inidebug
      real * 8 eps
      parameter (eps=1d-12)
      real * 8 virtual old
      data(vflav_gosam(i,   12),i=1,nlegborn)/
     $      -1,
     $       1,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   13),i=1,nlegborn)/
     $      -1,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -1/
      data(vflav_gosam(i,   14),i=1,nlegborn)/
     $       1,
     $      -1,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   15),i=1,nlegborn)/
     $       1,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       1/
      data(vflav_gosam(i,   24),i=1,nlegborn)/
     $      -2,
     $       2,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   25),i=1,nlegborn)/
     $      -2,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -2/
      data(vflav_gosam(i,   26),i=1,nlegborn)/
     $       2,
     $      -2,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   27),i=1,nlegborn)/
     $       2,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       2/
      data(vflav_gosam(i,    0),i=1,nlegborn)/
     $      -4,
     $       4,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    1),i=1,nlegborn)/
     $      -4,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -4/
      data(vflav_gosam(i,    2),i=1,nlegborn)/
     $       4,
     $      -4,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    3),i=1,nlegborn)/
     $       4,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       4/
      data(vflav_gosam(i,    6),i=1,nlegborn)/
     $      -3,
     $       3,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    7),i=1,nlegborn)/
     $      -3,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -3/
      data(vflav_gosam(i,    8),i=1,nlegborn)/
     $       3,
     $      -3,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    9),i=1,nlegborn)/
     $       3,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       3/
      data(vflav_gosam(i,   18),i=1,nlegborn)/
     $      -5,
     $       5,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   19),i=1,nlegborn)/
     $      -5,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -5/
      data(vflav_gosam(i,   20),i=1,nlegborn)/
     $       5,
     $      -5,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   21),i=1,nlegborn)/
     $       5,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       5/
      data(vflav_gosam(i,   16),i=1,nlegborn)/
     $       0,
     $      -1,
     $      25,
     $     -11,
     $      11,
     $      -1/
      data(vflav_gosam(i,   17),i=1,nlegborn)/
     $       0,
     $       1,
     $      25,
     $     -11,
     $      11,
     $       1/
      data(vflav_gosam(i,   28),i=1,nlegborn)/
     $       0,
     $      -2,
     $      25,
     $     -11,
     $      11,
     $      -2/
      data(vflav_gosam(i,   29),i=1,nlegborn)/
     $       0,
     $       2,
     $      25,
     $     -11,
     $      11,
     $       2/
      data(vflav_gosam(i,    4),i=1,nlegborn)/
     $       0,
     $      -4,
     $      25,
     $     -11,
     $      11,
     $      -4/
      data(vflav_gosam(i,    5),i=1,nlegborn)/
     $       0,
     $       4,
     $      25,
     $     -11,
     $      11,
     $       4/
      data(vflav_gosam(i,   10),i=1,nlegborn)/
     $       0,
     $      -3,
     $      25,
     $     -11,
     $      11,
     $      -3/
      data(vflav_gosam(i,   11),i=1,nlegborn)/
     $       0,
     $       3,
     $      25,
     $     -11,
     $      11,
     $       3/
      data(vflav_gosam(i,   22),i=1,nlegborn)/
     $       0,
     $      -5,
     $      25,
     $     -11,
     $      11,
     $      -5/
      data(vflav_gosam(i,   23),i=1,nlegborn)/
     $       0,
     $       5,
     $      25,
     $     -11,
     $      11,
     $       5/
      

      vflavloc=vflav
      do i=1,nlegborn
         if (vflavloc(i).ne.0) then     
            if (mod(abs(vflavloc(i)),2).eq.1.and.abs(vflavloc(i)).le.5) 
     $           then
               vflavloc(i)=sign(1,vflavloc(i))
            elseif (mod(abs(vflavloc(i)),2).eq.0.and.
     $              abs(vflavloc(i)).le.5) then
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
         if (inidebug) then
            write(*,*) 'Writing ratios of the two virtual when'
            write(*,*) 'difference with 1 is > ',eps
            inidebug=.false.
         endif
         if (abs(virtualold/virtual-1).gt.eps) then 
            write(*,*) 'MUST be 1 ===> ',virtualold/virtual
         endif
      endif



CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C     GOSAM returns Virtual with NO gs factor ==>
C     virt_gosam ->  virt_gosam * (gs^2)^AlphasPower =  
C     virt_gosam * (4*pi*st_alpha)^AlphasPower
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      virtual=virtual * (4*pi*ph_alphaem)** 3
     $                * (4*pi*st_alpha)** 1
C     The as/(2pi) factor is attached at a later point
C     We have then to multiply for 2*pi
     $                * (2*pi)
      end
