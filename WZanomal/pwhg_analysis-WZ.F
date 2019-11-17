c     This analysis file is taken from the sanity check analysis
c     for ZZ,WZ,WW production in the original implementation from
c     arXiv:1311.1365.
c     Set the values of dec1p, dec1a, dec2p, dec2a
c     in the powheg.input file
c     equal to the pdg id of the VV decay products.
c     Which one is 1 or 2 is decided as follows:
c     in WZ 1 is W
c     in WW 1 is W+;
c     in ZZ always have dec1p >= dec2p

      
c     The next subroutines, open some histograms and prepare them 
c     to receive data 
c     You can substitute these  with your favourite ones
c     init   :  opens the histograms
c     topout :  closes them
c     pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
#include "LesHouches.h"
#include "pwhg_math.h"
#include "cuts.h"
#include "cvecbos.h"
#include "nwz.h"
      logical ini2
      data ini2/.true./
      save ini2
      double precision powheginput
      real*8 xml(1:8),xmt(1:7), xzt(1:10)
      external powheginput
      double precision ylepmax, ylepmin

      call setupmulti(1)
      call inihists

c     This is ATLAS 8 TeV WZ M_T(WZ) binning (1603.02151)
c     Same binning used by ATLAS at 13 TeV, 1902.05759

      xmt(1)=0.d0
      xmt(2)=140.d0
      xmt(3)=180.d0
      xmt(4)=250.d0
      xmt(5)=450.d0
      xmt(6)=600.d0
      xmt(7)=2000.d0

c     this is CMS 8 TeV WZ pT(Z->ll) binning 1609.05721, fig.7

c$$$      xzt(1)=0.d0
c$$$      xzt(2)=50.d0
c$$$      xzt(3)=100.d0
c$$$      xzt(4)=150.d0
c$$$      xzt(5)=200.d0
c$$$      xzt(6)=250.d0
c$$$      xzt(7)=300.d0
c$$$      xzt(8)=350.d0
c$$$      xzt(9)=2000.d0

      xzt(1)=0.d0
      xzt(2)=20.d0
      xzt(3)=40.d0
      xzt(4)=60.d0
      xzt(5)=80.d0
      xzt(6)=100.d0
      xzt(7)=120.d0
      xzt(8)=140.d0
      xzt(9)=200.d0
      xzt(10)=300.d0

c     this is CMS 13 TeV WZ m_WZ binning 1901.03428, fig.15 (left)

c$$$      xml(1)=0.d0
c$$$      xml(2)=105.d0
c$$$      xml(3)=205.d0
c$$$      xml(4)=310.d0
c$$$      xml(5)=415.d0
c$$$      xml(6)=930.d0
c$$$      xml(7)=1450.d0
c$$$      xml(8)=3000.d0

      xml(1)=100.d0
      xml(2)=200.d0
      xml(3)=300.d0
      xml(4)=400.d0
      xml(5)=500.d0
      xml(6)=1000.d0
      xml(7)=1500.d0
      xml(8)=3000.d0

c--   

      if(ini2) then
         if(powheginput("#cutflag").gt.0d0) then
            cutflag = int(powheginput("cutflag"))
         else
            cutflag = 0
         endif
c--   init cut parameters
         if(cutflag.gt.0) then
            call setcuts
            print*,"CUTS PARAMETERS HAVE BEEN LOADED"
         endif
c--   identify the process
         vdecaymodeW = powheginput("vmodeW")
         vdecaymodeZ = powheginput("vmodeZ")
         if (vdecaymodeW.lt.0) then
            nwz = +1            ! reset nwz to match the analysis
         elseif (vdecaymodeW.gt.0) then
            nwz = -1            ! reset nwz to match the analysis
         endif
         ini2=.false.
      endif

      if(cutflag.eq.0.or.cutflag.eq.2) then
c     total cross section sanity check
         call bookupeqbins('total',1d0,0d0,1d0)
      endif

      if(cutflag.eq.1.or.cutflag.eq.2) then
c     total cross section sanity check
         call bookupeqbins('totalcut',1d0,0d0,1d0)
      endif

      if(cutflag.eq.0.or.cutflag.eq.2) then

         call bookup('pt_Z',10,xzt)
         call bookup('MT_WZ',7,xmt)
         call bookup('M_WZ',8,xml)

c     new plots for theta* and phi* variables
         call bookupeqbins('costh_star_W',0.04d0,-1d0,1d0)
         call bookupeqbins('costh_star_Z',0.04d0,-1d0,1d0)
         call bookupeqbins('phi_star_W',pi/20,0d0,2d0*pi)
         call bookupeqbins('phi_star_Z',pi/20,0d0,2d0*pi)

c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            call bookupeqbins('lep+_y',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep+_eta',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep+_pt',100d0,0d0,1500d0)
c$$$
c$$$            call bookupeqbins('lep-_y',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep-_eta',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep-_pt',100d0,0d0,1500d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('neut_pt',100d0,0d0,1500d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('antineut_pt',100d0,0d0,1500d0)
c$$$            endif
c$$$         else
c$$$            call bookupeqbins('lep1+_y',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep1+_eta',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep1+_pt',100d0,0d0,1500d0)
c$$$
c$$$            call bookupeqbins('lep1-_y',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep1-_eta',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep1-_pt',100d0,0d0,1500d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep2+_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2+_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2+_pt',100d0,0d0,1500d0)
c$$$               
c$$$               call bookupeqbins('neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('neut_pt',100d0,0d0,1500d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep2-_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2-_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2-_pt',100d0,0d0,1500d0)
c$$$
c$$$               call bookupeqbins('antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('antineut_pt',100d0,0d0,1500d0)
c$$$            endif
c$$$         endif

c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            call bookupeqbins('lep+lep-_y',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep+lep-_eta',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep+lep-_pt',100d0,0d0,1500d0)
c$$$            call bookupeqbins('lep+lep-_m',0.5d0,60d0,100d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep+neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep+neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep+neut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep+neut_m',0.5d0,60d0,100d0)
c$$$
c$$$               call bookupeqbins('lep-neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep-neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep-neut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep-neut_m',0.5d0,60d0,100d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep+antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep+antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep+antineut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep+antineut_m',0.5d0,60d0,100d0)
c$$$
c$$$               call bookupeqbins('lep-antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep-antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep-antineut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep-antineut_m',0.5d0,60d0,100d0)
c$$$            endif
c$$$         else
c$$$            call bookupeqbins('lep1+lep1-_y',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep1+lep1-_eta',0.2d0,-5d0,5d0)
c$$$            call bookupeqbins('lep1+lep1-_pt',100d0,0d0,1500d0)
c$$$            call bookupeqbins('lep1+lep1-_m',0.5d0,60d0,100d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep1+lep2+_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+lep2+_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+lep2+_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1+lep2+_m',0.5d0,60d0,100d0)
c$$$               
c$$$               call bookupeqbins('lep1-lep2+_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-lep2+_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-lep2+_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1-lep2+_m',0.5d0,60d0,100d0)
c$$$
c$$$               call bookupeqbins('lep1+neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+neut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1+neut_m',0.5d0,60d0,100d0)
c$$$               
c$$$               call bookupeqbins('lep1-neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-neut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1-neut_m',0.5d0,60d0,100d0)
c$$$
c$$$               call bookupeqbins('lep2+neut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2+neut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2+neut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep2+neut_m',0.5d0,60d0,100d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep1+lep2-_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+lep2-_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+lep2-_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1+lep2-_m',0.5d0,60d0,100d0)
c$$$               
c$$$               call bookupeqbins('lep1-lep2-_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-lep2-_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-lep2-_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1-lep2-_m',0.5d0,60d0,100d0)
c$$$
c$$$               call bookupeqbins('lep1+antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1+antineut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1+antineut_m',0.5d0,60d0,100d0)
c$$$               
c$$$               call bookupeqbins('lep1-antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep1-antineut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep1-antineut_m',0.5d0,60d0,100d0)
c$$$
c$$$               call bookupeqbins('lep2-antineut_y',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2-antineut_eta',0.2d0,-5d0,5d0)
c$$$               call bookupeqbins('lep2-antineut_pt',100d0,0d0,1500d0)
c$$$               call bookupeqbins('lep2-antineut_m',0.5d0,60d0,100d0)
c$$$            endif
c$$$         endif

c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            call bookupeqbins('lep+lep-_delphi',pi/20,0d0,pi)
c$$$            call bookupeqbins('lep+lep-_dr',0.2d0,-8d0,8d0)
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep+neut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep+neut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep-neut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep-neut_dr',0.2d0,-8d0,8d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep+antineut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep+antineut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep-antineut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep-antineut_dr',0.2d0,-8d0,8d0)
c$$$            endif
c$$$         else
c$$$            call bookupeqbins('lep1+lep1-_delphi',pi/20,0d0,pi)
c$$$            call bookupeqbins('lep1+lep1-_dr',0.2d0,-8d0,8d0)
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep1+lep2+_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+lep2+_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-lep2+_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-lep2+_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1+neut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+neut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-neut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-neut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep2+neut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep2+neut_dr',0.2d0,-8d0,8d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep1+lep2-_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+lep2-_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-lep2-_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-lep2-_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1+antineut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+antineut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-antineut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-antineut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep2-antineut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep2-antineut_dr',0.2d0,-8d0,8d0)
c$$$            endif
c$$$         endif

      endif

c--   histograms with cuts
      if(cutflag.eq.1.or.cutflag.eq.2) then

         call bookup('pt_Z_cut',10,xzt)
         call bookup('MT_WZ_cut',7,xmt)
         call bookup('M_WZ_cut',8,xml)

c     new plots for theta* and phi* variables
         call bookupeqbins('costh_star_W_cut',0.04d0,-1d0,1d0)
         call bookupeqbins('costh_star_Z_cut',0.04d0,-1d0,1d0)
         call bookupeqbins('phi_star_W_cut',pi/20,0d0,2d0*pi)
         call bookupeqbins('phi_star_Z_cut',pi/20,0d0,2d0*pi)

c$$$         ylepmax = ylepcut1
c$$$         if(ylepcut2.gt.ylepmax) ylepmax = ylepcut1
c$$$         if(ylepcutW.gt.ylepmax) ylepmax = ylepcutW
c$$$         ylepmin=-ylepmax
c$$$
c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            call bookupeqbins('lep+_cut_y',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep+_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep+_cut_pt',100d0,0d0,1500d0)
c$$$
c$$$            call bookupeqbins('lep-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep-_cut_pt',100d0,0d0,1500d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$             call bookupeqbins('neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('neut_cut_pt',100d0,0d0,1500d0)
c$$$            elseif (nwz.eq.-1) then
c$$$             call bookupeqbins('antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('antineut_cut_pt',100d0,0d0,1500d0)
c$$$            endif
c$$$         else
c$$$            call bookupeqbins('lep1+_cut_y',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep1+_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep1+_cut_pt',100d0,0d0,1500d0)
c$$$
c$$$            call bookupeqbins('lep1-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep1-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep1-_cut_pt',100d0,0d0,1500d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$             call bookupeqbins('lep2+_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep2+_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep2+_cut_pt',100d0,0d0,1500d0)
c$$$               
c$$$             call bookupeqbins('neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('neut_cut_pt',100d0,0d0,1500d0)
c$$$            elseif (nwz.eq.-1) then
c$$$             call bookupeqbins('lep2-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep2-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep2-_cut_pt',100d0,0d0,1500d0)
c$$$
c$$$             call bookupeqbins('antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('antineut_cut_pt',100d0,0d0,1500d0)
c$$$            endif
c$$$         endif
         
c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            call bookupeqbins('lep+lep-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep+lep-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$            call bookupeqbins('lep+lep-_cut_pt',100d0,0d0,1500d0)
c$$$            call bookupeqbins('lep+lep-_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$             call bookupeqbins('lep+neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep+neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep+neut_cut_pt',100d0,0d0,1500d0)
c$$$             call bookupeqbins('lep+neut_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$             call bookupeqbins('lep-neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep-neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$             call bookupeqbins('lep-neut_cut_pt',100d0,0d0,1500d0)
c$$$             call bookupeqbins('lep-neut_cut_m',0.5d0,60d0,100d0)
c$$$            elseif (nwz.eq.-1) then
c$$$        call bookupeqbins('lep+antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep+antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep+antineut_cut_pt',100d0,0d0,1500d0)
c$$$        call bookupeqbins('lep+antineut_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$        call bookupeqbins('lep-antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep-antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep-antineut_cut_pt',100d0,0d0,1500d0)
c$$$        call bookupeqbins('lep-antineut_cut_m',0.5d0,60d0,100d0)
c$$$            endif
c$$$         else
c$$$          call bookupeqbins('lep1+lep1-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+lep1-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+lep1-_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1+lep1-_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$            if (nwz.eq.1) then
c$$$          call bookupeqbins('lep1+lep2+_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+lep2+_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+lep2+_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1+lep2+_cut_m',0.5d0,60d0,100d0)
c$$$               
c$$$          call bookupeqbins('lep1-lep2+_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1-lep2+_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1-lep2+_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1-lep2+_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$          call bookupeqbins('lep1+neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+neut_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1+neut_cut_m',0.5d0,60d0,100d0)
c$$$               
c$$$          call bookupeqbins('lep1-neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1-neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1-neut_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1-neut_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$          call bookupeqbins('lep2+neut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep2+neut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep2+neut_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep2+neut_cut_m',0.5d0,60d0,100d0)
c$$$            elseif (nwz.eq.-1) then
c$$$          call bookupeqbins('lep1+lep2-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+lep2-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1+lep2-_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1+lep2-_cut_m',0.5d0,60d0,100d0)
c$$$               
c$$$          call bookupeqbins('lep1-lep2-_cut_y',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1-lep2-_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$          call bookupeqbins('lep1-lep2-_cut_pt',100d0,0d0,1500d0)
c$$$          call bookupeqbins('lep1-lep2-_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$        call bookupeqbins('lep1+antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep1+antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep1+antineut_cut_pt',100d0,0d0,1500d0)
c$$$        call bookupeqbins('lep1+antineut_cut_m',0.5d0,60d0,100d0)
c$$$               
c$$$        call bookupeqbins('lep1-antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep1-antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep1-antineut_cut_pt',100d0,0d0,1500d0)
c$$$        call bookupeqbins('lep1-antineut_cut_m',0.5d0,60d0,100d0)
c$$$
c$$$        call bookupeqbins('lep2-antineut_cut_y',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep2-antineut_cut_eta',0.2d0,ylepmin,ylepmax)
c$$$        call bookupeqbins('lep2-antineut_cut_pt',100d0,0d0,1500d0)
c$$$        call bookupeqbins('lep2-antineut_cut_m',0.5d0,60d0,100d0)
c$$$            endif
c$$$         endif
c$$$
c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            call bookupeqbins('lep+lep-_cut_delphi',pi/20,0d0,pi)
c$$$            call bookupeqbins('lep+lep-_cut_dr',0.2d0,-8d0,8d0)
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep+neut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep+neut_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep-neut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep-neut_cut_dr',0.2d0,-8d0,8d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep+antineut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep+antineut_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep-antineut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep-antineut_cut_dr',0.2d0,-8d0,8d0)
c$$$            endif
c$$$         else
c$$$            call bookupeqbins('lep1+lep1-_cut_delphi',pi/20,0d0,pi)
c$$$            call bookupeqbins('lep1+lep1-_cut_dr',0.2d0,-8d0,8d0)
c$$$            if (nwz.eq.1) then
c$$$               call bookupeqbins('lep1+lep2+_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+lep2+_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-lep2+_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-lep2+_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1+neut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+neut_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-neut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-neut_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep2+neut_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep2+neut_cut_dr',0.2d0,-8d0,8d0)
c$$$            elseif (nwz.eq.-1) then
c$$$               call bookupeqbins('lep1+lep2-_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1+lep2-_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$               call bookupeqbins('lep1-lep2-_cut_delphi',pi/20,0d0,pi)
c$$$               call bookupeqbins('lep1-lep2-_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$             call bookupeqbins('lep1+antineut_cut_delphi',pi/20,0d0,pi)
c$$$             call bookupeqbins('lep1+antineut_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$             call bookupeqbins('lep1-antineut_cut_delphi',pi/20,0d0,pi)
c$$$             call bookupeqbins('lep1-antineut_cut_dr',0.2d0,-8d0,8d0)
c$$$
c$$$             call bookupeqbins('lep2-antineut_cut_delphi',pi/20,0d0,pi)
c$$$             call bookupeqbins('lep2-antineut_cut_dr',0.2d0,-8d0,8d0)
c$$$            endif
c$$$         endif
      endif
c--

      end
     
      subroutine analysis(dsig0)
      implicit none
      double precision dsig0,dsig(1)
#include "hepevt.h"
#include "pwhg_math.h"
#include "LesHouches.h"
#include "cuts.h"
#include "zwcouple.h"
#include "cvecbos.h"
#include "nwz.h"
      logical ini
      data ini/.true./
      save ini
c     binsize
c     we need to tell to this analysis file which program is running it
      integer   maxjet,mjets
      parameter (maxjet=2048)
      double precision  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     &     phij(maxjet),pj(4,maxjet),rr
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer vdecaytempW1,vdecaytempW2,vdecaytempZ1,vdecaytempZ2
      double precision plW(4),plZp(4),plZm(4),pnu(4)
      double precision pW(4),pZ(4),qlep(1:4,2)
      double precision c_theta_star_W,c_theta_star_Z
      double precision phi_star_W,phi_star_Z
      double precision massZZ,massWZ
      integer nlmZ, nlpZ,nlW,nnuW,ilmZ(100),ilpZ(100),ilW(100),inuW(100)
      double precision y,eta,pt,m
      double precision dy,deta,delphi,dr
      double precision yw,etaw,ptw,delrZ,delrZ1W,delrZ2W
      double precision y1,eta1,pt1,m1,y2,eta2,pt2,m2
      double precision ptlead,ylead,etalead
      double precision ptsub,ysub,etasub
      double precision mllcut_up,ptnu,mtwsq,mtw
      double precision mdum,ydum,etadum,ptdum,mll,met, mlll
      integer ihep,itmp
      double precision powheginput,random
      external powheginput,random
      integer i,j
      logical failcut



      if(dsig0.eq.0) return

      dsig = 0
      dsig(1) = dsig0

      if(ini) then
c--   added julien back from WZ original analysis file
         vdecaymodeW = powheginput("vmodeW")
         vdecaymodeZ = powheginput("vmodeZ")
         if (vdecaymodeW.lt.0) then
            nwz = +1            ! reset nwz to match the analysis
            write(*,*)'POWHEG: W+ Z production and decay'
         elseif (vdecaymodeW.gt.0) then
            nwz = -1            ! reset nwz to match the analysis
            write(*,*)'POWHEG: W- Z production and decay'
         endif
c--   end added
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO analysis'
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE analysis'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
c--

         if ((abs(vdecaymodeZ).eq.11.or.abs(vdecaymodeZ).eq.13
     $        .or.abs(vdecaymodeZ).eq.15) .and.
     $        (abs(vdecaymodeW).eq.11 .or. abs(vdecaymodeW).eq. 13 .or.
     $        abs(vdecaymodeW).eq. 15)) then
            continue
         else
            write(*,*) '**************************************'
            write(*,*) ' template analysis works only for e, mu and tau'
            write(*,*) '                 STOP     '
            write(*,*) '**************************************'
            call exit(1)
         endif
         ini=.false.
      endif

      vdecaytempW1 = vdecaymodeW
      vdecaytempZ1 = abs(vdecaymodeZ)
      
      vdecaytempZ2 = -vdecaytempZ1 ! other l from Z
      vdecaytempW2 = -sign(1,vdecaytempW1)*(abs(vdecaytempW1)+1) ! nu from W

c     find WZ decay products
      nlW=0                     ! l(+ or -) from W
      nnuW=0                    ! nu(bar) from W
      nlmZ=0                    ! l+ from Z
      nlpZ=0                    ! l- from Z            
      do ihep=1,nhep
         if(isthep(ihep).eq.1) then
            if(idhep(ihep).eq.vdecaytempZ1) then
               nlmZ = nlmZ+1
               ilmZ(nlmZ) = ihep
            elseif(idhep(ihep).eq.vdecaytempZ2) then
               nlpZ = nlpZ+1
               ilpZ(nlpZ) = ihep
            elseif(idhep(ihep).eq.vdecaytempW1) then
               nlW = nlW+1
               ilW(nlW) = ihep
            elseif(idhep(ihep).eq.vdecaytempW2) then
               nnuW = nnuW+1
               inuW(nnuW) = ihep
            endif
         endif
      enddo

      if (nlmZ .ge. 100 .or. nlpZ .ge. 100 .or. nlW .ge. 100 .or.
     .     nnuW .ge. 100) then
         write(*,*) 'crazy event, too many leptons', nlmZ, nlpz,nlw, 
     .        nnuW
         return
      endif


      if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c - all the 'W' leptons are in nlmZ for W- production
c - or in nlpZ for W+ production
         if (nwz.eq.1) then
            if(nlmZ.lt.1 .or. nlpZ.lt.2) then
               write(*,*)'crazy event, missing leptons',
     .              nlmZ,nlpZ,nlW,nnuW
            endif
         elseif (nwz.eq.-1) then
            if(nlmZ.lt.2 .or. nlpZ.lt.1) then
               write(*,*)'crazy event, missing leptons',
     .              nlmZ,nlpZ,nlW,nnuW
            endif
         endif
      else
         if (nlmZ.lt. 1 .or. nlpZ.lt.1 .or. nlW.lt.1 .or. nnuW.lt.1)then
            write(*,*) vdecaymodeW, vdecaymodeZ
            write(*,*) vdecaytempW1, vdecaytempW2
            write(*,*) vdecaytempZ1, vdecaytempZ2
            write(*,*) 'crazy event, missing leptons', nlmZ, nlpZ,nlW, 
     .           nnuW
            write(*,*) idhep(:nhep) 
            stop 
            return
         endif
      endif

c-----sort the leptons by pt. If like flavour leptons
c-----are present then have to take second highest pt
c-----lepton from the Z pool of leptons, with the correct
c-----charge depending on whether we are doing W+ or W-
      if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
         call sortbypt(nlmZ,ilmZ(1:nlmZ))
         call sortbypt(nlpZ,ilpZ(1:nlpZ))
         call sortbypt(nnuW,inuW(1:nnuW))

         plZm(1:4)=phep(1:4,ilmZ(1))
         plZp(1:4)=phep(1:4,ilpZ(1))
         pnu(1:4) =phep(1:4,inuW(1))         
         if (nwz.eq.1) then
            plW(1:4) = phep(1:4,ilpZ(2))
         elseif (nwz.eq.-1) then
            plW(1:4) = phep(1:4,ilmZ(2))
         endif
      else
         call sortbypt(nlmZ,ilmZ(1:nlmZ))
         call sortbypt(nlpZ,ilpZ(1:nlpZ))
         call sortbypt(nlW,ilW(1:nlW))
         call sortbypt(nnuW,inuW(1:nnuW))

         plZm(1:4)=phep(1:4,ilmZ(1))
         plZp(1:4)=phep(1:4,ilpZ(1))
         plW(1:4)=phep(1:4,ilW(1))
         pnu(1:4) =phep(1:4,inuW(1))         
      endif

      rr = rjet
      call buildjets(1,mjets,rr,ktj,etaj,rapj,phij,pj)

c-----this is sorting out the order of the leptons of like flav,
c----- and opposite charge
      if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
         call getyetaptmass(plZm+plZp,y,eta,pt,massZZ)
         if (nwz.eq.1) then
            call getyetaptmass(plZm+plW,y,eta,pt,massWZ)
         elseif (nwz.eq.-1) then
            call getyetaptmass(plZp+plW,y,eta,pt,massWZ)
         endif
!     pick the closest pair of momenta from the Z mass to be the 2 leptons coming from the Z
         if (abs(massWZ-zmass).lt.abs(massZZ-zmass)) then
            if (nwz.eq.1) then
               plZp(1:4)=phep(1:4,ilpz(2))
               plW(1:4) =phep(1:4,ilpz(1))
            elseif (nwz.eq.-1) then
               plZm(1:4)=phep(1:4,ilmz(2))
               plW(1:4) =phep(1:4,ilmz(1))
            endif
         endif
      endif
c-----here we have plZp, plZm, plW, pnu ordered

c-------------------------------------------------------

c--   Fill now the histograms, begin with the total phase-space when cutflag allows it
      if(cutflag.eq.0.or.cutflag.eq.2) then
         call filld('total',0.5d0,dsig)


c-- 
c     sally new for pt_(Z->ll), MT(WZ)
         call ptzllplot(plZp,plZm,dsig)
         call mtwzplot(pnu,plZp,plZm,plW,dsig)
         call mwzplot(pnu,plZp,plZm,plW,dsig)

c     calculate cos(theta*) and phi* for W and Z, fill the histograms
         pW = plW + pnu
         pZ = plZp + plZm

         qlep(1:4,1) = plW(1:4)
         qlep(1:4,2) = pnu(1:4)
         call theta_star_he5(qlep, pZ, c_theta_star_W, phi_star_W)
         qlep(1:4,1) = plZm(1:4)
         qlep(1:4,2) = plZp(1:4)
         call theta_star_he6(qlep, pW, c_theta_star_Z, phi_star_Z)
         call filld('costh_star_W',c_theta_star_W,dsig)
         call filld('costh_star_Z',c_theta_star_Z,dsig)
         call filld('phi_star_W',phi_star_W,dsig)
         call filld('phi_star_Z',phi_star_Z,dsig)


c
c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            if (nwz.eq.1) then
c$$$               call yetaptmassplot0(plZp,dsig,'lep+')
c$$$               call yetaptmassplot0(plW,dsig,'lep+')
c$$$               call yetaptmassplot0(plZm,dsig,'lep-')
c$$$               call yetaptmassplot0(pnu,dsig,'neut')
c$$$            elseif (nwz.eq.-1) then
c$$$               call yetaptmassplot0(plZm,dsig,'lep-')
c$$$               call yetaptmassplot0(plW,dsig,'lep-')
c$$$               call yetaptmassplot0(plZp,dsig,'lep+')
c$$$               call yetaptmassplot0(pnu,dsig,'antineut')
c$$$            endif
c$$$         else
c$$$            call yetaptmassplot0(plZp,dsig,'lep1+')
c$$$            call yetaptmassplot0(plZm,dsig,'lep1-')
c$$$            if (nwz.eq.1) then
c$$$               call yetaptmassplot0(plW,dsig,'lep2+')
c$$$               call yetaptmassplot0(pnu,dsig,'neut')
c$$$            elseif (nwz.eq.-1) then
c$$$               call yetaptmassplot0(plW,dsig,'lep2-')
c$$$               call yetaptmassplot0(pnu,dsig,'antineut')
c$$$            endif
c$$$         endif
c$$$
c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            if (nwz.eq.1) then
c$$$               call yetaptmassplot(plZp+plZm,dsig,'lep+lep-')
c$$$               call yetaptmassplot(plW+plZm,dsig,'lep+lep-')
c$$$               call yetaptmassplot(plZp+pnu,dsig,'lep+neut')
c$$$               call yetaptmassplot(plW+pnu,dsig,'lep+neut')
c$$$               call yetaptmassplot(plZm+pnu,dsig,'lep-neut')
c$$$            elseif (nwz.eq.-1) then
c$$$               call yetaptmassplot(plZp+plZm,dsig,'lep+lep-')
c$$$               call yetaptmassplot(plZp+plW,dsig,'lep+lep-')
c$$$               call yetaptmassplot(plZp+pnu,dsig,'lep+antineut')
c$$$               call yetaptmassplot(plZm+pnu,dsig,'lep-antineut')
c$$$               call yetaptmassplot(plW+pnu,dsig,'lep-antineut')
c$$$            endif
c$$$         else
c$$$            call yetaptmassplot(plZp+plZm,dsig,'lep1+lep1-')
c$$$            if (nwz.eq.1) then
c$$$               call yetaptmassplot(plZp+plW,dsig,'lep1+lep2+')
c$$$               call yetaptmassplot(plZm+plW,dsig,'lep1-lep2+')
c$$$               call yetaptmassplot(plZp+pnu,dsig,'lep1+neut')
c$$$               call yetaptmassplot(plZm+pnu,dsig,'lep1-neut')
c$$$               call yetaptmassplot(plW+pnu,dsig,'lep2+neut')
c$$$            elseif (nwz.eq.-1) then
c$$$               call yetaptmassplot(plZp+plW,dsig,'lep1+lep2-')
c$$$               call yetaptmassplot(plZm+plW,dsig,'lep1-lep2-')
c$$$               call yetaptmassplot(plZp+pnu,dsig,'lep1+antineut')
c$$$               call yetaptmassplot(plZm+pnu,dsig,'lep1-antineut')
c$$$               call yetaptmassplot(plW+pnu,dsig,'lep2-antineut')
c$$$            endif
c$$$         endif
c$$$
c$$$         if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$            if (nwz.eq.1) then
c$$$               call deltaplot(plZp,plZm,dsig,'lep+lep-')
c$$$               call deltaplot(plW,plZm,dsig,'lep+lep-')
c$$$               call deltaplot(plZp,pnu,dsig,'lep+neut')
c$$$               call deltaplot(plW,pnu,dsig,'lep+neut')
c$$$               call deltaplot(plZm,pnu,dsig,'lep-neut')
c$$$            elseif (nwz.eq.-1) then
c$$$               call deltaplot(plZp,plZm,dsig,'lep+lep-')
c$$$               call deltaplot(plZp,plW,dsig,'lep+lep-')
c$$$               call deltaplot(plZp,pnu,dsig,'lep+antineut')
c$$$               call deltaplot(plZm,pnu,dsig,'lep-antineut')
c$$$               call deltaplot(plW,pnu,dsig,'lep-antineut')
c$$$            endif
c$$$         else
c$$$            call deltaplot(plZp,plZm,dsig,'lep1+lep1-')
c$$$            if (nwz.eq.1) then
c$$$               call deltaplot(plZp,plW,dsig,'lep1+lep2+')
c$$$               call deltaplot(plZm,plW,dsig,'lep1-lep2+')
c$$$               call deltaplot(plZp,pnu,dsig,'lep1+neut')
c$$$               call deltaplot(plZm,pnu,dsig,'lep1-neut')
c$$$               call deltaplot(plW,pnu,dsig,'lep2+neut')
c$$$            elseif (nwz.eq.-1) then
c$$$               call deltaplot(plZp,plW,dsig,'lep1+lep2-')
c$$$               call deltaplot(plZm,plW,dsig,'lep1-lep2-')
c$$$               call deltaplot(plZp,pnu,dsig,'lep1+antineut')
c$$$               call deltaplot(plZm,pnu,dsig,'lep1-antineut')
c$$$               call deltaplot(plW,pnu,dsig,'lep2-antineut')
c$$$            endif
c$$$         endif

      endif
      
c--   Now begin the cuts and the filling of the histograms
ccccccccccccccccccccccccccccc applying cuts ccccccccccccccccccccccccccccccccccccc--Modified by Julien&Sally
      failcut = .false.

c     These are the kinematical variables of leptons coming from the Z
      call getyetaptmass(plZp,y1,eta1,pt1,m1)
      call getyetaptmass(plZm,y2,eta2,pt2,m2)
c     kinematical variables of the charged lepton from the W
      call getyetaptmass(plW,yw,etaw,ptw,m1)
c     pTmiss
      call getyetaptmass(pnu,ydum,etadum,met,m1)
c     mll from Z
      call getyetaptmass(plZp+plZm,ydum,etadum,ptdum,mll)


c     cut new from Sep. 2019 to study the pt(Z)>400 GeV region (Julien)
      if(ptdum.lt.400d0) failcut = .true.
c

c     search for leading and sub-leading pT amongst the leptons coming from the Z
      if(pt1.gt.pt2) then
         ptlead = pt1
         ptsub = pt2
         ylead = y1
         ysub = y2
         etalead = eta1
         etasub = eta2
         call getdydetadphidr(plW,plZp,dy,deta,delphi,delrZ1W)
         call getdydetadphidr(plW,plZm,dy,deta,delphi,delrZ2W)
      else
         ptlead = pt2
         ptsub = pt1
         ylead = y2
         ysub = y1
         etalead = eta2
         etasub = eta1
         call getdydetadphidr(plW,plZm,dy,deta,delphi,delrZ1W)
         call getdydetadphidr(plW,plZp,dy,deta,delphi,delrZ2W)
      endif
      call getdydetadphidr(plZp,plZm,dy,deta,delphi,delrZ)
c     mlll variable
      call getyetaptmass(plZm+plZp+plW,ydum,etadum,ptdum,mlll)

c     cut on pTmiss
      if(met.lt.etmisscut) failcut = .true.

c     mll within range of MZ 
      mllcut_up=(zmass-mllcut)+zmass
      if(mll.lt.mllcut) failcut = .true.
c      if (mll.gt.mllcut_up) failcut=.true.
      if(mll.gt.mllcut2) failcut = .true.

c     cut on leptons from Z
      if(ptlead.lt.ptlepcut1.or.dabs(ylead).gt.ylepcut1) then
         failcut = .true.
      endif
      if(ptsub.lt.ptlepcut2.or.dabs(ysub).gt.ylepcut2) then
         failcut = .true.
      endif

c     cut on charged lepton from W
      if(ptw.lt.ptlepcutW.or.dabs(yw).gt.ylepcutW) then
         failcut = .true.
      endif

c     delR cuts
      if(delrZ.lt.delrZcut) failcut = .true.
      if(delrZ1W.lt.delrZ1Wcut) failcut = .true.
      if(delrZ2W.lt.delrZ2Wcut) failcut = .true.

c     m(lll) cut
      if(mlll.lt.mlllcut) failcut = .true.

c     mtw cut
      call getdydetadphidr(plW,pnu,dy,deta,delphi,dr)
      mtwsq=2*ptw*met*(1d0-dcos(delphi))
      mtw=dsqrt(mtwsq)
c      mtwsq=dsqrt((ptw+ptnu)**2
c     c     -(plW(1)**2+pnu(1)**2)
c     c     -(plW(2)**2+pnu(2)**2))
      if(mtw.lt.mtwcut) failcut = .true.


c     jet cut
      if(jetveto.eq.1.and.mjets.ne.0) then
         do i=1,mjets
            if(ktj(i).gt.ptjetcut.and.
     .           dabs(rapj(i)).lt.yjetcut) then
               failcut = .true.
            endif
         enddo
      endif

c     jet cut specific to CMS analysis
c$$$      do i=1,mjets
c$$$         
c$$$         call getdydetadphidr(plZp,pj(1:4,j),dy,deta,delphi,dr)
c$$$         if(dr.lt.0.5) failcut = .true.
c$$$         call getdydetadphidr(plZm,pj(1:4,j),dy,deta,delphi,dr)
c$$$         if(dr.lt.0.5) failcut = .true.
c$$$         call getdydetadphidr(plW,pj(1:4,j),dy,deta,delphi,dr)
c$$$         if(dr.lt.0.5) failcut = .true.
c$$$      enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      if(cutflag.eq.1.or.cutflag.eq.2) then
         if(cutflag.eq.1.and.failcut) then
            return
         else
            if(.not.failcut) then
               call filld('totalcut',0.5d0,dsig)

c               call leadinglepptplotcuts(palp1,plep2,dsig)
c               call subleadinglepptplotcuts(palp1,plep2,dsig)
c               call filld('m_ll_cut',mll,dsig)


c     sally plots
               call ptzllplotcuts(plZp,plZm,dsig)
               call mtwzplotcuts(pnu,plZp,plZm,plW,dsig)
               call mwzplotcuts(pnu,plZp,plZm,plW,dsig)

c     fill the histograms for cos(theta*) and phi* for W and Z
         call filld('costh_star_W_cut',c_theta_star_W,dsig)
         call filld('costh_star_Z_cut',c_theta_star_Z,dsig)
         call filld('phi_star_W_cut',phi_star_W,dsig)
         call filld('phi_star_Z_cut',phi_star_Z,dsig)

c
c$$$               if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$                  if(nwz.eq.1) then
c$$$                     call yetaptmassplot0(plZp,dsig,'lep+_cut')
c$$$                     call yetaptmassplot0(plW,dsig,'lep+_cut')
c$$$                     call yetaptmassplot0(plZm,dsig,'lep-_cut')
c$$$                     call yetaptmassplot0(pnu,dsig,'neut_cut')
c$$$                  else
c$$$                     call yetaptmassplot0(plZm,dsig,'lep-_cut')
c$$$                     call yetaptmassplot0(plW,dsig,'lep-_cut')
c$$$                     call yetaptmassplot0(plZp,dsig,'lep+_cut')
c$$$                     call yetaptmassplot0(pnu,dsig,'antineut_cut')
c$$$                  endif
c$$$               else
c$$$                  call yetaptmassplot0(plZp,dsig,'lep1+_cut')
c$$$                  call yetaptmassplot0(plZm,dsig,'lep1-_cut')
c$$$                  if(nwz.eq.1) then
c$$$                     call yetaptmassplot0(plW,dsig,'lep2+_cut')
c$$$                     call yetaptmassplot0(pnu,dsig,'neut_cut')
c$$$                  else
c$$$                     call yetaptmassplot0(plW,dsig,'lep2-_cut')
c$$$                     call yetaptmassplot0(pnu,dsig,'antineut_cut')
c$$$                  endif
c$$$               endif
c$$$               
c$$$               if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$                  if(nwz.eq.1) then
c$$$                     call yetaptmassplot(plZp+plZm,dsig,'lep+lep-_cut')
c$$$                     call yetaptmassplot(plW+plZm,dsig,'lep+lep-_cut')
c$$$                     call yetaptmassplot(plZp+pnu,dsig,'lep+neut_cut')
c$$$                     call yetaptmassplot(plW+pnu,dsig,'lep+neut_cut')
c$$$                     call yetaptmassplot(plZm+pnu,dsig,'lep-neut_cut')
c$$$                  else
c$$$                     call yetaptmassplot(plZp+plZm,dsig,'lep+lep-_cut')
c$$$                     call yetaptmassplot(plZp+plW,dsig,'lep+lep-_cut')
c$$$                     call
c$$$     &                 yetaptmassplot(plZp+pnu,dsig,'lep+antineut_cut')
c$$$                     call
c$$$     &                 yetaptmassplot(plZm+pnu,dsig,'lep-antineut_cut')
c$$$                     call
c$$$     &                 yetaptmassplot(plW+pnu,dsig,'lep-antineut_cut')
c$$$                  endif
c$$$               else
c$$$                  call yetaptmassplot(plZp+plZm,dsig,'lep1+lep1-_cut')
c$$$                  if(nwz.eq.1) then
c$$$                     call yetaptmassplot(plZp+plW,dsig,'lep1+lep2+_cut')
c$$$                     call yetaptmassplot(plZm+plW,dsig,'lep1-lep2+_cut')
c$$$                     call yetaptmassplot(plZp+pnu,dsig,'lep1+neut_cut')
c$$$                     call yetaptmassplot(plZm+pnu,dsig,'lep1-neut_cut')
c$$$                     call yetaptmassplot(plW+pnu,dsig,'lep2+neut_cut')
c$$$                  else
c$$$                     call yetaptmassplot(plZp+plW,dsig,'lep1+lep2-_cut')
c$$$                     call yetaptmassplot(plZm+plW,dsig,'lep1-lep2-_cut')
c$$$                     call
c$$$     &                 yetaptmassplot(plZp+pnu,dsig,'lep1+antineut_cut')
c$$$                     call
c$$$     &                 yetaptmassplot(plZm+pnu,dsig,'lep1-antineut_cut')
c$$$                     call
c$$$     &                 yetaptmassplot(plW+pnu,dsig,'lep2-antineut_cut')
c$$$                  endif
c$$$               endif
c$$$
c$$$               if (abs(vdecaymodeW).eq.abs(vdecaymodeZ)) then
c$$$                  if(nwz.eq.1) then
c$$$                     call deltaplot(plZp,plZm,dsig,'lep+lep-_cut')
c$$$                     call deltaplot(plW,plZm,dsig,'lep+lep-_cut')
c$$$                     call deltaplot(plZp,pnu,dsig,'lep+neut_cut')
c$$$                     call deltaplot(plW,pnu,dsig,'lep+neut_cut')
c$$$                     call deltaplot(plZm,pnu,dsig,'lep-neut_cut')
c$$$                  else
c$$$                     call deltaplot(plZp,plZm,dsig,'lep+lep-_cut')
c$$$                     call deltaplot(plZp,plW,dsig,'lep+lep-_cut')
c$$$                     call deltaplot(plZp,pnu,dsig,'lep+antineut_cut')
c$$$                     call deltaplot(plZm,pnu,dsig,'lep-antineut_cut')
c$$$                     call deltaplot(plW,pnu,dsig,'lep-antineut_cut')
c$$$                  endif
c$$$               else
c$$$                  call deltaplot(plZp,plZm,dsig,'lep1+lep1-_cut')
c$$$                  if(nwz.eq.1) then
c$$$                     call deltaplot(plZp,plW,dsig,'lep1+lep2+_cut')
c$$$                     call deltaplot(plZm,plW,dsig,'lep1-lep2+_cut')
c$$$                     call deltaplot(plZp,pnu,dsig,'lep1+neut_cut')
c$$$                     call deltaplot(plZm,pnu,dsig,'lep1-neut_cut')
c$$$                     call deltaplot(plW,pnu,dsig,'lep2+neut_cut')
c$$$                  else
c$$$                     call deltaplot(plZp,plW,dsig,'lep1+lep2-_cut')
c$$$                     call deltaplot(plZm,plW,dsig,'lep1-lep2-_cut')
c$$$                     call deltaplot(plZp,pnu,dsig,'lep1+antineut_cut')
c$$$                     call deltaplot(plZm,pnu,dsig,'lep1-antineut_cut')
c$$$                     call deltaplot(plW,pnu,dsig,'lep2-antineut_cut')
c$$$                  endif
c$$$               endif
               
            endif
c--   end filling histograms after cuts
         endif
      endif
      end

c--   julien new
      subroutine leadinglepptplot(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.gt.pt) pt=pt2
      call filld('leadlep_pt',pt,dsig)
      end
c--   end julien


c--   sally new
c     This is P_T(Z->ll) 
      subroutine ptzllplot(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision ptz
      call getyetaptmass(p1+p2,y1,eta1,ptz,m1)
      call filld('pt_Z',ptz,dsig)
      end


c     This is MT_WZ                                                                                                
      subroutine mtwzplot(p1,p2,p3,p4,dsig)
      implicit none
      double precision p1(4),p2(4),p3(4),p4(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision pt3,pt4, pt2
      double precision mtwz,mtwzsq,etmiss
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y1,eta1,pt2,m1)
      call getyetaptmass(p3,y1,eta1,pt3,m1)
      call getyetaptmass(p4,y1,eta1,pt4,m1)
      mtwzsq=(pt1+pt2+pt3+pt4)**2
     c     -(p1(1)+p2(1)+p3(1)+p4(1))**2
     c     -(p1(2)+p2(2)+p3(2)+p4(2))**2
      mtwz=dsqrt(mtwzsq)
      call filld('MT_WZ',mtwz,dsig)
      end

c     This is M_WZ                                                                                                
      subroutine mwzplot(p1,p2,p3,p4,dsig)
      implicit none
      double precision p1(4),p2(4),p3(4),p4(4),dsig(*)
      double precision mwz,mwzsq
      mwzsq=(p1(4)+p2(4)+p3(4)+p4(4))**2
     c     -(p1(1)+p2(1)+p3(1)+p4(1))**2
     c     -(p1(2)+p2(2)+p3(2)+p4(2))**2
     c     -(p1(3)+p2(3)+p3(3)+p4(3))**2
      mwz=dsqrt(mwzsq)
      call filld('M_WZ',mwz,dsig)
      end



c--   end sally                                                                



c--   julien new
      subroutine subleadinglepptplot(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.lt.pt) pt=pt2
      call filld('subleadlep_pt',pt,dsig)
      end
c--   end julien

c--   sally new
c     This is p_T(Z-> ll) with cuts
      subroutine ptzllplotcuts(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision ptz
      call getyetaptmass(p1+p2,y1,eta1,ptz,m1)
      call filld('pt_Z_cut',ptz,dsig)
      end

c     This is MT_WZ with cuts
      subroutine mtwzplotcuts(p1,p2,p3,p4,dsig)
      implicit none
      double precision p1(4),p2(4),p3(4),p4(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision pt3,pt4, pt2
      double precision mtwz,mtwzsq,etmiss
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y1,eta1,pt2,m1)
      call getyetaptmass(p3,y1,eta1,pt3,m1)
      call getyetaptmass(p4,y1,eta1,pt4,m1)
      mtwzsq=(pt1+pt2+pt3+pt4)**2
     c     -(p1(1)+p2(1)+p3(1)+p4(1))**2
     c     -(p1(2)+p2(2)+p3(2)+p4(2))**2
      mtwz=dsqrt(mtwzsq)
      call filld('MT_WZ_cut',mtwz,dsig)
      end

c     This is M_WZ with cuts
      subroutine mwzplotcuts(p1,p2,p3,p4,dsig)
      implicit none
      double precision p1(4),p2(4),p3(4),p4(4),dsig(*)
      double precision mwz,mwzsq
      mwzsq=(p1(4)+p2(4)+p3(4)+p4(4))**2
     c     -(p1(1)+p2(1)+p3(1)+p4(1))**2
     c     -(p1(2)+p2(2)+p3(2)+p4(2))**2
     c     -(p1(3)+p2(3)+p3(3)+p4(3))**2
      mwz=dsqrt(mwzsq)
      call filld('M_WZ_cut',mwz,dsig)
      end
c--   end sally

c--   julien new                                                                                                        
      subroutine leadinglepptplotcuts(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.gt.pt) pt=pt2
      call filld('leadlep_cut_pt',pt,dsig)
      end
c--   end julien                                                                                                        

      subroutine subleadinglepptplotcuts(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.lt.pt) pt=pt2
      call filld('subleadlep_cut_pt',pt,dsig)
      end
c--   end julien

      subroutine yetaptmassplot(p,dsig,prefix)
      implicit none
      double precision p(4),dsig(*)
      character *(*) prefix
      double precision y,eta,pt,m
      call getyetaptmass(p,y,eta,pt,m)
      call filld(prefix//'_y',y,dsig)
      call filld(prefix//'_eta',eta,dsig)
      call filld(prefix//'_pt',pt,dsig)
      call filld(prefix//'_m',m,dsig)
      end

      subroutine yetaptmassplot0(p,dsig,prefix)
      implicit none
      double precision p(4),dsig(*)
      character *(*) prefix
      double precision y,eta,pt,m
      call getyetaptmass(p,y,eta,pt,m)
      call filld(prefix//'_y',y,dsig)
      call filld(prefix//'_eta',eta,dsig)
      call filld(prefix//'_pt',pt,dsig)
      end

      subroutine deltaplot(p1,p2,dsig,prefix)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      character *(*) prefix
      double precision dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
c      call filld(prefix//'_dy',dy,dsig)
c      call filld(prefix//'_deta',deta,dsig)
      call filld(prefix//'_delphi',delphi,dsig)
      call filld(prefix//'_dr',dr,dsig)
      end


      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      double precision p(4),y,eta,pt,mass,pv
      real *8 tiny
      parameter (tiny=1.d-5)
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(4)**2-pv**2))
      end

      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
#include "pwhg_math.h"
      double precision p1(*),p2(*),dy,deta,dphi,dr
      double precision y1,eta1,pt1,mass1,phi1
      double precision y2,eta2,pt2,mass2,phi2
      call getyetaptmass(p1,y1,eta1,pt1,mass1)
      call getyetaptmass(p2,y2,eta2,pt2,mass2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(deta**2+dphi**2)
      end

      subroutine getrapidity(p,y)
      implicit none
      double precision p(0:3),y
      y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end

      subroutine getinvmass(p,m)
      implicit none
      double precision p(0:3),m
      m=sqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end

      subroutine get_pseudorap(p,eta)
      implicit none
      double precision p(0:3),eta,pt,th
      double precision tiny
      parameter (tiny=1.d-5)

      pt=sqrt(p(1)**2+p(2)**2)
      if(pt.lt.tiny.and.abs(p(3)).lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      elseif(pt.lt.tiny) then   !: added this elseif
         eta=sign(1.d0,p(3))*1.d8
      else
         th=atan2(pt,p(3))
         eta=-log(tan(th/2.d0))
      endif
      end



      subroutine buildjets(iflag,mjets,rr,kt,eta,rap,phi,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      double precision  rr,kt(*),eta(*),rap(*),
     &     phi(*),pjet(4,*)
#include "hepevt.h"
#include "LesHouches.h"
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      double precision  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb
      double precision r,palg,ptmin,pp,tmp
      logical islepton,isnu
      external islepton,isnu
C - Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
         jetvec(j)=0
      enddo      
      ntracks=0
      do j=1,maxjet
         do mu=1,4
            pjet(mu,j)=0d0
            pj(mu,j)=0d0
         enddo
      enddo
      if(iflag.eq.1) then
C     - Extract final state particles to feed to jet finder
         do j=1,nhep
            if (isthep(j).eq.1.and.(abs(idhep(j)).le.5.or.
     .            abs(idhep(j)).eq.21)) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               do mu=1,4
                  ptrack(mu,ntracks)=phep(mu,j)
               enddo
               itrackhep(ntracks)=j
            endif
         enddo
      else
         do j=1,nup
            if (istup(j).eq.1.and..not.islepton(idup(j))) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               do mu=1,4
                  ptrack(mu,ntracks)=pup(mu,j)
               enddo
               itrackhep(ntracks)=j
            endif
         enddo
      endif
      if (ntracks.eq.0) then
         mjets=0
         return
      endif
C --------------------------------------------------------------------- C
C - Inclusive jet pT and Y spectra are to be compared to CDF data:    - C    
C --------------------------------------------------------------------- C
C     R = 0.7   radius parameter
C     f = 0.75  overlapping fraction
c palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
      ptmin=1d0 
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,
     $                        jetvec)
      mjets=njets
      if(njets.eq.0) return
c check consistency
      do k=1,ntracks
         if(jetvec(k).gt.0) then
            do mu=1,4
               pj(mu,jetvec(k))=pj(mu,jetvec(k))+ptrack(mu,k)
            enddo
         endif
      enddo
      tmp=0
      do j=1,mjets
         do mu=1,4
            tmp=tmp+abs(pj(mu,j)-pjet(mu,j))
         enddo
      enddo
      if(tmp.gt.1d-4) then
         write(*,*) ' bug!'
      endif
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,mjets
         kt(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)
         pp = sqrt(kt(j)**2+pjet(3,j)**2)
         eta(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         rap(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      end

      subroutine sortbypt(n,iarr)
      implicit none
      integer n,iarr(n)
#include "hepevt.h"
      integer j,k
      double precision tmp,pt(nmxhep)
      logical touched
      do j=1,n
         pt(j)=sqrt(phep(1,iarr(j))**2+phep(2,iarr(j))**2)
      enddo
c bubble sort
      touched=.true.
      do while(touched)
         touched=.false.
         do j=1,n-1
            if(pt(j).lt.pt(j+1)) then
               k=iarr(j)
               iarr(j)=iarr(j+1)
               iarr(j+1)=k
               tmp=pt(j)
               pt(j)=pt(j+1)
               pt(j+1)=tmp
               touched=.true.
            endif
         enddo
      enddo
      end

