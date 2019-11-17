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

      if(powheginput("#ptlcutW").gt.0d0) then
         ptlepcutW = powheginput("ptlcutW")
      else
         ptlepcutW = 0.0d0
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

      if(powheginput("#ylcutW").gt.0d0) then
         ylepcutW = powheginput("ylcutW")
      else
         ylepcutW = 100.0d0
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
         mllcut = 0.1d0
      endif

      if(powheginput("#mllcut2").gt.0d0) then
         mllcut2 = powheginput("mllcut2")
      else
         mllcut2 = 1.d10
      endif

      if (powheginput("#mtwcut").gt.0d0) then
         mtwcut=powheginput("mtwcut")
      else
         mtwcut=0.0d0
      endif

      if (powheginput("#mlllcut").gt.0d0) then
         mlllcut=powheginput("mlllcut")
      else
         mlllcut=0.0d0
      endif

      if (powheginput("#delrZcut").gt.0d0) then
         delrZcut=powheginput("delrZcut")
      else
         delrZcut=0.0d0
      endif

      if (powheginput("#delrZ1Wcut").gt.0d0) then
         delrZ1Wcut=powheginput("delrZ1Wcut")
      else
         delrZ1Wcut=0.0d0
      endif

      if (powheginput("#delrZ2Wcut").gt.0d0) then
         delrZ2Wcut=powheginput("delrZ2Wcut")
      else
         delrZ2Wcut=0.0d0
      endif
      
      return
      end
