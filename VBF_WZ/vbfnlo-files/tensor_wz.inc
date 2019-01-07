c  lepton spinors and polarization vectors
c
c  precalculated lepton tensors for WZ --> l v l' lbar' 
c	always write we (zu) for the W (Z) which goes to e ve (mu+mu-)

c helicity identifiers for decay leptons
      integer hmin_global,hmax_global,hstep_global
      parameter(hmin_global=1,hmax_global=2,hstep_global=1)

c
c  lepton spinors and V polarization vectors:

      double complex wl(6,hmin_global:hmax_global),wn(6,hmin_global:hmax_global),
     &	             lp(6,hmin_global:hmax_global),lm(6,hmin_global:hmax_global)
      common /lspinor/  wl,wn,lp,lm
      
      integer ie,iu
      
      double complex we(6,hmin_global:hmax_global),au(6,hmin_global:hmax_global),
     &	             zu(6,hmin_global:hmax_global),xxew, xxua,xxuz,
     # 		     wet(6,hmin_global:hmax_global),zut(6,hmin_global:hmax_global),
     &		     aut(6,hmin_global:hmax_global)
      double precision qe(0:4), qu(0:4)
      common /wzspinor/ we,au,zu,qe,qu,wet,zut,aut,xxew, xxua,xxuz

c
c  leptonic tensors
      double complex zwwv(0:3,0:3,3,hmin_global:hmax_global),
     #	             awwv(0:3,0:3,3,hmin_global:hmax_global),
     #		     wzwv(0:3,0:3,3,hmin_global:hmax_global),
     #	             wawv(0:3,0:3,3,hmin_global:hmax_global),
     #		     aauu(0:3,0:3,2,3,hmin_global:hmax_global),
     #	             azuu(0:3,0:3,2,3,hmin_global:hmax_global),
     #		     zauu(0:3,0:3,2,3,hmin_global:hmax_global),
     #	             zzuu(0:3,0:3,2,3,hmin_global:hmax_global),
     #		     wwuu(0:3,0:3,2,3,hmin_global:hmax_global),
     #		     awen(0:3,0:3,2,3,hmin_global:hmax_global),
     #	             zwen(0:3,0:3,2,3,hmin_global:hmax_global),
     #		     waen(0:3,0:3,2,3,hmin_global:hmax_global),
     #	             wzen(0:3,0:3,2,3,hmin_global:hmax_global),
     #		     wwv(0:5,hmin_global:hmax_global)
      logical lws(8)
      common /tenswz/ zwwv,awwv,wzwv,wawv,
     #		     aauu,azuu,zauu,zzuu,wwuu,
     #		     awen,zwen,waen,wzen,wwv,
     #		     lws

c for testing purposes
c      double complex tampw,tampwr
c      integer ipw,ipwr,isw1,isw3
c      double complex tampm,tampmr
c      integer ipm,ipmr,ism1,ism3
c      common /wpztest/ tampw(300,-1:1,-1:1,6), ipw
c      common /wpzrtest/ tampwr(2000,-1:1,-1:1,-1:1,6), ipwr
c      common /wmztest/ tampm(300,-1:1,-1:1,6), ipm
c      common /wmzrtest/ tampmr(2000,-1:1,-1:1,-1:1,6), ipmr
