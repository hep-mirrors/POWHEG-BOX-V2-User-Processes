c     calculates interference of one loop SQCD
c     non Drell-Yan diagrams with Born
c     for the flavor structure specified by vflav
c     returns 2 Re(M_B * M_V_NDY)/(as/(2pi))
c     with appropriate sign and normalization
      subroutine setvirtualNDY(p,vflav,virtualNDY)
      implicit none

      include 'nlegborn.h'
      include 'pwhg_math.h' ! Pi
      include 'pwhg_st.h'   ! strong coupling

      ! external variables
      real *8 p(0:3,nlegborn), virtualNDY
      integer vflav(nlegborn)
      ! after crossing
      real *8 pcrossed(0:3,nlegborn), crossprefac
      integer vflavcrossed(nlegborn)

      ! perform crossing
      call crossvirt(p,vflav,pcrossed,vflavcrossed,crossprefac)

      ! call subroutine for crossed configuration with q qbar initial
      call virtualNDYqqbar(pcrossed,vflavcrossed,virtualNDY)

      ! multiply by sign and average factor
      virtualNDY = crossprefac*virtualNDY
      ! divide by alpha_s/(2 Pi) according to POWHEG convention
      virtualNDY = virtualNDY /(st_alpha/(2d0*Pi))

      end



c     calculates interference of one loop SQCD
c     non Drell-Yan diagrams with Born
c     for the flavor structure specified by vflav
c     which must be of the type
c     q qbar -> sl slbar g
c     returns 2 Re(M_B * M_V_NDY)
c     assumes left- or right-sleptons
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2
c     is implied but irrelevant here (no eps poles)
      subroutine virtualNDYqqbar(p,vflav,virtualNDY)
      implicit none

      include 'nlegborn.h'

      ! external variables
      real *8 p(0:3,nlegborn), virtualNDY
      integer vflav(nlegborn)
      ! more variables for subroutines of appropriate quark type
      character qflavorin
      complex *16 virtualNDYc

      ! initialize variables
      virtualNDY = 0d0
      virtualNDYc = dcmplx(0)

      ! check initial state is q qbar or qbar q
      if   ((vflav(1).ne.(-1*vflav(2)))
     & .or. (abs(vflav(1)).lt.1)
     & .or. (abs(vflav(1)).gt.4))
     & then
         write(*,*) 'inappropriate flavors in virtualNDYqqbar'
         write(*,*) 'vflav = ', vflav
         stop
      endif

      ! indentify flavor, store in qflavorin
      select case(abs(vflav(1)))
      case (1)
         qflavorin = 'd'
      case (2)
         qflavorin = 'u'
      case (3)
         qflavorin = 's'
      case (4)
         qflavorin = 'c'
      case default
        write(*,*) 'in virtualNDYqqbar'
        write(*,*) 'unhandled incoming flavor ', qflavorin
        stop
      end select

      ! call subroutine for calculation of interference loop*Born
      ! according to the incoming quark type
      if ((qflavorin.eq.'d').or.(qflavorin.eq.'s')) then
         call virtualNDYddbar(p,qflavorin,virtualNDYc)
      else if ((qflavorin.eq.'u').or.(qflavorin.eq.'c')) then
         call virtualNDYuubar(p,qflavorin,virtualNDYc)
      endif

      virtualNDY = 2d0*dble(virtualNDYc)

      end
