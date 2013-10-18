      double precision function atanplus(s)
      implicit none
      double precision s
      double precision mass2,mgamma,lam2,cfac,atanplus0,smin
      common/catanplus/mass2,mgamma,lam2,cfac,atanplus0
      atanplus = atan((s-mass2)/mgamma)/mgamma-cfac/(s+lam2)-atanplus0
      end


      subroutine breitplusgam(x,smin,smax,mass,width,lam,fac,s,wt)
      implicit none
      double precision x,smin,smax,mass,width,lam,fac,s,wt,err
      double precision atanplus,zmin,zmax,z
      double precision mass2,mgamma,lam2,cfac,atanplus0
      common/catanplus/mass2,mgamma,lam2,cfac,atanplus0
      external atanplus
      cfac = fac
      atanplus0 = 0
      mass2 = mass**2
      mgamma = mass * width
      lam2 = lam**2
      zmin = atanplus(smin)
      zmax = atanplus(smax)
      atanplus0 = zmin + (zmax-zmin) * x
      wt = zmax - zmin
      call dzero(smin,smax,s,err,1d-8,1000000,atanplus)
      wt = wt / ( 1/( (s-mass2)**2 + mgamma**2 ) + cfac/(s+lam2)**2 )
      end
