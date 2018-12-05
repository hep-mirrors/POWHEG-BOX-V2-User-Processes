      subroutine smcouplings
      implicit none
#include "PhysPars.h"
#include "pwhg_math.h"
#include "pwhg_st.h"
      double precision deltas,asmzopi,asmwopi
      double precision aa, delalpha
      integer ewscheme
      double precision pwhg_alphas
      double precision powheginput
      external powheginput

c--   read the EW scheme from the input line
      if(powheginput("#ewscheme").gt.0) then
         ewscheme = powheginput("ewscheme")
      else
         ewscheme = 3 ! default value, GF, MZ, MW as input
      endif

c--   read the input parameters according to the EW scheme chosen
      select case(ewscheme)
      case(1)                   ! GF, 1/alpha(MZ), MZ as input; sin(theta_W)^2 and MW calculated
         if(powheginput("#GF").gt.0) then
            ph_gmu = powheginput("GF")
         else
            ph_gmu = 1.1663787d-5 ! default value
         endif
         if(powheginput("#Zmass").gt.0) then
            ph_Zmass = powheginput("Zmass")
         else
            ph_Zmass = 91.1876d0 ! PDG 2016 default value
         endif
         if(powheginput("#inv_alpha").gt.0) then
            ph_alphaem = 1d0/powheginput("inv_alpha")
         else
            ph_alphaem = 1d0/128.944341122d0 ! default value at MZ
         endif
         ph_Zmass2 = ph_Zmass**2
         aa        = ph_alphaem*pi/(ph_Zmass2*dsqrt(2d0)*ph_gmu)
         ph_sthw2  = 0.5d0*(1d0-dsqrt(1d0-4d0*aa))
         ph_Wmass2 = ph_Zmass2*(1d0-ph_sthw2)
         ph_Wmass  = dsqrt(ph_Wmass2)
      case(2)                   ! GF, sin(theta_W)^2, MZ as input; 1/alpha(MZ) and MW calculated
         if(powheginput("#GF").gt.0) then
            ph_gmu = powheginput("GF")
         else
            ph_gmu = 1.1663787d-5 ! default value
         endif
         if(powheginput("#sin2w").gt.0) then
            ph_sthw2 = powheginput("sin2w")
         else
            ph_sthw2 = 0.23155d0 ! PDG 2016 default value
         endif
         if(powheginput("#Zmass").gt.0) then
            ph_Zmass = powheginput("Zmass")
         else
            ph_Zmass = 91.1876d0 ! PDG 2016 default value
         endif
         ph_Zmass2  = ph_Zmass**2
         ph_Wmass2  = ph_Zmass2*(1d0-ph_sthw2)
         ph_Wmass   = dsqrt(ph_Wmass2)
         ph_alphaem = dsqrt(2d0)*ph_Zmass2*ph_gmu*
     &        ph_sthw2*(1d0-ph_sthw2)/pi
      case(3)                   ! GF, MW, MZ as input; 1/alpha(MZ) and sin(theta_W)^2 calculated
         if(powheginput("#GF").gt.0) then
            ph_gmu = powheginput("GF")
         else
            ph_gmu = 1.1663787d-5 ! default value
         endif
         if(powheginput("#Wmass").gt.0) then
            ph_Wmass = powheginput("Wmass")
         else
            ph_Wmass = 80.385d0 ! PDG 2016 default value
         endif
         if(powheginput("#Zmass").gt.0) then
            ph_Zmass = powheginput("Zmass")
         else
            ph_Zmass = 91.1876d0 ! PDG 2016 default value
         endif
         ph_Wmass2  = ph_Wmass**2
         ph_Zmass2  = ph_Zmass**2
         ph_sthw2   = 1d0 - ph_Wmass2/ph_Zmass2
         ph_alphaem = dsqrt(2d0)*ph_gmu*ph_Wmass2*ph_sthw2/pi
      case(4)                   ! 1/alpha(0), MW, MZ as input; 1/alpha(MZ) calculated and sin(theta_W)^2 calculated
         if(powheginput("#inv_alpha").gt.0) then
            ph_alphaem = 1d0/powheginput("inv_alpha")
         else
            ph_alphaem = 1d0/137.035999679d0 ! default value in the Thomson limit
         endif
         if(powheginput("#Wmass").gt.0) then
            ph_Wmass = powheginput("Wmass")
         else
            ph_Wmass = 80.385d0 ! PDG 2016 default value
         endif
         if(powheginput("#Zmass").gt.0) then
            ph_Zmass = powheginput("Zmass")
         else
            ph_Zmass = 91.1876d0 ! PDG 2016 default value
         endif
         ph_Wmass2  = ph_Wmass**2
         ph_Zmass2  = ph_Zmass**2
         delalpha   = 5.9047686d-2
         ph_alphaem = ph_alphaem/(1d0-delalpha)
      case(5)                   ! 1/alpha(MZ), MW, MZ as input; sin(theta_W)^2 calculated
         if(powheginput("#inv_alpha").gt.0) then
            ph_alphaem = 1d0/powheginput("inv_alpha")
         else
            ph_alphaem = 1d0/128.944341122d0 ! default value at MZ
         endif
         if(powheginput("#Wmass").gt.0) then
            ph_Wmass = powheginput("Wmass")
         else
            ph_Wmass = 80.385d0 ! PDG 2016 default value
         endif
         if(powheginput("#Zmass").gt.0) then
            ph_Zmass = powheginput("Zmass")
         else
            ph_Zmass = 91.1876d0 ! PDG 2016 default value
         endif
         ph_Wmass2  = ph_Wmass**2
         ph_Zmass2  = ph_Zmass**2
         ph_sthw2   = 1d0 - ph_Wmass2/ph_Zmass2
      end select

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c$$$      ph_cthw = ph_Wmass/ph_Zmass
c$$$      ph_cthw2 = ph_cthw**2
c$$$      ph_sthw2 = abs(1d0-ph_cthw2)
c$$$      ph_sthw = sqrt(ph_sthw2)
      ph_sthw  = dsqrt(ph_sthw2)
      ph_cthw2 = 1d0 - ph_sthw2
      ph_cthw  = dsqrt(ph_cthw2)

c alphas(Mz) from PDG review 7-7-2011      
      asmzopi=pwhg_alphas(ph_Zmass2,st_lambda5MSB,5)/pi
      asmwopi=pwhg_alphas(ph_Wmass2,st_lambda5MSB,5)/pi

c from PDG, Langaker review 7-7-2011
c with contributions up to as**4 then ph_Wwidth = 2.099, ph_Zwidth = 2.511
c      deltas=asmzopi+1.409*asmzopi**2-12.77*asmzopi**3-80*asmzopi**4
c with contributions up to as**1 then ph_Wwidth = 2.098, ph_Zwidth = 2.509
      deltas=asmwopi
      ph_deltas=deltas
c     ph_Wwidth =  2.085 +- 0.042, PDG 7-7-2011
c 2.0995 with this formula, 0.7% difference, 0.34 standard deviations
      if(powheginput("#Wwidth").gt.0) then ! julien: maybe we should think about it more carefully
         ph_Wwidth = powheginput("Wwidth")
      else
         ph_Wwidth = ph_gmu*ph_Wmass**3/(6*sqrt(2d0)*pi)
     &        *(3+3*2*(1+deltas))
      endif

      deltas=asmzopi
c     ph_Zwidth = 2.4952 +- 0.0023, PDG 7-7-2011
c 2.5106 with this formula, 0.6% differemnce, 6.7 standard deviations
      if(powheginput("#Zwidth").gt.0) then ! julien: maybe we should think about it more carefully
         ph_Zwidth = powheginput("Zwidth")
      else
         ph_Zwidth = ph_gmu*ph_Zmass**3/(6*sqrt(2d0)*pi)*(
c gv=t3L-2q sin^2 thetaW, ga=t3L
c neutrinos
     &        3*((0.5d0)**2+(0.5d0)**2)  +
c leptons
     &        3*((-0.5d0+2*ph_sthw2)**2+(-0.5d0)**2) +
     &        (
c up quarks
     &        3*2*((0.5d0-2*2d0/3d0*ph_sthw2)**2+(0.5d0)**2) +
c down quarks
     &        3*3*((-0.5d0+2*1d0/3d0*ph_sthw2)**2+(-0.5d0)**2) 
     &        )*(1+deltas) )
c
      endif
      write(*,*) ' 1/alpha',1/ph_alphaem
      write(*,*) ' W width',ph_Wwidth
      write(*,*) ' Z width',ph_Zwidth
      write(*,*) ' Wbranch lep ', 3/(3+3*2*(1+ph_deltas))
      write(*,*) ' Wbranch had ', 1-3/(3+3*2*(1+ph_deltas))

      ph_ZmZw = ph_Zmass * ph_Zwidth
      ph_unit_e = sqrt(4*pi*ph_alphaem)

      ph_WmWw = ph_Wmass * ph_Wwidth

      end
