      subroutine init_couplings
      implicit none
      include "coupl.inc"
      include "Source/MODEL/input.inc"
      include "Source/MODEL/mp_input.inc"      
      include "pwhg_flg.h"
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      real * 8 powheginput
      external powheginput
      real * 8 cosalpha
      logical called
      data called/.false./
      save called
      if(called) then
         return
      else
         called=.true.
      endif

      flg_processid='HJJ'

*********************************************************
***********         MADGRAPH                 ************
*********************************************************
c Parameters are read from the MadGraph param_card.dat,
c except the strong coupling constant, which is defined
c somewhere else
      call setpara("param_card.dat")
      
      cosalpha = powheginput("#MGcosa")
      if (abs(cosalpha) <= 1d0) then
         write(*,*) "The default value of cos(alpha) "//
     $        "[cosa in the MG5 param_card.dat file] has been changed to ",cosalpha
         MDL_COSA=cosalpha
         MP__MDL_COSA = MDL_COSA
         call coup
      endif
      end

