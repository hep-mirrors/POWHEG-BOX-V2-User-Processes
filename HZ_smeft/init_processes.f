      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      include "coupl.inc"
      integer i
 
      call init_processes_born
      call init_processes_real

      st_nlight=5

      call init_couplings

      do i=3,nlegreal
         if (abs(flst_real(i,1)).le.st_nlight) then
            flst_lightpart=i
            exit
         endif
      enddo
 
      end
 
 
 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include 'pwhg_physpar.h'
      logical fcnc
      real * 8 powheginput
      external powheginput
      
      fcnc = .false.
      if(powheginput('#fcnc').eq.1) fcnc=.true.
 
      flst_born(   1,   1)=          -1
      flst_born(   2,   1)=           1
      flst_born(   3,   1)=          25
      flst_born(   4,   1)=         -11
      flst_born(   5,   1)=          11
 
      flst_born(   1,   2)=           1
      flst_born(   2,   2)=          -1
      flst_born(   3,   2)=          25
      flst_born(   4,   2)=         -11
      flst_born(   5,   2)=          11
 
      flst_born(   1,   3)=          -2
      flst_born(   2,   3)=           2
      flst_born(   3,   3)=          25
      flst_born(   4,   3)=         -11
      flst_born(   5,   3)=          11
 
      flst_born(   1,   4)=           2
      flst_born(   2,   4)=          -2
      flst_born(   3,   4)=          25
      flst_born(   4,   4)=         -11
      flst_born(   5,   4)=          11
 
      flst_born(   1,   5)=          -4
      flst_born(   2,   5)=           4
      flst_born(   3,   5)=          25
      flst_born(   4,   5)=         -11
      flst_born(   5,   5)=          11
 
      flst_born(   1,   6)=           4
      flst_born(   2,   6)=          -4
      flst_born(   3,   6)=          25
      flst_born(   4,   6)=         -11
      flst_born(   5,   6)=          11
 
      flst_born(   1,   7)=          -3
      flst_born(   2,   7)=           3
      flst_born(   3,   7)=          25
      flst_born(   4,   7)=         -11
      flst_born(   5,   7)=          11
 
      flst_born(   1,   8)=           3
      flst_born(   2,   8)=          -3
      flst_born(   3,   8)=          25
      flst_born(   4,   8)=         -11
      flst_born(   5,   8)=          11
 
      flst_born(   1,   9)=          -5
      flst_born(   2,   9)=           5
      flst_born(   3,   9)=          25
      flst_born(   4,   9)=         -11
      flst_born(   5,   9)=          11
 
      flst_born(   1,  10)=           5
      flst_born(   2,  10)=          -5
      flst_born(   3,  10)=          25
      flst_born(   4,  10)=         -11
      flst_born(   5,  10)=          11

      flst_nborn=          10

      
c     add fcnc channels       
      if(fcnc) then
	flst_born(   1,   11)=           1
	flst_born(   2,   11)=          -3
	flst_born(   3,   11)=          25
	flst_born(   4,   11)=         -11
	flst_born(   5,   11)=          11
  
	flst_born(   1,   12)=           1
	flst_born(   2,   12)=          -5
	flst_born(   3,   12)=          25
	flst_born(   4,   12)=         -11
	flst_born(   5,   12)=          11
  
	flst_born(   1,   13)=           2
	flst_born(   2,   13)=          -4
	flst_born(   3,   13)=          25
	flst_born(   4,   13)=         -11
	flst_born(   5,   13)=          11
  
	flst_born(   1,   14)=           3
	flst_born(   2,   14)=          -1
	flst_born(   3,   14)=          25
	flst_born(   4,   14)=         -11
	flst_born(   5,   14)=          11
  
	flst_born(   1,   15)=           3
	flst_born(   2,   15)=          -5
	flst_born(   3,   15)=          25
	flst_born(   4,   15)=         -11
	flst_born(   5,   15)=          11
  
	flst_born(   1,   16)=           4
	flst_born(   2,   16)=          -2
	flst_born(   3,   16)=          25
	flst_born(   4,   16)=         -11
	flst_born(   5,   16)=          11
  
	flst_born(   1,   17)=           5
	flst_born(   2,   17)=          -1
	flst_born(   3,   17)=          25
	flst_born(   4,   17)=         -11
	flst_born(   5,   17)=          11
  
	flst_born(   1,   18)=           5
	flst_born(   2,   18)=          -3
	flst_born(   3,   18)=          25
	flst_born(   4,   18)=         -11
	flst_born(   5,   18)=          11
  
	flst_born(   1,   19)=          -1
	flst_born(   2,   19)=           3
	flst_born(   3,   19)=          25
	flst_born(   4,   19)=         -11
	flst_born(   5,   19)=          11
	
	flst_born(   1,   20)=          -1
	flst_born(   2,   20)=           5
	flst_born(   3,   20)=          25
	flst_born(   4,   20)=         -11
	flst_born(   5,   20)=          11
  
	flst_born(   1,   21)=          -2
	flst_born(   2,   21)=           4
	flst_born(   3,   21)=          25
	flst_born(   4,   21)=         -11
	flst_born(   5,   21)=          11
  
	flst_born(   1,   22)=          -3
	flst_born(   2,   22)=           1
	flst_born(   3,   22)=          25
	flst_born(   4,   22)=         -11
	flst_born(   5,   22)=          11
  
	flst_born(   1,   23)=          -3
	flst_born(   2,   23)=           5
	flst_born(   3,   23)=          25
	flst_born(   4,   23)=         -11
	flst_born(   5,   23)=          11

	flst_born(   1,   24)=          -4
	flst_born(   2,   24)=           2
	flst_born(   3,   24)=          25
	flst_born(   4,   24)=         -11
	flst_born(   5,   24)=          11
  
	flst_born(   1,   25)=          -5
	flst_born(   2,   25)=           1
	flst_born(   3,   25)=          25
	flst_born(   4,   25)=         -11
	flst_born(   5,   25)=          11
  
	flst_born(   1,   26)=          -5
	flst_born(   2,   26)=           3
	flst_born(   3,   26)=          25
	flst_born(   4,   26)=         -11
	flst_born(   5,   26)=          11
  
	flst_nborn=    flst_nborn + 16 
      endif
 
      return
      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include 'pwhg_physpar.h'
      logical fcnc
      real * 8 powheginput
      external powheginput
      
      fcnc = .false.
      if(powheginput('#fcnc').eq.1) fcnc=.true.
 
      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=           1
      flst_real(   3,   1)=          25
      flst_real(   4,   1)=         -11
      flst_real(   5,   1)=          11
      flst_real(   6,   1)=           0
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=           0
      flst_real(   3,   2)=          25
      flst_real(   4,   2)=         -11
      flst_real(   5,   2)=          11
      flst_real(   6,   2)=          -1
 
      flst_real(   1,   3)=           1
      flst_real(   2,   3)=          -1
      flst_real(   3,   3)=          25
      flst_real(   4,   3)=         -11
      flst_real(   5,   3)=          11
      flst_real(   6,   3)=           0
 
      flst_real(   1,   4)=           1
      flst_real(   2,   4)=           0
      flst_real(   3,   4)=          25
      flst_real(   4,   4)=         -11
      flst_real(   5,   4)=          11
      flst_real(   6,   4)=           1
 
      flst_real(   1,   5)=          -2
      flst_real(   2,   5)=           2
      flst_real(   3,   5)=          25
      flst_real(   4,   5)=         -11
      flst_real(   5,   5)=          11
      flst_real(   6,   5)=           0
 
      flst_real(   1,   6)=          -2
      flst_real(   2,   6)=           0
      flst_real(   3,   6)=          25
      flst_real(   4,   6)=         -11
      flst_real(   5,   6)=          11
      flst_real(   6,   6)=          -2
 
      flst_real(   1,   7)=           2
      flst_real(   2,   7)=          -2
      flst_real(   3,   7)=          25
      flst_real(   4,   7)=         -11
      flst_real(   5,   7)=          11
      flst_real(   6,   7)=           0
 
      flst_real(   1,   8)=           2
      flst_real(   2,   8)=           0
      flst_real(   3,   8)=          25
      flst_real(   4,   8)=         -11
      flst_real(   5,   8)=          11
      flst_real(   6,   8)=           2
 
      flst_real(   1,   9)=          -4
      flst_real(   2,   9)=           4
      flst_real(   3,   9)=          25
      flst_real(   4,   9)=         -11
      flst_real(   5,   9)=          11
      flst_real(   6,   9)=           0
 
      flst_real(   1,  10)=          -4
      flst_real(   2,  10)=           0
      flst_real(   3,  10)=          25
      flst_real(   4,  10)=         -11
      flst_real(   5,  10)=          11
      flst_real(   6,  10)=          -4
 
      flst_real(   1,  11)=           4
      flst_real(   2,  11)=          -4
      flst_real(   3,  11)=          25
      flst_real(   4,  11)=         -11
      flst_real(   5,  11)=          11
      flst_real(   6,  11)=           0
 
      flst_real(   1,  12)=           4
      flst_real(   2,  12)=           0
      flst_real(   3,  12)=          25
      flst_real(   4,  12)=         -11
      flst_real(   5,  12)=          11
      flst_real(   6,  12)=           4
 
      flst_real(   1,  13)=          -3
      flst_real(   2,  13)=           3
      flst_real(   3,  13)=          25
      flst_real(   4,  13)=         -11
      flst_real(   5,  13)=          11
      flst_real(   6,  13)=           0
 
      flst_real(   1,  14)=          -3
      flst_real(   2,  14)=           0
      flst_real(   3,  14)=          25
      flst_real(   4,  14)=         -11
      flst_real(   5,  14)=          11
      flst_real(   6,  14)=          -3
 
      flst_real(   1,  15)=           3
      flst_real(   2,  15)=          -3
      flst_real(   3,  15)=          25
      flst_real(   4,  15)=         -11
      flst_real(   5,  15)=          11
      flst_real(   6,  15)=           0
 
      flst_real(   1,  16)=           3
      flst_real(   2,  16)=           0
      flst_real(   3,  16)=          25
      flst_real(   4,  16)=         -11
      flst_real(   5,  16)=          11
      flst_real(   6,  16)=           3
 
      flst_real(   1,  17)=          -5
      flst_real(   2,  17)=           5
      flst_real(   3,  17)=          25
      flst_real(   4,  17)=         -11
      flst_real(   5,  17)=          11
      flst_real(   6,  17)=           0
 
      flst_real(   1,  18)=          -5
      flst_real(   2,  18)=           0
      flst_real(   3,  18)=          25
      flst_real(   4,  18)=         -11
      flst_real(   5,  18)=          11
      flst_real(   6,  18)=          -5
 
      flst_real(   1,  19)=           5
      flst_real(   2,  19)=          -5
      flst_real(   3,  19)=          25
      flst_real(   4,  19)=         -11
      flst_real(   5,  19)=          11
      flst_real(   6,  19)=           0
 
      flst_real(   1,  20)=           5
      flst_real(   2,  20)=           0
      flst_real(   3,  20)=          25
      flst_real(   4,  20)=         -11
      flst_real(   5,  20)=          11
      flst_real(   6,  20)=           5
 
      flst_real(   1,  21)=           0
      flst_real(   2,  21)=          -1
      flst_real(   3,  21)=          25
      flst_real(   4,  21)=         -11
      flst_real(   5,  21)=          11
      flst_real(   6,  21)=          -1
 
      flst_real(   1,  22)=           0
      flst_real(   2,  22)=           1
      flst_real(   3,  22)=          25
      flst_real(   4,  22)=         -11
      flst_real(   5,  22)=          11
      flst_real(   6,  22)=           1
 
      flst_real(   1,  23)=           0
      flst_real(   2,  23)=          -2
      flst_real(   3,  23)=          25
      flst_real(   4,  23)=         -11
      flst_real(   5,  23)=          11
      flst_real(   6,  23)=          -2
 
      flst_real(   1,  24)=           0
      flst_real(   2,  24)=           2
      flst_real(   3,  24)=          25
      flst_real(   4,  24)=         -11
      flst_real(   5,  24)=          11
      flst_real(   6,  24)=           2
 
      flst_real(   1,  25)=           0
      flst_real(   2,  25)=          -4
      flst_real(   3,  25)=          25
      flst_real(   4,  25)=         -11
      flst_real(   5,  25)=          11
      flst_real(   6,  25)=          -4
 
      flst_real(   1,  26)=           0
      flst_real(   2,  26)=           4
      flst_real(   3,  26)=          25
      flst_real(   4,  26)=         -11
      flst_real(   5,  26)=          11
      flst_real(   6,  26)=           4
 
      flst_real(   1,  27)=           0
      flst_real(   2,  27)=          -3
      flst_real(   3,  27)=          25
      flst_real(   4,  27)=         -11
      flst_real(   5,  27)=          11
      flst_real(   6,  27)=          -3
 
      flst_real(   1,  28)=           0
      flst_real(   2,  28)=           3
      flst_real(   3,  28)=          25
      flst_real(   4,  28)=         -11
      flst_real(   5,  28)=          11
      flst_real(   6,  28)=           3
 
      flst_real(   1,  29)=           0
      flst_real(   2,  29)=          -5
      flst_real(   3,  29)=          25
      flst_real(   4,  29)=         -11
      flst_real(   5,  29)=          11
      flst_real(   6,  29)=          -5
 
      flst_real(   1,  30)=           0
      flst_real(   2,  30)=           5
      flst_real(   3,  30)=          25
      flst_real(   4,  30)=         -11
      flst_real(   5,  30)=          11
      flst_real(   6,  30)=           5
 
      flst_nreal=          30
 
      if(fcnc) then
	flst_real(   1,  31)=           1
	flst_real(   2,  31)=          -3
	flst_real(   3,  31)=          25
	flst_real(   4,  31)=         -11
	flst_real(   5,  31)=          11
	flst_real(   6,  31)=           0
  
	flst_real(   1,  32)=           1
	flst_real(   2,  32)=          -5
	flst_real(   3,  32)=          25
	flst_real(   4,  32)=         -11
	flst_real(   5,  32)=          11
	flst_real(   6,  32)=           0
  
	flst_real(   1,  33)=           2
	flst_real(   2,  33)=          -4
	flst_real(   3,  33)=          25
	flst_real(   4,  33)=         -11
	flst_real(   5,  33)=          11
	flst_real(   6,  33)=           0
  
	flst_real(   1,  34)=           3
	flst_real(   2,  34)=          -1
	flst_real(   3,  34)=          25
	flst_real(   4,  34)=         -11
	flst_real(   5,  34)=          11
	flst_real(   6,  34)=           0
  
	flst_real(   1,  35)=           3
	flst_real(   2,  35)=          -5
	flst_real(   3,  35)=          25
	flst_real(   4,  35)=         -11
	flst_real(   5,  35)=          11
	flst_real(   6,  35)=           0
  
	flst_real(   1,  36)=           4
	flst_real(   2,  36)=          -2
	flst_real(   3,  36)=          25
	flst_real(   4,  36)=         -11
	flst_real(   5,  36)=          11
	flst_real(   6,  36)=           0
  
	flst_real(   1,  37)=           5
	flst_real(   2,  37)=          -1
	flst_real(   3,  37)=          25
	flst_real(   4,  37)=         -11
	flst_real(   5,  37)=          11
	flst_real(   6,  37)=           0
  
	flst_real(   1,  38)=           5
	flst_real(   2,  38)=          -3
	flst_real(   3,  38)=          25
	flst_real(   4,  38)=         -11
	flst_real(   5,  38)=          11
	flst_real(   6,  38)=           0
  
	flst_real(   1,  39)=          -1
	flst_real(   2,  39)=           3
	flst_real(   3,  39)=          25
	flst_real(   4,  39)=         -11
	flst_real(   5,  39)=          11
	flst_real(   6,  39)=           0
  
	flst_real(   1,  40)=          -1
	flst_real(   2,  40)=           5
	flst_real(   3,  40)=          25
	flst_real(   4,  40)=         -11
	flst_real(   5,  40)=          11
	flst_real(   6,  40)=           0
  
	flst_real(   1,  41)=          -2
	flst_real(   2,  41)=           4
	flst_real(   3,  41)=          25
	flst_real(   4,  41)=         -11
	flst_real(   5,  41)=          11
	flst_real(   6,  41)=           0
  
	flst_real(   1,  42)=          -3
	flst_real(   2,  42)=           1
	flst_real(   3,  42)=          25
	flst_real(   4,  42)=         -11
	flst_real(   5,  42)=          11
	flst_real(   6,  42)=           0
  
	flst_real(   1,  43)=          -3
	flst_real(   2,  43)=           5
	flst_real(   3,  43)=          25
	flst_real(   4,  43)=         -11
	flst_real(   5,  43)=          11
	flst_real(   6,  43)=           0
  
	flst_real(   1,  44)=          -4
	flst_real(   2,  44)=           2
	flst_real(   3,  44)=          25
	flst_real(   4,  44)=         -11
	flst_real(   5,  44)=          11
	flst_real(   6,  44)=           0
  
	flst_real(   1,  45)=          -5
	flst_real(   2,  45)=           1
	flst_real(   3,  45)=          25
	flst_real(   4,  45)=         -11
	flst_real(   5,  45)=          11
	flst_real(   6,  45)=           0
  
	flst_real(   1,  46)=          -5
	flst_real(   2,  46)=           3
	flst_real(   3,  46)=          25
	flst_real(   4,  46)=         -11
	flst_real(   5,  46)=          11
	flst_real(   6,  46)=           0
  
	flst_real(   1,  47)=           0
	flst_real(   2,  47)=           1
	flst_real(   3,  47)=          25
	flst_real(   4,  47)=         -11
	flst_real(   5,  47)=          11
	flst_real(   6,  47)=           3
  
  	flst_real(   1,  48)=           0
	flst_real(   2,  48)=           1
	flst_real(   3,  48)=          25
	flst_real(   4,  48)=         -11
	flst_real(   5,  48)=          11
	flst_real(   6,  48)=           5
	
	flst_real(   1,  49)=           0
	flst_real(   2,  49)=           2
	flst_real(   3,  49)=          25
	flst_real(   4,  49)=         -11
	flst_real(   5,  49)=          11
	flst_real(   6,  49)=           4
  
	flst_real(   1,  50)=           0
	flst_real(   2,  50)=           3
	flst_real(   3,  50)=          25
	flst_real(   4,  50)=         -11
	flst_real(   5,  50)=          11
	flst_real(   6,  50)=           1
	
	flst_real(   1,  51)=           0
	flst_real(   2,  51)=           3
	flst_real(   3,  51)=          25
	flst_real(   4,  51)=         -11
	flst_real(   5,  51)=          11
	flst_real(   6,  51)=           5

	flst_real(   1,  52)=           0
	flst_real(   2,  52)=           4
	flst_real(   3,  52)=          25
	flst_real(   4,  52)=         -11
	flst_real(   5,  52)=          11
	flst_real(   6,  52)=           2
	
	flst_real(   1,  53)=           0
	flst_real(   2,  53)=           5
	flst_real(   3,  53)=          25
	flst_real(   4,  53)=         -11
	flst_real(   5,  53)=          11
	flst_real(   6,  53)=           1	
  
	flst_real(   1,  54)=           0
	flst_real(   2,  54)=           5
	flst_real(   3,  54)=          25
	flst_real(   4,  54)=         -11
	flst_real(   5,  54)=          11
	flst_real(   6,  54)=           3  
  
	flst_real(   1,  55)=           0
	flst_real(   2,  55)=          -1
	flst_real(   3,  55)=          25
	flst_real(   4,  55)=         -11
	flst_real(   5,  55)=          11
	flst_real(   6,  55)=          -3
  
  	flst_real(   1,  56)=           0
	flst_real(   2,  56)=          -1
	flst_real(   3,  56)=          25
	flst_real(   4,  56)=         -11
	flst_real(   5,  56)=          11
	flst_real(   6,  56)=          -5
	
	flst_real(   1,  57)=           0
	flst_real(   2,  57)=          -2
	flst_real(   3,  57)=          25
	flst_real(   4,  57)=         -11
	flst_real(   5,  57)=          11
	flst_real(   6,  57)=          -4
  
	flst_real(   1,  58)=           0
	flst_real(   2,  58)=          -3
	flst_real(   3,  58)=          25
	flst_real(   4,  58)=         -11
	flst_real(   5,  58)=          11
	flst_real(   6,  58)=          -1
	
	flst_real(   1,  59)=           0
	flst_real(   2,  59)=          -3
	flst_real(   3,  59)=          25
	flst_real(   4,  59)=         -11
	flst_real(   5,  59)=          11
	flst_real(   6,  59)=          -5

	flst_real(   1,  60)=           0
	flst_real(   2,  60)=          -4
	flst_real(   3,  60)=          25
	flst_real(   4,  60)=         -11
	flst_real(   5,  60)=          11
	flst_real(   6,  60)=          -2
	
	flst_real(   1,  61)=           0
	flst_real(   2,  61)=          -5
	flst_real(   3,  61)=          25
	flst_real(   4,  61)=         -11
	flst_real(   5,  61)=          11
	flst_real(   6,  61)=          -1	
  
	flst_real(   1,  62)=           0
	flst_real(   2,  62)=          -5
	flst_real(   3,  62)=          25
	flst_real(   4,  62)=         -11
	flst_real(   5,  62)=          11
 	flst_real(   6,  62)=          -3    
  
	flst_real(   1,  63)=           1
	flst_real(   2,  63)=           0
	flst_real(   3,  63)=          25
	flst_real(   4,  63)=         -11
	flst_real(   5,  63)=          11
	flst_real(   6,  63)=           3
  
  	flst_real(   1,  64)=           1
	flst_real(   2,  64)=           0
	flst_real(   3,  64)=          25
	flst_real(   4,  64)=         -11
	flst_real(   5,  64)=          11
	flst_real(   6,  64)=           5
	
	flst_real(   1,  65)=           2
	flst_real(   2,  65)=           0
	flst_real(   3,  65)=          25
	flst_real(   4,  65)=         -11
	flst_real(   5,  65)=          11
	flst_real(   6,  65)=           4
  
	flst_real(   1,  66)=           3
	flst_real(   2,  66)=           0
	flst_real(   3,  66)=          25
	flst_real(   4,  66)=         -11
	flst_real(   5,  66)=          11
	flst_real(   6,  66)=           1
	
	flst_real(   1,  67)=           3
	flst_real(   2,  67)=           0
	flst_real(   3,  67)=          25
	flst_real(   4,  67)=         -11
	flst_real(   5,  67)=          11
	flst_real(   6,  67)=           5

	flst_real(   1,  68)=           4
	flst_real(   2,  68)=           0
	flst_real(   3,  68)=          25
	flst_real(   4,  68)=         -11
	flst_real(   5,  68)=          11
	flst_real(   6,  68)=           2
	
	flst_real(   1,  69)=           5
	flst_real(   2,  69)=           0
	flst_real(   3,  69)=          25
	flst_real(   4,  69)=         -11
	flst_real(   5,  69)=          11
	flst_real(   6,  69)=           1	
  
	flst_real(   1,  70)=           5
	flst_real(   2,  70)=           0
	flst_real(   3,  70)=          25
	flst_real(   4,  70)=         -11
	flst_real(   5,  70)=          11
	flst_real(   6,  70)=           3  
  
	flst_real(   1,  71)=          -1
	flst_real(   2,  71)=           0
	flst_real(   3,  71)=          25
	flst_real(   4,  71)=         -11
	flst_real(   5,  71)=          11
	flst_real(   6,  71)=          -3
  
  	flst_real(   1,  72)=          -1
	flst_real(   2,  72)=           0
	flst_real(   3,  72)=          25
	flst_real(   4,  72)=         -11
	flst_real(   5,  72)=          11
	flst_real(   6,  72)=          -5
	
	flst_real(   1,  73)=          -2
	flst_real(   2,  73)=           0
	flst_real(   3,  73)=          25
	flst_real(   4,  73)=         -11
	flst_real(   5,  73)=          11
	flst_real(   6,  73)=          -4
  
	flst_real(   1,  74)=          -3
	flst_real(   2,  74)=           0
	flst_real(   3,  74)=          25
	flst_real(   4,  74)=         -11
	flst_real(   5,  74)=          11
	flst_real(   6,  74)=          -1
	
	flst_real(   1,  75)=          -3
	flst_real(   2,  75)=           0
	flst_real(   3,  75)=          25
	flst_real(   4,  75)=         -11
	flst_real(   5,  75)=          11
	flst_real(   6,  75)=          -5

	flst_real(   1,  76)=          -4
	flst_real(   2,  76)=           0
	flst_real(   3,  76)=          25
	flst_real(   4,  76)=         -11
	flst_real(   5,  76)=          11
	flst_real(   6,  76)=          -2
	
	flst_real(   1,  77)=          -5
	flst_real(   2,  77)=           0
	flst_real(   3,  77)=          25
	flst_real(   4,  77)=         -11
	flst_real(   5,  77)=          11
	flst_real(   6,  77)=          -1	
  
	flst_real(   1,  78)=          -5
	flst_real(   2,  78)=           0
	flst_real(   3,  78)=          25
	flst_real(   4,  78)=         -11
	flst_real(   5,  78)=          11
 	flst_real(   6,  78)=          -3  
  
  
	flst_nreal= flst_nreal + 48         
      endif
 
 
      return
      end
 
