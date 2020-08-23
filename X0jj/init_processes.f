      SUBROUTINE INIT_PROCESSES
      IMPLICIT NONE
      INCLUDE 'nlegborn.h'
      INCLUDE 'pwhg_flst.h'
      INCLUDE 'pwhg_flg.h'
      INCLUDE 'pwhg_par.h'
      INCLUDE 'pwhg_st.h'
      INCLUDE 'coupl.inc'

      INTEGER I
      REAL * 8 TMP
      REAL * 8 POWHEGINPUT
      EXTERNAL POWHEGINPUT


c Print out svn information, if any

      write(*,*)
      write(*,*) "****************************************************************************"
      write(*,*) "****************************************************************************"
      write(*,*) "****                                                                    ****"
      write(*,*) "****          Thank you for using the MG5aMC-PWG interface              ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****     WHEN USING THIS CODE, PLEASE QUOTE THE FOLLOWING PAPERS:       ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****  [1] P. Nason,                                                     ****"
      write(*,*) "****      JHEP 0411 (2004) 040  {Nason:2004rx}                          ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****  [2] S. Frixione, P. Nason, C. Oleari,                             ****"
      write(*,*) "****      JHEP 0711 (2007) 070   {Frixione:2007vw}                      ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****  [3] S. Alioli, P. Nason, C. Oleari, E. Re,                        ****"
      write(*,*) "****      JHEP 1006 (2010) 043   {Alioli:2010xd}                        ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****  [4] P. Nason, C. Oleari, M. Rocco, M. Zaro,                       ****"
      write(*,*) "****      http://arxiv.org/abs/2008.06364 {Nason:2020lxx}               ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****  [5] J. Alwall, R. Frederix, S. Frixione, V. Hirschi, F. Maltoni,  ****"
      write(*,*) "****      JHEP 07 (2014) 079,  {Alwall:2014hca}                         ****" 
      write(*,*) "****                                                                    ****"
      write(*,*) "****  [6] F. Demartin, F. Maltoni, K. Mawatari, B. Page, M. Zaro,       ****"
      write(*,*) "****      Eur. Phys. J. C 74 (2014) 9, 3065  {Demartin:2014fia}         ****"
      write(*,*) "****                                                                    ****"
      write(*,*) "****************************************************************************"
      write(*,*) "****************************************************************************"
      write(*,*)
           


      
c     MINLO STUFF.      
      st_bornorder = 4
      call minlo_checks

     
C     The following should be on by default ...
      IF(POWHEGINPUT('#evenmaxrat').NE.0) FLG_EVENMAXRAT = .TRUE.

C     by default include negative weights. Allow for
C     explicit request not to include them
      IF(POWHEGINPUT('#withnegweights').EQ.0) THEN
        FLG_WITHNEGWEIGHTS = .FALSE.
      ELSE
        FLG_WITHNEGWEIGHTS = .TRUE.
      ENDIF

      PAR_DIEXP=POWHEGINPUT('#par_diexp')
      IF(PAR_DIEXP.LT.0) PAR_DIEXP=2D0
      PAR_DIJEXP=POWHEGINPUT('#par_dijexp')
      IF(PAR_DIJEXP.LT.0) PAR_DIJEXP=2D0
      PAR_2GSUPP=POWHEGINPUT('#par_2gsupp')
      IF(PAR_2GSUPP.LT.0) PAR_2GSUPP=2D0

      FLG_WITHDAMP=.TRUE.
      FLG_BORNZERODAMP=.TRUE.

      CALL INIT_PROCESSES_BORN
      CALL INIT_PROCESSES_REAL
      CALL INIT_COUPLINGS

      ST_NLIGHT = NF  ! based on MG5 model

      DO I=3,NLEGREAL
        IF (ABS(FLST_REAL(I,1)).LE.ST_NLIGHT) THEN
          FLST_LIGHTPART=I
          EXIT
        ENDIF
      ENDDO


      END

      SUBROUTINE INIT_PROCESSES_BORN
      IMPLICIT NONE
      INCLUDE 'nlegborn.h'
      INCLUDE 'pwhg_flst.h'

      FLST_BORN(1, 1) = 0
      FLST_BORN(2, 1) = 0
      FLST_BORN(3, 1) = 25
      FLST_BORN(4, 1) = 0
      FLST_BORN(5, 1) = 0

      FLST_BORN(1, 2) = 0
      FLST_BORN(2, 2) = 0
      FLST_BORN(3, 2) = 25
      FLST_BORN(4, 2) = 2
      FLST_BORN(5, 2) = -2

      FLST_BORN(1, 3) = 0
      FLST_BORN(2, 3) = 0
      FLST_BORN(3, 3) = 25
      FLST_BORN(4, 3) = 4
      FLST_BORN(5, 3) = -4

      FLST_BORN(1, 4) = 0
      FLST_BORN(2, 4) = 0
      FLST_BORN(3, 4) = 25
      FLST_BORN(4, 4) = 1
      FLST_BORN(5, 4) = -1

      FLST_BORN(1, 5) = 0
      FLST_BORN(2, 5) = 0
      FLST_BORN(3, 5) = 25
      FLST_BORN(4, 5) = 3
      FLST_BORN(5, 5) = -3

      FLST_BORN(1, 6) = 0
      FLST_BORN(2, 6) = 0
      FLST_BORN(3, 6) = 25
      FLST_BORN(4, 6) = 5
      FLST_BORN(5, 6) = -5

      FLST_BORN(1, 7) = 0
      FLST_BORN(2, 7) = 2
      FLST_BORN(3, 7) = 25
      FLST_BORN(4, 7) = 2
      FLST_BORN(5, 7) = 0

      FLST_BORN(1, 8) = 0
      FLST_BORN(2, 8) = 4
      FLST_BORN(3, 8) = 25
      FLST_BORN(4, 8) = 4
      FLST_BORN(5, 8) = 0

      FLST_BORN(1, 9) = 0
      FLST_BORN(2, 9) = 1
      FLST_BORN(3, 9) = 25
      FLST_BORN(4, 9) = 1
      FLST_BORN(5, 9) = 0

      FLST_BORN(1, 10) = 0
      FLST_BORN(2, 10) = 3
      FLST_BORN(3, 10) = 25
      FLST_BORN(4, 10) = 3
      FLST_BORN(5, 10) = 0

      FLST_BORN(1, 11) = 0
      FLST_BORN(2, 11) = 5
      FLST_BORN(3, 11) = 25
      FLST_BORN(4, 11) = 5
      FLST_BORN(5, 11) = 0

      FLST_BORN(1, 12) = 0
      FLST_BORN(2, 12) = -2
      FLST_BORN(3, 12) = 25
      FLST_BORN(4, 12) = -2
      FLST_BORN(5, 12) = 0

      FLST_BORN(1, 13) = 0
      FLST_BORN(2, 13) = -4
      FLST_BORN(3, 13) = 25
      FLST_BORN(4, 13) = -4
      FLST_BORN(5, 13) = 0

      FLST_BORN(1, 14) = 0
      FLST_BORN(2, 14) = -1
      FLST_BORN(3, 14) = 25
      FLST_BORN(4, 14) = -1
      FLST_BORN(5, 14) = 0

      FLST_BORN(1, 15) = 0
      FLST_BORN(2, 15) = -3
      FLST_BORN(3, 15) = 25
      FLST_BORN(4, 15) = -3
      FLST_BORN(5, 15) = 0

      FLST_BORN(1, 16) = 0
      FLST_BORN(2, 16) = -5
      FLST_BORN(3, 16) = 25
      FLST_BORN(4, 16) = -5
      FLST_BORN(5, 16) = 0

      FLST_BORN(1, 17) = 2
      FLST_BORN(2, 17) = 0
      FLST_BORN(3, 17) = 25
      FLST_BORN(4, 17) = 2
      FLST_BORN(5, 17) = 0

      FLST_BORN(1, 18) = 4
      FLST_BORN(2, 18) = 0
      FLST_BORN(3, 18) = 25
      FLST_BORN(4, 18) = 4
      FLST_BORN(5, 18) = 0

      FLST_BORN(1, 19) = 1
      FLST_BORN(2, 19) = 0
      FLST_BORN(3, 19) = 25
      FLST_BORN(4, 19) = 1
      FLST_BORN(5, 19) = 0

      FLST_BORN(1, 20) = 3
      FLST_BORN(2, 20) = 0
      FLST_BORN(3, 20) = 25
      FLST_BORN(4, 20) = 3
      FLST_BORN(5, 20) = 0

      FLST_BORN(1, 21) = 5
      FLST_BORN(2, 21) = 0
      FLST_BORN(3, 21) = 25
      FLST_BORN(4, 21) = 5
      FLST_BORN(5, 21) = 0

      FLST_BORN(1, 22) = 2
      FLST_BORN(2, 22) = 2
      FLST_BORN(3, 22) = 25
      FLST_BORN(4, 22) = 2
      FLST_BORN(5, 22) = 2

      FLST_BORN(1, 23) = 4
      FLST_BORN(2, 23) = 4
      FLST_BORN(3, 23) = 25
      FLST_BORN(4, 23) = 4
      FLST_BORN(5, 23) = 4

      FLST_BORN(1, 24) = 1
      FLST_BORN(2, 24) = 1
      FLST_BORN(3, 24) = 25
      FLST_BORN(4, 24) = 1
      FLST_BORN(5, 24) = 1

      FLST_BORN(1, 25) = 3
      FLST_BORN(2, 25) = 3
      FLST_BORN(3, 25) = 25
      FLST_BORN(4, 25) = 3
      FLST_BORN(5, 25) = 3

      FLST_BORN(1, 26) = 5
      FLST_BORN(2, 26) = 5
      FLST_BORN(3, 26) = 25
      FLST_BORN(4, 26) = 5
      FLST_BORN(5, 26) = 5

      FLST_BORN(1, 27) = 2
      FLST_BORN(2, 27) = 4
      FLST_BORN(3, 27) = 25
      FLST_BORN(4, 27) = 2
      FLST_BORN(5, 27) = 4

      FLST_BORN(1, 28) = 2
      FLST_BORN(2, 28) = 1
      FLST_BORN(3, 28) = 25
      FLST_BORN(4, 28) = 2
      FLST_BORN(5, 28) = 1

      FLST_BORN(1, 29) = 2
      FLST_BORN(2, 29) = 3
      FLST_BORN(3, 29) = 25
      FLST_BORN(4, 29) = 2
      FLST_BORN(5, 29) = 3

      FLST_BORN(1, 30) = 2
      FLST_BORN(2, 30) = 5
      FLST_BORN(3, 30) = 25
      FLST_BORN(4, 30) = 2
      FLST_BORN(5, 30) = 5

      FLST_BORN(1, 31) = 4
      FLST_BORN(2, 31) = 2
      FLST_BORN(3, 31) = 25
      FLST_BORN(4, 31) = 4
      FLST_BORN(5, 31) = 2

      FLST_BORN(1, 32) = 4
      FLST_BORN(2, 32) = 1
      FLST_BORN(3, 32) = 25
      FLST_BORN(4, 32) = 4
      FLST_BORN(5, 32) = 1

      FLST_BORN(1, 33) = 4
      FLST_BORN(2, 33) = 3
      FLST_BORN(3, 33) = 25
      FLST_BORN(4, 33) = 4
      FLST_BORN(5, 33) = 3

      FLST_BORN(1, 34) = 4
      FLST_BORN(2, 34) = 5
      FLST_BORN(3, 34) = 25
      FLST_BORN(4, 34) = 4
      FLST_BORN(5, 34) = 5

      FLST_BORN(1, 35) = 1
      FLST_BORN(2, 35) = 2
      FLST_BORN(3, 35) = 25
      FLST_BORN(4, 35) = 1
      FLST_BORN(5, 35) = 2

      FLST_BORN(1, 36) = 1
      FLST_BORN(2, 36) = 4
      FLST_BORN(3, 36) = 25
      FLST_BORN(4, 36) = 1
      FLST_BORN(5, 36) = 4

      FLST_BORN(1, 37) = 1
      FLST_BORN(2, 37) = 3
      FLST_BORN(3, 37) = 25
      FLST_BORN(4, 37) = 1
      FLST_BORN(5, 37) = 3

      FLST_BORN(1, 38) = 1
      FLST_BORN(2, 38) = 5
      FLST_BORN(3, 38) = 25
      FLST_BORN(4, 38) = 1
      FLST_BORN(5, 38) = 5

      FLST_BORN(1, 39) = 3
      FLST_BORN(2, 39) = 2
      FLST_BORN(3, 39) = 25
      FLST_BORN(4, 39) = 3
      FLST_BORN(5, 39) = 2

      FLST_BORN(1, 40) = 3
      FLST_BORN(2, 40) = 4
      FLST_BORN(3, 40) = 25
      FLST_BORN(4, 40) = 3
      FLST_BORN(5, 40) = 4

      FLST_BORN(1, 41) = 3
      FLST_BORN(2, 41) = 1
      FLST_BORN(3, 41) = 25
      FLST_BORN(4, 41) = 3
      FLST_BORN(5, 41) = 1

      FLST_BORN(1, 42) = 3
      FLST_BORN(2, 42) = 5
      FLST_BORN(3, 42) = 25
      FLST_BORN(4, 42) = 3
      FLST_BORN(5, 42) = 5

      FLST_BORN(1, 43) = 5
      FLST_BORN(2, 43) = 2
      FLST_BORN(3, 43) = 25
      FLST_BORN(4, 43) = 5
      FLST_BORN(5, 43) = 2

      FLST_BORN(1, 44) = 5
      FLST_BORN(2, 44) = 4
      FLST_BORN(3, 44) = 25
      FLST_BORN(4, 44) = 5
      FLST_BORN(5, 44) = 4

      FLST_BORN(1, 45) = 5
      FLST_BORN(2, 45) = 1
      FLST_BORN(3, 45) = 25
      FLST_BORN(4, 45) = 5
      FLST_BORN(5, 45) = 1

      FLST_BORN(1, 46) = 5
      FLST_BORN(2, 46) = 3
      FLST_BORN(3, 46) = 25
      FLST_BORN(4, 46) = 5
      FLST_BORN(5, 46) = 3

      FLST_BORN(1, 47) = 2
      FLST_BORN(2, 47) = -2
      FLST_BORN(3, 47) = 25
      FLST_BORN(4, 47) = 0
      FLST_BORN(5, 47) = 0

      FLST_BORN(1, 48) = 4
      FLST_BORN(2, 48) = -4
      FLST_BORN(3, 48) = 25
      FLST_BORN(4, 48) = 0
      FLST_BORN(5, 48) = 0

      FLST_BORN(1, 49) = 1
      FLST_BORN(2, 49) = -1
      FLST_BORN(3, 49) = 25
      FLST_BORN(4, 49) = 0
      FLST_BORN(5, 49) = 0

      FLST_BORN(1, 50) = 3
      FLST_BORN(2, 50) = -3
      FLST_BORN(3, 50) = 25
      FLST_BORN(4, 50) = 0
      FLST_BORN(5, 50) = 0

      FLST_BORN(1, 51) = 5
      FLST_BORN(2, 51) = -5
      FLST_BORN(3, 51) = 25
      FLST_BORN(4, 51) = 0
      FLST_BORN(5, 51) = 0

      FLST_BORN(1, 52) = 2
      FLST_BORN(2, 52) = -2
      FLST_BORN(3, 52) = 25
      FLST_BORN(4, 52) = 2
      FLST_BORN(5, 52) = -2

      FLST_BORN(1, 53) = 4
      FLST_BORN(2, 53) = -4
      FLST_BORN(3, 53) = 25
      FLST_BORN(4, 53) = 4
      FLST_BORN(5, 53) = -4

      FLST_BORN(1, 54) = 1
      FLST_BORN(2, 54) = -1
      FLST_BORN(3, 54) = 25
      FLST_BORN(4, 54) = 1
      FLST_BORN(5, 54) = -1

      FLST_BORN(1, 55) = 3
      FLST_BORN(2, 55) = -3
      FLST_BORN(3, 55) = 25
      FLST_BORN(4, 55) = 3
      FLST_BORN(5, 55) = -3

      FLST_BORN(1, 56) = 5
      FLST_BORN(2, 56) = -5
      FLST_BORN(3, 56) = 25
      FLST_BORN(4, 56) = 5
      FLST_BORN(5, 56) = -5

      FLST_BORN(1, 57) = 2
      FLST_BORN(2, 57) = -2
      FLST_BORN(3, 57) = 25
      FLST_BORN(4, 57) = 4
      FLST_BORN(5, 57) = -4

      FLST_BORN(1, 58) = 2
      FLST_BORN(2, 58) = -2
      FLST_BORN(3, 58) = 25
      FLST_BORN(4, 58) = 1
      FLST_BORN(5, 58) = -1

      FLST_BORN(1, 59) = 2
      FLST_BORN(2, 59) = -2
      FLST_BORN(3, 59) = 25
      FLST_BORN(4, 59) = 3
      FLST_BORN(5, 59) = -3

      FLST_BORN(1, 60) = 2
      FLST_BORN(2, 60) = -2
      FLST_BORN(3, 60) = 25
      FLST_BORN(4, 60) = 5
      FLST_BORN(5, 60) = -5

      FLST_BORN(1, 61) = 4
      FLST_BORN(2, 61) = -4
      FLST_BORN(3, 61) = 25
      FLST_BORN(4, 61) = 2
      FLST_BORN(5, 61) = -2

      FLST_BORN(1, 62) = 4
      FLST_BORN(2, 62) = -4
      FLST_BORN(3, 62) = 25
      FLST_BORN(4, 62) = 1
      FLST_BORN(5, 62) = -1

      FLST_BORN(1, 63) = 4
      FLST_BORN(2, 63) = -4
      FLST_BORN(3, 63) = 25
      FLST_BORN(4, 63) = 3
      FLST_BORN(5, 63) = -3

      FLST_BORN(1, 64) = 4
      FLST_BORN(2, 64) = -4
      FLST_BORN(3, 64) = 25
      FLST_BORN(4, 64) = 5
      FLST_BORN(5, 64) = -5

      FLST_BORN(1, 65) = 1
      FLST_BORN(2, 65) = -1
      FLST_BORN(3, 65) = 25
      FLST_BORN(4, 65) = 2
      FLST_BORN(5, 65) = -2

      FLST_BORN(1, 66) = 1
      FLST_BORN(2, 66) = -1
      FLST_BORN(3, 66) = 25
      FLST_BORN(4, 66) = 4
      FLST_BORN(5, 66) = -4

      FLST_BORN(1, 67) = 1
      FLST_BORN(2, 67) = -1
      FLST_BORN(3, 67) = 25
      FLST_BORN(4, 67) = 3
      FLST_BORN(5, 67) = -3

      FLST_BORN(1, 68) = 1
      FLST_BORN(2, 68) = -1
      FLST_BORN(3, 68) = 25
      FLST_BORN(4, 68) = 5
      FLST_BORN(5, 68) = -5

      FLST_BORN(1, 69) = 3
      FLST_BORN(2, 69) = -3
      FLST_BORN(3, 69) = 25
      FLST_BORN(4, 69) = 2
      FLST_BORN(5, 69) = -2

      FLST_BORN(1, 70) = 3
      FLST_BORN(2, 70) = -3
      FLST_BORN(3, 70) = 25
      FLST_BORN(4, 70) = 4
      FLST_BORN(5, 70) = -4

      FLST_BORN(1, 71) = 3
      FLST_BORN(2, 71) = -3
      FLST_BORN(3, 71) = 25
      FLST_BORN(4, 71) = 1
      FLST_BORN(5, 71) = -1

      FLST_BORN(1, 72) = 3
      FLST_BORN(2, 72) = -3
      FLST_BORN(3, 72) = 25
      FLST_BORN(4, 72) = 5
      FLST_BORN(5, 72) = -5

      FLST_BORN(1, 73) = 5
      FLST_BORN(2, 73) = -5
      FLST_BORN(3, 73) = 25
      FLST_BORN(4, 73) = 2
      FLST_BORN(5, 73) = -2

      FLST_BORN(1, 74) = 5
      FLST_BORN(2, 74) = -5
      FLST_BORN(3, 74) = 25
      FLST_BORN(4, 74) = 4
      FLST_BORN(5, 74) = -4

      FLST_BORN(1, 75) = 5
      FLST_BORN(2, 75) = -5
      FLST_BORN(3, 75) = 25
      FLST_BORN(4, 75) = 1
      FLST_BORN(5, 75) = -1

      FLST_BORN(1, 76) = 5
      FLST_BORN(2, 76) = -5
      FLST_BORN(3, 76) = 25
      FLST_BORN(4, 76) = 3
      FLST_BORN(5, 76) = -3

      FLST_BORN(1, 77) = 2
      FLST_BORN(2, 77) = -4
      FLST_BORN(3, 77) = 25
      FLST_BORN(4, 77) = 2
      FLST_BORN(5, 77) = -4

      FLST_BORN(1, 78) = 2
      FLST_BORN(2, 78) = -1
      FLST_BORN(3, 78) = 25
      FLST_BORN(4, 78) = 2
      FLST_BORN(5, 78) = -1

      FLST_BORN(1, 79) = 2
      FLST_BORN(2, 79) = -3
      FLST_BORN(3, 79) = 25
      FLST_BORN(4, 79) = 2
      FLST_BORN(5, 79) = -3

      FLST_BORN(1, 80) = 2
      FLST_BORN(2, 80) = -5
      FLST_BORN(3, 80) = 25
      FLST_BORN(4, 80) = 2
      FLST_BORN(5, 80) = -5

      FLST_BORN(1, 81) = 4
      FLST_BORN(2, 81) = -2
      FLST_BORN(3, 81) = 25
      FLST_BORN(4, 81) = 4
      FLST_BORN(5, 81) = -2

      FLST_BORN(1, 82) = 4
      FLST_BORN(2, 82) = -1
      FLST_BORN(3, 82) = 25
      FLST_BORN(4, 82) = 4
      FLST_BORN(5, 82) = -1

      FLST_BORN(1, 83) = 4
      FLST_BORN(2, 83) = -3
      FLST_BORN(3, 83) = 25
      FLST_BORN(4, 83) = 4
      FLST_BORN(5, 83) = -3

      FLST_BORN(1, 84) = 4
      FLST_BORN(2, 84) = -5
      FLST_BORN(3, 84) = 25
      FLST_BORN(4, 84) = 4
      FLST_BORN(5, 84) = -5

      FLST_BORN(1, 85) = 1
      FLST_BORN(2, 85) = -2
      FLST_BORN(3, 85) = 25
      FLST_BORN(4, 85) = 1
      FLST_BORN(5, 85) = -2

      FLST_BORN(1, 86) = 1
      FLST_BORN(2, 86) = -4
      FLST_BORN(3, 86) = 25
      FLST_BORN(4, 86) = 1
      FLST_BORN(5, 86) = -4

      FLST_BORN(1, 87) = 1
      FLST_BORN(2, 87) = -3
      FLST_BORN(3, 87) = 25
      FLST_BORN(4, 87) = 1
      FLST_BORN(5, 87) = -3

      FLST_BORN(1, 88) = 1
      FLST_BORN(2, 88) = -5
      FLST_BORN(3, 88) = 25
      FLST_BORN(4, 88) = 1
      FLST_BORN(5, 88) = -5

      FLST_BORN(1, 89) = 3
      FLST_BORN(2, 89) = -2
      FLST_BORN(3, 89) = 25
      FLST_BORN(4, 89) = 3
      FLST_BORN(5, 89) = -2

      FLST_BORN(1, 90) = 3
      FLST_BORN(2, 90) = -4
      FLST_BORN(3, 90) = 25
      FLST_BORN(4, 90) = 3
      FLST_BORN(5, 90) = -4

      FLST_BORN(1, 91) = 3
      FLST_BORN(2, 91) = -1
      FLST_BORN(3, 91) = 25
      FLST_BORN(4, 91) = 3
      FLST_BORN(5, 91) = -1

      FLST_BORN(1, 92) = 3
      FLST_BORN(2, 92) = -5
      FLST_BORN(3, 92) = 25
      FLST_BORN(4, 92) = 3
      FLST_BORN(5, 92) = -5

      FLST_BORN(1, 93) = 5
      FLST_BORN(2, 93) = -2
      FLST_BORN(3, 93) = 25
      FLST_BORN(4, 93) = 5
      FLST_BORN(5, 93) = -2

      FLST_BORN(1, 94) = 5
      FLST_BORN(2, 94) = -4
      FLST_BORN(3, 94) = 25
      FLST_BORN(4, 94) = 5
      FLST_BORN(5, 94) = -4

      FLST_BORN(1, 95) = 5
      FLST_BORN(2, 95) = -1
      FLST_BORN(3, 95) = 25
      FLST_BORN(4, 95) = 5
      FLST_BORN(5, 95) = -1

      FLST_BORN(1, 96) = 5
      FLST_BORN(2, 96) = -3
      FLST_BORN(3, 96) = 25
      FLST_BORN(4, 96) = 5
      FLST_BORN(5, 96) = -3

      FLST_BORN(1, 97) = -2
      FLST_BORN(2, 97) = 0
      FLST_BORN(3, 97) = 25
      FLST_BORN(4, 97) = -2
      FLST_BORN(5, 97) = 0

      FLST_BORN(1, 98) = -4
      FLST_BORN(2, 98) = 0
      FLST_BORN(3, 98) = 25
      FLST_BORN(4, 98) = -4
      FLST_BORN(5, 98) = 0

      FLST_BORN(1, 99) = -1
      FLST_BORN(2, 99) = 0
      FLST_BORN(3, 99) = 25
      FLST_BORN(4, 99) = -1
      FLST_BORN(5, 99) = 0

      FLST_BORN(1, 100) = -3
      FLST_BORN(2, 100) = 0
      FLST_BORN(3, 100) = 25
      FLST_BORN(4, 100) = -3
      FLST_BORN(5, 100) = 0

      FLST_BORN(1, 101) = -5
      FLST_BORN(2, 101) = 0
      FLST_BORN(3, 101) = 25
      FLST_BORN(4, 101) = -5
      FLST_BORN(5, 101) = 0

      FLST_BORN(1, 102) = -2
      FLST_BORN(2, 102) = 2
      FLST_BORN(3, 102) = 25
      FLST_BORN(4, 102) = 0
      FLST_BORN(5, 102) = 0

      FLST_BORN(1, 103) = -4
      FLST_BORN(2, 103) = 4
      FLST_BORN(3, 103) = 25
      FLST_BORN(4, 103) = 0
      FLST_BORN(5, 103) = 0

      FLST_BORN(1, 104) = -1
      FLST_BORN(2, 104) = 1
      FLST_BORN(3, 104) = 25
      FLST_BORN(4, 104) = 0
      FLST_BORN(5, 104) = 0

      FLST_BORN(1, 105) = -3
      FLST_BORN(2, 105) = 3
      FLST_BORN(3, 105) = 25
      FLST_BORN(4, 105) = 0
      FLST_BORN(5, 105) = 0

      FLST_BORN(1, 106) = -5
      FLST_BORN(2, 106) = 5
      FLST_BORN(3, 106) = 25
      FLST_BORN(4, 106) = 0
      FLST_BORN(5, 106) = 0

      FLST_BORN(1, 107) = -2
      FLST_BORN(2, 107) = 2
      FLST_BORN(3, 107) = 25
      FLST_BORN(4, 107) = 2
      FLST_BORN(5, 107) = -2

      FLST_BORN(1, 108) = -4
      FLST_BORN(2, 108) = 4
      FLST_BORN(3, 108) = 25
      FLST_BORN(4, 108) = 4
      FLST_BORN(5, 108) = -4

      FLST_BORN(1, 109) = -1
      FLST_BORN(2, 109) = 1
      FLST_BORN(3, 109) = 25
      FLST_BORN(4, 109) = 1
      FLST_BORN(5, 109) = -1

      FLST_BORN(1, 110) = -3
      FLST_BORN(2, 110) = 3
      FLST_BORN(3, 110) = 25
      FLST_BORN(4, 110) = 3
      FLST_BORN(5, 110) = -3

      FLST_BORN(1, 111) = -5
      FLST_BORN(2, 111) = 5
      FLST_BORN(3, 111) = 25
      FLST_BORN(4, 111) = 5
      FLST_BORN(5, 111) = -5

      FLST_BORN(1, 112) = -2
      FLST_BORN(2, 112) = 2
      FLST_BORN(3, 112) = 25
      FLST_BORN(4, 112) = 4
      FLST_BORN(5, 112) = -4

      FLST_BORN(1, 113) = -2
      FLST_BORN(2, 113) = 2
      FLST_BORN(3, 113) = 25
      FLST_BORN(4, 113) = 1
      FLST_BORN(5, 113) = -1

      FLST_BORN(1, 114) = -2
      FLST_BORN(2, 114) = 2
      FLST_BORN(3, 114) = 25
      FLST_BORN(4, 114) = 3
      FLST_BORN(5, 114) = -3

      FLST_BORN(1, 115) = -2
      FLST_BORN(2, 115) = 2
      FLST_BORN(3, 115) = 25
      FLST_BORN(4, 115) = 5
      FLST_BORN(5, 115) = -5

      FLST_BORN(1, 116) = -4
      FLST_BORN(2, 116) = 4
      FLST_BORN(3, 116) = 25
      FLST_BORN(4, 116) = 2
      FLST_BORN(5, 116) = -2

      FLST_BORN(1, 117) = -4
      FLST_BORN(2, 117) = 4
      FLST_BORN(3, 117) = 25
      FLST_BORN(4, 117) = 1
      FLST_BORN(5, 117) = -1

      FLST_BORN(1, 118) = -4
      FLST_BORN(2, 118) = 4
      FLST_BORN(3, 118) = 25
      FLST_BORN(4, 118) = 3
      FLST_BORN(5, 118) = -3

      FLST_BORN(1, 119) = -4
      FLST_BORN(2, 119) = 4
      FLST_BORN(3, 119) = 25
      FLST_BORN(4, 119) = 5
      FLST_BORN(5, 119) = -5

      FLST_BORN(1, 120) = -1
      FLST_BORN(2, 120) = 1
      FLST_BORN(3, 120) = 25
      FLST_BORN(4, 120) = 2
      FLST_BORN(5, 120) = -2

      FLST_BORN(1, 121) = -1
      FLST_BORN(2, 121) = 1
      FLST_BORN(3, 121) = 25
      FLST_BORN(4, 121) = 4
      FLST_BORN(5, 121) = -4

      FLST_BORN(1, 122) = -1
      FLST_BORN(2, 122) = 1
      FLST_BORN(3, 122) = 25
      FLST_BORN(4, 122) = 3
      FLST_BORN(5, 122) = -3

      FLST_BORN(1, 123) = -1
      FLST_BORN(2, 123) = 1
      FLST_BORN(3, 123) = 25
      FLST_BORN(4, 123) = 5
      FLST_BORN(5, 123) = -5

      FLST_BORN(1, 124) = -3
      FLST_BORN(2, 124) = 3
      FLST_BORN(3, 124) = 25
      FLST_BORN(4, 124) = 2
      FLST_BORN(5, 124) = -2

      FLST_BORN(1, 125) = -3
      FLST_BORN(2, 125) = 3
      FLST_BORN(3, 125) = 25
      FLST_BORN(4, 125) = 4
      FLST_BORN(5, 125) = -4

      FLST_BORN(1, 126) = -3
      FLST_BORN(2, 126) = 3
      FLST_BORN(3, 126) = 25
      FLST_BORN(4, 126) = 1
      FLST_BORN(5, 126) = -1

      FLST_BORN(1, 127) = -3
      FLST_BORN(2, 127) = 3
      FLST_BORN(3, 127) = 25
      FLST_BORN(4, 127) = 5
      FLST_BORN(5, 127) = -5

      FLST_BORN(1, 128) = -5
      FLST_BORN(2, 128) = 5
      FLST_BORN(3, 128) = 25
      FLST_BORN(4, 128) = 2
      FLST_BORN(5, 128) = -2

      FLST_BORN(1, 129) = -5
      FLST_BORN(2, 129) = 5
      FLST_BORN(3, 129) = 25
      FLST_BORN(4, 129) = 4
      FLST_BORN(5, 129) = -4

      FLST_BORN(1, 130) = -5
      FLST_BORN(2, 130) = 5
      FLST_BORN(3, 130) = 25
      FLST_BORN(4, 130) = 1
      FLST_BORN(5, 130) = -1

      FLST_BORN(1, 131) = -5
      FLST_BORN(2, 131) = 5
      FLST_BORN(3, 131) = 25
      FLST_BORN(4, 131) = 3
      FLST_BORN(5, 131) = -3

      FLST_BORN(1, 132) = -2
      FLST_BORN(2, 132) = 4
      FLST_BORN(3, 132) = 25
      FLST_BORN(4, 132) = -2
      FLST_BORN(5, 132) = 4

      FLST_BORN(1, 133) = -2
      FLST_BORN(2, 133) = 1
      FLST_BORN(3, 133) = 25
      FLST_BORN(4, 133) = -2
      FLST_BORN(5, 133) = 1

      FLST_BORN(1, 134) = -2
      FLST_BORN(2, 134) = 3
      FLST_BORN(3, 134) = 25
      FLST_BORN(4, 134) = -2
      FLST_BORN(5, 134) = 3

      FLST_BORN(1, 135) = -2
      FLST_BORN(2, 135) = 5
      FLST_BORN(3, 135) = 25
      FLST_BORN(4, 135) = -2
      FLST_BORN(5, 135) = 5

      FLST_BORN(1, 136) = -4
      FLST_BORN(2, 136) = 2
      FLST_BORN(3, 136) = 25
      FLST_BORN(4, 136) = -4
      FLST_BORN(5, 136) = 2

      FLST_BORN(1, 137) = -4
      FLST_BORN(2, 137) = 1
      FLST_BORN(3, 137) = 25
      FLST_BORN(4, 137) = -4
      FLST_BORN(5, 137) = 1

      FLST_BORN(1, 138) = -4
      FLST_BORN(2, 138) = 3
      FLST_BORN(3, 138) = 25
      FLST_BORN(4, 138) = -4
      FLST_BORN(5, 138) = 3

      FLST_BORN(1, 139) = -4
      FLST_BORN(2, 139) = 5
      FLST_BORN(3, 139) = 25
      FLST_BORN(4, 139) = -4
      FLST_BORN(5, 139) = 5

      FLST_BORN(1, 140) = -1
      FLST_BORN(2, 140) = 2
      FLST_BORN(3, 140) = 25
      FLST_BORN(4, 140) = -1
      FLST_BORN(5, 140) = 2

      FLST_BORN(1, 141) = -1
      FLST_BORN(2, 141) = 4
      FLST_BORN(3, 141) = 25
      FLST_BORN(4, 141) = -1
      FLST_BORN(5, 141) = 4

      FLST_BORN(1, 142) = -1
      FLST_BORN(2, 142) = 3
      FLST_BORN(3, 142) = 25
      FLST_BORN(4, 142) = -1
      FLST_BORN(5, 142) = 3

      FLST_BORN(1, 143) = -1
      FLST_BORN(2, 143) = 5
      FLST_BORN(3, 143) = 25
      FLST_BORN(4, 143) = -1
      FLST_BORN(5, 143) = 5

      FLST_BORN(1, 144) = -3
      FLST_BORN(2, 144) = 2
      FLST_BORN(3, 144) = 25
      FLST_BORN(4, 144) = -3
      FLST_BORN(5, 144) = 2

      FLST_BORN(1, 145) = -3
      FLST_BORN(2, 145) = 4
      FLST_BORN(3, 145) = 25
      FLST_BORN(4, 145) = -3
      FLST_BORN(5, 145) = 4

      FLST_BORN(1, 146) = -3
      FLST_BORN(2, 146) = 1
      FLST_BORN(3, 146) = 25
      FLST_BORN(4, 146) = -3
      FLST_BORN(5, 146) = 1

      FLST_BORN(1, 147) = -3
      FLST_BORN(2, 147) = 5
      FLST_BORN(3, 147) = 25
      FLST_BORN(4, 147) = -3
      FLST_BORN(5, 147) = 5

      FLST_BORN(1, 148) = -5
      FLST_BORN(2, 148) = 2
      FLST_BORN(3, 148) = 25
      FLST_BORN(4, 148) = -5
      FLST_BORN(5, 148) = 2

      FLST_BORN(1, 149) = -5
      FLST_BORN(2, 149) = 4
      FLST_BORN(3, 149) = 25
      FLST_BORN(4, 149) = -5
      FLST_BORN(5, 149) = 4

      FLST_BORN(1, 150) = -5
      FLST_BORN(2, 150) = 1
      FLST_BORN(3, 150) = 25
      FLST_BORN(4, 150) = -5
      FLST_BORN(5, 150) = 1

      FLST_BORN(1, 151) = -5
      FLST_BORN(2, 151) = 3
      FLST_BORN(3, 151) = 25
      FLST_BORN(4, 151) = -5
      FLST_BORN(5, 151) = 3

      FLST_BORN(1, 152) = -2
      FLST_BORN(2, 152) = -2
      FLST_BORN(3, 152) = 25
      FLST_BORN(4, 152) = -2
      FLST_BORN(5, 152) = -2

      FLST_BORN(1, 153) = -4
      FLST_BORN(2, 153) = -4
      FLST_BORN(3, 153) = 25
      FLST_BORN(4, 153) = -4
      FLST_BORN(5, 153) = -4

      FLST_BORN(1, 154) = -1
      FLST_BORN(2, 154) = -1
      FLST_BORN(3, 154) = 25
      FLST_BORN(4, 154) = -1
      FLST_BORN(5, 154) = -1

      FLST_BORN(1, 155) = -3
      FLST_BORN(2, 155) = -3
      FLST_BORN(3, 155) = 25
      FLST_BORN(4, 155) = -3
      FLST_BORN(5, 155) = -3

      FLST_BORN(1, 156) = -5
      FLST_BORN(2, 156) = -5
      FLST_BORN(3, 156) = 25
      FLST_BORN(4, 156) = -5
      FLST_BORN(5, 156) = -5

      FLST_BORN(1, 157) = -2
      FLST_BORN(2, 157) = -4
      FLST_BORN(3, 157) = 25
      FLST_BORN(4, 157) = -2
      FLST_BORN(5, 157) = -4

      FLST_BORN(1, 158) = -2
      FLST_BORN(2, 158) = -1
      FLST_BORN(3, 158) = 25
      FLST_BORN(4, 158) = -2
      FLST_BORN(5, 158) = -1

      FLST_BORN(1, 159) = -2
      FLST_BORN(2, 159) = -3
      FLST_BORN(3, 159) = 25
      FLST_BORN(4, 159) = -2
      FLST_BORN(5, 159) = -3

      FLST_BORN(1, 160) = -2
      FLST_BORN(2, 160) = -5
      FLST_BORN(3, 160) = 25
      FLST_BORN(4, 160) = -2
      FLST_BORN(5, 160) = -5

      FLST_BORN(1, 161) = -4
      FLST_BORN(2, 161) = -2
      FLST_BORN(3, 161) = 25
      FLST_BORN(4, 161) = -4
      FLST_BORN(5, 161) = -2

      FLST_BORN(1, 162) = -4
      FLST_BORN(2, 162) = -1
      FLST_BORN(3, 162) = 25
      FLST_BORN(4, 162) = -4
      FLST_BORN(5, 162) = -1

      FLST_BORN(1, 163) = -4
      FLST_BORN(2, 163) = -3
      FLST_BORN(3, 163) = 25
      FLST_BORN(4, 163) = -4
      FLST_BORN(5, 163) = -3

      FLST_BORN(1, 164) = -4
      FLST_BORN(2, 164) = -5
      FLST_BORN(3, 164) = 25
      FLST_BORN(4, 164) = -4
      FLST_BORN(5, 164) = -5

      FLST_BORN(1, 165) = -1
      FLST_BORN(2, 165) = -2
      FLST_BORN(3, 165) = 25
      FLST_BORN(4, 165) = -1
      FLST_BORN(5, 165) = -2

      FLST_BORN(1, 166) = -1
      FLST_BORN(2, 166) = -4
      FLST_BORN(3, 166) = 25
      FLST_BORN(4, 166) = -1
      FLST_BORN(5, 166) = -4

      FLST_BORN(1, 167) = -1
      FLST_BORN(2, 167) = -3
      FLST_BORN(3, 167) = 25
      FLST_BORN(4, 167) = -1
      FLST_BORN(5, 167) = -3

      FLST_BORN(1, 168) = -1
      FLST_BORN(2, 168) = -5
      FLST_BORN(3, 168) = 25
      FLST_BORN(4, 168) = -1
      FLST_BORN(5, 168) = -5

      FLST_BORN(1, 169) = -3
      FLST_BORN(2, 169) = -2
      FLST_BORN(3, 169) = 25
      FLST_BORN(4, 169) = -3
      FLST_BORN(5, 169) = -2

      FLST_BORN(1, 170) = -3
      FLST_BORN(2, 170) = -4
      FLST_BORN(3, 170) = 25
      FLST_BORN(4, 170) = -3
      FLST_BORN(5, 170) = -4

      FLST_BORN(1, 171) = -3
      FLST_BORN(2, 171) = -1
      FLST_BORN(3, 171) = 25
      FLST_BORN(4, 171) = -3
      FLST_BORN(5, 171) = -1

      FLST_BORN(1, 172) = -3
      FLST_BORN(2, 172) = -5
      FLST_BORN(3, 172) = 25
      FLST_BORN(4, 172) = -3
      FLST_BORN(5, 172) = -5

      FLST_BORN(1, 173) = -5
      FLST_BORN(2, 173) = -2
      FLST_BORN(3, 173) = 25
      FLST_BORN(4, 173) = -5
      FLST_BORN(5, 173) = -2

      FLST_BORN(1, 174) = -5
      FLST_BORN(2, 174) = -4
      FLST_BORN(3, 174) = 25
      FLST_BORN(4, 174) = -5
      FLST_BORN(5, 174) = -4

      FLST_BORN(1, 175) = -5
      FLST_BORN(2, 175) = -1
      FLST_BORN(3, 175) = 25
      FLST_BORN(4, 175) = -5
      FLST_BORN(5, 175) = -1

      FLST_BORN(1, 176) = -5
      FLST_BORN(2, 176) = -3
      FLST_BORN(3, 176) = 25
      FLST_BORN(4, 176) = -5
      FLST_BORN(5, 176) = -3



      FLST_NBORN =  176
      END

      SUBROUTINE INIT_PROCESSES_REAL
      IMPLICIT NONE
      INCLUDE 'nlegborn.h'
      INCLUDE 'pwhg_flst.h'

      FLST_REAL(1, 1) = 0
      FLST_REAL(2, 1) = 0
      FLST_REAL(3, 1) = 25
      FLST_REAL(4, 1) = 0
      FLST_REAL(5, 1) = 0
      FLST_REAL(6, 1) = 0

      FLST_REAL(1, 2) = -1
      FLST_REAL(2, 2) = 0
      FLST_REAL(3, 2) = 25
      FLST_REAL(4, 2) = -1
      FLST_REAL(5, 2) = 0
      FLST_REAL(6, 2) = 0

      FLST_REAL(1, 3) = -2
      FLST_REAL(2, 3) = 0
      FLST_REAL(3, 3) = 25
      FLST_REAL(4, 3) = -2
      FLST_REAL(5, 3) = 0
      FLST_REAL(6, 3) = 0

      FLST_REAL(1, 4) = -3
      FLST_REAL(2, 4) = 0
      FLST_REAL(3, 4) = 25
      FLST_REAL(4, 4) = -3
      FLST_REAL(5, 4) = 0
      FLST_REAL(6, 4) = 0

      FLST_REAL(1, 5) = -4
      FLST_REAL(2, 5) = 0
      FLST_REAL(3, 5) = 25
      FLST_REAL(4, 5) = -4
      FLST_REAL(5, 5) = 0
      FLST_REAL(6, 5) = 0

      FLST_REAL(1, 6) = -5
      FLST_REAL(2, 6) = 0
      FLST_REAL(3, 6) = 25
      FLST_REAL(4, 6) = -5
      FLST_REAL(5, 6) = 0
      FLST_REAL(6, 6) = 0

      FLST_REAL(1, 7) = 1
      FLST_REAL(2, 7) = 0
      FLST_REAL(3, 7) = 25
      FLST_REAL(4, 7) = 1
      FLST_REAL(5, 7) = 0
      FLST_REAL(6, 7) = 0

      FLST_REAL(1, 8) = 2
      FLST_REAL(2, 8) = 0
      FLST_REAL(3, 8) = 25
      FLST_REAL(4, 8) = 2
      FLST_REAL(5, 8) = 0
      FLST_REAL(6, 8) = 0

      FLST_REAL(1, 9) = 3
      FLST_REAL(2, 9) = 0
      FLST_REAL(3, 9) = 25
      FLST_REAL(4, 9) = 3
      FLST_REAL(5, 9) = 0
      FLST_REAL(6, 9) = 0

      FLST_REAL(1, 10) = 4
      FLST_REAL(2, 10) = 0
      FLST_REAL(3, 10) = 25
      FLST_REAL(4, 10) = 4
      FLST_REAL(5, 10) = 0
      FLST_REAL(6, 10) = 0

      FLST_REAL(1, 11) = 5
      FLST_REAL(2, 11) = 0
      FLST_REAL(3, 11) = 25
      FLST_REAL(4, 11) = 5
      FLST_REAL(5, 11) = 0
      FLST_REAL(6, 11) = 0

      FLST_REAL(1, 12) = 0
      FLST_REAL(2, 12) = -1
      FLST_REAL(3, 12) = 25
      FLST_REAL(4, 12) = -1
      FLST_REAL(5, 12) = 0
      FLST_REAL(6, 12) = 0

      FLST_REAL(1, 13) = 0
      FLST_REAL(2, 13) = -2
      FLST_REAL(3, 13) = 25
      FLST_REAL(4, 13) = -2
      FLST_REAL(5, 13) = 0
      FLST_REAL(6, 13) = 0

      FLST_REAL(1, 14) = 0
      FLST_REAL(2, 14) = -3
      FLST_REAL(3, 14) = 25
      FLST_REAL(4, 14) = -3
      FLST_REAL(5, 14) = 0
      FLST_REAL(6, 14) = 0

      FLST_REAL(1, 15) = 0
      FLST_REAL(2, 15) = -4
      FLST_REAL(3, 15) = 25
      FLST_REAL(4, 15) = -4
      FLST_REAL(5, 15) = 0
      FLST_REAL(6, 15) = 0

      FLST_REAL(1, 16) = 0
      FLST_REAL(2, 16) = -5
      FLST_REAL(3, 16) = 25
      FLST_REAL(4, 16) = -5
      FLST_REAL(5, 16) = 0
      FLST_REAL(6, 16) = 0

      FLST_REAL(1, 17) = 0
      FLST_REAL(2, 17) = 1
      FLST_REAL(3, 17) = 25
      FLST_REAL(4, 17) = 1
      FLST_REAL(5, 17) = 0
      FLST_REAL(6, 17) = 0

      FLST_REAL(1, 18) = 0
      FLST_REAL(2, 18) = 2
      FLST_REAL(3, 18) = 25
      FLST_REAL(4, 18) = 2
      FLST_REAL(5, 18) = 0
      FLST_REAL(6, 18) = 0

      FLST_REAL(1, 19) = 0
      FLST_REAL(2, 19) = 3
      FLST_REAL(3, 19) = 25
      FLST_REAL(4, 19) = 3
      FLST_REAL(5, 19) = 0
      FLST_REAL(6, 19) = 0

      FLST_REAL(1, 20) = 0
      FLST_REAL(2, 20) = 4
      FLST_REAL(3, 20) = 25
      FLST_REAL(4, 20) = 4
      FLST_REAL(5, 20) = 0
      FLST_REAL(6, 20) = 0

      FLST_REAL(1, 21) = 0
      FLST_REAL(2, 21) = 5
      FLST_REAL(3, 21) = 25
      FLST_REAL(4, 21) = 5
      FLST_REAL(5, 21) = 0
      FLST_REAL(6, 21) = 0

      FLST_REAL(1, 22) = 0
      FLST_REAL(2, 22) = 0
      FLST_REAL(3, 22) = 25
      FLST_REAL(4, 22) = 1
      FLST_REAL(5, 22) = -1
      FLST_REAL(6, 22) = 0

      FLST_REAL(1, 23) = 0
      FLST_REAL(2, 23) = 0
      FLST_REAL(3, 23) = 25
      FLST_REAL(4, 23) = 2
      FLST_REAL(5, 23) = -2
      FLST_REAL(6, 23) = 0

      FLST_REAL(1, 24) = 0
      FLST_REAL(2, 24) = 0
      FLST_REAL(3, 24) = 25
      FLST_REAL(4, 24) = 3
      FLST_REAL(5, 24) = -3
      FLST_REAL(6, 24) = 0

      FLST_REAL(1, 25) = 0
      FLST_REAL(2, 25) = 0
      FLST_REAL(3, 25) = 25
      FLST_REAL(4, 25) = 4
      FLST_REAL(5, 25) = -4
      FLST_REAL(6, 25) = 0

      FLST_REAL(1, 26) = 0
      FLST_REAL(2, 26) = 0
      FLST_REAL(3, 26) = 25
      FLST_REAL(4, 26) = 5
      FLST_REAL(5, 26) = -5
      FLST_REAL(6, 26) = 0

      FLST_REAL(1, 27) = -1
      FLST_REAL(2, 27) = 0
      FLST_REAL(3, 27) = 25
      FLST_REAL(4, 27) = 2
      FLST_REAL(5, 27) = -2
      FLST_REAL(6, 27) = -1

      FLST_REAL(1, 28) = -3
      FLST_REAL(2, 28) = 0
      FLST_REAL(3, 28) = 25
      FLST_REAL(4, 28) = 2
      FLST_REAL(5, 28) = -2
      FLST_REAL(6, 28) = -3

      FLST_REAL(1, 29) = -4
      FLST_REAL(2, 29) = 0
      FLST_REAL(3, 29) = 25
      FLST_REAL(4, 29) = 2
      FLST_REAL(5, 29) = -2
      FLST_REAL(6, 29) = -4

      FLST_REAL(1, 30) = -5
      FLST_REAL(2, 30) = 0
      FLST_REAL(3, 30) = 25
      FLST_REAL(4, 30) = 2
      FLST_REAL(5, 30) = -2
      FLST_REAL(6, 30) = -5

      FLST_REAL(1, 31) = -1
      FLST_REAL(2, 31) = 0
      FLST_REAL(3, 31) = 25
      FLST_REAL(4, 31) = 4
      FLST_REAL(5, 31) = -4
      FLST_REAL(6, 31) = -1

      FLST_REAL(1, 32) = -2
      FLST_REAL(2, 32) = 0
      FLST_REAL(3, 32) = 25
      FLST_REAL(4, 32) = 4
      FLST_REAL(5, 32) = -4
      FLST_REAL(6, 32) = -2

      FLST_REAL(1, 33) = -3
      FLST_REAL(2, 33) = 0
      FLST_REAL(3, 33) = 25
      FLST_REAL(4, 33) = 4
      FLST_REAL(5, 33) = -4
      FLST_REAL(6, 33) = -3

      FLST_REAL(1, 34) = -5
      FLST_REAL(2, 34) = 0
      FLST_REAL(3, 34) = 25
      FLST_REAL(4, 34) = 4
      FLST_REAL(5, 34) = -4
      FLST_REAL(6, 34) = -5

      FLST_REAL(1, 35) = -2
      FLST_REAL(2, 35) = 0
      FLST_REAL(3, 35) = 25
      FLST_REAL(4, 35) = 1
      FLST_REAL(5, 35) = -1
      FLST_REAL(6, 35) = -2

      FLST_REAL(1, 36) = -3
      FLST_REAL(2, 36) = 0
      FLST_REAL(3, 36) = 25
      FLST_REAL(4, 36) = 1
      FLST_REAL(5, 36) = -1
      FLST_REAL(6, 36) = -3

      FLST_REAL(1, 37) = -4
      FLST_REAL(2, 37) = 0
      FLST_REAL(3, 37) = 25
      FLST_REAL(4, 37) = 1
      FLST_REAL(5, 37) = -1
      FLST_REAL(6, 37) = -4

      FLST_REAL(1, 38) = -5
      FLST_REAL(2, 38) = 0
      FLST_REAL(3, 38) = 25
      FLST_REAL(4, 38) = 1
      FLST_REAL(5, 38) = -1
      FLST_REAL(6, 38) = -5

      FLST_REAL(1, 39) = -1
      FLST_REAL(2, 39) = 0
      FLST_REAL(3, 39) = 25
      FLST_REAL(4, 39) = 3
      FLST_REAL(5, 39) = -3
      FLST_REAL(6, 39) = -1

      FLST_REAL(1, 40) = -2
      FLST_REAL(2, 40) = 0
      FLST_REAL(3, 40) = 25
      FLST_REAL(4, 40) = 3
      FLST_REAL(5, 40) = -3
      FLST_REAL(6, 40) = -2

      FLST_REAL(1, 41) = -4
      FLST_REAL(2, 41) = 0
      FLST_REAL(3, 41) = 25
      FLST_REAL(4, 41) = 3
      FLST_REAL(5, 41) = -3
      FLST_REAL(6, 41) = -4

      FLST_REAL(1, 42) = -5
      FLST_REAL(2, 42) = 0
      FLST_REAL(3, 42) = 25
      FLST_REAL(4, 42) = 3
      FLST_REAL(5, 42) = -3
      FLST_REAL(6, 42) = -5

      FLST_REAL(1, 43) = -1
      FLST_REAL(2, 43) = 0
      FLST_REAL(3, 43) = 25
      FLST_REAL(4, 43) = 5
      FLST_REAL(5, 43) = -5
      FLST_REAL(6, 43) = -1

      FLST_REAL(1, 44) = -2
      FLST_REAL(2, 44) = 0
      FLST_REAL(3, 44) = 25
      FLST_REAL(4, 44) = 5
      FLST_REAL(5, 44) = -5
      FLST_REAL(6, 44) = -2

      FLST_REAL(1, 45) = -3
      FLST_REAL(2, 45) = 0
      FLST_REAL(3, 45) = 25
      FLST_REAL(4, 45) = 5
      FLST_REAL(5, 45) = -5
      FLST_REAL(6, 45) = -3

      FLST_REAL(1, 46) = -4
      FLST_REAL(2, 46) = 0
      FLST_REAL(3, 46) = 25
      FLST_REAL(4, 46) = 5
      FLST_REAL(5, 46) = -5
      FLST_REAL(6, 46) = -4

      FLST_REAL(1, 47) = 1
      FLST_REAL(2, 47) = 0
      FLST_REAL(3, 47) = 25
      FLST_REAL(4, 47) = 2
      FLST_REAL(5, 47) = 1
      FLST_REAL(6, 47) = -2

      FLST_REAL(1, 48) = 3
      FLST_REAL(2, 48) = 0
      FLST_REAL(3, 48) = 25
      FLST_REAL(4, 48) = 2
      FLST_REAL(5, 48) = 3
      FLST_REAL(6, 48) = -2

      FLST_REAL(1, 49) = 4
      FLST_REAL(2, 49) = 0
      FLST_REAL(3, 49) = 25
      FLST_REAL(4, 49) = 2
      FLST_REAL(5, 49) = 4
      FLST_REAL(6, 49) = -2

      FLST_REAL(1, 50) = 5
      FLST_REAL(2, 50) = 0
      FLST_REAL(3, 50) = 25
      FLST_REAL(4, 50) = 2
      FLST_REAL(5, 50) = 5
      FLST_REAL(6, 50) = -2

      FLST_REAL(1, 51) = 1
      FLST_REAL(2, 51) = 0
      FLST_REAL(3, 51) = 25
      FLST_REAL(4, 51) = 4
      FLST_REAL(5, 51) = 1
      FLST_REAL(6, 51) = -4

      FLST_REAL(1, 52) = 2
      FLST_REAL(2, 52) = 0
      FLST_REAL(3, 52) = 25
      FLST_REAL(4, 52) = 4
      FLST_REAL(5, 52) = 2
      FLST_REAL(6, 52) = -4

      FLST_REAL(1, 53) = 3
      FLST_REAL(2, 53) = 0
      FLST_REAL(3, 53) = 25
      FLST_REAL(4, 53) = 4
      FLST_REAL(5, 53) = 3
      FLST_REAL(6, 53) = -4

      FLST_REAL(1, 54) = 5
      FLST_REAL(2, 54) = 0
      FLST_REAL(3, 54) = 25
      FLST_REAL(4, 54) = 4
      FLST_REAL(5, 54) = 5
      FLST_REAL(6, 54) = -4

      FLST_REAL(1, 55) = 2
      FLST_REAL(2, 55) = 0
      FLST_REAL(3, 55) = 25
      FLST_REAL(4, 55) = 1
      FLST_REAL(5, 55) = 2
      FLST_REAL(6, 55) = -1

      FLST_REAL(1, 56) = 3
      FLST_REAL(2, 56) = 0
      FLST_REAL(3, 56) = 25
      FLST_REAL(4, 56) = 1
      FLST_REAL(5, 56) = 3
      FLST_REAL(6, 56) = -1

      FLST_REAL(1, 57) = 4
      FLST_REAL(2, 57) = 0
      FLST_REAL(3, 57) = 25
      FLST_REAL(4, 57) = 1
      FLST_REAL(5, 57) = 4
      FLST_REAL(6, 57) = -1

      FLST_REAL(1, 58) = 5
      FLST_REAL(2, 58) = 0
      FLST_REAL(3, 58) = 25
      FLST_REAL(4, 58) = 1
      FLST_REAL(5, 58) = 5
      FLST_REAL(6, 58) = -1

      FLST_REAL(1, 59) = 1
      FLST_REAL(2, 59) = 0
      FLST_REAL(3, 59) = 25
      FLST_REAL(4, 59) = 3
      FLST_REAL(5, 59) = 1
      FLST_REAL(6, 59) = -3

      FLST_REAL(1, 60) = 2
      FLST_REAL(2, 60) = 0
      FLST_REAL(3, 60) = 25
      FLST_REAL(4, 60) = 3
      FLST_REAL(5, 60) = 2
      FLST_REAL(6, 60) = -3

      FLST_REAL(1, 61) = 4
      FLST_REAL(2, 61) = 0
      FLST_REAL(3, 61) = 25
      FLST_REAL(4, 61) = 3
      FLST_REAL(5, 61) = 4
      FLST_REAL(6, 61) = -3

      FLST_REAL(1, 62) = 5
      FLST_REAL(2, 62) = 0
      FLST_REAL(3, 62) = 25
      FLST_REAL(4, 62) = 3
      FLST_REAL(5, 62) = 5
      FLST_REAL(6, 62) = -3

      FLST_REAL(1, 63) = 1
      FLST_REAL(2, 63) = 0
      FLST_REAL(3, 63) = 25
      FLST_REAL(4, 63) = 5
      FLST_REAL(5, 63) = 1
      FLST_REAL(6, 63) = -5

      FLST_REAL(1, 64) = 2
      FLST_REAL(2, 64) = 0
      FLST_REAL(3, 64) = 25
      FLST_REAL(4, 64) = 5
      FLST_REAL(5, 64) = 2
      FLST_REAL(6, 64) = -5

      FLST_REAL(1, 65) = 3
      FLST_REAL(2, 65) = 0
      FLST_REAL(3, 65) = 25
      FLST_REAL(4, 65) = 5
      FLST_REAL(5, 65) = 3
      FLST_REAL(6, 65) = -5

      FLST_REAL(1, 66) = 4
      FLST_REAL(2, 66) = 0
      FLST_REAL(3, 66) = 25
      FLST_REAL(4, 66) = 5
      FLST_REAL(5, 66) = 4
      FLST_REAL(6, 66) = -5

      FLST_REAL(1, 67) = -2
      FLST_REAL(2, 67) = 0
      FLST_REAL(3, 67) = 25
      FLST_REAL(4, 67) = 2
      FLST_REAL(5, 67) = -2
      FLST_REAL(6, 67) = -2

      FLST_REAL(1, 68) = -4
      FLST_REAL(2, 68) = 0
      FLST_REAL(3, 68) = 25
      FLST_REAL(4, 68) = 4
      FLST_REAL(5, 68) = -4
      FLST_REAL(6, 68) = -4

      FLST_REAL(1, 69) = -1
      FLST_REAL(2, 69) = 0
      FLST_REAL(3, 69) = 25
      FLST_REAL(4, 69) = 1
      FLST_REAL(5, 69) = -1
      FLST_REAL(6, 69) = -1

      FLST_REAL(1, 70) = -3
      FLST_REAL(2, 70) = 0
      FLST_REAL(3, 70) = 25
      FLST_REAL(4, 70) = 3
      FLST_REAL(5, 70) = -3
      FLST_REAL(6, 70) = -3

      FLST_REAL(1, 71) = -5
      FLST_REAL(2, 71) = 0
      FLST_REAL(3, 71) = 25
      FLST_REAL(4, 71) = 5
      FLST_REAL(5, 71) = -5
      FLST_REAL(6, 71) = -5

      FLST_REAL(1, 72) = 2
      FLST_REAL(2, 72) = 0
      FLST_REAL(3, 72) = 25
      FLST_REAL(4, 72) = 2
      FLST_REAL(5, 72) = 2
      FLST_REAL(6, 72) = -2

      FLST_REAL(1, 73) = 4
      FLST_REAL(2, 73) = 0
      FLST_REAL(3, 73) = 25
      FLST_REAL(4, 73) = 4
      FLST_REAL(5, 73) = 4
      FLST_REAL(6, 73) = -4

      FLST_REAL(1, 74) = 1
      FLST_REAL(2, 74) = 0
      FLST_REAL(3, 74) = 25
      FLST_REAL(4, 74) = 1
      FLST_REAL(5, 74) = 1
      FLST_REAL(6, 74) = -1

      FLST_REAL(1, 75) = 3
      FLST_REAL(2, 75) = 0
      FLST_REAL(3, 75) = 25
      FLST_REAL(4, 75) = 3
      FLST_REAL(5, 75) = 3
      FLST_REAL(6, 75) = -3

      FLST_REAL(1, 76) = 5
      FLST_REAL(2, 76) = 0
      FLST_REAL(3, 76) = 25
      FLST_REAL(4, 76) = 5
      FLST_REAL(5, 76) = 5
      FLST_REAL(6, 76) = -5

      FLST_REAL(1, 77) = 0
      FLST_REAL(2, 77) = -1
      FLST_REAL(3, 77) = 25
      FLST_REAL(4, 77) = 2
      FLST_REAL(5, 77) = -2
      FLST_REAL(6, 77) = -1

      FLST_REAL(1, 78) = 0
      FLST_REAL(2, 78) = -3
      FLST_REAL(3, 78) = 25
      FLST_REAL(4, 78) = 2
      FLST_REAL(5, 78) = -2
      FLST_REAL(6, 78) = -3

      FLST_REAL(1, 79) = 0
      FLST_REAL(2, 79) = -4
      FLST_REAL(3, 79) = 25
      FLST_REAL(4, 79) = 2
      FLST_REAL(5, 79) = -2
      FLST_REAL(6, 79) = -4

      FLST_REAL(1, 80) = 0
      FLST_REAL(2, 80) = -5
      FLST_REAL(3, 80) = 25
      FLST_REAL(4, 80) = 2
      FLST_REAL(5, 80) = -2
      FLST_REAL(6, 80) = -5

      FLST_REAL(1, 81) = 0
      FLST_REAL(2, 81) = -1
      FLST_REAL(3, 81) = 25
      FLST_REAL(4, 81) = 4
      FLST_REAL(5, 81) = -4
      FLST_REAL(6, 81) = -1

      FLST_REAL(1, 82) = 0
      FLST_REAL(2, 82) = -2
      FLST_REAL(3, 82) = 25
      FLST_REAL(4, 82) = 4
      FLST_REAL(5, 82) = -4
      FLST_REAL(6, 82) = -2

      FLST_REAL(1, 83) = 0
      FLST_REAL(2, 83) = -3
      FLST_REAL(3, 83) = 25
      FLST_REAL(4, 83) = 4
      FLST_REAL(5, 83) = -4
      FLST_REAL(6, 83) = -3

      FLST_REAL(1, 84) = 0
      FLST_REAL(2, 84) = -5
      FLST_REAL(3, 84) = 25
      FLST_REAL(4, 84) = 4
      FLST_REAL(5, 84) = -4
      FLST_REAL(6, 84) = -5

      FLST_REAL(1, 85) = 0
      FLST_REAL(2, 85) = -2
      FLST_REAL(3, 85) = 25
      FLST_REAL(4, 85) = 1
      FLST_REAL(5, 85) = -1
      FLST_REAL(6, 85) = -2

      FLST_REAL(1, 86) = 0
      FLST_REAL(2, 86) = -3
      FLST_REAL(3, 86) = 25
      FLST_REAL(4, 86) = 1
      FLST_REAL(5, 86) = -1
      FLST_REAL(6, 86) = -3

      FLST_REAL(1, 87) = 0
      FLST_REAL(2, 87) = -4
      FLST_REAL(3, 87) = 25
      FLST_REAL(4, 87) = 1
      FLST_REAL(5, 87) = -1
      FLST_REAL(6, 87) = -4

      FLST_REAL(1, 88) = 0
      FLST_REAL(2, 88) = -5
      FLST_REAL(3, 88) = 25
      FLST_REAL(4, 88) = 1
      FLST_REAL(5, 88) = -1
      FLST_REAL(6, 88) = -5

      FLST_REAL(1, 89) = 0
      FLST_REAL(2, 89) = -1
      FLST_REAL(3, 89) = 25
      FLST_REAL(4, 89) = 3
      FLST_REAL(5, 89) = -3
      FLST_REAL(6, 89) = -1

      FLST_REAL(1, 90) = 0
      FLST_REAL(2, 90) = -2
      FLST_REAL(3, 90) = 25
      FLST_REAL(4, 90) = 3
      FLST_REAL(5, 90) = -3
      FLST_REAL(6, 90) = -2

      FLST_REAL(1, 91) = 0
      FLST_REAL(2, 91) = -4
      FLST_REAL(3, 91) = 25
      FLST_REAL(4, 91) = 3
      FLST_REAL(5, 91) = -3
      FLST_REAL(6, 91) = -4

      FLST_REAL(1, 92) = 0
      FLST_REAL(2, 92) = -5
      FLST_REAL(3, 92) = 25
      FLST_REAL(4, 92) = 3
      FLST_REAL(5, 92) = -3
      FLST_REAL(6, 92) = -5

      FLST_REAL(1, 93) = 0
      FLST_REAL(2, 93) = -1
      FLST_REAL(3, 93) = 25
      FLST_REAL(4, 93) = 5
      FLST_REAL(5, 93) = -5
      FLST_REAL(6, 93) = -1

      FLST_REAL(1, 94) = 0
      FLST_REAL(2, 94) = -2
      FLST_REAL(3, 94) = 25
      FLST_REAL(4, 94) = 5
      FLST_REAL(5, 94) = -5
      FLST_REAL(6, 94) = -2

      FLST_REAL(1, 95) = 0
      FLST_REAL(2, 95) = -3
      FLST_REAL(3, 95) = 25
      FLST_REAL(4, 95) = 5
      FLST_REAL(5, 95) = -5
      FLST_REAL(6, 95) = -3

      FLST_REAL(1, 96) = 0
      FLST_REAL(2, 96) = -4
      FLST_REAL(3, 96) = 25
      FLST_REAL(4, 96) = 5
      FLST_REAL(5, 96) = -5
      FLST_REAL(6, 96) = -4

      FLST_REAL(1, 97) = 0
      FLST_REAL(2, 97) = 1
      FLST_REAL(3, 97) = 25
      FLST_REAL(4, 97) = 2
      FLST_REAL(5, 97) = 1
      FLST_REAL(6, 97) = -2

      FLST_REAL(1, 98) = 0
      FLST_REAL(2, 98) = 3
      FLST_REAL(3, 98) = 25
      FLST_REAL(4, 98) = 2
      FLST_REAL(5, 98) = 3
      FLST_REAL(6, 98) = -2

      FLST_REAL(1, 99) = 0
      FLST_REAL(2, 99) = 4
      FLST_REAL(3, 99) = 25
      FLST_REAL(4, 99) = 2
      FLST_REAL(5, 99) = 4
      FLST_REAL(6, 99) = -2

      FLST_REAL(1, 100) = 0
      FLST_REAL(2, 100) = 5
      FLST_REAL(3, 100) = 25
      FLST_REAL(4, 100) = 2
      FLST_REAL(5, 100) = 5
      FLST_REAL(6, 100) = -2

      FLST_REAL(1, 101) = 0
      FLST_REAL(2, 101) = 1
      FLST_REAL(3, 101) = 25
      FLST_REAL(4, 101) = 4
      FLST_REAL(5, 101) = 1
      FLST_REAL(6, 101) = -4

      FLST_REAL(1, 102) = 0
      FLST_REAL(2, 102) = 2
      FLST_REAL(3, 102) = 25
      FLST_REAL(4, 102) = 4
      FLST_REAL(5, 102) = 2
      FLST_REAL(6, 102) = -4

      FLST_REAL(1, 103) = 0
      FLST_REAL(2, 103) = 3
      FLST_REAL(3, 103) = 25
      FLST_REAL(4, 103) = 4
      FLST_REAL(5, 103) = 3
      FLST_REAL(6, 103) = -4

      FLST_REAL(1, 104) = 0
      FLST_REAL(2, 104) = 5
      FLST_REAL(3, 104) = 25
      FLST_REAL(4, 104) = 4
      FLST_REAL(5, 104) = 5
      FLST_REAL(6, 104) = -4

      FLST_REAL(1, 105) = 0
      FLST_REAL(2, 105) = 2
      FLST_REAL(3, 105) = 25
      FLST_REAL(4, 105) = 1
      FLST_REAL(5, 105) = 2
      FLST_REAL(6, 105) = -1

      FLST_REAL(1, 106) = 0
      FLST_REAL(2, 106) = 3
      FLST_REAL(3, 106) = 25
      FLST_REAL(4, 106) = 1
      FLST_REAL(5, 106) = 3
      FLST_REAL(6, 106) = -1

      FLST_REAL(1, 107) = 0
      FLST_REAL(2, 107) = 4
      FLST_REAL(3, 107) = 25
      FLST_REAL(4, 107) = 1
      FLST_REAL(5, 107) = 4
      FLST_REAL(6, 107) = -1

      FLST_REAL(1, 108) = 0
      FLST_REAL(2, 108) = 5
      FLST_REAL(3, 108) = 25
      FLST_REAL(4, 108) = 1
      FLST_REAL(5, 108) = 5
      FLST_REAL(6, 108) = -1

      FLST_REAL(1, 109) = 0
      FLST_REAL(2, 109) = 1
      FLST_REAL(3, 109) = 25
      FLST_REAL(4, 109) = 3
      FLST_REAL(5, 109) = 1
      FLST_REAL(6, 109) = -3

      FLST_REAL(1, 110) = 0
      FLST_REAL(2, 110) = 2
      FLST_REAL(3, 110) = 25
      FLST_REAL(4, 110) = 3
      FLST_REAL(5, 110) = 2
      FLST_REAL(6, 110) = -3

      FLST_REAL(1, 111) = 0
      FLST_REAL(2, 111) = 4
      FLST_REAL(3, 111) = 25
      FLST_REAL(4, 111) = 3
      FLST_REAL(5, 111) = 4
      FLST_REAL(6, 111) = -3

      FLST_REAL(1, 112) = 0
      FLST_REAL(2, 112) = 5
      FLST_REAL(3, 112) = 25
      FLST_REAL(4, 112) = 3
      FLST_REAL(5, 112) = 5
      FLST_REAL(6, 112) = -3

      FLST_REAL(1, 113) = 0
      FLST_REAL(2, 113) = 1
      FLST_REAL(3, 113) = 25
      FLST_REAL(4, 113) = 5
      FLST_REAL(5, 113) = 1
      FLST_REAL(6, 113) = -5

      FLST_REAL(1, 114) = 0
      FLST_REAL(2, 114) = 2
      FLST_REAL(3, 114) = 25
      FLST_REAL(4, 114) = 5
      FLST_REAL(5, 114) = 2
      FLST_REAL(6, 114) = -5

      FLST_REAL(1, 115) = 0
      FLST_REAL(2, 115) = 3
      FLST_REAL(3, 115) = 25
      FLST_REAL(4, 115) = 5
      FLST_REAL(5, 115) = 3
      FLST_REAL(6, 115) = -5

      FLST_REAL(1, 116) = 0
      FLST_REAL(2, 116) = 4
      FLST_REAL(3, 116) = 25
      FLST_REAL(4, 116) = 5
      FLST_REAL(5, 116) = 4
      FLST_REAL(6, 116) = -5

      FLST_REAL(1, 117) = 0
      FLST_REAL(2, 117) = -2
      FLST_REAL(3, 117) = 25
      FLST_REAL(4, 117) = 2
      FLST_REAL(5, 117) = -2
      FLST_REAL(6, 117) = -2

      FLST_REAL(1, 118) = 0
      FLST_REAL(2, 118) = -4
      FLST_REAL(3, 118) = 25
      FLST_REAL(4, 118) = 4
      FLST_REAL(5, 118) = -4
      FLST_REAL(6, 118) = -4

      FLST_REAL(1, 119) = 0
      FLST_REAL(2, 119) = -1
      FLST_REAL(3, 119) = 25
      FLST_REAL(4, 119) = 1
      FLST_REAL(5, 119) = -1
      FLST_REAL(6, 119) = -1

      FLST_REAL(1, 120) = 0
      FLST_REAL(2, 120) = -3
      FLST_REAL(3, 120) = 25
      FLST_REAL(4, 120) = 3
      FLST_REAL(5, 120) = -3
      FLST_REAL(6, 120) = -3

      FLST_REAL(1, 121) = 0
      FLST_REAL(2, 121) = -5
      FLST_REAL(3, 121) = 25
      FLST_REAL(4, 121) = 5
      FLST_REAL(5, 121) = -5
      FLST_REAL(6, 121) = -5

      FLST_REAL(1, 122) = 0
      FLST_REAL(2, 122) = 2
      FLST_REAL(3, 122) = 25
      FLST_REAL(4, 122) = 2
      FLST_REAL(5, 122) = 2
      FLST_REAL(6, 122) = -2

      FLST_REAL(1, 123) = 0
      FLST_REAL(2, 123) = 4
      FLST_REAL(3, 123) = 25
      FLST_REAL(4, 123) = 4
      FLST_REAL(5, 123) = 4
      FLST_REAL(6, 123) = -4

      FLST_REAL(1, 124) = 0
      FLST_REAL(2, 124) = 1
      FLST_REAL(3, 124) = 25
      FLST_REAL(4, 124) = 1
      FLST_REAL(5, 124) = 1
      FLST_REAL(6, 124) = -1

      FLST_REAL(1, 125) = 0
      FLST_REAL(2, 125) = 3
      FLST_REAL(3, 125) = 25
      FLST_REAL(4, 125) = 3
      FLST_REAL(5, 125) = 3
      FLST_REAL(6, 125) = -3

      FLST_REAL(1, 126) = 0
      FLST_REAL(2, 126) = 5
      FLST_REAL(3, 126) = 25
      FLST_REAL(4, 126) = 5
      FLST_REAL(5, 126) = 5
      FLST_REAL(6, 126) = -5

      FLST_REAL(1, 127) = -1
      FLST_REAL(2, 127) = 2
      FLST_REAL(3, 127) = 25
      FLST_REAL(4, 127) = 2
      FLST_REAL(5, 127) = -1
      FLST_REAL(6, 127) = 0

      FLST_REAL(1, 128) = -3
      FLST_REAL(2, 128) = 2
      FLST_REAL(3, 128) = 25
      FLST_REAL(4, 128) = 2
      FLST_REAL(5, 128) = -3
      FLST_REAL(6, 128) = 0

      FLST_REAL(1, 129) = -4
      FLST_REAL(2, 129) = 2
      FLST_REAL(3, 129) = 25
      FLST_REAL(4, 129) = 2
      FLST_REAL(5, 129) = -4
      FLST_REAL(6, 129) = 0

      FLST_REAL(1, 130) = -5
      FLST_REAL(2, 130) = 2
      FLST_REAL(3, 130) = 25
      FLST_REAL(4, 130) = 2
      FLST_REAL(5, 130) = -5
      FLST_REAL(6, 130) = 0

      FLST_REAL(1, 131) = -1
      FLST_REAL(2, 131) = 4
      FLST_REAL(3, 131) = 25
      FLST_REAL(4, 131) = 4
      FLST_REAL(5, 131) = -1
      FLST_REAL(6, 131) = 0

      FLST_REAL(1, 132) = -2
      FLST_REAL(2, 132) = 4
      FLST_REAL(3, 132) = 25
      FLST_REAL(4, 132) = 4
      FLST_REAL(5, 132) = -2
      FLST_REAL(6, 132) = 0

      FLST_REAL(1, 133) = -3
      FLST_REAL(2, 133) = 4
      FLST_REAL(3, 133) = 25
      FLST_REAL(4, 133) = 4
      FLST_REAL(5, 133) = -3
      FLST_REAL(6, 133) = 0

      FLST_REAL(1, 134) = -5
      FLST_REAL(2, 134) = 4
      FLST_REAL(3, 134) = 25
      FLST_REAL(4, 134) = 4
      FLST_REAL(5, 134) = -5
      FLST_REAL(6, 134) = 0

      FLST_REAL(1, 135) = -2
      FLST_REAL(2, 135) = 1
      FLST_REAL(3, 135) = 25
      FLST_REAL(4, 135) = 1
      FLST_REAL(5, 135) = -2
      FLST_REAL(6, 135) = 0

      FLST_REAL(1, 136) = -3
      FLST_REAL(2, 136) = 1
      FLST_REAL(3, 136) = 25
      FLST_REAL(4, 136) = 1
      FLST_REAL(5, 136) = -3
      FLST_REAL(6, 136) = 0

      FLST_REAL(1, 137) = -4
      FLST_REAL(2, 137) = 1
      FLST_REAL(3, 137) = 25
      FLST_REAL(4, 137) = 1
      FLST_REAL(5, 137) = -4
      FLST_REAL(6, 137) = 0

      FLST_REAL(1, 138) = -5
      FLST_REAL(2, 138) = 1
      FLST_REAL(3, 138) = 25
      FLST_REAL(4, 138) = 1
      FLST_REAL(5, 138) = -5
      FLST_REAL(6, 138) = 0

      FLST_REAL(1, 139) = -1
      FLST_REAL(2, 139) = 3
      FLST_REAL(3, 139) = 25
      FLST_REAL(4, 139) = 3
      FLST_REAL(5, 139) = -1
      FLST_REAL(6, 139) = 0

      FLST_REAL(1, 140) = -2
      FLST_REAL(2, 140) = 3
      FLST_REAL(3, 140) = 25
      FLST_REAL(4, 140) = 3
      FLST_REAL(5, 140) = -2
      FLST_REAL(6, 140) = 0

      FLST_REAL(1, 141) = -4
      FLST_REAL(2, 141) = 3
      FLST_REAL(3, 141) = 25
      FLST_REAL(4, 141) = 3
      FLST_REAL(5, 141) = -4
      FLST_REAL(6, 141) = 0

      FLST_REAL(1, 142) = -5
      FLST_REAL(2, 142) = 3
      FLST_REAL(3, 142) = 25
      FLST_REAL(4, 142) = 3
      FLST_REAL(5, 142) = -5
      FLST_REAL(6, 142) = 0

      FLST_REAL(1, 143) = -1
      FLST_REAL(2, 143) = 5
      FLST_REAL(3, 143) = 25
      FLST_REAL(4, 143) = 5
      FLST_REAL(5, 143) = -1
      FLST_REAL(6, 143) = 0

      FLST_REAL(1, 144) = -2
      FLST_REAL(2, 144) = 5
      FLST_REAL(3, 144) = 25
      FLST_REAL(4, 144) = 5
      FLST_REAL(5, 144) = -2
      FLST_REAL(6, 144) = 0

      FLST_REAL(1, 145) = -3
      FLST_REAL(2, 145) = 5
      FLST_REAL(3, 145) = 25
      FLST_REAL(4, 145) = 5
      FLST_REAL(5, 145) = -3
      FLST_REAL(6, 145) = 0

      FLST_REAL(1, 146) = -4
      FLST_REAL(2, 146) = 5
      FLST_REAL(3, 146) = 25
      FLST_REAL(4, 146) = 5
      FLST_REAL(5, 146) = -4
      FLST_REAL(6, 146) = 0

      FLST_REAL(1, 147) = 1
      FLST_REAL(2, 147) = 2
      FLST_REAL(3, 147) = 25
      FLST_REAL(4, 147) = 2
      FLST_REAL(5, 147) = 1
      FLST_REAL(6, 147) = 0

      FLST_REAL(1, 148) = 3
      FLST_REAL(2, 148) = 2
      FLST_REAL(3, 148) = 25
      FLST_REAL(4, 148) = 2
      FLST_REAL(5, 148) = 3
      FLST_REAL(6, 148) = 0

      FLST_REAL(1, 149) = 4
      FLST_REAL(2, 149) = 2
      FLST_REAL(3, 149) = 25
      FLST_REAL(4, 149) = 2
      FLST_REAL(5, 149) = 4
      FLST_REAL(6, 149) = 0

      FLST_REAL(1, 150) = 5
      FLST_REAL(2, 150) = 2
      FLST_REAL(3, 150) = 25
      FLST_REAL(4, 150) = 2
      FLST_REAL(5, 150) = 5
      FLST_REAL(6, 150) = 0

      FLST_REAL(1, 151) = 1
      FLST_REAL(2, 151) = 4
      FLST_REAL(3, 151) = 25
      FLST_REAL(4, 151) = 4
      FLST_REAL(5, 151) = 1
      FLST_REAL(6, 151) = 0

      FLST_REAL(1, 152) = 2
      FLST_REAL(2, 152) = 4
      FLST_REAL(3, 152) = 25
      FLST_REAL(4, 152) = 4
      FLST_REAL(5, 152) = 2
      FLST_REAL(6, 152) = 0

      FLST_REAL(1, 153) = 3
      FLST_REAL(2, 153) = 4
      FLST_REAL(3, 153) = 25
      FLST_REAL(4, 153) = 4
      FLST_REAL(5, 153) = 3
      FLST_REAL(6, 153) = 0

      FLST_REAL(1, 154) = 5
      FLST_REAL(2, 154) = 4
      FLST_REAL(3, 154) = 25
      FLST_REAL(4, 154) = 4
      FLST_REAL(5, 154) = 5
      FLST_REAL(6, 154) = 0

      FLST_REAL(1, 155) = 2
      FLST_REAL(2, 155) = 1
      FLST_REAL(3, 155) = 25
      FLST_REAL(4, 155) = 1
      FLST_REAL(5, 155) = 2
      FLST_REAL(6, 155) = 0

      FLST_REAL(1, 156) = 3
      FLST_REAL(2, 156) = 1
      FLST_REAL(3, 156) = 25
      FLST_REAL(4, 156) = 1
      FLST_REAL(5, 156) = 3
      FLST_REAL(6, 156) = 0

      FLST_REAL(1, 157) = 4
      FLST_REAL(2, 157) = 1
      FLST_REAL(3, 157) = 25
      FLST_REAL(4, 157) = 1
      FLST_REAL(5, 157) = 4
      FLST_REAL(6, 157) = 0

      FLST_REAL(1, 158) = 5
      FLST_REAL(2, 158) = 1
      FLST_REAL(3, 158) = 25
      FLST_REAL(4, 158) = 1
      FLST_REAL(5, 158) = 5
      FLST_REAL(6, 158) = 0

      FLST_REAL(1, 159) = 1
      FLST_REAL(2, 159) = 3
      FLST_REAL(3, 159) = 25
      FLST_REAL(4, 159) = 3
      FLST_REAL(5, 159) = 1
      FLST_REAL(6, 159) = 0

      FLST_REAL(1, 160) = 2
      FLST_REAL(2, 160) = 3
      FLST_REAL(3, 160) = 25
      FLST_REAL(4, 160) = 3
      FLST_REAL(5, 160) = 2
      FLST_REAL(6, 160) = 0

      FLST_REAL(1, 161) = 4
      FLST_REAL(2, 161) = 3
      FLST_REAL(3, 161) = 25
      FLST_REAL(4, 161) = 3
      FLST_REAL(5, 161) = 4
      FLST_REAL(6, 161) = 0

      FLST_REAL(1, 162) = 5
      FLST_REAL(2, 162) = 3
      FLST_REAL(3, 162) = 25
      FLST_REAL(4, 162) = 3
      FLST_REAL(5, 162) = 5
      FLST_REAL(6, 162) = 0

      FLST_REAL(1, 163) = 1
      FLST_REAL(2, 163) = 5
      FLST_REAL(3, 163) = 25
      FLST_REAL(4, 163) = 5
      FLST_REAL(5, 163) = 1
      FLST_REAL(6, 163) = 0

      FLST_REAL(1, 164) = 2
      FLST_REAL(2, 164) = 5
      FLST_REAL(3, 164) = 25
      FLST_REAL(4, 164) = 5
      FLST_REAL(5, 164) = 2
      FLST_REAL(6, 164) = 0

      FLST_REAL(1, 165) = 3
      FLST_REAL(2, 165) = 5
      FLST_REAL(3, 165) = 25
      FLST_REAL(4, 165) = 5
      FLST_REAL(5, 165) = 3
      FLST_REAL(6, 165) = 0

      FLST_REAL(1, 166) = 4
      FLST_REAL(2, 166) = 5
      FLST_REAL(3, 166) = 25
      FLST_REAL(4, 166) = 5
      FLST_REAL(5, 166) = 4
      FLST_REAL(6, 166) = 0

      FLST_REAL(1, 167) = -2
      FLST_REAL(2, 167) = 2
      FLST_REAL(3, 167) = 25
      FLST_REAL(4, 167) = 2
      FLST_REAL(5, 167) = -2
      FLST_REAL(6, 167) = 0

      FLST_REAL(1, 168) = -4
      FLST_REAL(2, 168) = 4
      FLST_REAL(3, 168) = 25
      FLST_REAL(4, 168) = 4
      FLST_REAL(5, 168) = -4
      FLST_REAL(6, 168) = 0

      FLST_REAL(1, 169) = -1
      FLST_REAL(2, 169) = 1
      FLST_REAL(3, 169) = 25
      FLST_REAL(4, 169) = 1
      FLST_REAL(5, 169) = -1
      FLST_REAL(6, 169) = 0

      FLST_REAL(1, 170) = -3
      FLST_REAL(2, 170) = 3
      FLST_REAL(3, 170) = 25
      FLST_REAL(4, 170) = 3
      FLST_REAL(5, 170) = -3
      FLST_REAL(6, 170) = 0

      FLST_REAL(1, 171) = -5
      FLST_REAL(2, 171) = 5
      FLST_REAL(3, 171) = 25
      FLST_REAL(4, 171) = 5
      FLST_REAL(5, 171) = -5
      FLST_REAL(6, 171) = 0

      FLST_REAL(1, 172) = 2
      FLST_REAL(2, 172) = 2
      FLST_REAL(3, 172) = 25
      FLST_REAL(4, 172) = 2
      FLST_REAL(5, 172) = 2
      FLST_REAL(6, 172) = 0

      FLST_REAL(1, 173) = 4
      FLST_REAL(2, 173) = 4
      FLST_REAL(3, 173) = 25
      FLST_REAL(4, 173) = 4
      FLST_REAL(5, 173) = 4
      FLST_REAL(6, 173) = 0

      FLST_REAL(1, 174) = 1
      FLST_REAL(2, 174) = 1
      FLST_REAL(3, 174) = 25
      FLST_REAL(4, 174) = 1
      FLST_REAL(5, 174) = 1
      FLST_REAL(6, 174) = 0

      FLST_REAL(1, 175) = 3
      FLST_REAL(2, 175) = 3
      FLST_REAL(3, 175) = 25
      FLST_REAL(4, 175) = 3
      FLST_REAL(5, 175) = 3
      FLST_REAL(6, 175) = 0

      FLST_REAL(1, 176) = 5
      FLST_REAL(2, 176) = 5
      FLST_REAL(3, 176) = 25
      FLST_REAL(4, 176) = 5
      FLST_REAL(5, 176) = 5
      FLST_REAL(6, 176) = 0

      FLST_REAL(1, 177) = -1
      FLST_REAL(2, 177) = -2
      FLST_REAL(3, 177) = 25
      FLST_REAL(4, 177) = -2
      FLST_REAL(5, 177) = -1
      FLST_REAL(6, 177) = 0

      FLST_REAL(1, 178) = -3
      FLST_REAL(2, 178) = -2
      FLST_REAL(3, 178) = 25
      FLST_REAL(4, 178) = -2
      FLST_REAL(5, 178) = -3
      FLST_REAL(6, 178) = 0

      FLST_REAL(1, 179) = -4
      FLST_REAL(2, 179) = -2
      FLST_REAL(3, 179) = 25
      FLST_REAL(4, 179) = -2
      FLST_REAL(5, 179) = -4
      FLST_REAL(6, 179) = 0

      FLST_REAL(1, 180) = -5
      FLST_REAL(2, 180) = -2
      FLST_REAL(3, 180) = 25
      FLST_REAL(4, 180) = -2
      FLST_REAL(5, 180) = -5
      FLST_REAL(6, 180) = 0

      FLST_REAL(1, 181) = -1
      FLST_REAL(2, 181) = -4
      FLST_REAL(3, 181) = 25
      FLST_REAL(4, 181) = -4
      FLST_REAL(5, 181) = -1
      FLST_REAL(6, 181) = 0

      FLST_REAL(1, 182) = -2
      FLST_REAL(2, 182) = -4
      FLST_REAL(3, 182) = 25
      FLST_REAL(4, 182) = -4
      FLST_REAL(5, 182) = -2
      FLST_REAL(6, 182) = 0

      FLST_REAL(1, 183) = -3
      FLST_REAL(2, 183) = -4
      FLST_REAL(3, 183) = 25
      FLST_REAL(4, 183) = -4
      FLST_REAL(5, 183) = -3
      FLST_REAL(6, 183) = 0

      FLST_REAL(1, 184) = -5
      FLST_REAL(2, 184) = -4
      FLST_REAL(3, 184) = 25
      FLST_REAL(4, 184) = -4
      FLST_REAL(5, 184) = -5
      FLST_REAL(6, 184) = 0

      FLST_REAL(1, 185) = -2
      FLST_REAL(2, 185) = -1
      FLST_REAL(3, 185) = 25
      FLST_REAL(4, 185) = -1
      FLST_REAL(5, 185) = -2
      FLST_REAL(6, 185) = 0

      FLST_REAL(1, 186) = -3
      FLST_REAL(2, 186) = -1
      FLST_REAL(3, 186) = 25
      FLST_REAL(4, 186) = -1
      FLST_REAL(5, 186) = -3
      FLST_REAL(6, 186) = 0

      FLST_REAL(1, 187) = -4
      FLST_REAL(2, 187) = -1
      FLST_REAL(3, 187) = 25
      FLST_REAL(4, 187) = -1
      FLST_REAL(5, 187) = -4
      FLST_REAL(6, 187) = 0

      FLST_REAL(1, 188) = -5
      FLST_REAL(2, 188) = -1
      FLST_REAL(3, 188) = 25
      FLST_REAL(4, 188) = -1
      FLST_REAL(5, 188) = -5
      FLST_REAL(6, 188) = 0

      FLST_REAL(1, 189) = -1
      FLST_REAL(2, 189) = -3
      FLST_REAL(3, 189) = 25
      FLST_REAL(4, 189) = -3
      FLST_REAL(5, 189) = -1
      FLST_REAL(6, 189) = 0

      FLST_REAL(1, 190) = -2
      FLST_REAL(2, 190) = -3
      FLST_REAL(3, 190) = 25
      FLST_REAL(4, 190) = -3
      FLST_REAL(5, 190) = -2
      FLST_REAL(6, 190) = 0

      FLST_REAL(1, 191) = -4
      FLST_REAL(2, 191) = -3
      FLST_REAL(3, 191) = 25
      FLST_REAL(4, 191) = -3
      FLST_REAL(5, 191) = -4
      FLST_REAL(6, 191) = 0

      FLST_REAL(1, 192) = -5
      FLST_REAL(2, 192) = -3
      FLST_REAL(3, 192) = 25
      FLST_REAL(4, 192) = -3
      FLST_REAL(5, 192) = -5
      FLST_REAL(6, 192) = 0

      FLST_REAL(1, 193) = -1
      FLST_REAL(2, 193) = -5
      FLST_REAL(3, 193) = 25
      FLST_REAL(4, 193) = -5
      FLST_REAL(5, 193) = -1
      FLST_REAL(6, 193) = 0

      FLST_REAL(1, 194) = -2
      FLST_REAL(2, 194) = -5
      FLST_REAL(3, 194) = 25
      FLST_REAL(4, 194) = -5
      FLST_REAL(5, 194) = -2
      FLST_REAL(6, 194) = 0

      FLST_REAL(1, 195) = -3
      FLST_REAL(2, 195) = -5
      FLST_REAL(3, 195) = 25
      FLST_REAL(4, 195) = -5
      FLST_REAL(5, 195) = -3
      FLST_REAL(6, 195) = 0

      FLST_REAL(1, 196) = -4
      FLST_REAL(2, 196) = -5
      FLST_REAL(3, 196) = 25
      FLST_REAL(4, 196) = -5
      FLST_REAL(5, 196) = -4
      FLST_REAL(6, 196) = 0

      FLST_REAL(1, 197) = 1
      FLST_REAL(2, 197) = -2
      FLST_REAL(3, 197) = 25
      FLST_REAL(4, 197) = 1
      FLST_REAL(5, 197) = -2
      FLST_REAL(6, 197) = 0

      FLST_REAL(1, 198) = 3
      FLST_REAL(2, 198) = -2
      FLST_REAL(3, 198) = 25
      FLST_REAL(4, 198) = 3
      FLST_REAL(5, 198) = -2
      FLST_REAL(6, 198) = 0

      FLST_REAL(1, 199) = 4
      FLST_REAL(2, 199) = -2
      FLST_REAL(3, 199) = 25
      FLST_REAL(4, 199) = 4
      FLST_REAL(5, 199) = -2
      FLST_REAL(6, 199) = 0

      FLST_REAL(1, 200) = 5
      FLST_REAL(2, 200) = -2
      FLST_REAL(3, 200) = 25
      FLST_REAL(4, 200) = 5
      FLST_REAL(5, 200) = -2
      FLST_REAL(6, 200) = 0

      FLST_REAL(1, 201) = 1
      FLST_REAL(2, 201) = -4
      FLST_REAL(3, 201) = 25
      FLST_REAL(4, 201) = 1
      FLST_REAL(5, 201) = -4
      FLST_REAL(6, 201) = 0

      FLST_REAL(1, 202) = 2
      FLST_REAL(2, 202) = -4
      FLST_REAL(3, 202) = 25
      FLST_REAL(4, 202) = 2
      FLST_REAL(5, 202) = -4
      FLST_REAL(6, 202) = 0

      FLST_REAL(1, 203) = 3
      FLST_REAL(2, 203) = -4
      FLST_REAL(3, 203) = 25
      FLST_REAL(4, 203) = 3
      FLST_REAL(5, 203) = -4
      FLST_REAL(6, 203) = 0

      FLST_REAL(1, 204) = 5
      FLST_REAL(2, 204) = -4
      FLST_REAL(3, 204) = 25
      FLST_REAL(4, 204) = 5
      FLST_REAL(5, 204) = -4
      FLST_REAL(6, 204) = 0

      FLST_REAL(1, 205) = 2
      FLST_REAL(2, 205) = -1
      FLST_REAL(3, 205) = 25
      FLST_REAL(4, 205) = 2
      FLST_REAL(5, 205) = -1
      FLST_REAL(6, 205) = 0

      FLST_REAL(1, 206) = 3
      FLST_REAL(2, 206) = -1
      FLST_REAL(3, 206) = 25
      FLST_REAL(4, 206) = 3
      FLST_REAL(5, 206) = -1
      FLST_REAL(6, 206) = 0

      FLST_REAL(1, 207) = 4
      FLST_REAL(2, 207) = -1
      FLST_REAL(3, 207) = 25
      FLST_REAL(4, 207) = 4
      FLST_REAL(5, 207) = -1
      FLST_REAL(6, 207) = 0

      FLST_REAL(1, 208) = 5
      FLST_REAL(2, 208) = -1
      FLST_REAL(3, 208) = 25
      FLST_REAL(4, 208) = 5
      FLST_REAL(5, 208) = -1
      FLST_REAL(6, 208) = 0

      FLST_REAL(1, 209) = 1
      FLST_REAL(2, 209) = -3
      FLST_REAL(3, 209) = 25
      FLST_REAL(4, 209) = 1
      FLST_REAL(5, 209) = -3
      FLST_REAL(6, 209) = 0

      FLST_REAL(1, 210) = 2
      FLST_REAL(2, 210) = -3
      FLST_REAL(3, 210) = 25
      FLST_REAL(4, 210) = 2
      FLST_REAL(5, 210) = -3
      FLST_REAL(6, 210) = 0

      FLST_REAL(1, 211) = 4
      FLST_REAL(2, 211) = -3
      FLST_REAL(3, 211) = 25
      FLST_REAL(4, 211) = 4
      FLST_REAL(5, 211) = -3
      FLST_REAL(6, 211) = 0

      FLST_REAL(1, 212) = 5
      FLST_REAL(2, 212) = -3
      FLST_REAL(3, 212) = 25
      FLST_REAL(4, 212) = 5
      FLST_REAL(5, 212) = -3
      FLST_REAL(6, 212) = 0

      FLST_REAL(1, 213) = 1
      FLST_REAL(2, 213) = -5
      FLST_REAL(3, 213) = 25
      FLST_REAL(4, 213) = 1
      FLST_REAL(5, 213) = -5
      FLST_REAL(6, 213) = 0

      FLST_REAL(1, 214) = 2
      FLST_REAL(2, 214) = -5
      FLST_REAL(3, 214) = 25
      FLST_REAL(4, 214) = 2
      FLST_REAL(5, 214) = -5
      FLST_REAL(6, 214) = 0

      FLST_REAL(1, 215) = 3
      FLST_REAL(2, 215) = -5
      FLST_REAL(3, 215) = 25
      FLST_REAL(4, 215) = 3
      FLST_REAL(5, 215) = -5
      FLST_REAL(6, 215) = 0

      FLST_REAL(1, 216) = 4
      FLST_REAL(2, 216) = -5
      FLST_REAL(3, 216) = 25
      FLST_REAL(4, 216) = 4
      FLST_REAL(5, 216) = -5
      FLST_REAL(6, 216) = 0

      FLST_REAL(1, 217) = -2
      FLST_REAL(2, 217) = -2
      FLST_REAL(3, 217) = 25
      FLST_REAL(4, 217) = -2
      FLST_REAL(5, 217) = -2
      FLST_REAL(6, 217) = 0

      FLST_REAL(1, 218) = -4
      FLST_REAL(2, 218) = -4
      FLST_REAL(3, 218) = 25
      FLST_REAL(4, 218) = -4
      FLST_REAL(5, 218) = -4
      FLST_REAL(6, 218) = 0

      FLST_REAL(1, 219) = -1
      FLST_REAL(2, 219) = -1
      FLST_REAL(3, 219) = 25
      FLST_REAL(4, 219) = -1
      FLST_REAL(5, 219) = -1
      FLST_REAL(6, 219) = 0

      FLST_REAL(1, 220) = -3
      FLST_REAL(2, 220) = -3
      FLST_REAL(3, 220) = 25
      FLST_REAL(4, 220) = -3
      FLST_REAL(5, 220) = -3
      FLST_REAL(6, 220) = 0

      FLST_REAL(1, 221) = -5
      FLST_REAL(2, 221) = -5
      FLST_REAL(3, 221) = 25
      FLST_REAL(4, 221) = -5
      FLST_REAL(5, 221) = -5
      FLST_REAL(6, 221) = 0

      FLST_REAL(1, 222) = 2
      FLST_REAL(2, 222) = -2
      FLST_REAL(3, 222) = 25
      FLST_REAL(4, 222) = 2
      FLST_REAL(5, 222) = -2
      FLST_REAL(6, 222) = 0

      FLST_REAL(1, 223) = 4
      FLST_REAL(2, 223) = -4
      FLST_REAL(3, 223) = 25
      FLST_REAL(4, 223) = 4
      FLST_REAL(5, 223) = -4
      FLST_REAL(6, 223) = 0

      FLST_REAL(1, 224) = 1
      FLST_REAL(2, 224) = -1
      FLST_REAL(3, 224) = 25
      FLST_REAL(4, 224) = 1
      FLST_REAL(5, 224) = -1
      FLST_REAL(6, 224) = 0

      FLST_REAL(1, 225) = 3
      FLST_REAL(2, 225) = -3
      FLST_REAL(3, 225) = 25
      FLST_REAL(4, 225) = 3
      FLST_REAL(5, 225) = -3
      FLST_REAL(6, 225) = 0

      FLST_REAL(1, 226) = 5
      FLST_REAL(2, 226) = -5
      FLST_REAL(3, 226) = 25
      FLST_REAL(4, 226) = 5
      FLST_REAL(5, 226) = -5
      FLST_REAL(6, 226) = 0

      FLST_REAL(1, 227) = 2
      FLST_REAL(2, 227) = -2
      FLST_REAL(3, 227) = 25
      FLST_REAL(4, 227) = 0
      FLST_REAL(5, 227) = 0
      FLST_REAL(6, 227) = 0

      FLST_REAL(1, 228) = 4
      FLST_REAL(2, 228) = -4
      FLST_REAL(3, 228) = 25
      FLST_REAL(4, 228) = 0
      FLST_REAL(5, 228) = 0
      FLST_REAL(6, 228) = 0

      FLST_REAL(1, 229) = 1
      FLST_REAL(2, 229) = -1
      FLST_REAL(3, 229) = 25
      FLST_REAL(4, 229) = 0
      FLST_REAL(5, 229) = 0
      FLST_REAL(6, 229) = 0

      FLST_REAL(1, 230) = 3
      FLST_REAL(2, 230) = -3
      FLST_REAL(3, 230) = 25
      FLST_REAL(4, 230) = 0
      FLST_REAL(5, 230) = 0
      FLST_REAL(6, 230) = 0

      FLST_REAL(1, 231) = 5
      FLST_REAL(2, 231) = -5
      FLST_REAL(3, 231) = 25
      FLST_REAL(4, 231) = 0
      FLST_REAL(5, 231) = 0
      FLST_REAL(6, 231) = 0

      FLST_REAL(1, 232) = 2
      FLST_REAL(2, 232) = -2
      FLST_REAL(3, 232) = 25
      FLST_REAL(4, 232) = 1
      FLST_REAL(5, 232) = -1
      FLST_REAL(6, 232) = 0

      FLST_REAL(1, 233) = 2
      FLST_REAL(2, 233) = -2
      FLST_REAL(3, 233) = 25
      FLST_REAL(4, 233) = 3
      FLST_REAL(5, 233) = -3
      FLST_REAL(6, 233) = 0

      FLST_REAL(1, 234) = 2
      FLST_REAL(2, 234) = -2
      FLST_REAL(3, 234) = 25
      FLST_REAL(4, 234) = 4
      FLST_REAL(5, 234) = -4
      FLST_REAL(6, 234) = 0

      FLST_REAL(1, 235) = 2
      FLST_REAL(2, 235) = -2
      FLST_REAL(3, 235) = 25
      FLST_REAL(4, 235) = 5
      FLST_REAL(5, 235) = -5
      FLST_REAL(6, 235) = 0

      FLST_REAL(1, 236) = 4
      FLST_REAL(2, 236) = -4
      FLST_REAL(3, 236) = 25
      FLST_REAL(4, 236) = 1
      FLST_REAL(5, 236) = -1
      FLST_REAL(6, 236) = 0

      FLST_REAL(1, 237) = 4
      FLST_REAL(2, 237) = -4
      FLST_REAL(3, 237) = 25
      FLST_REAL(4, 237) = 2
      FLST_REAL(5, 237) = -2
      FLST_REAL(6, 237) = 0

      FLST_REAL(1, 238) = 4
      FLST_REAL(2, 238) = -4
      FLST_REAL(3, 238) = 25
      FLST_REAL(4, 238) = 3
      FLST_REAL(5, 238) = -3
      FLST_REAL(6, 238) = 0

      FLST_REAL(1, 239) = 4
      FLST_REAL(2, 239) = -4
      FLST_REAL(3, 239) = 25
      FLST_REAL(4, 239) = 5
      FLST_REAL(5, 239) = -5
      FLST_REAL(6, 239) = 0

      FLST_REAL(1, 240) = 1
      FLST_REAL(2, 240) = -1
      FLST_REAL(3, 240) = 25
      FLST_REAL(4, 240) = 2
      FLST_REAL(5, 240) = -2
      FLST_REAL(6, 240) = 0

      FLST_REAL(1, 241) = 1
      FLST_REAL(2, 241) = -1
      FLST_REAL(3, 241) = 25
      FLST_REAL(4, 241) = 3
      FLST_REAL(5, 241) = -3
      FLST_REAL(6, 241) = 0

      FLST_REAL(1, 242) = 1
      FLST_REAL(2, 242) = -1
      FLST_REAL(3, 242) = 25
      FLST_REAL(4, 242) = 4
      FLST_REAL(5, 242) = -4
      FLST_REAL(6, 242) = 0

      FLST_REAL(1, 243) = 1
      FLST_REAL(2, 243) = -1
      FLST_REAL(3, 243) = 25
      FLST_REAL(4, 243) = 5
      FLST_REAL(5, 243) = -5
      FLST_REAL(6, 243) = 0

      FLST_REAL(1, 244) = 3
      FLST_REAL(2, 244) = -3
      FLST_REAL(3, 244) = 25
      FLST_REAL(4, 244) = 1
      FLST_REAL(5, 244) = -1
      FLST_REAL(6, 244) = 0

      FLST_REAL(1, 245) = 3
      FLST_REAL(2, 245) = -3
      FLST_REAL(3, 245) = 25
      FLST_REAL(4, 245) = 2
      FLST_REAL(5, 245) = -2
      FLST_REAL(6, 245) = 0

      FLST_REAL(1, 246) = 3
      FLST_REAL(2, 246) = -3
      FLST_REAL(3, 246) = 25
      FLST_REAL(4, 246) = 4
      FLST_REAL(5, 246) = -4
      FLST_REAL(6, 246) = 0

      FLST_REAL(1, 247) = 3
      FLST_REAL(2, 247) = -3
      FLST_REAL(3, 247) = 25
      FLST_REAL(4, 247) = 5
      FLST_REAL(5, 247) = -5
      FLST_REAL(6, 247) = 0

      FLST_REAL(1, 248) = 5
      FLST_REAL(2, 248) = -5
      FLST_REAL(3, 248) = 25
      FLST_REAL(4, 248) = 1
      FLST_REAL(5, 248) = -1
      FLST_REAL(6, 248) = 0

      FLST_REAL(1, 249) = 5
      FLST_REAL(2, 249) = -5
      FLST_REAL(3, 249) = 25
      FLST_REAL(4, 249) = 2
      FLST_REAL(5, 249) = -2
      FLST_REAL(6, 249) = 0

      FLST_REAL(1, 250) = 5
      FLST_REAL(2, 250) = -5
      FLST_REAL(3, 250) = 25
      FLST_REAL(4, 250) = 3
      FLST_REAL(5, 250) = -3
      FLST_REAL(6, 250) = 0

      FLST_REAL(1, 251) = 5
      FLST_REAL(2, 251) = -5
      FLST_REAL(3, 251) = 25
      FLST_REAL(4, 251) = 4
      FLST_REAL(5, 251) = -4
      FLST_REAL(6, 251) = 0

      FLST_REAL(1, 252) = -2
      FLST_REAL(2, 252) = 2
      FLST_REAL(3, 252) = 25
      FLST_REAL(4, 252) = 0
      FLST_REAL(5, 252) = 0
      FLST_REAL(6, 252) = 0

      FLST_REAL(1, 253) = -4
      FLST_REAL(2, 253) = 4
      FLST_REAL(3, 253) = 25
      FLST_REAL(4, 253) = 0
      FLST_REAL(5, 253) = 0
      FLST_REAL(6, 253) = 0

      FLST_REAL(1, 254) = -1
      FLST_REAL(2, 254) = 1
      FLST_REAL(3, 254) = 25
      FLST_REAL(4, 254) = 0
      FLST_REAL(5, 254) = 0
      FLST_REAL(6, 254) = 0

      FLST_REAL(1, 255) = -3
      FLST_REAL(2, 255) = 3
      FLST_REAL(3, 255) = 25
      FLST_REAL(4, 255) = 0
      FLST_REAL(5, 255) = 0
      FLST_REAL(6, 255) = 0

      FLST_REAL(1, 256) = -5
      FLST_REAL(2, 256) = 5
      FLST_REAL(3, 256) = 25
      FLST_REAL(4, 256) = 0
      FLST_REAL(5, 256) = 0
      FLST_REAL(6, 256) = 0

      FLST_REAL(1, 257) = -2
      FLST_REAL(2, 257) = 2
      FLST_REAL(3, 257) = 25
      FLST_REAL(4, 257) = 1
      FLST_REAL(5, 257) = -1
      FLST_REAL(6, 257) = 0

      FLST_REAL(1, 258) = -2
      FLST_REAL(2, 258) = 2
      FLST_REAL(3, 258) = 25
      FLST_REAL(4, 258) = 3
      FLST_REAL(5, 258) = -3
      FLST_REAL(6, 258) = 0

      FLST_REAL(1, 259) = -2
      FLST_REAL(2, 259) = 2
      FLST_REAL(3, 259) = 25
      FLST_REAL(4, 259) = 4
      FLST_REAL(5, 259) = -4
      FLST_REAL(6, 259) = 0

      FLST_REAL(1, 260) = -2
      FLST_REAL(2, 260) = 2
      FLST_REAL(3, 260) = 25
      FLST_REAL(4, 260) = 5
      FLST_REAL(5, 260) = -5
      FLST_REAL(6, 260) = 0

      FLST_REAL(1, 261) = -4
      FLST_REAL(2, 261) = 4
      FLST_REAL(3, 261) = 25
      FLST_REAL(4, 261) = 1
      FLST_REAL(5, 261) = -1
      FLST_REAL(6, 261) = 0

      FLST_REAL(1, 262) = -4
      FLST_REAL(2, 262) = 4
      FLST_REAL(3, 262) = 25
      FLST_REAL(4, 262) = 2
      FLST_REAL(5, 262) = -2
      FLST_REAL(6, 262) = 0

      FLST_REAL(1, 263) = -4
      FLST_REAL(2, 263) = 4
      FLST_REAL(3, 263) = 25
      FLST_REAL(4, 263) = 3
      FLST_REAL(5, 263) = -3
      FLST_REAL(6, 263) = 0

      FLST_REAL(1, 264) = -4
      FLST_REAL(2, 264) = 4
      FLST_REAL(3, 264) = 25
      FLST_REAL(4, 264) = 5
      FLST_REAL(5, 264) = -5
      FLST_REAL(6, 264) = 0

      FLST_REAL(1, 265) = -1
      FLST_REAL(2, 265) = 1
      FLST_REAL(3, 265) = 25
      FLST_REAL(4, 265) = 2
      FLST_REAL(5, 265) = -2
      FLST_REAL(6, 265) = 0

      FLST_REAL(1, 266) = -1
      FLST_REAL(2, 266) = 1
      FLST_REAL(3, 266) = 25
      FLST_REAL(4, 266) = 3
      FLST_REAL(5, 266) = -3
      FLST_REAL(6, 266) = 0

      FLST_REAL(1, 267) = -1
      FLST_REAL(2, 267) = 1
      FLST_REAL(3, 267) = 25
      FLST_REAL(4, 267) = 4
      FLST_REAL(5, 267) = -4
      FLST_REAL(6, 267) = 0

      FLST_REAL(1, 268) = -1
      FLST_REAL(2, 268) = 1
      FLST_REAL(3, 268) = 25
      FLST_REAL(4, 268) = 5
      FLST_REAL(5, 268) = -5
      FLST_REAL(6, 268) = 0

      FLST_REAL(1, 269) = -3
      FLST_REAL(2, 269) = 3
      FLST_REAL(3, 269) = 25
      FLST_REAL(4, 269) = 1
      FLST_REAL(5, 269) = -1
      FLST_REAL(6, 269) = 0

      FLST_REAL(1, 270) = -3
      FLST_REAL(2, 270) = 3
      FLST_REAL(3, 270) = 25
      FLST_REAL(4, 270) = 2
      FLST_REAL(5, 270) = -2
      FLST_REAL(6, 270) = 0

      FLST_REAL(1, 271) = -3
      FLST_REAL(2, 271) = 3
      FLST_REAL(3, 271) = 25
      FLST_REAL(4, 271) = 4
      FLST_REAL(5, 271) = -4
      FLST_REAL(6, 271) = 0

      FLST_REAL(1, 272) = -3
      FLST_REAL(2, 272) = 3
      FLST_REAL(3, 272) = 25
      FLST_REAL(4, 272) = 5
      FLST_REAL(5, 272) = -5
      FLST_REAL(6, 272) = 0

      FLST_REAL(1, 273) = -5
      FLST_REAL(2, 273) = 5
      FLST_REAL(3, 273) = 25
      FLST_REAL(4, 273) = 1
      FLST_REAL(5, 273) = -1
      FLST_REAL(6, 273) = 0

      FLST_REAL(1, 274) = -5
      FLST_REAL(2, 274) = 5
      FLST_REAL(3, 274) = 25
      FLST_REAL(4, 274) = 2
      FLST_REAL(5, 274) = -2
      FLST_REAL(6, 274) = 0

      FLST_REAL(1, 275) = -5
      FLST_REAL(2, 275) = 5
      FLST_REAL(3, 275) = 25
      FLST_REAL(4, 275) = 3
      FLST_REAL(5, 275) = -3
      FLST_REAL(6, 275) = 0

      FLST_REAL(1, 276) = -5
      FLST_REAL(2, 276) = 5
      FLST_REAL(3, 276) = 25
      FLST_REAL(4, 276) = 4
      FLST_REAL(5, 276) = -4
      FLST_REAL(6, 276) = 0



      FLST_NREAL = 276
      END

