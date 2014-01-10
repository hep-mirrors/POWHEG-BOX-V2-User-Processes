c  precalculated lepton tensors for ZZ --> l lbar l' lbar' 
c	always write ze (zu) for the Z which goes to e+e- (mu+mu-)
c
c
c helicity identifiers for decay leptons
      integer hmin_global,hmax_global,hstep_global
      parameter(hmin_global=1,hmax_global=4,hstep_global=1)

c  lepton spinors and Z polarization vectors:

      double complex lep(6,hmin_global:hmax_global),lem(6,hmin_global:hmax_global),
     &               lup(6,hmin_global:hmax_global),lum(6,hmin_global:hmax_global)
      common /lspinor/ lep,lem,lup,lum
      
c      integer ie,iu
      
      double complex zep,zem,zup,zum,ze,zu,ae,au,xxea,xxua,
     &		     xxez,xxuz,zet,zut,aet,aut
      double precision qe, qu

      common /zemspinor/ ze(6,hmin_global:hmax_global), zu(6,hmin_global:hmax_global), 
     &                   ae(6,hmin_global:hmax_global), au(6,hmin_global:hmax_global), 
     &                   qe(0:4), qu(0:4),
     &                   xxea, xxua ,xxez, xxuz,
     &                   zet(6,hmin_global:hmax_global),zut(6,hmin_global:hmax_global),
     &                   aet(6,hmin_global:hmax_global),aut(6,hmin_global:hmax_global)

c  leptonic tensors:
      double complex aazz,azzz,zazz,zzzz,wwzz5,wwzz6, 
     &		 aaee,azee,zaee,zzee,aauu,azuu,zauu,zzuu,
     &		 CCee, CCuu, CCee6, CCuu6,
     &		 azz,zzz
      logical lzs
      common /tenszz/
     &     aazz(0:3,0:3,3,hmin_global:hmax_global),azzz(0:3,0:3,3,hmin_global:hmax_global),
     &     zazz(0:3,0:3,3,hmin_global:hmax_global),zzzz(0:3,0:3,3,hmin_global:hmax_global),
     &     wwzz5(0:3,0:3,3,hmin_global:hmax_global),
     &     wwzz6(0:3,0:3,3,hmin_global:hmax_global),
     &	   aaee(0:3,0:3,2,3,hmin_global:hmax_global),
     &     azee(0:3,0:3,2,3,hmin_global:hmax_global),
     &	   zaee(0:3,0:3,2,3,hmin_global:hmax_global),
     &     zzee(0:3,0:3,2,3,hmin_global:hmax_global),
     &	   aauu(0:3,0:3,2,3,hmin_global:hmax_global),
     &     azuu(0:3,0:3,2,3,hmin_global:hmax_global),
     &     zauu(0:3,0:3,2,3,hmin_global:hmax_global),
     &     zzuu(0:3,0:3,2,3,hmin_global:hmax_global),
     &     CCee(0:3,0:3,2,3,hmin_global:hmax_global), 
     &     CCuu(0:3,0:3,2,3,hmin_global:hmax_global),
     &     CCee6(0:3,0:3,2,3,hmin_global:hmax_global),
     &     CCuu6(0:3,0:3,2,3,hmin_global:hmax_global),
     &     azz(0:5,hmin_global:hmax_global),zzz(0:5,hmin_global:hmax_global),
     &	   lzs(4)



cc  lzs remembers whether or not an fsign combination needs to be calculated 
cc     lzs(1) = .false.      fsign(1)=fsign(2) = -1 has been calcd and stored
cc     lzs(2) = .false.      fsign(1)=fsign(2) = +1 has been calcd and stored
cc     lzs(3) = .false.      fsign(3)=fsign(4) = -1 has been calcd and stored
cc     lzs(4) = .false.      fsign(3)=fsign(4) = +1 has been calcd and stored
cc lzs(1,+1) to lzs(4,+1) are for gsign=+1 (outgoing gluon) in case of real emission
cc for incoming gluons use lzs(1,-1) to lzs(4,-1):
cc     lzs(5) = .false.      fsign(1) = -1 fsign(2) = +1 has been calcd ...
cc     lzs(6) = .false.      fsign(1) = +1 fsign(2) = -1 has been calcd ...
cc     lzs(7) = .false.      fsign(3) = -1 fsign(4) = +1 has been calcd ...
cc     lzs(8) = .false.      fsign(3) = +1 fsign(4) = -1 has been calcd ...


c for testing purposes:
      double complex tampz,tamprz,tamprzh
      integer ipz,iprz,isz1,isz3
c      integer is1,is3
c      common /zztest/  tampz(600,-1:1,-1:1,6), ipz
       common /zzrtest/ tamprz(3000,-1:1,-1:1,hmin_global:hmax_global,-1:1,6), iprz
