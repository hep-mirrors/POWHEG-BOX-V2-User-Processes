c -*- fortran -*-
      double precision cmpborn_os(0:3,nlegborn)
      double precision cmpreal_os(0:3,nlegreal)
      double precision pborn_os(0:3,nlegborn)
      double precision preal_os(0:3,nlegreal)
      double precision lo_gamma_corr
      logical offshelltop,mockoffshelltop,reweightbymg,doubleresonant
      common/conshellmap/cmpborn_os,cmpreal_os,pborn_os,preal_os,
     1     offshelltop,mockoffshelltop,reweightbymg,doubleresonant,
     2     lo_gamma_corr
      integer fmad(-5:5)
      data fmad/-1,-2,-1,-2,-1,0,1,2,1,2,1/

