      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      real(kind(1d0)) :: p(0:3,nlegborn)
      integer :: vflav(nlegborn)
      real(kind(1d0)) :: virt_amp2,born,dum, virtual
      real(kind(1d0)), external :: powheginput
      logical, save :: firstcall = .true. 
      integer, save :: fakevirt

      virtual = 0d0

      if (firstcall) then
         fakevirt = powheginput("#fakevirt")
         if (fakevirt == 1) print*, 'WARNING: Using fakevirt !'
         firstcall = .false.
      endif

      if(fakevirt == 1) then  
         call ttW_interface(0,p,vflav,born,dum)
         virtual = 0.2*born
      else !true virtuals   
         call ttW_interface(1,p,vflav,born,virt_amp2)
         virtual = virt_amp2
c convert to POWHEG normalization:
         virtual = virtual*(2d0*pi/st_alpha)
      endif   

      end
