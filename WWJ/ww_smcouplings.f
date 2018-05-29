      subroutine ww_smcouplings
      implicit none
      include 'ww_PhysPars.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real * 8 deltas,asmzopi,asmwopi
      real * 8 pwhg_alphas
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c PDG 7-7-2011
      ww_ph_Zmass  = ph_Zmass
c PDG 7-7-2011
      ww_ph_Wmass  = ph_Wmass
c PDG 7-7-2011, SM Review (Langaker)
      ww_ph_gmu    = ph_gfermi

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ww_ph_Zmass2 = ww_ph_Zmass**2
      ww_ph_Wmass2 = ww_ph_Wmass**2

      ww_ph_cthw = ww_ph_Wmass/ww_ph_Zmass
      ww_ph_cthw2 = ww_ph_cthw**2
      ww_ph_sthw2 = abs(1d0-ww_ph_cthw2)
      ww_ph_sthw = sqrt(ww_ph_sthw2)

      ww_ph_alphaem = ph_alphaem

      ww_ph_Wwidth = ph_Wwidth
      ww_ph_Zwidth = ph_Zwidth
c
      write(*,*) 'ww_smcouplings: print constants:'
      write(*,*) ' 1/alpha',1/ww_ph_alphaem
      write(*,*) ' W width',ww_ph_Wwidth
      write(*,*) ' Z width',ww_ph_Zwidth
      write(*,*) ' Z mass', ww_ph_Zmass
      write(*,*) ' W mass', ww_ph_Wmass
      write(*,*) 'sinthw^2', ww_ph_sthw2

      ww_ph_ZmZw = ww_ph_Zmass * ww_ph_Zwidth
      ww_ph_unit_e = sqrt(4*pi*ww_ph_alphaem)
      ww_ph_WmWw = ww_ph_Wmass * ww_ph_Wwidth

      end
