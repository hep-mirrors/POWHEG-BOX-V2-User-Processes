      subroutine setreal_ew16(p,fermion_flav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
c      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'mathx.h'
      include 'pwhg_physpar.h'
*
      real * 8 p(0:3,nlegreal)
      integer fermion_flav(nlegreal)
      real * 8 amp2
*
      complex * 32 e32_
      external e32_

      real*16 dotp16
      external dotp16
*
      real*8 mlep2
      common/leptmass/mlep2

      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

*
      real*16 qu2,qd2

      real*16 pu(0:3),pd(0:3),pn(0:3),pl(0:3),k(0:3)
      real*16 s,sp

      integer i,j,nu,kkk

      real*16 pupd,pupe,pupn,puk
      real*16 pdpe,pdpn,pdk
      real*16 pnpe,pnk
      real*16 pek
      complex*32 mw2m1,mw2m2,mw2dm1
      complex*32 epupdpek,epupdpnk,epupnpek,epdpnpek,epupdpnpe
      real*16 ml2,deltae

      complex*32 dens,densc,densp,denspc,dens2,densp2
*
      integer ifirst
      data ifirst/0/
      save ifirst,ml2,mw2m1,mw2dm1,mw2m2

c      write(*,*) ' entering real16 '

      if (ifirst.eq.0) then
          ifirst = 1

          ml2 = mlep2*1q0
c
          mw2m1 = 1.q0/(ph_Wmass2 - ii*ph_WmWw)
c
          mw2dm1= conjg(mw2m1)
          mw2m2 = mw2m1*mw2dm1
      endif

      i = fermion_flav(1)
      j = fermion_flav(2)

      if (mod(abs(i),2).eq.0) then
          do nu=0,3
              pu(nu) = p(nu,1)
              pd(nu) = p(nu,2)
          enddo
      else
          do nu=0,3
              pd(nu) = p(nu,1)
              pu(nu) = p(nu,2)
          enddo
      endif

      do nu=0,3
          pl(nu) = p(nu,3)
          pn(nu) = p(nu,4)
          k (nu) = p(nu,5)
      enddo
c adjust quadruple precision momenta to satisfy momentum conservation
c and on mass-shell conditions.
c Momentum conservation:
      pu(1:2) = 0
      pd(1:2) = 0
      pn(1:3) =  pu(1:3)+pd(1:3)-k(1:3)-pl(1:3)
c Mass shell
      k(0)  = sqrt( k(1)**2+ k(2)**2 +k(3)**2)
      pn(0) = sqrt(pn(1)**2+pn(2)**2+pn(3)**2)
      pl(0) = sqrt(pl(1)**2+pl(2)**2+pl(3)**2+ml2)
      pu(0) = abs(pu(3))
      pd(0) = abs(pd(3))
c energy conservation by rescaling final momenta.
c fix electron on mass shell and iterate 4 times
      do kkk=1,4
         deltae = pu(0)+pd(0)-k(0)-pn(0)-pl(0)
         pl = pl*(1+deltae/(pu(0)+pd(0)))
         pn = pn*(1+deltae/(pu(0)+pd(0)))
         k = k*(1+deltae/(pu(0)+pd(0)))
         pl(0) = sqrt(pl(1)**2+pl(2)**2+pl(3)**2+ml2)
      enddo
      deltae = pu(0)+pd(0)-k(0)-pn(0)-pl(0)
c      if(abs(deltae/(pu(0)+pd(0))).gt.1q-30) then
c         write(*,*) ' worry: momentum not conserved!'
c         write(*,*) deltae/(pu(0)+pd(0))
c         call exit(-1)
c      endif
c
      ! CP symmetry for W-
      if (idvecbos.lt.0) then
          call invertspace16(pu,pu)
          call invertspace16(pd,pd)
          call invertspace16(pl,pl)
          call invertspace16(pn,pn)
          call invertspace16(k,k)
      endif

*
      pupd = dotp16(pu,pd)
      pupe = dotp16(pu,pl)
      pupn = dotp16(pu,pn)
      puk  = dotp16(pu,k)
*
      pdpe = dotp16(pd,pl)
      pdpn = dotp16(pd,pn)
      pdk  = dotp16(pd,k)
*
      pnpe = dotp16(pl,pn)
      pnk  = dotp16(pn,k)
*
      pek  = dotp16(pl,k)
*
      epupdpek  = e32_(pu,pd,pl,k)
      epupdpnk  = e32_(pu,pd,pn,k)
      epupnpek  = e32_(pu,pn,pl,k)
      epdpnpek  = e32_(pd,pn,pl,k)
      epupdpnpe = e32_(pu,pd,pn,pl)
*
      s  = 2.q0*pupd
      sp = 2.q0*pnpe + ml2

      dens   = 1q0/(s*cone - ph_Wmass2 + ii*ph_WmWw)
      densc  = conjg(dens)
      densp  = 1q0/(sp*cone - ph_Wmass2 + ii*ph_WmWw)
      denspc = conjg(densp)
      dens2  = dens*densc
      densp2 = densp*denspc
*
      amp2 =        (-4*epupnpek*(densp*puk*qd*
     -        (densc*(2*pdpe - 
     -             ml2*(denspc*mw2dm1*pek*(pdk + pupd) + 
     -                mw2m1*(pdpn - denspc*pek*(pdk + pupd))))
     -            + denspc*ml2*(-mw2dm1 + mw2m1)*pek*qd) + 
     -       dens*puk*(2*densc*(densp - denspc)*pdk*pdpe + 
     -          denspc*ml2*
     -           (densp*mw2m1*pek*(pdk + pupd) + 
     -             mw2dm1*(pdpn - densp*pek*(pdk + pupd)))*qd)
     -         + dens*denspc*pdk*
     -        (ml2*mw2dm1*(pdpe + pdpn) + 
     -          densp*ml2*
     -           (mw2m1*pdk + mw2dm1*(-pdk + pdpe + pdpn))*pek
     -            + 2*densp*pek*(pdpn + pupd))*qu - 
     -       densp*(densc*pdk*
     -           (ml2*mw2m1*(pdpe + pdpn) + 
     -             denspc*ml2*
     -              (mw2dm1*pdk + mw2m1*(-pdk + pdpe + pdpn))*
     -              pek + 2*denspc*pek*(pdpn + pupd)) + 
     -          2*denspc*ml2*(-mw2dm1 + mw2m1)*pek*pupd*qd)*qu
     -       ))/(pdk*pek*puk)
      amp2 = amp2 + 
     -  (4*epdpnpek*(dens*densc*pdk*puk*
     -        (-(denspc*ml2*mw2dm1*puk) + 
     -          densp*ml2*mw2m1*puk - 2*densp*pupe + 
     -          2*denspc*pupe) + 
     -       denspc*puk*(densc*densp*pek*
     -           ((-2 + ml2*mw2m1)*pupe + ml2*mw2m1*pupn) - 
     -          dens*((-2 + densp*(-2 + ml2*mw2dm1)*pek)*
     -              pupe + densp*ml2*mw2dm1*pek*pupn))*qd + 
     -       ml2*(dens*denspc*mw2dm1 - densc*densp*mw2m1)*pdk*
     -        (puk + pupe)*qu + 
     -       densp*denspc*ml2*(-mw2dm1 + mw2m1)*pdk*pek*qu**2)
     -     )/(pdk*pek*puk) + 
     -  (4*epupdpek*(densc*densp*
     -        (-((-2 + ml2*mw2m1)*pdpn*(1 + 2*denspc*pek)) + 
     -          2*(1 + denspc*ml2*mw2m2*(pdpe + pdpn)*pek)*
     -           pnpe)*puk*qd - 
     -       densp*(densc*pdk*
     -           (ml2*mw2m1*pnpe + 
     -             denspc*pek*
     -              (2*pupn + 
     -                ml2*
     -                 (mw2dm1*(pdpn + pnk) + 
     -                   2*mw2m2*pnpe*(pupe + pupn) - 
     -                   mw2m1*(pdpn + pnk + 2*pupn)))) + 
     -          denspc*ml2*(mw2dm1 - mw2m1)*pek*(pdpn - pupn)*
     -           qd)*qu + 
     -       dens*(densc*pdk*puk*
     -           (denspc*((-2 + ml2*mw2dm1)*pdpn - 2*pnpe) + 
     -             densp*
     -              (pdpn*
     -                 (2 - ml2*mw2m1 + 
     -                   2*denspc*ml2*(mw2dm1 - mw2m1)*pek) + 
     -                2*pnpe + 
     -                denspc*ml2*(mw2dm1 - mw2m1)*pek*
     -                 (pnk + pnpe + 2*pupn))) + 
     -          denspc*((-2 + ml2*mw2dm1)*pdpn*
     -              (1 + 2*densp*pek) - 
     -             2*densp*ml2*mw2m2*(pdpe + pdpn)*pek*pnpe)*
     -           puk*qd + 
     -          denspc*pdk*
     -           (ml2*mw2dm1*pnpe + 
     -             densp*pek*
     -              (2*pupn + 
     -                ml2*
     -                 (mw2m1*(pdpn + pnk) + 
     -                   2*mw2m2*pnpe*(pupe + pupn) - 
     -                   mw2dm1*(pdpn + pnk + 2*pupn))))*qu)))
     -    /(pdk*pek*puk) 
      amp2 = amp2 + 
     -  (4*epupdpnpe*(dens*
     -        (densc*pdk*puk*
     -           (denspc*
     -              (-2*(puk + pupe) + 
     -                ml2*
     -                 (-1 + 
     -                   mw2dm1*
     -                    (pdpn + pek + pnk - puk + pupn))) + 
     -             densp*
     -              (2*(puk + pupe) - 
     -                ml2*
     -                 (-1 - 
     -                   denspc*mw2dm1*pek*
     -                    (pdpe + pdpn + 2*pek + 2*pnk - 
     -                     2*pupd + pupe + pupn) + 
     -                   mw2m1*
     -                    (pdpn + denspc*pdpn*pek + pnk - 
     -                     puk + pupn + 
     -                     pek*
     -                     (1 + 
     -                     denspc*
     -                     (pdpe + 2*pek + 2*pnk - 2*pupd + 
     -                     pupe + pupn)))))) + 
     -          denspc*puk*
     -           (-2*densp*pek*(pdk + pdpn - pnk) + 
     -             ml2*mw2dm1*
     -              (pek - pdpe*(1 + densp*pek) + pnk + 
     -                densp*pek*(-pdpn + pek + pnk)) + 
     -             densp*ml2*(-mw2dm1 + mw2m1)*pek*pupd)*qd + 
     -          denspc*pdk*
     -           (ml2*mw2dm1*(puk + pupe) + 
     -             densp*pek*
     -              (2*(pek - pupe) + 
     -                ml2*
     -                 (mw2m1*(pdk - pupd) + 
     -                   mw2dm1*
     -                    (-pdk - pek - pnk + pupd + pupe + 
     -                     pupn))))*qu) + 
     -       densp*(densc*puk*
     -           (2*pek*(1 + denspc*(pdk + pdpn - pnk)) + 
     -             ml2*mw2m1*
     -              (pdpe + denspc*pdpe*pek - pnk - 
     -                pek*(1 + denspc*(-pdpn + pek + pnk))) + 
     -             denspc*ml2*(-mw2dm1 + mw2m1)*pek*pupd)*qd
     -           - (densc*pdk*
     -              (ml2*mw2m1*(puk + pupe) + 
     -                denspc*pek*
     -                 (2*(pek - pupe) + 
     -                   ml2*
     -                    (mw2dm1*(pdk - pupd) + 
     -                     mw2m1*
     -                     (-pdk - pek - pnk + pupd + pupe + 
     -                     pupn)))) + 
     -             2*denspc*ml2*(mw2dm1 - mw2m1)*pek*
     -              (pdk - pupd)*qd)*qu)))/(pdk*pek*puk)
      amp2 = amp2 + 
     -  (8*densp*(densc*(-(denspc*pdpn**2*pek*puk*pupe*qd) + 
     -          pdpn*puk*
     -           (-(pdk*pupe) + 
     -             pek*((1 + 2*denspc*pek - denspc*pnpe)*
     -                 pupd + pupe + 
     -                denspc*(-pdk + pek + pnk - 2*pupd)*pupe)
     -             )*qd - 
     -          puk*(pdk*pnpe*pupe + 
     -             denspc*pek*
     -              (-(pnk*pupd*(pnpe + 2*pupe)) + 
     -                pdk*(-2*pnk*pupe + pnpe*(pupd + pupe))))
     -            *qd - pdpe*puk*
     -           (pdpn*puk + 2*denspc*pdpn*pek*puk + 
     -             2*pdpn*pupe - pnk*pupe + 
     -             denspc*pek*pnk*pupe - 
     -             denspc*pek*(pdk + pdpn - pnk)*pupn)*qd + 
     -          pdk*pdpn*
     -           (2*pupe*(puk + pupe) + 
     -             pek*(puk*(-2 + denspc*(pnpe + pupe)) + 
     -                pupe*
     -                 (-2 + denspc*(-pnk + 2*pupd + pupe)))
     -              - denspc*pek**2*
     -              (2*puk + 2*pupd + pupe - pupn))*qu - 
     -          denspc*pdk*pdpe*pek*(-pek + puk + pupe)*pupn*
     -           qu + denspc*pdk*pek*
     -           (-(pek*pnpe*pupd) - 2*pnk*pupd*pupe + 
     -             pnpe*pupd*(puk + pupe) + 2*pdk*pupe*pupn)*
     -           qu) + 2*denspc*pek*
     -        (qu*((pdpe*pdpn*puk - 
     -                pdpn*
     -                 (pek*pupd + (pdk + puk - 2*pupd)*pupe)
     -                 + pdk*pupe*pupn)*qd + pdk*pdpn*pek*qu)
     -           + pnk*pupe*qd*(puk*qd - pupd*qu))))/
     -   (pdk*pek*puk) + 
     -  dens*((8*densc*(pdpn*
     -           (puk*(2 + 
     -                denspc*(pdpe + 2*pek - 2*pnpe - pupe))
     -              + denspc*
     -              (-(pupe*(pdk + 2*pnpe + pupe)) + 
     -                pek*(pupd + pupe))) + 
     -          denspc*(2*pdpe*pnk*pupe - 
     -             pnpe*(2*pdk*pupe + 
     -                pupd*(-pek + puk + pupe)) + 
     -             pdpe*(-pek + puk + pupe)*pupn)))/pek + 
     -     (-8*denspc*puk*
     -         (pdpn*(pdpe*puk - pek*pupd) + 
     -           (2*pdpe*pdpn - pdpn*pek - pdpe*pnk + 
     -              pdk*(pdpn + pnpe))*pupe)*qd - 
     -        16*denspc*pdk*pdpn*(pek - pupe)*(puk + pupe)*qu)
     -       /(pdk*pek*puk) + 
     -     densp*(8*densc*
     -         (pnpe*pupd - (pdk*(pdpn + 2*pnpe)*pupe)/pek + 
     -           pdpn*(pupd + pupe) - pdpe*pupn + 
     -           2*denspc*
     -            (-(pdk*pnpe*pupd) + pdpe*pnpe*pupd + 
     -              pek*pnpe*pupd + pnk*pnpe*pupd - 
     -              pnpe**2*pupd - pnpe*puk*pupd - 
     -              pnpe*pupd**2 + pdk*pnk*pupe - 
     -              2*pdk*pnpe*pupe + pdpe*pnpe*pupe + 
     -              2*pnk*pupd*pupe - 2*pnpe*pupd*pupe + 
     -              pdpn*
     -               (pdpe*pupd + (-pdk + pdpe + pnk)*pupe + 
     -                 pek*(puk + 2*pupd + pupe) - 
     -                 pupe*(puk + pupd - pupn) - 
     -                 pnpe*(2*puk + 2*pupd + pupe - pupn)) + 
     -              (pdk*pdpe - pdpe**2 + 
     -                 pdpe*
     -                  (-pek - pnk + pnpe + puk + pupd) + 
     -                 pupd*(pnpe + pupe))*pupn - pdpe*pupn**2
     -              ) + (puk*
     -              (-(pnpe*pupd) - 
     -                pdpn*(-2*pek + 2*pnpe + pupe) + 
     -                pdpe*(pdpn + pupn)))/pek - 
     -           (pupe*(pnpe*pupd + pdpn*(2*pnpe + pupe) - 
     -                pdpe*(2*pnk + pupn)))/pek) + 
     -        (8*denspc*(-(puk*
     -                ((-2*pdpn*pek + 
     -                     (pdk + pdpn - pnk)*pnpe)*pupd + 
     -                  (pdpn**2 + 
     -                     pdk*(pdpn - 2*pnk + pnpe) - 
     -                     pdpn*(pek + pnk - 2*pupd) - 
     -                     2*pnk*pupd)*pupe + 
     -                  pdpe*
     -                   (2*pdpn*puk + pnk*pupe - 
     -                     (pdk + pdpn - pnk)*pupn))*qd) + 
     -             pdk*(pupd*
     -                 (-2*pnk*pupe + pnpe*(puk + pupe)) + 
     -                pdpn*
     -                 (pnpe*puk + 
     -                   pupe*(-pnk + puk + 2*pupd + pupe) - 
     -                   pek*(2*puk + 2*pupd + pupe - pupn))
     -                 - (-2*pdk*pupe + pdpe*(puk + pupe))*
     -                 pupn + pek*(-(pnpe*pupd) + pdpe*pupn))*
     -              qu))/(pdk*puk))) 
      amp2 = amp2 - 
     -  (2*epupdpnk*(dens*
     -        (2*densc*ml2*pdk*puk*
     -           (denspc*(-1 + mw2dm1*(ml2 - pdpn + pnpe)) + 
     -             densp*
     -              (1 - 
     -                ml2*
     -                 (mw2m1 + denspc*(-mw2dm1 + mw2m1)*pek)
     -                 + denspc*mw2dm1*pek*
     -                 (2*pdpe + pek + pnpe + 2*pupe) + 
     -                mw2m1*
     -                 (pdpn - pnpe - 
     -                   denspc*pek*
     -                    (2*pdpe + pek + pnpe + 2*pupe)))) + 
     -          denspc*ml2*
     -           (ml2*mw2dm1 - 
     -             2*mw2dm1*
     -              (pdpn + 2*densp*pdpn*pek - pnpe) - 
     -             4*densp*(pdpe + pdpn)*pek*
     -              (mw2m1 - mw2m2*pnpe))*puk*qd + 
     -          denspc*pdk*
     -           (ml2**2*mw2dm1 - 4*densp*pek*pupe + 
     -             2*densp*ml2*pek*
     -              (-(mw2dm1*(pdpe + pek - 2*pupn)) - 
     -                2*mw2m2*pnpe*(pupe + pupn) + 
     -                mw2m1*(pdpe + pek + 2*(pupe + pupn))))*
     -           qu) - densp*
     -        (2*denspc*ml2*(mw2dm1 - mw2m1)*pek*
     -           (pdpe - pupe)*qd*qu + 
     -          densc*(ml2*
     -              (-4 + ml2*mw2m1 - 
     -                2*mw2m1*
     -                 (pdpn + 2*denspc*pdpn*pek - pnpe) - 
     -                4*denspc*(pdpe + pdpn)*pek*
     -                 (mw2dm1 - mw2m2*pnpe))*puk*qd + 
     -             pdk*(ml2**2*mw2m1 - 4*denspc*pek*pupe + 
     -                2*denspc*ml2*pek*
     -                 (-(mw2m1*(pdpe + pek - 2*pupn)) - 
     -                   2*mw2m2*pnpe*(pupe + pupn) + 
     -                   mw2dm1*(pdpe + pek + 2*(pupe + pupn))
     -                   ))*qu))))/(pdk*pek*puk)
      amp2 = amp2 + 
     -  (2*ml2**2*(dens*(2*densc*pdk*puk*
     -           (densp*mw2m1*
     -              (pdpn*puk - pnk*pupd + pdk*pupn) + 
     -             denspc*
     -              (mw2dm1*
     -                 (-((1 + densp*pek)*pnk*pupd) + 
     -                   pdpn*
     -                    (puk + densp*pek*puk + 
     -                     densp*pek*pupd) + pdk*pupn + 
     -                   densp*pek*(pdk + pupd)*pupn) + 
     -                densp*pek*
     -                 (2*mw2m2*pnpe*(-(pdk*puk) + pupd**2) + 
     -                   mw2m1*
     -                    (-(pnk*pupd) + pdpn*(puk + pupd) + 
     -                     (pdk + pupd)*pupn)))) + 
     -          denspc*puk*
     -           (-2*densp*mw2m2*pek*pnpe*
     -              (pdk*puk + (puk - pupd)*pupd) + 
     -             mw2dm1*
     -              (pdpn*(puk + 2*densp*pek*pupd) - 
     -                (1 + 2*densp*pek)*(pnk*pupd - pdk*pupn))
     -             )*qd - 
     -          denspc*pdk*
     -           (mw2dm1*(1 + 2*densp*pek)*
     -              (pdpn*puk - pnk*pupd) - 
     -             2*densp*mw2m2*pek*pnpe*
     -              (-pupd**2 + pdk*(puk + pupd)) + 
     -             mw2dm1*(pdk + 2*densp*pek*pupd)*pupn)*qu)
     -        + densp*(densc*puk*
     -           (-2*denspc*mw2m2*pek*pnpe*
     -              (pdk*puk + (puk - pupd)*pupd) + 
     -             mw2m1*
     -              (pdpn*(puk + 2*denspc*pek*pupd) - 
     -                (1 + 2*denspc*pek)*(pnk*pupd - pdk*pupn)
     -                ))*qd - 
     -          densc*pdk*
     -           (mw2m1*(1 + 2*denspc*pek)*
     -              (pdpn*puk - pnk*pupd) - 
     -             2*denspc*mw2m2*pek*pnpe*
     -              (-pupd**2 + pdk*(puk + pupd)) + 
     -             mw2m1*(pdk + 2*denspc*pek*pupd)*pupn)*qu - 
     -          2*denspc*mw2m2*pek*pnpe*
     -           (puk**2*qd**2 - 
     -             2*(pdk + puk - pupd)*pupd*qd*qu + 
     -             pdk**2*qu**2))))/(pdk*pek*puk)
      amp2 = amp2 + 
     -  ml2*(densp*((4*denspc*
     -           (-(puk*(mw2dm1*
     -                   (-(pnpe*puk) + pnk*pupe + pek*pupn + 
     -                     2*pnk*pupn) + 
     -                  mw2m1*
     -                   (-(pnpe*puk) + pnk*pupe + pek*pupn + 
     -                     2*pnk*pupn) + 
     -                  2*mw2m2*pnpe*
     -                   (pnpe*puk - 
     -                     (pek + pnk)*(pupe + pupn)))*qd**2)
     -              + (mw2dm1*
     -                 (-2*pdpn**2*puk - 2*pdk*pnpe*pupd - 
     -                   2*pnpe*puk*pupd + 2*pnpe*pupd**2 + 
     -                   pnk*pupd*pupe + pek*pupd*pupn + 
     -                   2*pnk*pupd*pupn - 2*pdk*pupe*pupn - 
     -                   2*pdk*pupn**2 + 
     -                   pdpe*
     -                    (-2*pdpn*puk + pnk*pupd + 
     -                     (pdk + puk - 2*pupd)*pupn) + 
     -                   pdpn*
     -                    (pek*pupd + 2*pnk*pupd + 
     -                     (pdk + puk - 2*pupd)*
     -                     (pupe + 2*pupn))) + 
     -                mw2m1*
     -                 (-2*pdpn**2*puk - 2*pdk*pnpe*pupd - 
     -                   2*pnpe*puk*pupd + 2*pnpe*pupd**2 + 
     -                   pnk*pupd*pupe + pek*pupd*pupn + 
     -                   2*pnk*pupd*pupn - 2*pdk*pupe*pupn - 
     -                   2*pdk*pupn**2 + 
     -                   pdpe*
     -                    (-2*pdpn*puk + pnk*pupd + 
     -                     (pdk + puk - 2*pupd)*pupn) + 
     -                   pdpn*
     -                    (pek*pupd + 2*pnk*pupd + 
     -                     (pdk + puk - 2*pupd)*
     -                     (pupe + 2*pupn))) - 
     -                2*mw2m2*pnpe*
     -                 (-(pdpe**2*puk) - pdpn**2*puk - 
     -                   2*pdk*pnpe*pupd - 2*pnpe*puk*pupd + 
     -                   2*pnpe*pupd**2 + pek*pupd*pupe + 
     -                   pnk*pupd*pupe - pdk*pupe**2 + 
     -                   pek*pupd*pupn + pnk*pupd*pupn - 
     -                   2*pdk*pupe*pupn - pdk*pupn**2 + 
     -                   pdpn*
     -                    (pek*pupd + pnk*pupd + 
     -                     (pdk + puk - 2*pupd)*(pupe + pupn))
     -                     + pdpe*
     -                    (-2*pdpn*puk + 
     -                     (pdk + puk)*(pupe + pupn) + 
     -                     pupd*(pek + pnk - 2*(pupe + pupn)))
     -                   ))*qd*qu - 
     -             pdk*((mw2dm1 + mw2m1)*
     -                 (pdpe*pnk + pdpn*(pek + 2*pnk)) - 
     -                ((mw2dm1 + mw2m1)*pdk + 
     -                   2*mw2m2*(pdpe + pdpn)*(pek + pnk))*
     -                 pnpe + 2*mw2m2*pdk*pnpe**2)*qu**2))/
     -         (pdk*puk) + 
     -        densc*((8*pdpn*qu)/pek + 
     -           (4*mw2m1*
     -              (puk*
     -                 (pdpn**2*puk + pdpe**2*pupn + 
     -                   pnpe*(pek*pupd + pdk*pupn) - 
     -                   pdpn*
     -                    (pnk*pupd - pdk*(pupe + pupn) + 
     -                     pek*(pupd + pupe + pupn)) + 
     -                   pdpe*
     -                    (-(pnpe*pupd) - (pek + pnk)*pupn + 
     -                     pdpn*(puk + pupe + 2*pupn)))*qd + 
     -                pdk*
     -                 (pdpe*pnk*puk + 
     -                   pnpe*
     -                    (-(pdk*puk) + 
     -                     pupd*(-pek + puk + pupe)) - 
     -                   pdpe*(-pek + puk + pupe)*pupn + 
     -                   pdpn*
     -                    (2*pnk*puk - pnpe*puk + pnk*pupe - 
     -                     puk*pupe - pupe**2 - 
     -                     2*(puk + pupe)*pupn + 
     -                     pek*(puk + pupe + pupn)))*qu))/
     -            (pdk*pek*puk) + 
     -           (4*denspc*
     -              (mw2m1*
     -                 (pdpn**2*puk*(2*puk - pupe)*qd + 
     -                   pdpe**2*puk*pupn*qd + 
     -                   pdpe*puk*
     -                    (2*pdpn*puk - pnpe*pupd - 
     -                     pdpn*pupe + pnk*pupe + 
     -                     (pdpn - pek + pupd)*pupn)*qd + 
     -                   pdpn*puk*
     -                    (pnk*(-2*pupd + pupe) - 
     -                     pek*(2*pupd + pupn) + 
     -                     pupd*(pnpe + pupe + 2*pupn))*qd + 
     -                   puk*
     -                    (pdk*
     -                     (-(pnk*pupe) - pek*pupn - 
     -                     2*pnk*pupn + 
     -                     pnpe*(puk - pupe + pupn)) - 
     -                     pupd*
     -                     (pnpe*(-puk + pupd) + 
     -                     pek*(-pnpe + pupn) + 
     -                     pnk*(pnpe + pupe + 2*pupn)))*qd + 
     -                   pdk*pdpe*
     -                    (pnpe*puk + 
     -                     pnk*(puk + pupd - pupe - pupn) + 
     -                     pupn*(-pupd + pupe + pupn))*qu + 
     -                   pdk*pdpn*
     -                    (-(pnpe*puk) + 2*pnk*(puk + pupd) - 
     -                     pupe*(pupd + pupe) - 
     -                     (2*pupd + pupe)*pupn + 
     -                     pek*(puk + pupd + pupe + pupn))*qu
     -                    - pdk*
     -                    (-(pnpe*pupd*
     -                     (-pek + pnk + pupd + pupe)) + 
     -                     (-2*(pek + pnk) + pnpe)*pupd*
     -                    pupn + 
     -                     pdk*
     -                     (pnpe*(puk + pupd) + 
     -                     2*pupn*(pupe + pupn)))*qu) + 
     -                mw2dm1*
     -                 (puk*
     -                    (2*pdpn**2*puk + pdk*pnpe*puk + 
     -                     pnpe*puk*pupd - pnpe*pupd**2 - 
     -                     pdk*pnk*pupe - pnk*pupd*pupe - 
     -                     (pek + 2*pnk)*(pdk + pupd)*pupn + 
     -                     pdpn*pupd*
     -                     (-2*pnk + pupe + 2*pupn) + 
     -                     pdpe*
     -                     (2*pdpn*puk + pupd*(-2*pnk + pupn))
     -                     )*qd + 
     -                   pdk*
     -                    (-(pdk*pnpe*puk) - pdk*pnpe*pupd + 
     -                     pnpe*pupd**2 + 
     -                     pdpe*pnk*(puk + pupd) + 
     -                     2*pnk*pupd*pupe - pdpe*pupd*pupn + 
     -                     2*pnk*pupd*pupn - 
     -                     2*pdk*pupe*pupn - 2*pdk*pupn**2 + 
     -                     pdpn*
     -                     (pek*(puk + pupd) + 
     -                     2*pnk*(puk + pupd) - 
     -                     pupd*(pupe + 2*pupn)))*qu) + 
     -                2*(puk*
     -                    (-(pdpn*pupd*qd) + pnk*pupd*qd + 
     -                     pdk*pdpn*qu) + 
     -                   mw2m2*pnpe*
     -                    (-(pdpe**2*puk**2*qd) + 
     -                     pdpe*puk*
     -                     (-2*pdpn*puk + 
     -                     pupd*(pek + pnk - pupe - pupn))*qd
     -                     + puk*
     -                     (-(pdpn**2*puk) + 
     -                     pdpn*pupd*
     -                     (pek + pnk - pupe - pupn) + 
     -                     pdk*
     -                     (-(pnpe*puk) + 
     -                     (pek + pnk)*(pupe + pupn)) + 
     -                     pupd*
     -                     (pnpe*(-puk + pupd) + 
     -                     (pek + pnk)*(pupe + pupn)))*qd - 
     -                     pdk*pdpe*
     -                     (pek*(puk + pupd) + 
     -                     pnk*(puk + pupd) - 
     -                     pupd*(pupe + pupn))*qu + 
     -                     pdk*
     -                     (-(pupd*
     -                     (pnpe*pupd + 
     -                     (pek + pnk)*(pupe + pupn))) - 
     -                     pdpn*
     -                     (pek*(puk + pupd) + 
     -                     pnk*(puk + pupd) - 
     -                     pupd*(pupe + pupn)) + 
     -                     pdk*
     -                     (pnpe*(puk + pupd) + 
     -                     (pupe + pupn)**2))*qu))))/(pdk*puk)
     -           )) + dens*
     -      ((-4*densc*(denspc*mw2dm1*pdpn**2*pek*
     -              (puk + pupe) + 
     -             pdpn*(4*pupe + 
     -                puk*
     -                 (4 + 
     -                   denspc*pek*
     -                    (5 + 
     -                     mw2dm1*
     -                     (pdpe + pek + 2*pnk - pnpe + pupe))
     -                   ) + 
     -                denspc*pek*
     -                 ((2 + mw2dm1*(pek + pnk - pnpe))*
     -                    pupd + 
     -                   (3 + mw2dm1*(-pdk + pek + pnk))*
     -                    pupe - 
     -                   (2 + mw2dm1*(pdk + pdpe + pupe))*pupn
     -                   )) + 
     -             denspc*pek*
     -              ((pnk + pnpe)*pupd - (pdk + pdpe)*pupn + 
     -                mw2dm1*
     -                 (-(pnpe*
     -                     (pupd*(pek - puk + pupn) + 
     -                     pdk*(puk + pupn))) + 
     -                   pdpe*
     -                    (pupn*(pek - puk + pupn) + 
     -                     pnk*(puk + pupn))))))/pek**2 + 
     -        (4*denspc*(2*pdk*pdpn*puk*qu + 
     -             mw2dm1*
     -              (puk*
     -                 (pdpn**2*puk + pdpe**2*pupn + 
     -                   pnpe*(pek*pupd + pdk*pupn) - 
     -                   pdpn*
     -                    (pnk*pupd - pdk*(pupe + pupn) + 
     -                     pek*(pupd + pupe + pupn)) + 
     -                   pdpe*
     -                    (-(pnpe*pupd) - (pek + pnk)*pupn + 
     -                     pdpn*(puk + pupe + 2*pupn)))*qd + 
     -                pdk*
     -                 (pdpe*pnk*puk + 
     -                   pnpe*
     -                    (-(pdk*puk) + 
     -                     pupd*(-pek + puk + pupe)) - 
     -                   pdpe*(-pek + puk + pupe)*pupn + 
     -                   pdpn*
     -                    (2*pnk*puk - pnpe*puk + pnk*pupe - 
     -                     puk*pupe - pupe**2 - 
     -                     2*(puk + pupe)*pupn + 
     -                     pek*(puk + pupe + pupn)))*qu)))/
     -         (pdk*pek*puk) + 
     -        densp*(densc*
     -            ((-20*pdpn*puk)/pek + (4*pdk*pupn)/pek + 
     -              (-4*(2*pdpn + pnk + pnpe)*pupd - 
     -                 12*pdpn*pupe + 4*(pdpe + 2*pdpn)*pupn)/
     -               pek + 
     -              (4*mw2m1*
     -                 (-(pdpn**2*(puk + pupe)) - 
     -                   pdpn*
     -                    (-(pnpe*(puk + pupd)) + 
     -                     (-pdk + puk)*pupe + 
     -                     pek*(puk + pupd + pupe) + 
     -                     pnk*(2*puk + pupd + pupe)) + 
     -                   pdpn*(pdk + pupe)*pupn - 
     -                   pdpe*
     -                    ((pdpn + pnk)*puk + 
     -                     (-pdpn + pek + pnk - puk)*pupn + 
     -                     pupn**2) + 
     -                   pnpe*
     -                    (pupd*(pek - puk + pupn) + 
     -                     pdk*(puk + pupn))))/pek + 
     -              4*denspc*
     -               (-6*pdpn*puk + 2*pdk*pupn + 
     -                 2*
     -                  (-(pdpn*(4*pupd + pupe - 2*pupn)) + 
     -                    pdpe*pupn + 
     -                    pupd*(pnk - 2*pnpe + 2*pupn)) + 
     -                 2*mw2m2*pnpe*
     -                  (((pdpe + pdpn)*(pek + pnk) - 
     -                     2*pdk*pnpe)*puk + 
     -                    pdk*(pek + pnk)*(pupe + pupn) + 
     -                    2*pek*pupd*
     -                     (pdpe + pdpn + pupe + pupn) + 
     -                    pupd*
     -                     (pdpe**2 + pdpn**2 + 2*pdpn*pnk + 
     -                     2*pdpe*(pdpn + pnk) + 
     -                     2*pnpe*pupd + 
     -                     (pupe + pupn)*(2*pnk + pupe + pupn)
     -                     )) + 
     -                 mw2dm1*
     -                  (-((pdpn*(pek + 2*pnk - pnpe) - 
     -                     2*pdk*pnpe + pdpe*(pnk + pnpe))*puk
     -                     ) - pdpn**2*(2*pupd + pupe) + 
     -                    pek*pupd*
     -                    (-2*pdpn + pnpe - 2*pupn) + 
     -                    pdpe**2*pupn - 
     -                    pdk*
     -                     ((pnk + pnpe)*pupe + 
     -                     (pek + 2*pnk - pnpe)*pupn) + 
     -                    pdpn*
     -                     (-4*pnk*pupd + pnpe*pupd + 
     -                     pupe*(pupe + pupn)) - 
     -                    pdpe*
     -                     (2*pnk*pupd + pnpe*pupd + 
     -                     pdpn*(2*pupd + pupe - pupn) + 
     -                     pupn*(pupe + pupn)) - 
     -                    pupd*
     -                     (pnpe*(2*pupd + pupe - pupn) + 
     -                     2*pupn*(pupe + pupn) + 
     -                     pnk*(pnpe + 2*pupe + 4*pupn))) + 
     -                 mw2m1*
     -                  (-((pdpn*(pek + 2*pnk - pnpe) - 
     -                     2*pdk*pnpe + pdpe*(pnk + pnpe))*puk
     -                     ) - pdpn**2*(2*pupd + pupe) + 
     -                    pek*pupd*
     -                    (-2*pdpn + pnpe - 2*pupn) + 
     -                    pdpe**2*pupn - 
     -                    pdk*
     -                     ((pnk + pnpe)*pupe + 
     -                     (pek + 2*pnk - pnpe)*pupn) + 
     -                    pdpn*
     -                     (-4*pnk*pupd + pnpe*pupd + 
     -                     pupe*(pupe + pupn)) - 
     -                    pdpe*
     -                     (2*pnk*pupd + pnpe*pupd + 
     -                     pdpn*(2*pupd + pupe - pupn) + 
     -                     pupn*(pupe + pupn)) - 
     -                    pupd*
     -                     (pnpe*(2*pupd + pupe - pupn) + 
     -                     2*pupn*(pupe + pupn) + 
     -                     pnk*(pnpe + 2*pupe + 4*pupn))))) + 
     -           (4*denspc*
     -              (mw2dm1*
     -                 (pdpn**2*puk*(2*puk - pupe)*qd + 
     -                   pdpe**2*puk*pupn*qd + 
     -                   pdpe*puk*
     -                    (2*pdpn*puk - pnpe*pupd - 
     -                     pdpn*pupe + pnk*pupe + 
     -                     (pdpn - pek + pupd)*pupn)*qd + 
     -                   pdpn*puk*
     -                    (pnk*(-2*pupd + pupe) - 
     -                     pek*(2*pupd + pupn) + 
     -                     pupd*(pnpe + pupe + 2*pupn))*qd + 
     -                   puk*
     -                    (pdk*
     -                     (-(pnk*pupe) - pek*pupn - 
     -                     2*pnk*pupn + 
     -                     pnpe*(puk - pupe + pupn)) - 
     -                     pupd*
     -                     (pnpe*(-puk + pupd) + 
     -                     pek*(-pnpe + pupn) + 
     -                     pnk*(pnpe + pupe + 2*pupn)))*qd + 
     -                   pdk*pdpe*
     -                    (pnpe*puk + 
     -                     pnk*(puk + pupd - pupe - pupn) + 
     -                     pupn*(-pupd + pupe + pupn))*qu + 
     -                   pdk*pdpn*
     -                    (-(pnpe*puk) + 2*pnk*(puk + pupd) - 
     -                     pupe*(pupd + pupe) - 
     -                     (2*pupd + pupe)*pupn + 
     -                     pek*(puk + pupd + pupe + pupn))*qu
     -                    - pdk*
     -                    (-(pnpe*pupd*
     -                     (-pek + pnk + pupd + pupe)) + 
     -                     (-2*(pek + pnk) + pnpe)*pupd*
     -                    pupn + 
     -                     pdk*
     -                     (pnpe*(puk + pupd) + 
     -                     2*pupn*(pupe + pupn)))*qu) + 
     -                mw2m1*
     -                 (puk*
     -                    (2*pdpn**2*puk + pdk*pnpe*puk + 
     -                     pnpe*puk*pupd - pnpe*pupd**2 - 
     -                     pdk*pnk*pupe - pnk*pupd*pupe - 
     -                     (pek + 2*pnk)*(pdk + pupd)*pupn + 
     -                     pdpn*pupd*
     -                     (-2*pnk + pupe + 2*pupn) + 
     -                     pdpe*
     -                     (2*pdpn*puk + pupd*(-2*pnk + pupn))
     -                     )*qd + 
     -                   pdk*
     -                    (-(pdk*pnpe*puk) - pdk*pnpe*pupd + 
     -                     pnpe*pupd**2 + 
     -                     pdpe*pnk*(puk + pupd) + 
     -                     2*pnk*pupd*pupe - pdpe*pupd*pupn + 
     -                     2*pnk*pupd*pupn - 
     -                     2*pdk*pupe*pupn - 2*pdk*pupn**2 + 
     -                     pdpn*
     -                     (pek*(puk + pupd) + 
     -                     2*pnk*(puk + pupd) - 
     -                     pupd*(pupe + 2*pupn)))*qu) + 
     -                2*(puk*
     -                    (-(pdpn*pupd*qd) + pnk*pupd*qd + 
     -                     pdk*pdpn*qu) + 
     -                   mw2m2*pnpe*
     -                    (-(pdpe**2*puk**2*qd) + 
     -                     pdpe*puk*
     -                     (-2*pdpn*puk + 
     -                     pupd*(pek + pnk - pupe - pupn))*qd
     -                     + puk*
     -                     (-(pdpn**2*puk) + 
     -                     pdpn*pupd*
     -                     (pek + pnk - pupe - pupn) + 
     -                     pdk*
     -                     (-(pnpe*puk) + 
     -                     (pek + pnk)*(pupe + pupn)) + 
     -                     pupd*
     -                     (pnpe*(-puk + pupd) + 
     -                     (pek + pnk)*(pupe + pupn)))*qd - 
     -                     pdk*pdpe*
     -                     (pek*(puk + pupd) + 
     -                     pnk*(puk + pupd) - 
     -                     pupd*(pupe + pupn))*qu + 
     -                     pdk*
     -                     (-(pupd*
     -                     (pnpe*pupd + 
     -                     (pek + pnk)*(pupe + pupn))) - 
     -                     pdpn*
     -                     (pek*(puk + pupd) + 
     -                     pnk*(puk + pupd) - 
     -                     pupd*(pupe + pupn)) + 
     -                     pdk*
     -                     (pnpe*(puk + pupd) + 
     -                     (pupe + pupn)**2))*qu))))/(pdk*puk)
     -           )))



      amp2 = amp2*
     +       g2*conjg(g2)*el2/4q0
     +       /4q0/3
     +       /(st_alpha/(2*pi))

      if(mod(abs(i),2).eq.0) then
         amp2=amp2*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      elseif(mod(abs(i),2).eq.1) then   
         amp2=amp2*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif

      return
      end 


      complex*32 function e32_(q1,q2,q3,q4)
      implicit none
      real*16 q1(0:3),q2(0:3),q3(0:3),q4(0:3)

      complex*32 esign

      esign = -(0.q0,1.q0)

      e32_ =
     .     q1(1)*q2(2)*q3(3)*q4(0) - q1(1)*q2(2)*q3(0)*q4(3) +
     .     q1(1)*q2(3)*q3(0)*q4(2) - q1(1)*q2(3)*q3(2)*q4(0) +
     .     q1(1)*q2(0)*q3(2)*q4(3) - q1(1)*q2(0)*q3(3)*q4(2) +
     .     q1(2)*q2(1)*q3(0)*q4(3) - q1(2)*q2(1)*q3(3)*q4(0) +
     .     q1(2)*q2(3)*q3(1)*q4(0) - q1(2)*q2(3)*q3(0)*q4(1) +
     .     q1(2)*q2(0)*q3(3)*q4(1) - q1(2)*q2(0)*q3(1)*q4(3) +
     .     q1(3)*q2(1)*q3(2)*q4(0) - q1(3)*q2(1)*q3(0)*q4(2) +
     .     q1(3)*q2(2)*q3(0)*q4(1) - q1(3)*q2(2)*q3(1)*q4(0) +
     .     q1(3)*q2(0)*q3(1)*q4(2) - q1(3)*q2(0)*q3(2)*q4(1) +
     .     q1(0)*q2(1)*q3(3)*q4(2) - q1(0)*q2(1)*q3(2)*q4(3) +
     .     q1(0)*q2(2)*q3(1)*q4(3) - q1(0)*q2(2)*q3(3)*q4(1) +
     .     q1(0)*q2(3)*q3(2)*q4(1) - q1(0)*q2(3)*q3(1)*q4(2)

      e32_ = esign * e32_

      return
      end function e32_


      function dotp16(p1,p2)
      implicit none
      real * 16 dotp16,p1(0:3),p2(0:3)
      dotp16 = (p1(0)*p2(0) - p1(3)*p2(3)) - p1(1)*p2(1) - p1(2)*p2(2)
      end



*
      subroutine invertspace16(p,pp)
      implicit none
      real*16 p(0:3),pp(0:3)
      integer nu

      pp(0)=p(0)
      do nu=1,3
          pp(nu)=-p(nu)
      enddo

      end
