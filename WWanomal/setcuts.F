      subroutine setcuts
      implicit none
#include "cuts.h"
      double precision powheginput
      external powheginput

      if(powheginput("#ptlcut1").gt.0d0) then
            ptlepcut1 = powheginput("ptlcut1")
      else
            ptlepcut1 = 0.0d0
      endif

      if(powheginput("#ptlcut2").gt.0d0) then
            ptlepcut2 = powheginput("ptlcut2")
      else
            ptlepcut2 = 0.0d0
      endif

      if(powheginput("#ylcut1").gt.0d0) then
            ylepcut1 = powheginput("ylcut1")
      else
            ylepcut1 = 100.0d0
      endif

      if(powheginput("#ylcut2").gt.0d0) then
            ylepcut2 = powheginput("ylcut2")
      else
            ylepcut2 = 100.0d0
      endif

      if(powheginput("#rjet").gt.0d0) then
         rjet = powheginput("rjet")
      else
         rjet = 0.4d0
      endif

      if(powheginput("#ptjcut").gt.0d0) then
            ptjetcut = powheginput("ptjcut")
      else
            ptjetcut = 100000.0d0
      endif

      if(powheginput("#yjcut").gt.0d0) then
            yjetcut = powheginput("yjcut")
      else
            yjetcut = 0.0d0
      endif

      if(powheginput("#jetveto").gt.0d0) then
            jetveto = int(powheginput("jetveto"))
      else
            jetveto = 0
      endif

      if(powheginput("#etmiss").gt.0d0) then
            etmisscut = powheginput("etmiss")
      else
            etmisscut = 0.0d0
      endif

      if(powheginput("#mllcut").gt.0d0) then
            mllcut = powheginput("mllcut")
      else
            mllcut = 0.0d0
      endif

      return
      end
