c     calculates interference of one loop SQCD
c     Drell-Yan diagrams with Born
c     for the flavor structure specified by vflav
c     returns 2 Re(M_B * M_V_DY)/(as/(2pi))
c     with appropriate sign and normalization
      subroutine setvirtualDY(p,vflav,virtualDY)
      implicit none

      include 'nlegborn.h'
      include 'pwhg_math.h' ! Pi
      include 'pwhg_st.h'   ! strong coupling

      ! external variables
      real *8 p(0:3,nlegborn), virtualDY
      integer vflav(nlegborn)
      ! after crossing
      real *8 pcrossed(0:3,nlegborn), crossprefac
      integer vflavcrossed(nlegborn)

      ! perform crossing
      call crossvirt(p,vflav,pcrossed,vflavcrossed,crossprefac)

      ! call subroutine for crossed configuration with q qbar initial
      call virtualDYqqbar(pcrossed,vflavcrossed,virtualDY)

      ! multiply by sign and average factor
      virtualDY = crossprefac*virtualDY
      ! divide by alpha_s/(2 Pi) according to POWHEG convention
      virtualDY = virtualDY /(st_alpha/(2d0*Pi))

      end



c     calculates interference of one loop SQCD
c     Drell-Yan diagrams with Born
c     for the flavor structure specified by vflav
c     which must be of the type
c     q qbar -> sl slbar g
c     returns 2 Re(M_B * M_V_DY)
c     assumes left- or right-sleptons
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied
      subroutine virtualDYqqbar(p,vflav,virtualDY)
      implicit none

      include 'nlegborn.h'
      include 'pwhg_st.h'         ! renormalization scale
      include 'virtualDY/vars.h'  ! colour factors

      ! external variables
      real *8 p(0:3,nlegborn), virtualDY
      integer vflav(nlegborn)
      ! more variables for subroutines of appropriate quark type
      character qflavorin
      complex *16 virtualDYc
      real *8 bepmone, bepmtwo, momsum2normsq

      ! initialize variables
      virtualDY = 0d0
      virtualDYc = dcmplx(0)

      ! check initial state is q qbar or qbar q
      if   ((vflav(1).ne.(-1*vflav(2)))
     & .or. (abs(vflav(1)).lt.1)
     & .or. (abs(vflav(1)).gt.4))
     & then
         write(*,*) 'inappropriate flavors in virtualDYqqbar'
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
        write(*,*) 'in virtualDYqqbar'
        write(*,*) 'unhandled incoming flavor ', qflavorin
        stop
      end select

      ! call subroutine for calculation of interference loop*Born
      ! hand over incoming quark type
      ! also calculate eps^0 terms from poles times Born
      call mainssg(p,qflavorin,virtualDYc,bepmone,bepmtwo)

      virtualDY = 2d0*dble(virtualDYc)

      ! subtract finite parts from poles times Born and colour correlated Born
      ! for extraction of V_fin according to Eq. (2.92) in 0709.2092
      virtualDY
     & = virtualDY
     & + (2d0*(Nc**2d0-1d0)/(2d0*Nc)
     &    + Nc
     &   )*bepmtwo
     & + (3d0*(Nc**2d0-1d0)/(2d0*Nc)
     &    + (11d0/6d0)*Nc
     &    - (2d0/3d0)*(1d0/2d0)*5d0    ! Nf = 5
     &    - (2d0*(Nc**2d0-1d0)/(2d0*Nc)-Nc)
     &      * dlog(dabs(momsum2normsq(p(:,1),p(:,2))/st_muren2))
     &    - Nc * dlog(dabs(momsum2normsq(p(:,1),p(:,5))/st_muren2))
     &    - Nc * dlog(dabs(momsum2normsq(p(:,2),p(:,5))/st_muren2))
     &   )*bepmone


      end
