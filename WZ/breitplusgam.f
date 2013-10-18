      double precision function atanplus(s)
      implicit none
      double precision s
      double precision mass2,mgamma,atanplus0
      common/catanplus/mass2,mgamma,atanplus0
      atanplus = atan((s-mass2)/mgamma)-1/s-atanplus0
      end


      subroutine breitplusgam(x,smin,smax,mass,width,s,wt)
      implicit none
      double precision x,smin,smax,mass,width,s,wt,err
      double precision atanplus,zmin,zmax,z
      double precision mass2,mgamma,atanplus0
      common/catanplus/mass2,mgamma,atanplus0
      external atanplus
      atanplus0 = 0
      mass2 = mass**2
      mgamma = mass * width
      zmin = atanplus(smin)
      zmax = atanplus(smax)
      atanplus0 = zmin + (zmax-zmin) * x
      wt = zmax - zmin
      call dzero(smin,smax,s,err,1d-8,1000000,atanplus)
      wt = wt / ( mgamma/( (s-mass2)**2 + mgamma**2 ) + 1/s**2 )
      end
