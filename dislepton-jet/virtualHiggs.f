c     calculates interference of one loop SQCD
c     Higgs or Goldstone boson diagrams with Born
c     for the flavor structure specified by vflav
c     returns 2 Re(M_B * M_V_Higgs)/(as/(2pi))
c     with appropriate sign and normalization
      subroutine setvirtualHiggs(p,vflav,virtualHiggs)
      implicit none

      include 'nlegborn.h'
      include 'pwhg_math.h' ! Pi
      include 'pwhg_st.h'   ! strong coupling

      ! external variables
      real *8 p(0:3,nlegborn), virtualHiggs
      integer vflav(nlegborn)
      ! after crossing
      real *8 pcrossed(0:3,nlegborn), crossprefac
      integer vflavcrossed(nlegborn)

      ! perform crossing
      call crossvirt(p,vflav,pcrossed,vflavcrossed,crossprefac)

      ! call subroutine for crossed configuration with q qbar initial
      call virtualHiggsqqbar(pcrossed,vflavcrossed,virtualHiggs)

      ! multiply by sign and average factor
      virtualHiggs = crossprefac*virtualHiggs
      ! divide by alpha_s/(2 Pi) according to POWHEG convention
      virtualHiggs = virtualHiggs /(st_alpha/(2d0*Pi))

      end



c     calculates interference of Born with
c     one loop SQCD diagrams that contain a Higgs boson
c     for the flavor structure specified by vflav
c     which must be of the type
c     q qbar -> sl slbar g
c
c     returns 2 Re(sum M_B* M_V_Higgs)
c
c     assumptions:
c     left- or right-sleptons
c     incoming quarks (generation 1 and 2) massless
c     same mass for all squarks
c
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2
c     is implied but irrelevant here (no eps poles)
      subroutine virtualHiggsqqbar(p,vflav,virtualHiggs)
      implicit none

      include 'nlegborn.h'

      ! external variables
      real *8 p(0:3,nlegborn), virtualHiggs
      integer vflav(nlegborn)
      ! more variables for subroutines of appropriate quark type
      character qflavorin
      complex *16 virtualHiggsc


      ! initialize variables
      virtualHiggs = 0d0
      virtualHiggsc = dcmplx(0)

      ! check initial state is q qbar or qbar q
      if   ((vflav(1).ne.(-1*vflav(2)))
     & .or. (abs(vflav(1)).lt.1)
     & .or. (abs(vflav(1)).gt.4))
     & then
         write(*,*) 'inappropriate flavors in virtualHiggsqqbar'
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
        write(*,*) 'in virtualHiggsqqbar'
        write(*,*) 'unhandled incoming flavor ', qflavorin
        stop
      end select

      ! check that all squark masses have the same value
      call checksquarkmassesidentic()

      ! call subroutine for calculation of interference loop*Born
      ! according to the incoming quark type
      if ((qflavorin.eq.'d').or.(qflavorin.eq.'s')) then
         call virtualHiggsddbar(p,virtualHiggsc)
      else if ((qflavorin.eq.'u').or.(qflavorin.eq.'c')) then
         call virtualHiggsuubar(p,virtualHiggsc)
      endif

      virtualHiggs = 2d0*dble(virtualHiggsc)

      end



c     check that all squark masses have the same value
      subroutine checksquarkmassesidentic()
      implicit none

      include 'coupl.inc'
      ! contains:
      ! + masses of SUSY particles read from MODEL/param_card.dat in the form
      !   m* with the particle name * specified in MODEL/particles.dat
      ! + ...

      if ((abs(mdl-mdr)
     & + abs(mdl-msl) + abs(mdl-msr)
     & + abs(mdl-mb1) + abs(mdl-mb2)
     & + abs(mdl-mul) + abs(mdl-mur)
     & + abs(mdl-mcl) + abs(mdl-mcr)
     & + abs(mdl-mt1) + abs(mdl-mt2)) .gt. 1d-3) then
         write(*,*) 'squark masses are not identic'
         stop
      endif

      end
