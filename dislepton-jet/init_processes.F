      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
c      include 'coupl.inc'
      include 'LesHouches.h'
      integer i
      integer i3,i4
      real *8 powheginput
      external powheginput
      integer max_flav,encode_sfermion_pair
      integer stype
      

      ! set number of active flavors for incoming partons:
      max_flav = int(powheginput('incomingflavors'))
      if (max_flav.eq.5)  write(*,*) "WARNING: ignoring sbottom mixing"
      if (max_flav.gt.5)  stop "can't handle more than 5 flavours"

      ! number of light quarks:
      st_nlight=5

      ! choose process ------------------------------------------------

      i3 = int(powheginput('sleptona'))
      i4 = int(powheginput('sleptonb'))

      if (i3.lt.0) then
        write(*,*) 'WARNING in init_processes:'
     &    //' swapping order of sleptons A and B'
        call swapi(i3,i4)
      endif

      if (mod(i3,100).ne.mod(-i4,100)) stop
     &    'sleptona and sleptonb must be '
     &    //'opposite charge and same generation'

      write(*,*) '****************************************************'
      write(*,*) ' POWHEG: slepton+jet production'
      write(*,*) ' slepton type : ', i3
      write(*,*) '****************************************************'
      write(*,*) 
      write(*,*) ' number of incoming quark flavors: ', max_flav

c      ! set process id: encode types of slepton A and B
      lprup(1) = encode_sfermion_pair(i3,i4)
      write(*,*) ' encoded final state to process ID: ', lprup(1)

      if (.not.((i3.eq.1000011).or.(i3.eq.2000011))) stop
     &    'final states other than selectrons not yet implemented'


      ! index of the first coloured particle in the final state
      ! (all subsequent particles are coloured)
      flst_lightpart=5

      ! use PDG slepton ID
      ! abbreviations for MADGRAPH are generated where they are necessary
      stype = i3
      call init_processes_born(stype)
      call init_processes_real(stype)

      do i=3,nlegreal
         if (abs(flst_real(i,1)).le.st_nlight) then
            flst_lightpart=i
            exit
         endif
      enddo

      ! initialize integral routines
      call qlinit

      end
 
 
 
      subroutine init_processes_born(stype)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer stype
 
      flst_born(   1,   1)=          -1
      flst_born(   2,   1)=           1
      flst_born(   3,   1)=         stype
      flst_born(   4,   1)=        -stype
      flst_born(   5,   1)=           0

c test only
c      flst_nborn=          1
c      return
 
      flst_born(   1,   2)=          -1
      flst_born(   2,   2)=           0
      flst_born(   3,   2)=         stype
      flst_born(   4,   2)=        -stype
      flst_born(   5,   2)=          -1
 
      flst_born(   1,   3)=           1
      flst_born(   2,   3)=          -1
      flst_born(   3,   3)=         stype
      flst_born(   4,   3)=        -stype
      flst_born(   5,   3)=           0
 
      flst_born(   1,   4)=           1
      flst_born(   2,   4)=           0
      flst_born(   3,   4)=         stype
      flst_born(   4,   4)=        -stype
      flst_born(   5,   4)=           1
 
      flst_born(   1,   5)=          -2
      flst_born(   2,   5)=           2
      flst_born(   3,   5)=         stype
      flst_born(   4,   5)=        -stype
      flst_born(   5,   5)=           0
 
      flst_born(   1,   6)=          -2
      flst_born(   2,   6)=           0
      flst_born(   3,   6)=         stype
      flst_born(   4,   6)=        -stype
      flst_born(   5,   6)=          -2
 
      flst_born(   1,   7)=           2
      flst_born(   2,   7)=          -2
      flst_born(   3,   7)=         stype
      flst_born(   4,   7)=        -stype
      flst_born(   5,   7)=           0
 
      flst_born(   1,   8)=           2
      flst_born(   2,   8)=           0
      flst_born(   3,   8)=         stype
      flst_born(   4,   8)=        -stype
      flst_born(   5,   8)=           2
 
      flst_born(   1,   9)=          -3
      flst_born(   2,   9)=           3
      flst_born(   3,   9)=         stype
      flst_born(   4,   9)=        -stype
      flst_born(   5,   9)=           0
 
      flst_born(   1,  10)=          -3
      flst_born(   2,  10)=           0
      flst_born(   3,  10)=         stype
      flst_born(   4,  10)=        -stype
      flst_born(   5,  10)=          -3
 
      flst_born(   1,  11)=           3
      flst_born(   2,  11)=          -3
      flst_born(   3,  11)=         stype
      flst_born(   4,  11)=        -stype
      flst_born(   5,  11)=           0
 
      flst_born(   1,  12)=           3
      flst_born(   2,  12)=           0
      flst_born(   3,  12)=         stype
      flst_born(   4,  12)=        -stype
      flst_born(   5,  12)=           3
 
      flst_born(   1,  13)=          -4
      flst_born(   2,  13)=           4
      flst_born(   3,  13)=         stype
      flst_born(   4,  13)=        -stype
      flst_born(   5,  13)=           0
 
      flst_born(   1,  14)=          -4
      flst_born(   2,  14)=           0
      flst_born(   3,  14)=         stype
      flst_born(   4,  14)=        -stype
      flst_born(   5,  14)=          -4
 
      flst_born(   1,  15)=           4
      flst_born(   2,  15)=          -4
      flst_born(   3,  15)=         stype
      flst_born(   4,  15)=        -stype
      flst_born(   5,  15)=           0
 
      flst_born(   1,  16)=           4
      flst_born(   2,  16)=           0
      flst_born(   3,  16)=         stype
      flst_born(   4,  16)=        -stype
      flst_born(   5,  16)=           4
 
      flst_born(   1,  17)=           0
      flst_born(   2,  17)=          -1
      flst_born(   3,  17)=         stype
      flst_born(   4,  17)=        -stype
      flst_born(   5,  17)=          -1
 
      flst_born(   1,  18)=           0
      flst_born(   2,  18)=           1
      flst_born(   3,  18)=         stype
      flst_born(   4,  18)=        -stype
      flst_born(   5,  18)=           1
 
      flst_born(   1,  19)=           0
      flst_born(   2,  19)=          -2
      flst_born(   3,  19)=         stype
      flst_born(   4,  19)=        -stype
      flst_born(   5,  19)=          -2
 
      flst_born(   1,  20)=           0
      flst_born(   2,  20)=           2
      flst_born(   3,  20)=         stype
      flst_born(   4,  20)=        -stype
      flst_born(   5,  20)=           2
 
      flst_born(   1,  21)=           0
      flst_born(   2,  21)=          -3
      flst_born(   3,  21)=         stype
      flst_born(   4,  21)=        -stype
      flst_born(   5,  21)=          -3
 
      flst_born(   1,  22)=           0
      flst_born(   2,  22)=           3
      flst_born(   3,  22)=         stype
      flst_born(   4,  22)=        -stype
      flst_born(   5,  22)=           3
 
      flst_born(   1,  23)=           0
      flst_born(   2,  23)=          -4
      flst_born(   3,  23)=         stype
      flst_born(   4,  23)=        -stype
      flst_born(   5,  23)=          -4
 
      flst_born(   1,  24)=           0
      flst_born(   2,  24)=           4
      flst_born(   3,  24)=         stype
      flst_born(   4,  24)=        -stype
      flst_born(   5,  24)=           4
 
      flst_nborn=          24
 
      end
 
 
 
      subroutine init_processes_real(stype)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer stype
 
      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=          -1
      flst_real(   3,   1)=         stype
      flst_real(   4,   1)=        -stype
      flst_real(   5,   1)=          -1
      flst_real(   6,   1)=          -1
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=           1
      flst_real(   3,   2)=         stype
      flst_real(   4,   2)=        -stype
      flst_real(   5,   2)=           1
      flst_real(   6,   2)=          -1
 
      flst_real(   1,   3)=          -1
      flst_real(   2,   3)=           1
      flst_real(   3,   3)=         stype
      flst_real(   4,   3)=        -stype
      flst_real(   5,   3)=           2
      flst_real(   6,   3)=          -2
 
      flst_real(   1,   4)=          -1
      flst_real(   2,   4)=           1
      flst_real(   3,   4)=         stype
      flst_real(   4,   4)=        -stype
      flst_real(   5,   4)=           3
      flst_real(   6,   4)=          -3
 
      flst_real(   1,   5)=          -1
      flst_real(   2,   5)=           1
      flst_real(   3,   5)=         stype
      flst_real(   4,   5)=        -stype
      flst_real(   5,   5)=           4
      flst_real(   6,   5)=          -4
 
      flst_real(   1,   6)=          -1
      flst_real(   2,   6)=           1
      flst_real(   3,   6)=         stype
      flst_real(   4,   6)=        -stype
      flst_real(   5,   6)=           0
      flst_real(   6,   6)=           0

c test only
c      flst_nreal=          6
c      return
 
      flst_real(   1,   7)=          -1
      flst_real(   2,   7)=          -2
      flst_real(   3,   7)=         stype
      flst_real(   4,   7)=        -stype
      flst_real(   5,   7)=          -1
      flst_real(   6,   7)=          -2
 
      flst_real(   1,   8)=          -1
      flst_real(   2,   8)=           2
      flst_real(   3,   8)=         stype
      flst_real(   4,   8)=        -stype
      flst_real(   5,   8)=          -1
      flst_real(   6,   8)=           2
 
      flst_real(   1,   9)=          -1
      flst_real(   2,   9)=          -3
      flst_real(   3,   9)=         stype
      flst_real(   4,   9)=        -stype
      flst_real(   5,   9)=          -1
      flst_real(   6,   9)=          -3
 
      flst_real(   1,  10)=          -1
      flst_real(   2,  10)=           3
      flst_real(   3,  10)=         stype
      flst_real(   4,  10)=        -stype
      flst_real(   5,  10)=          -1
      flst_real(   6,  10)=           3
 
      flst_real(   1,  11)=          -1
      flst_real(   2,  11)=          -4
      flst_real(   3,  11)=         stype
      flst_real(   4,  11)=        -stype
      flst_real(   5,  11)=          -1
      flst_real(   6,  11)=          -4
 
      flst_real(   1,  12)=          -1
      flst_real(   2,  12)=           4
      flst_real(   3,  12)=         stype
      flst_real(   4,  12)=        -stype
      flst_real(   5,  12)=          -1
      flst_real(   6,  12)=           4
 
      flst_real(   1,  13)=          -1
      flst_real(   2,  13)=           0
      flst_real(   3,  13)=         stype
      flst_real(   4,  13)=        -stype
      flst_real(   5,  13)=          -1
      flst_real(   6,  13)=           0
 
      flst_real(   1,  14)=           1
      flst_real(   2,  14)=          -1
      flst_real(   3,  14)=         stype
      flst_real(   4,  14)=        -stype
      flst_real(   5,  14)=           1
      flst_real(   6,  14)=          -1
 
      flst_real(   1,  15)=           1
      flst_real(   2,  15)=          -1
      flst_real(   3,  15)=         stype
      flst_real(   4,  15)=        -stype
      flst_real(   5,  15)=           2
      flst_real(   6,  15)=          -2
 
      flst_real(   1,  16)=           1
      flst_real(   2,  16)=          -1
      flst_real(   3,  16)=         stype
      flst_real(   4,  16)=        -stype
      flst_real(   5,  16)=           3
      flst_real(   6,  16)=          -3
 
      flst_real(   1,  17)=           1
      flst_real(   2,  17)=          -1
      flst_real(   3,  17)=         stype
      flst_real(   4,  17)=        -stype
      flst_real(   5,  17)=           4
      flst_real(   6,  17)=          -4
 
      flst_real(   1,  18)=           1
      flst_real(   2,  18)=          -1
      flst_real(   3,  18)=         stype
      flst_real(   4,  18)=        -stype
      flst_real(   5,  18)=           0
      flst_real(   6,  18)=           0
 
      flst_real(   1,  19)=           1
      flst_real(   2,  19)=           1
      flst_real(   3,  19)=         stype
      flst_real(   4,  19)=        -stype
      flst_real(   5,  19)=           1
      flst_real(   6,  19)=           1
 
      flst_real(   1,  20)=           1
      flst_real(   2,  20)=          -2
      flst_real(   3,  20)=         stype
      flst_real(   4,  20)=        -stype
      flst_real(   5,  20)=           1
      flst_real(   6,  20)=          -2
 
      flst_real(   1,  21)=           1
      flst_real(   2,  21)=           2
      flst_real(   3,  21)=         stype
      flst_real(   4,  21)=        -stype
      flst_real(   5,  21)=           1
      flst_real(   6,  21)=           2
 
      flst_real(   1,  22)=           1
      flst_real(   2,  22)=          -3
      flst_real(   3,  22)=         stype
      flst_real(   4,  22)=        -stype
      flst_real(   5,  22)=           1
      flst_real(   6,  22)=          -3
 
      flst_real(   1,  23)=           1
      flst_real(   2,  23)=           3
      flst_real(   3,  23)=         stype
      flst_real(   4,  23)=        -stype
      flst_real(   5,  23)=           1
      flst_real(   6,  23)=           3
 
      flst_real(   1,  24)=           1
      flst_real(   2,  24)=          -4
      flst_real(   3,  24)=         stype
      flst_real(   4,  24)=        -stype
      flst_real(   5,  24)=           1
      flst_real(   6,  24)=          -4
 
      flst_real(   1,  25)=           1
      flst_real(   2,  25)=           4
      flst_real(   3,  25)=         stype
      flst_real(   4,  25)=        -stype
      flst_real(   5,  25)=           1
      flst_real(   6,  25)=           4
 
      flst_real(   1,  26)=           1
      flst_real(   2,  26)=           0
      flst_real(   3,  26)=         stype
      flst_real(   4,  26)=        -stype
      flst_real(   5,  26)=           1
      flst_real(   6,  26)=           0
 
      flst_real(   1,  27)=          -2
      flst_real(   2,  27)=          -1
      flst_real(   3,  27)=         stype
      flst_real(   4,  27)=        -stype
      flst_real(   5,  27)=          -1
      flst_real(   6,  27)=          -2
 
      flst_real(   1,  28)=          -2
      flst_real(   2,  28)=           1
      flst_real(   3,  28)=         stype
      flst_real(   4,  28)=        -stype
      flst_real(   5,  28)=           1
      flst_real(   6,  28)=          -2
 
      flst_real(   1,  29)=          -2
      flst_real(   2,  29)=          -2
      flst_real(   3,  29)=         stype
      flst_real(   4,  29)=        -stype
      flst_real(   5,  29)=          -2
      flst_real(   6,  29)=          -2
 
      flst_real(   1,  30)=          -2
      flst_real(   2,  30)=           2
      flst_real(   3,  30)=         stype
      flst_real(   4,  30)=        -stype
      flst_real(   5,  30)=           1
      flst_real(   6,  30)=          -1
 
      flst_real(   1,  31)=          -2
      flst_real(   2,  31)=           2
      flst_real(   3,  31)=         stype
      flst_real(   4,  31)=        -stype
      flst_real(   5,  31)=           2
      flst_real(   6,  31)=          -2
 
      flst_real(   1,  32)=          -2
      flst_real(   2,  32)=           2
      flst_real(   3,  32)=         stype
      flst_real(   4,  32)=        -stype
      flst_real(   5,  32)=           3
      flst_real(   6,  32)=          -3
 
      flst_real(   1,  33)=          -2
      flst_real(   2,  33)=           2
      flst_real(   3,  33)=         stype
      flst_real(   4,  33)=        -stype
      flst_real(   5,  33)=           4
      flst_real(   6,  33)=          -4
 
      flst_real(   1,  34)=          -2
      flst_real(   2,  34)=           2
      flst_real(   3,  34)=         stype
      flst_real(   4,  34)=        -stype
      flst_real(   5,  34)=           0
      flst_real(   6,  34)=           0
 
      flst_real(   1,  35)=          -2
      flst_real(   2,  35)=          -3
      flst_real(   3,  35)=         stype
      flst_real(   4,  35)=        -stype
      flst_real(   5,  35)=          -2
      flst_real(   6,  35)=          -3
 
      flst_real(   1,  36)=          -2
      flst_real(   2,  36)=           3
      flst_real(   3,  36)=         stype
      flst_real(   4,  36)=        -stype
      flst_real(   5,  36)=          -2
      flst_real(   6,  36)=           3
 
      flst_real(   1,  37)=          -2
      flst_real(   2,  37)=          -4
      flst_real(   3,  37)=         stype
      flst_real(   4,  37)=        -stype
      flst_real(   5,  37)=          -2
      flst_real(   6,  37)=          -4
 
      flst_real(   1,  38)=          -2
      flst_real(   2,  38)=           4
      flst_real(   3,  38)=         stype
      flst_real(   4,  38)=        -stype
      flst_real(   5,  38)=          -2
      flst_real(   6,  38)=           4
 
      flst_real(   1,  39)=          -2
      flst_real(   2,  39)=           0
      flst_real(   3,  39)=         stype
      flst_real(   4,  39)=        -stype
      flst_real(   5,  39)=          -2
      flst_real(   6,  39)=           0
 
      flst_real(   1,  40)=           2
      flst_real(   2,  40)=          -1
      flst_real(   3,  40)=         stype
      flst_real(   4,  40)=        -stype
      flst_real(   5,  40)=          -1
      flst_real(   6,  40)=           2
 
      flst_real(   1,  41)=           2
      flst_real(   2,  41)=           1
      flst_real(   3,  41)=         stype
      flst_real(   4,  41)=        -stype
      flst_real(   5,  41)=           1
      flst_real(   6,  41)=           2
 
      flst_real(   1,  42)=           2
      flst_real(   2,  42)=          -2
      flst_real(   3,  42)=         stype
      flst_real(   4,  42)=        -stype
      flst_real(   5,  42)=           1
      flst_real(   6,  42)=          -1
 
      flst_real(   1,  43)=           2
      flst_real(   2,  43)=          -2
      flst_real(   3,  43)=         stype
      flst_real(   4,  43)=        -stype
      flst_real(   5,  43)=           2
      flst_real(   6,  43)=          -2
 
      flst_real(   1,  44)=           2
      flst_real(   2,  44)=          -2
      flst_real(   3,  44)=         stype
      flst_real(   4,  44)=        -stype
      flst_real(   5,  44)=           3
      flst_real(   6,  44)=          -3
 
      flst_real(   1,  45)=           2
      flst_real(   2,  45)=          -2
      flst_real(   3,  45)=         stype
      flst_real(   4,  45)=        -stype
      flst_real(   5,  45)=           4
      flst_real(   6,  45)=          -4
 
      flst_real(   1,  46)=           2
      flst_real(   2,  46)=          -2
      flst_real(   3,  46)=         stype
      flst_real(   4,  46)=        -stype
      flst_real(   5,  46)=           0
      flst_real(   6,  46)=           0
 
      flst_real(   1,  47)=           2
      flst_real(   2,  47)=           2
      flst_real(   3,  47)=         stype
      flst_real(   4,  47)=        -stype
      flst_real(   5,  47)=           2
      flst_real(   6,  47)=           2
 
      flst_real(   1,  48)=           2
      flst_real(   2,  48)=          -3
      flst_real(   3,  48)=         stype
      flst_real(   4,  48)=        -stype
      flst_real(   5,  48)=           2
      flst_real(   6,  48)=          -3
 
      flst_real(   1,  49)=           2
      flst_real(   2,  49)=           3
      flst_real(   3,  49)=         stype
      flst_real(   4,  49)=        -stype
      flst_real(   5,  49)=           2
      flst_real(   6,  49)=           3
 
      flst_real(   1,  50)=           2
      flst_real(   2,  50)=          -4
      flst_real(   3,  50)=         stype
      flst_real(   4,  50)=        -stype
      flst_real(   5,  50)=           2
      flst_real(   6,  50)=          -4
 
      flst_real(   1,  51)=           2
      flst_real(   2,  51)=           4
      flst_real(   3,  51)=         stype
      flst_real(   4,  51)=        -stype
      flst_real(   5,  51)=           2
      flst_real(   6,  51)=           4
 
      flst_real(   1,  52)=           2
      flst_real(   2,  52)=           0
      flst_real(   3,  52)=         stype
      flst_real(   4,  52)=        -stype
      flst_real(   5,  52)=           2
      flst_real(   6,  52)=           0
 
      flst_real(   1,  53)=          -3
      flst_real(   2,  53)=          -1
      flst_real(   3,  53)=         stype
      flst_real(   4,  53)=        -stype
      flst_real(   5,  53)=          -1
      flst_real(   6,  53)=          -3
 
      flst_real(   1,  54)=          -3
      flst_real(   2,  54)=           1
      flst_real(   3,  54)=         stype
      flst_real(   4,  54)=        -stype
      flst_real(   5,  54)=           1
      flst_real(   6,  54)=          -3
 
      flst_real(   1,  55)=          -3
      flst_real(   2,  55)=          -2
      flst_real(   3,  55)=         stype
      flst_real(   4,  55)=        -stype
      flst_real(   5,  55)=          -2
      flst_real(   6,  55)=          -3
 
      flst_real(   1,  56)=          -3
      flst_real(   2,  56)=           2
      flst_real(   3,  56)=         stype
      flst_real(   4,  56)=        -stype
      flst_real(   5,  56)=           2
      flst_real(   6,  56)=          -3
 
      flst_real(   1,  57)=          -3
      flst_real(   2,  57)=          -3
      flst_real(   3,  57)=         stype
      flst_real(   4,  57)=        -stype
      flst_real(   5,  57)=          -3
      flst_real(   6,  57)=          -3
 
      flst_real(   1,  58)=          -3
      flst_real(   2,  58)=           3
      flst_real(   3,  58)=         stype
      flst_real(   4,  58)=        -stype
      flst_real(   5,  58)=           1
      flst_real(   6,  58)=          -1
 
      flst_real(   1,  59)=          -3
      flst_real(   2,  59)=           3
      flst_real(   3,  59)=         stype
      flst_real(   4,  59)=        -stype
      flst_real(   5,  59)=           2
      flst_real(   6,  59)=          -2
 
      flst_real(   1,  60)=          -3
      flst_real(   2,  60)=           3
      flst_real(   3,  60)=         stype
      flst_real(   4,  60)=        -stype
      flst_real(   5,  60)=           3
      flst_real(   6,  60)=          -3
 
      flst_real(   1,  61)=          -3
      flst_real(   2,  61)=           3
      flst_real(   3,  61)=         stype
      flst_real(   4,  61)=        -stype
      flst_real(   5,  61)=           4
      flst_real(   6,  61)=          -4
 
      flst_real(   1,  62)=          -3
      flst_real(   2,  62)=           3
      flst_real(   3,  62)=         stype
      flst_real(   4,  62)=        -stype
      flst_real(   5,  62)=           0
      flst_real(   6,  62)=           0
 
      flst_real(   1,  63)=          -3
      flst_real(   2,  63)=          -4
      flst_real(   3,  63)=         stype
      flst_real(   4,  63)=        -stype
      flst_real(   5,  63)=          -3
      flst_real(   6,  63)=          -4
 
      flst_real(   1,  64)=          -3
      flst_real(   2,  64)=           4
      flst_real(   3,  64)=         stype
      flst_real(   4,  64)=        -stype
      flst_real(   5,  64)=          -3
      flst_real(   6,  64)=           4
 
      flst_real(   1,  65)=          -3
      flst_real(   2,  65)=           0
      flst_real(   3,  65)=         stype
      flst_real(   4,  65)=        -stype
      flst_real(   5,  65)=          -3
      flst_real(   6,  65)=           0
 
      flst_real(   1,  66)=           3
      flst_real(   2,  66)=          -1
      flst_real(   3,  66)=         stype
      flst_real(   4,  66)=        -stype
      flst_real(   5,  66)=          -1
      flst_real(   6,  66)=           3
 
      flst_real(   1,  67)=           3
      flst_real(   2,  67)=           1
      flst_real(   3,  67)=         stype
      flst_real(   4,  67)=        -stype
      flst_real(   5,  67)=           1
      flst_real(   6,  67)=           3
 
      flst_real(   1,  68)=           3
      flst_real(   2,  68)=          -2
      flst_real(   3,  68)=         stype
      flst_real(   4,  68)=        -stype
      flst_real(   5,  68)=          -2
      flst_real(   6,  68)=           3
 
      flst_real(   1,  69)=           3
      flst_real(   2,  69)=           2
      flst_real(   3,  69)=         stype
      flst_real(   4,  69)=        -stype
      flst_real(   5,  69)=           2
      flst_real(   6,  69)=           3
 
      flst_real(   1,  70)=           3
      flst_real(   2,  70)=          -3
      flst_real(   3,  70)=         stype
      flst_real(   4,  70)=        -stype
      flst_real(   5,  70)=           1
      flst_real(   6,  70)=          -1
 
      flst_real(   1,  71)=           3
      flst_real(   2,  71)=          -3
      flst_real(   3,  71)=         stype
      flst_real(   4,  71)=        -stype
      flst_real(   5,  71)=           2
      flst_real(   6,  71)=          -2
 
      flst_real(   1,  72)=           3
      flst_real(   2,  72)=          -3
      flst_real(   3,  72)=         stype
      flst_real(   4,  72)=        -stype
      flst_real(   5,  72)=           3
      flst_real(   6,  72)=          -3
 
      flst_real(   1,  73)=           3
      flst_real(   2,  73)=          -3
      flst_real(   3,  73)=         stype
      flst_real(   4,  73)=        -stype
      flst_real(   5,  73)=           4
      flst_real(   6,  73)=          -4
 
      flst_real(   1,  74)=           3
      flst_real(   2,  74)=          -3
      flst_real(   3,  74)=         stype
      flst_real(   4,  74)=        -stype
      flst_real(   5,  74)=           0
      flst_real(   6,  74)=           0
 
      flst_real(   1,  75)=           3
      flst_real(   2,  75)=           3
      flst_real(   3,  75)=         stype
      flst_real(   4,  75)=        -stype
      flst_real(   5,  75)=           3
      flst_real(   6,  75)=           3
 
      flst_real(   1,  76)=           3
      flst_real(   2,  76)=          -4
      flst_real(   3,  76)=         stype
      flst_real(   4,  76)=        -stype
      flst_real(   5,  76)=           3
      flst_real(   6,  76)=          -4
 
      flst_real(   1,  77)=           3
      flst_real(   2,  77)=           4
      flst_real(   3,  77)=         stype
      flst_real(   4,  77)=        -stype
      flst_real(   5,  77)=           3
      flst_real(   6,  77)=           4
 
      flst_real(   1,  78)=           3
      flst_real(   2,  78)=           0
      flst_real(   3,  78)=         stype
      flst_real(   4,  78)=        -stype
      flst_real(   5,  78)=           3
      flst_real(   6,  78)=           0
 
      flst_real(   1,  79)=          -4
      flst_real(   2,  79)=          -1
      flst_real(   3,  79)=         stype
      flst_real(   4,  79)=        -stype
      flst_real(   5,  79)=          -1
      flst_real(   6,  79)=          -4
 
      flst_real(   1,  80)=          -4
      flst_real(   2,  80)=           1
      flst_real(   3,  80)=         stype
      flst_real(   4,  80)=        -stype
      flst_real(   5,  80)=           1
      flst_real(   6,  80)=          -4
 
      flst_real(   1,  81)=          -4
      flst_real(   2,  81)=          -2
      flst_real(   3,  81)=         stype
      flst_real(   4,  81)=        -stype
      flst_real(   5,  81)=          -2
      flst_real(   6,  81)=          -4
 
      flst_real(   1,  82)=          -4
      flst_real(   2,  82)=           2
      flst_real(   3,  82)=         stype
      flst_real(   4,  82)=        -stype
      flst_real(   5,  82)=           2
      flst_real(   6,  82)=          -4
 
      flst_real(   1,  83)=          -4
      flst_real(   2,  83)=          -3
      flst_real(   3,  83)=         stype
      flst_real(   4,  83)=        -stype
      flst_real(   5,  83)=          -3
      flst_real(   6,  83)=          -4
 
      flst_real(   1,  84)=          -4
      flst_real(   2,  84)=           3
      flst_real(   3,  84)=         stype
      flst_real(   4,  84)=        -stype
      flst_real(   5,  84)=           3
      flst_real(   6,  84)=          -4
 
      flst_real(   1,  85)=          -4
      flst_real(   2,  85)=          -4
      flst_real(   3,  85)=         stype
      flst_real(   4,  85)=        -stype
      flst_real(   5,  85)=          -4
      flst_real(   6,  85)=          -4
 
      flst_real(   1,  86)=          -4
      flst_real(   2,  86)=           4
      flst_real(   3,  86)=         stype
      flst_real(   4,  86)=        -stype
      flst_real(   5,  86)=           1
      flst_real(   6,  86)=          -1
 
      flst_real(   1,  87)=          -4
      flst_real(   2,  87)=           4
      flst_real(   3,  87)=         stype
      flst_real(   4,  87)=        -stype
      flst_real(   5,  87)=           2
      flst_real(   6,  87)=          -2
 
      flst_real(   1,  88)=          -4
      flst_real(   2,  88)=           4
      flst_real(   3,  88)=         stype
      flst_real(   4,  88)=        -stype
      flst_real(   5,  88)=           3
      flst_real(   6,  88)=          -3
 
      flst_real(   1,  89)=          -4
      flst_real(   2,  89)=           4
      flst_real(   3,  89)=         stype
      flst_real(   4,  89)=        -stype
      flst_real(   5,  89)=           4
      flst_real(   6,  89)=          -4
 
      flst_real(   1,  90)=          -4
      flst_real(   2,  90)=           4
      flst_real(   3,  90)=         stype
      flst_real(   4,  90)=        -stype
      flst_real(   5,  90)=           0
      flst_real(   6,  90)=           0
 
      flst_real(   1,  91)=          -4
      flst_real(   2,  91)=           0
      flst_real(   3,  91)=         stype
      flst_real(   4,  91)=        -stype
      flst_real(   5,  91)=          -4
      flst_real(   6,  91)=           0
 
      flst_real(   1,  92)=           4
      flst_real(   2,  92)=          -1
      flst_real(   3,  92)=         stype
      flst_real(   4,  92)=        -stype
      flst_real(   5,  92)=          -1
      flst_real(   6,  92)=           4
 
      flst_real(   1,  93)=           4
      flst_real(   2,  93)=           1
      flst_real(   3,  93)=         stype
      flst_real(   4,  93)=        -stype
      flst_real(   5,  93)=           1
      flst_real(   6,  93)=           4
 
      flst_real(   1,  94)=           4
      flst_real(   2,  94)=          -2
      flst_real(   3,  94)=         stype
      flst_real(   4,  94)=        -stype
      flst_real(   5,  94)=          -2
      flst_real(   6,  94)=           4
 
      flst_real(   1,  95)=           4
      flst_real(   2,  95)=           2
      flst_real(   3,  95)=         stype
      flst_real(   4,  95)=        -stype
      flst_real(   5,  95)=           2
      flst_real(   6,  95)=           4
 
      flst_real(   1,  96)=           4
      flst_real(   2,  96)=          -3
      flst_real(   3,  96)=         stype
      flst_real(   4,  96)=        -stype
      flst_real(   5,  96)=          -3
      flst_real(   6,  96)=           4
 
      flst_real(   1,  97)=           4
      flst_real(   2,  97)=           3
      flst_real(   3,  97)=         stype
      flst_real(   4,  97)=        -stype
      flst_real(   5,  97)=           3
      flst_real(   6,  97)=           4
 
      flst_real(   1,  98)=           4
      flst_real(   2,  98)=          -4
      flst_real(   3,  98)=         stype
      flst_real(   4,  98)=        -stype
      flst_real(   5,  98)=           1
      flst_real(   6,  98)=          -1
 
      flst_real(   1,  99)=           4
      flst_real(   2,  99)=          -4
      flst_real(   3,  99)=         stype
      flst_real(   4,  99)=        -stype
      flst_real(   5,  99)=           2
      flst_real(   6,  99)=          -2
 
      flst_real(   1, 100)=           4
      flst_real(   2, 100)=          -4
      flst_real(   3, 100)=         stype
      flst_real(   4, 100)=        -stype
      flst_real(   5, 100)=           3
      flst_real(   6, 100)=          -3
 
      flst_real(   1, 101)=           4
      flst_real(   2, 101)=          -4
      flst_real(   3, 101)=         stype
      flst_real(   4, 101)=        -stype
      flst_real(   5, 101)=           4
      flst_real(   6, 101)=          -4
 
      flst_real(   1, 102)=           4
      flst_real(   2, 102)=          -4
      flst_real(   3, 102)=         stype
      flst_real(   4, 102)=        -stype
      flst_real(   5, 102)=           0
      flst_real(   6, 102)=           0
 
      flst_real(   1, 103)=           4
      flst_real(   2, 103)=           4
      flst_real(   3, 103)=         stype
      flst_real(   4, 103)=        -stype
      flst_real(   5, 103)=           4
      flst_real(   6, 103)=           4
 
      flst_real(   1, 104)=           4
      flst_real(   2, 104)=           0
      flst_real(   3, 104)=         stype
      flst_real(   4, 104)=        -stype
      flst_real(   5, 104)=           4
      flst_real(   6, 104)=           0
 
      flst_real(   1, 105)=           0
      flst_real(   2, 105)=          -1
      flst_real(   3, 105)=         stype
      flst_real(   4, 105)=        -stype
      flst_real(   5, 105)=          -1
      flst_real(   6, 105)=           0
 
      flst_real(   1, 106)=           0
      flst_real(   2, 106)=           1
      flst_real(   3, 106)=         stype
      flst_real(   4, 106)=        -stype
      flst_real(   5, 106)=           1
      flst_real(   6, 106)=           0
 
      flst_real(   1, 107)=           0
      flst_real(   2, 107)=          -2
      flst_real(   3, 107)=         stype
      flst_real(   4, 107)=        -stype
      flst_real(   5, 107)=          -2
      flst_real(   6, 107)=           0
 
      flst_real(   1, 108)=           0
      flst_real(   2, 108)=           2
      flst_real(   3, 108)=         stype
      flst_real(   4, 108)=        -stype
      flst_real(   5, 108)=           2
      flst_real(   6, 108)=           0
 
      flst_real(   1, 109)=           0
      flst_real(   2, 109)=          -3
      flst_real(   3, 109)=         stype
      flst_real(   4, 109)=        -stype
      flst_real(   5, 109)=          -3
      flst_real(   6, 109)=           0
 
      flst_real(   1, 110)=           0
      flst_real(   2, 110)=           3
      flst_real(   3, 110)=         stype
      flst_real(   4, 110)=        -stype
      flst_real(   5, 110)=           3
      flst_real(   6, 110)=           0
 
      flst_real(   1, 111)=           0
      flst_real(   2, 111)=          -4
      flst_real(   3, 111)=         stype
      flst_real(   4, 111)=        -stype
      flst_real(   5, 111)=          -4
      flst_real(   6, 111)=           0
 
      flst_real(   1, 112)=           0
      flst_real(   2, 112)=           4
      flst_real(   3, 112)=         stype
      flst_real(   4, 112)=        -stype
      flst_real(   5, 112)=           4
      flst_real(   6, 112)=           0
 
      flst_real(   1, 113)=           0
      flst_real(   2, 113)=           0
      flst_real(   3, 113)=         stype
      flst_real(   4, 113)=        -stype
      flst_real(   5, 113)=           1
      flst_real(   6, 113)=          -1
 
      flst_real(   1, 114)=           0
      flst_real(   2, 114)=           0
      flst_real(   3, 114)=         stype
      flst_real(   4, 114)=        -stype
      flst_real(   5, 114)=           2
      flst_real(   6, 114)=          -2
 
      flst_real(   1, 115)=           0
      flst_real(   2, 115)=           0
      flst_real(   3, 115)=         stype
      flst_real(   4, 115)=        -stype
      flst_real(   5, 115)=           3
      flst_real(   6, 115)=          -3
 
      flst_real(   1, 116)=           0
      flst_real(   2, 116)=           0
      flst_real(   3, 116)=         stype
      flst_real(   4, 116)=        -stype
      flst_real(   5, 116)=           4
      flst_real(   6, 116)=          -4
 
      flst_nreal=         116
 
      return
      end
 
