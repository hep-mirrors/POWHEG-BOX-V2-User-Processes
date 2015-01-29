      double precision xn,xnsq,xn4,v,tr,Von4,ninth,Ncinv
*      double precision cf,Nc,ca
*      parameter(cf=4d0/3d0,ca=3d0,xn=3d0,Nc=3d0,xnsq=9d0,V=8d0,tr=0.5d0)
      parameter(xn=3d0,xnsq=9d0,V=8d0,tr=0.5d0)
      parameter(Von4=2d0,ninth=1d0/9d0,xn4=xnsq-4d0,Ncinv=1d0/3d0)
      double precision spinave,aveqq,aveqg,avegg
      parameter(spinave=0.25d0)
      parameter(aveqq=0.25d0/xnsq,aveqg=0.25d0/xn/V,avegg=0.25d0/V**2)

