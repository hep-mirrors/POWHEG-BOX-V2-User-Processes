      subroutine ktmerge(ppi,ppj,pr)
      include 'pwhg_math.h'
      implicit none
c
      real*8 ppi(0:3),ppj(0:3),pr(0:3)
c
      real*8 pti,ptj,ptr
      real*8 yi,yj,yr
      real*8 phii,phij,phir
c
      real*8 wi,wj
c
      real*8 pwhg_rapidity,pwhg_azi
      external pwhg_rapidity,pwhg_azi
c
c We calculate kt's, y's and azimuths:
      pti = sqrt(ppi(1)**2 + ppi(2)**2)
      ptj = sqrt(ppj(1)**2 + ppj(2)**2)
      yi = pwhg_rapidity(ppi)
      yj = pwhg_rapidity(ppj)
      phii = pwhg_azi(ppi)
      phij = pwhg_azi(ppj)
c
c We construct the new momentum:
      wi = pti
      wj = ptj
c
      ptr = pti + ptj
      phir = (wi*phii + wj*phij)/(wi + wj)
      yr = (wi*yi + wj*yj)/(wi + wj)
c
c The azimuthal angle should be between 0 and pi:
      if (phir.gt.pi) phir = phir - pi
c
c Going back to Cartesian coordinates:
      pr(0) = ptr/2d0*(exp(yr) + exp(-yr))
      pr(3) = ptr/2d0*(exp(yr) - exp(-yr))
      pr(1) = cos(phir)
      pr(2) = sin(phir)
c
      end subroutine ktmerge
