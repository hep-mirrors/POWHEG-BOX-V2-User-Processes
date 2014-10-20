c     calculates crossing of momenta and flavor structure
c     relative to incoming particles quark (1) and antiquark (2)
c     calculates also prefactor consisting of
c     sign and average factor for incoming particles
c     (instead of sum)
      subroutine crossvirt(p,vflav,pcrossed,vflavcrossed,crossprefac)
      implicit none

      include 'nlegborn.h'
      include 'pwhg_math.h' ! NC

      ! input
      real *8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      ! output after crossing
      real *8 pcrossed(0:3,nlegborn), crossprefac
      integer vflavcrossed(nlegborn)
      ! more variables
      integer NA, crossingsign
      real *8 averagefac
      ! for proper assignment of quark and antiquark momenta
      real *8 ptemp(0:3)

      ! set up some constants
      NA = NC**2 - 1

      ! identify flavor structure
      ! apply crossing to momenta and flavor structure
      ! determine sign and average factor
      ! identify momenta of quark and antiquark
      if ((vflav(5).eq.0).and.(vflav(1).gt.0)) then ! q qbar -> sl sl g
        pcrossed     = p
        vflavcrossed = vflav
        crossingsign = 1
        averagefac   =  (1d0/2d0)**2 * (1d0/NC)**2
      else if ((vflav(5).eq.0).and.(vflav(1).lt.0)) then ! qbar q -> sl sl g
        pcrossed     = p
        ! proper assignment of quark and antiquark momenta
        ptemp         = pcrossed(:,1)
        pcrossed(:,1) = pcrossed(:,2)
        pcrossed(:,2) = ptemp
        vflavcrossed = vflav
        crossingsign = 1
        averagefac   =  (1d0/2d0)**2 * (1d0/NC)**2
      else if ((vflav(1).eq.0).and.(vflav(2).gt.0)) then ! g q -> sl sl q
        pcrossed        = p
        pcrossed(:,1)   = -p(:,5)
        pcrossed(:,5)   = -p(:,1)
        ! proper assignment of quark and antiquark momenta
        ptemp         = pcrossed(:,1)
        pcrossed(:,1) = pcrossed(:,2)
        pcrossed(:,2) = ptemp
        vflavcrossed    = vflav
        vflavcrossed(1) = -vflav(5)
        vflavcrossed(5) = -vflav(1)
        crossingsign    = -1
        averagefac      =  (1d0/2d0)**2 * (1d0/NC) * (1d0/NA)
      else if ((vflav(1).eq.0).and.(vflav(2).lt.0)) then ! g qbar -> sl sl qbar
        pcrossed        = p
        pcrossed(:,1)   = -p(:,5)
        pcrossed(:,5)   = -p(:,1)
        vflavcrossed    = vflav
        vflavcrossed(1) = -vflav(5)
        vflavcrossed(5) = -vflav(1)
        crossingsign    = -1
        averagefac      =  (1d0/2d0)**2 * (1d0/NC) * (1d0/NA)
      else if ((vflav(2).eq.0).and.(vflav(1).gt.0)) then ! q g -> sl sl q
        pcrossed        = p
        pcrossed(:,2)   = -p(:,5)
        pcrossed(:,5)   = -p(:,2)
        vflavcrossed    = vflav
        vflavcrossed(2) = -vflav(5)
        vflavcrossed(5) = -vflav(2)
        crossingsign    = -1
        averagefac      =  (1d0/2d0)**2 * (1d0/NC) * (1d0/NA)
      else if ((vflav(2).eq.0).and.(vflav(1).lt.0)) then ! qbar g -> sl sl qbar
        pcrossed        = p
        pcrossed(:,2)   = -p(:,5)
        pcrossed(:,5)   = -p(:,2)
        ! proper assignment of quark and antiquark momenta
        ptemp         = pcrossed(:,1)
        pcrossed(:,1) = pcrossed(:,2)
        pcrossed(:,2) = ptemp
        vflavcrossed    = vflav
        vflavcrossed(2) = -vflav(5)
        vflavcrossed(5) = -vflav(2)
        crossingsign    = -1
        averagefac      =  (1d0/2d0)**2 * (1d0/NC) * (1d0/NA)
      else
        write(*,*) 'in crossvirt'
        write(*,*) 'inappropriate flavor configuration vflav = ', vflav
        stop
      endif

      crossprefac=dble(crossingsign)*averagefac

      end


