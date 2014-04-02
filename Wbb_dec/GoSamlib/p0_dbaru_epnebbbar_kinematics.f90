module     p0_dbaru_epnebbbar_kinematics
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_model
   use p0_dbaru_epnebbbar_scalar_cache
   implicit none
   save

   private

   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   real(ki), parameter :: sqrthalf = &
   & 0.7071067811865475244008443621048490392848359376884740365883398689_ki

   integer, parameter, public :: num_legs = 6
   integer, parameter, public :: num_light_quarks = 2
   integer, parameter, public :: num_heavy_quarks = 2
   integer, parameter, public :: num_quarks = 4
   integer, parameter, public :: num_gluons = 0
   integer, parameter, public :: lo_qcd_couplings = 2
   logical, parameter, public :: corrections_are_qcd = .true.
   integer, parameter, public :: in_helicities = 4
   integer, parameter, public :: symmetry_factor = 1
   real(ki), parameter, public :: es3 = 0.0_ki
   real(ki), parameter, public :: es1 = 0.0_ki
   real(ki), parameter, public :: es2 = 0.0_ki
   real(ki), parameter, public :: es4 = 0.0_ki
   
   real(ki), public :: es234
   real(ki), public :: es345
   real(ki), public :: es12
   real(ki), public :: es56
   real(ki), public :: es23
   real(ki), public :: es61
   real(ki), public :: es123
   real(ki), public :: es6
   real(ki), public :: es5
   real(ki), public :: es45
   real(ki), public :: es34
   
   complex(ki), public :: spak1k2, spbk2k1
   complex(ki), public :: spak1k3, spbk3k1
   complex(ki), public :: spak1k4, spbk4k1
   complex(ki), public :: spak1l5, spbl5k1
   complex(ki), public :: spak1l6, spbl6k1
   complex(ki), public :: spak2k3, spbk3k2
   complex(ki), public :: spak2k4, spbk4k2
   complex(ki), public :: spak2l5, spbl5k2
   complex(ki), public :: spak2l6, spbl6k2
   complex(ki), public :: spak3k4, spbk4k3
   complex(ki), public :: spak3l5, spbl5k3
   complex(ki), public :: spak3l6, spbl6k3
   complex(ki), public :: spak4l5, spbl5k4
   complex(ki), public :: spak4l6, spbl6k4
   complex(ki), public :: spal5l6, spbl6l5
   complex(ki), dimension(4), public :: spvak1k2
   complex(ki), dimension(4), public :: spvak1k3
   complex(ki), dimension(4), public :: spvak1k4
   complex(ki), dimension(4), public :: spvak1l5
   complex(ki), dimension(4), public :: spvak1l6
   complex(ki), dimension(4), public :: spvak2k1
   complex(ki), dimension(4), public :: spvak2k3
   complex(ki), dimension(4), public :: spvak2k4
   complex(ki), dimension(4), public :: spvak2l5
   complex(ki), dimension(4), public :: spvak2l6
   complex(ki), dimension(4), public :: spvak3k1
   complex(ki), dimension(4), public :: spvak3k2
   complex(ki), dimension(4), public :: spvak3k4
   complex(ki), dimension(4), public :: spvak3l5
   complex(ki), dimension(4), public :: spvak3l6
   complex(ki), dimension(4), public :: spvak4k1
   complex(ki), dimension(4), public :: spvak4k2
   complex(ki), dimension(4), public :: spvak4k3
   complex(ki), dimension(4), public :: spvak4l5
   complex(ki), dimension(4), public :: spvak4l6
   complex(ki), dimension(4), public :: spval5k1
   complex(ki), dimension(4), public :: spval5k2
   complex(ki), dimension(4), public :: spval5k3
   complex(ki), dimension(4), public :: spval5k4
   complex(ki), dimension(4), public :: spval5l6
   complex(ki), dimension(4), public :: spval6k1
   complex(ki), dimension(4), public :: spval6k2
   complex(ki), dimension(4), public :: spval6k3
   complex(ki), dimension(4), public :: spval6k4
   complex(ki), dimension(4), public :: spval6l5
   real(ki), dimension(4), public :: k1
   real(ki), dimension(4), public :: k2
   real(ki), dimension(4), public :: k3
   real(ki), dimension(4), public :: k4
   real(ki), dimension(4), public :: k5
   real(ki), dimension(4), public :: k6
   real(ki), dimension(4), public :: l5
   real(ki), dimension(4), public :: l6

   ! Polarisation vectors and related symbols

   interface epsi
      module procedure epsi0
      module procedure epsim
   end interface

   interface epso
      module procedure epso0
      module procedure epsom
   end interface

   interface dotproduct
      module procedure dotproduct_rr
      module procedure dotproduct_rc
      module procedure dotproduct_cr
      module procedure dotproduct_cc
   end interface dotproduct

   interface Spab3
      module procedure Spab3_complex
      module procedure Spab3_mcfm
      module procedure Spab3_mcfmc
      module procedure Spab3_vec
   end interface

   interface Spba3
      module procedure Spba3_complex
      module procedure Spba3_real
   end interface

   public :: Spaa, Spbb, Spab3, Spba3, dotproduct
   public :: inspect_kinematics, init_event
   public :: adjust_kinematics
   public :: lambda
   public :: epsi, epso

contains
!---#[ subroutine inspect_kinematics:
   subroutine     inspect_kinematics(unit)
      implicit none
      integer, optional, intent(in) :: unit
      real(ki), dimension(4) :: zero
      integer :: ch

      if (present(unit)) then
         ch = unit
      else
         ch = 5
      end if
      zero(:) = 0.0_ki
      
      write(ch,*) "<momentum index='1' inout='in'>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='E' value='", k1(1), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='x' value='", k1(2), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='y' value='", k1(3), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='z' value='", k1(4), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='m' value='", real(0, ki), "'/>"
      write(ch,*) "<!-- k1.k1 = ", &
         & dotproduct(k1,k1), "-->"
      write(ch,*) "</momentum>"
      write(ch,*) "<momentum index='2' inout='in'>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='E' value='", k2(1), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='x' value='", k2(2), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='y' value='", k2(3), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='z' value='", k2(4), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='m' value='", real(0, ki), "'/>"
      write(ch,*) "<!-- k2.k2 = ", &
         & dotproduct(k2,k2), "-->"
      write(ch,*) "</momentum>"
      write(ch,*) "<momentum index='3' inout='out'>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='E' value='", k3(1), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='x' value='", k3(2), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='y' value='", k3(3), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='z' value='", k3(4), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='m' value='", real(0, ki), "'/>"
      write(ch,*) "<!-- k3.k3 = ", &
         & dotproduct(k3,k3), "-->"
      write(ch,*) "</momentum>"
      write(ch,*) "<momentum index='4' inout='out'>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='E' value='", k4(1), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='x' value='", k4(2), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='y' value='", k4(3), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='z' value='", k4(4), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='m' value='", real(0, ki), "'/>"
      write(ch,*) "<!-- k4.k4 = ", &
         & dotproduct(k4,k4), "-->"
      write(ch,*) "</momentum>"
      write(ch,*) "<momentum index='5' inout='out'>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='E' value='", k5(1), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='x' value='", k5(2), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='y' value='", k5(3), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='z' value='", k5(4), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='m' value='", real(mB, ki), "'/>"
      write(ch,*) "<!-- k5.k5 = ", &
         & dotproduct(k5,k5), "-->"
      write(ch,*) "</momentum>"
      write(ch,*) "<momentum index='6' inout='out'>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='E' value='", k6(1), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='x' value='", k6(2), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='y' value='", k6(3), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='z' value='", k6(4), "'/>"
      write(ch,'(A27,G24.16,A3)') &
         & "<component name='m' value='", real(mB, ki), "'/>"
      write(ch,*) "<!-- k6.k6 = ", &
         & dotproduct(k6,k6), "-->"
      write(ch,*) "</momentum>"
      write(ch,*) "<!-- es234 = ", es234, "-->"
      write(ch,*) "<!-- es345 = ", es345, "-->"
      write(ch,*) "<!-- es12 = ", es12, "-->"
      write(ch,*) "<!-- es56 = ", es56, "-->"
      write(ch,*) "<!-- es23 = ", es23, "-->"
      write(ch,*) "<!-- es61 = ", es61, "-->"
      write(ch,*) "<!-- es123 = ", es123, "-->"
      write(ch,*) "<!-- es6 = ", es6, "-->"
      write(ch,*) "<!-- es5 = ", es5, "-->"
      write(ch,*) "<!-- es45 = ", es45, "-->"
      write(ch,*) "<!-- es34 = ", es34, "-->"
   end subroutine inspect_kinematics
!---#] subroutine inspect_kinematics:
!---#[ subroutine init_event:
   subroutine     init_event(vecs)
      use p0_dbaru_epnebbbar_config, only: debug_numpolvec, logfile
      use p0_dbaru_epnebbbar_model
      implicit none
      real(ki), dimension(num_legs,4), intent(in) :: vecs

      call invalidate_cache()
      k1 = vecs(1,:)
      k2 = vecs(2,:)
      k3 = vecs(3,:)
      k4 = vecs(4,:)
      k5 = vecs(5,:)
      k6 = vecs(6,:)
      ! mass1 = 'mB', mass2 = '0'
      call light_cone_decomposition(k5, l5, k2, mB)
      ! mass1 = 'mB', mass2 = '0'
      call light_cone_decomposition(k6, l6, k2, mB)
      es234 = 2.0_ki*dotproduct(vecs(2,:), -vecs(3,:))&
            & + 2.0_ki*dotproduct(vecs(2,:), -vecs(4,:))&
            & + 2.0_ki*dotproduct(-vecs(3,:), -vecs(4,:))
      es345 = 2.0_ki*dotproduct(-vecs(3,:), -vecs(4,:))&
            & + 2.0_ki*dotproduct(-vecs(3,:), -vecs(5,:))&
            & + 2.0_ki*dotproduct(-vecs(4,:), -vecs(5,:))&
            & + mB**2
      es12 = 2.0_ki*dotproduct(vecs(1,:), vecs(2,:))
      es56 = mB**2&
            & + 2.0_ki*dotproduct(-vecs(5,:), -vecs(6,:))&
            & + mB**2
      es23 = 2.0_ki*dotproduct(vecs(2,:), -vecs(3,:))
      es61 = mB**2&
            & + 2.0_ki*dotproduct(-vecs(6,:), vecs(1,:))
      es123 = 2.0_ki*dotproduct(vecs(1,:), vecs(2,:))&
            & + 2.0_ki*dotproduct(vecs(1,:), -vecs(3,:))&
            & + 2.0_ki*dotproduct(vecs(2,:), -vecs(3,:))
      es6 = mB**2
      es5 = mB**2
      es45 = 2.0_ki*dotproduct(-vecs(4,:), -vecs(5,:))&
            & + mB**2
      es34 = 2.0_ki*dotproduct(-vecs(3,:), -vecs(4,:))
      spak1k2 = Spaa(k1, k2)
      spbk2k1 = Spbb(k2, k1)
      spak1k3 = Spaa(k1, k3)
      spbk3k1 = Spbb(k3, k1)
      spak1k4 = Spaa(k1, k4)
      spbk4k1 = Spbb(k4, k1)
      spak1l5 = Spaa(k1, l5)
      spbl5k1 = Spbb(l5, k1)
      spak1l6 = Spaa(k1, l6)
      spbl6k1 = Spbb(l6, k1)
      spak2k3 = Spaa(k2, k3)
      spbk3k2 = Spbb(k3, k2)
      spak2k4 = Spaa(k2, k4)
      spbk4k2 = Spbb(k4, k2)
      spak2l5 = Spaa(k2, l5)
      spbl5k2 = Spbb(l5, k2)
      spak2l6 = Spaa(k2, l6)
      spbl6k2 = Spbb(l6, k2)
      spak3k4 = Spaa(k3, k4)
      spbk4k3 = Spbb(k4, k3)
      spak3l5 = Spaa(k3, l5)
      spbl5k3 = Spbb(l5, k3)
      spak3l6 = Spaa(k3, l6)
      spbl6k3 = Spbb(l6, k3)
      spak4l5 = Spaa(k4, l5)
      spbl5k4 = Spbb(l5, k4)
      spak4l6 = Spaa(k4, l6)
      spbl6k4 = Spbb(l6, k4)
      spal5l6 = Spaa(l5, l6)
      spbl6l5 = Spbb(l6, l5)
      spvak1k2 = Spab3_vec(k1, k2)
      spvak1k3 = Spab3_vec(k1, k3)
      spvak1k4 = Spab3_vec(k1, k4)
      spvak1l5 = Spab3_vec(k1, l5)
      spvak1l6 = Spab3_vec(k1, l6)
      spvak2k1 = Spab3_vec(k2, k1)
      spvak2k3 = Spab3_vec(k2, k3)
      spvak2k4 = Spab3_vec(k2, k4)
      spvak2l5 = Spab3_vec(k2, l5)
      spvak2l6 = Spab3_vec(k2, l6)
      spvak3k1 = Spab3_vec(k3, k1)
      spvak3k2 = Spab3_vec(k3, k2)
      spvak3k4 = Spab3_vec(k3, k4)
      spvak3l5 = Spab3_vec(k3, l5)
      spvak3l6 = Spab3_vec(k3, l6)
      spvak4k1 = Spab3_vec(k4, k1)
      spvak4k2 = Spab3_vec(k4, k2)
      spvak4k3 = Spab3_vec(k4, k3)
      spvak4l5 = Spab3_vec(k4, l5)
      spvak4l6 = Spab3_vec(k4, l6)
      spval5k1 = Spab3_vec(l5, k1)
      spval5k2 = Spab3_vec(l5, k2)
      spval5k3 = Spab3_vec(l5, k3)
      spval5k4 = Spab3_vec(l5, k4)
      spval5l6 = Spab3_vec(l5, l6)
      spval6k1 = Spab3_vec(l6, k1)
      spval6k2 = Spab3_vec(l6, k2)
      spval6k3 = Spab3_vec(l6, k3)
      spval6k4 = Spab3_vec(l6, k4)
      spval6l5 = Spab3_vec(l6, l5)
      if(.true.) then
         if (debug_numpolvec) then
            write(logfile, "(A17)") "<!-- NUMPOLVEC --"
            write(logfile, "(A18)") "  -- NUMPOLVEC -->"
         end if
      end if
   end subroutine init_event
!---#] subroutine init_event:
!---#[ subroutine light_cone_decomposition:
   pure subroutine light_cone_decomposition(vec, lvec, vref, mass)
      implicit none
      real(ki), dimension(4), intent(in) :: vec, vref
      real(ki), dimension(4), intent(out) :: lvec
      real(ki), intent(in) :: mass

      real(ki) :: alpha

      alpha = 2.0_ki * dotproduct(vec, vref)

      if (abs(alpha) < 1.0E+3_ki * epsilon(1.0_ki)) then
         lvec = vec
      else
         lvec = vec - mass * mass / alpha * vref
      end if
   end  subroutine light_cone_decomposition
!---#] subroutine light_cone_decomposition:
!---#[ subroutine light_cone_splitting_iter:
   pure subroutine light_cone_splitting_iter(pI, pJ, li, lj, mI, mJ)
      ! Iteratively applies
      !   li = pI - mI^2/(2*pI.lj) * lj
      !   lj = pJ - mJ^2/(2*pJ.li) * li

      implicit none
      real(ki), dimension(4), intent(in) :: pI, pJ
      real(ki), dimension(4), intent(out) :: li, lj
      real(ki), intent(in) :: mI, mJ

      integer :: i
      real(ki) :: mmI, mmJ, lipJ, pIlj

      mmI = mI*mI
      mmJ = mJ*mJ

      lj = pJ
      do i = 1, 10
         pIlj = 2.0_ki * dotproduct(pI, lj)
         li = pI - mmI/pIlj * lj
         lipJ = 2.0_ki * dotproduct(li, pJ)
         lj = pJ - mmJ/lipJ * li
      end do
   end  subroutine light_cone_splitting_iter
!---#] subroutine light_cone_splitting_iter:
!---#[ subroutine light_cone_splitting_alg:
   pure subroutine light_cone_splitting_alg(pI, pJ, li, lj, mI, mJ)
      ! Splits pI (pI.pI=mI*mI) and pJ (pJ.pJ=mJ*mJ)
      ! into a pair li (li.li=0) and lj (lj.lj=0).
      !
      ! To achieve this, the equation (pI+alpha*pJ)**2 == 0 is solved:
      !   alpha**2 * pJ.pJ + 2 * alpha * pI.pJ + pI.pI == 0
      !   mJ**2 * (alpha**2 + 2 * alpha * t + u**2) == 0
      ! with
      !   t = pI.pJ / mJ**2
      !   u**2 = mI**2/mJ**2
      !
      ! ==> alpha = - t +/- sqrt(det)
      !     det   = t**2 - u**2

      implicit none
      real(ki), dimension(4), intent(in) :: pI, pJ
      real(ki), dimension(4), intent(out) :: li, lj
      real(ki), intent(in) :: mI, mJ

      real(ki) :: det, t, u, pq

      pq = dotproduct(pI/mI, pJ/mJ)

      u = mI/mJ
      t = pq * u

      det = (1.0_ki+1.0_ki/pq)*(1.0_ki-1.0_ki/pq)
      if (det > 0.0_ki) then
         det = sqrt(1.0_ki+1.0_ki/pq)*sqrt(1.0_ki-1.0_ki/pq)

         li = pI - t * (1.0_ki + det) * pJ
         lj = pI - t * (1.0_ki - det) * pJ
      else
         li(:) = 0.0_ki
         lj(:) = 0.0_ki
      end if
   end  subroutine light_cone_splitting_alg
!---#] subroutine light_cone_splitting_alg:
!---#[ function Spbb:
   pure function Spbb(p, q)
      implicit none
      real(ki), dimension(4), intent(in) :: p, q
      complex(ki) :: Spbb
      Spbb = sign(1.0_ki, dotproduct(p, q)) * conjg(Spaa(q, p))
   end  function Spbb
!---#] function Spbb:
!---#[ function Spab3_complex:
   pure function Spab3_complex(k1, Q, k2)
      implicit none
      complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)

      real(ki), dimension(4), intent(in) :: k1, k2
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki) :: Spab3_complex

      real(ki), dimension(4) :: R, J

      R = real(Q)
      J = aimag(Q)

      Spab3_complex = Spab3_mcfm(k1, R, k2) &
                  & + i_ * Spab3_mcfm(k1, J, k2)
   end  function Spab3_complex
!---#] function Spab3_complex:
!---#[ function Spab3_vec:
   pure function Spab3_vec(k1, k2)
      implicit none
      complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)

      real(ki), dimension(4), intent(in) :: k1, k2
      complex(ki), dimension(0:3) :: Spab3_vec

      Spab3_vec(0) =   Spab3_mcfm(k1, &
         & (/1.0_ki, 0.0_ki, 0.0_ki, 0.0_ki/), k2)
      Spab3_vec(1) = - Spab3_mcfm(k1, &
         & (/0.0_ki, 1.0_ki, 0.0_ki, 0.0_ki/), k2)
      Spab3_vec(2) = - Spab3_mcfm(k1, &
         & (/0.0_ki, 0.0_ki, 1.0_ki, 0.0_ki/), k2)
      Spab3_vec(3) = - Spab3_mcfm(k1, &
         & (/0.0_ki, 0.0_ki, 0.0_ki, 1.0_ki/), k2)
   end  function Spab3_vec
!---#] function Spab3_vec:
!---#[ function Spaa:
   pure function Spaa(k1, k2)
      ! This routine has been copied from mcfm and adapted to our setup
      implicit none
      real(ki), dimension(0:3), intent(in) :: k1, k2
      complex(ki) :: Spaa

      real(ki) :: rt1, rt2
      complex(ki) :: c231, c232, f1, f2
!---if one of the vectors happens to be zero this routine fails.
!-----positive energy case
         if (k1(0) .gt. 0.0_ki) then
            rt1=sqrt(k1(0)+k1(1))
            c231=cmplx(k1(3),-k1(2), ki)
            f1=1.0_ki
         else
!-----negative energy case
            rt1=sqrt(-k1(0)-k1(1))
            c231=cmplx(-k1(3),k1(2), ki)
            f1=(0.0_ki, 1.0_ki)
         endif
!-----positive energy case
         if (k2(0) .gt. 0.0_ki) then
            rt2=sqrt(k2(0)+k2(1))
            c232=cmplx(k2(3),-k2(2), ki)
            f2=1.0_ki
         else
!-----negative energy case
            rt2=sqrt(-k2(0)-k2(1))
            c232=cmplx(-k2(3),k2(2), ki)
            f2=(0.0_ki, 1.0_ki)
         endif

         Spaa = -f2*f1*(c232*rt1/rt2-c231*rt2/rt1)
   end  function Spaa
!---#] function Spaa:
!---#[ function Spab3_mcfm:
   pure function Spab3_mcfm(k1, Q, k2)
      ! This routine has been copied from mcfm and adapted to our setup
      implicit none
      real(ki), dimension(0:3), intent(in) :: k1, k2
      real(ki), dimension(0:3), intent(in) :: Q
      complex(ki) :: Spab3_mcfm

      real(ki) :: kp, km
      complex(ki) :: kr, kl
      complex(ki) :: pr1, pr2, pl1, pl2
      complex(ki) :: f1, f2
      real(ki) :: flip1, flip2, rt1, rt2

      !--setup components for vector which is contracted in
      kp=+Q(0)+Q(1)
      km=+Q(0)-Q(1)
      kr=cmplx(+Q(3),-Q(2),ki)
      kl=cmplx(+Q(3),+Q(2),ki)

      !---if one of the vectors happens to be zero this routine fails.
      if(all(abs(Q) < 1.0E+2_ki * epsilon(1.0_ki))) then
         Spab3_mcfm = 0.0_ki
         return
      end if

      !-----positive energy case
      if (k1(0) .gt. 0.0_ki) then
         flip1=1.0_ki
         f1=1.0_ki
      else
         flip1=-1.0_ki
         f1=(0.0_ki, 1.0_ki)
      endif
      rt1=sqrt(flip1*(k1(0)+k1(1)))
      pr1=cmplx(flip1*k1(3),-flip1*k1(2), ki)
      pl1=conjg(pr1)

      if (k2(0) .gt. 0.0_ki) then
         flip2=1.0_ki
         f2=1.0_ki
      else
         flip2=-1.0_ki
         f2=(0.0_ki, 1.0_ki)
      endif
      rt2=sqrt(flip2*(k2(0)+k2(1)))
      pr2=cmplx(flip2*k2(3),-flip2*k2(2), ki)
      pl2=conjg(pr2)

      Spab3_mcfm=f1*f2*(&
     &     pr1/rt1*(pl2*kp/rt2-kl*rt2)&
     &    +rt1*(rt2*km-kr*pl2/rt2))
   end  function Spab3_mcfm
!---#] function Spab3_mcfm:
!---#[ function Spab3_mcfmc:
   pure function Spab3_mcfmc(k1, Q, k2)
      ! This routine has been copied from mcfm and adapted to our setup
      implicit none
      complex(ki), dimension(0:3), intent(in) :: k1, k2
      complex(ki), dimension(0:3), intent(in) :: Q
      complex(ki) :: Spab3_mcfmc

      complex(ki) :: kp, km
      complex(ki) :: kr, kl
      complex(ki) :: pr1, pr2, pl1, pl2
      complex(ki) :: rt1, rt2

      !--setup components for vector which is contracted in
      kp=+Q(0)+Q(1)
      km=+Q(0)-Q(1)
      kr=+Q(3)-Q(2)*(0.0_ki, 1.0_ki)
      kl=+Q(3)+Q(2)*(0.0_ki, 1.0_ki)

      !---if one of the vectors happens to be zero this routine fails.
      if(all(abs(Q) < 1.0E+2_ki * epsilon(1.0_ki))) then
         Spab3_mcfmc = 0.0_ki
         return
      end if

      rt1=sqrt((k1(0)+k1(1)))
      pr1=k1(3)-k1(2) * (0.0_ki, 1.0_ki)
      pl1=conjg(pr1)

      rt2=sqrt((k2(0)+k2(1)))
      pr2=k2(3)-k2(2) * (0.0_ki, 1.0_ki)
      pl2=conjg(pr2)

      Spab3_mcfmc=(&
     &     pr1/rt1*(pl2*kp/rt2-kl*rt2)&
     &    +rt1*(rt2*km-kr*pl2/rt2))
   end  function Spab3_mcfmc
!---#] function Spab3_mcfmc:
!---#[ function Spba3_complex:
   pure function Spba3_complex(k1, Q, k2)
      implicit none
      real(ki), dimension(4), intent(in) :: k1, k2
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki) :: Spba3_complex

      Spba3_complex = Spab3_complex(k2, Q, k1)
   end  function Spba3_complex
!---#] function Spba3_complex:
!---#[ function Spba3_real:
   pure function Spba3_real(k1, Q, k2)
      implicit none
      real(ki), dimension(4), intent(in) :: k1, k2
      real(ki), dimension(4), intent(in) :: Q
      complex(ki) :: Spba3_real

      Spba3_real = Spab3_mcfm(k2, Q, k1)
   end  function Spba3_real
!---#] function Spba3_real:
!---#[ functions dotproduct_XX:
   !----#[ function dotproduct_rr:
   pure function dotproduct_rr(p, q)
      implicit none
      real(ki), dimension(4), intent(in) :: p, q
      real(ki) :: dotproduct_rr
      dotproduct_rr = p(1)*q(1) - p(2)*q(2) - p(3)*q(3) - p(4)*q(4)
   end  function dotproduct_rr
   !----#] function dotproduct_rr:
   !----#[ function dotproduct_cc:
   pure function dotproduct_cc(p, q)
      implicit none
      complex(ki), dimension(4), intent(in) :: p, q
      complex(ki) :: dotproduct_cc
      dotproduct_cc = p(1)*q(1) - p(2)*q(2) - p(3)*q(3) - p(4)*q(4)
   end  function dotproduct_cc
   !----#] function dotproduct_cc:
   !----#[ function dotproduct_rc:
   pure function dotproduct_rc(p, q)
      implicit none
      real(ki), dimension(4), intent(in) :: p
      complex(ki), dimension(4), intent(in) :: q
      complex(ki) :: dotproduct_rc
      dotproduct_rc = p(1)*q(1) - p(2)*q(2) - p(3)*q(3) - p(4)*q(4)
   end  function dotproduct_rc
   !----#] function dotproduct_rc:
   !----#[ function dotproduct_cr:
   pure function dotproduct_cr(p, q)
      implicit none
      complex(ki), dimension(4), intent(in) :: p
      real(ki), dimension(4), intent(in) :: q
      complex(ki) :: dotproduct_cr
      dotproduct_cr = p(1)*q(1) - p(2)*q(2) - p(3)*q(3) - p(4)*q(4)
   end  function dotproduct_cr
   !----#] function dotproduct_cr:
!---#] functions dotproduct_XX:
   !---#[ function lambda :
   pure function lambda(x, y, z)
      implicit none
      real(ki), intent(in) :: x, y, z
      real(ki) :: lambda, tmp

      lambda = x - y
      tmp    = x + y
      lambda = lambda * lambda
      lambda = lambda + z*(z - tmp - tmp)
   end  function lambda
   !---#] function lambda :
   !---#[ subroutine adjust_kinematics :
   ! Moves the given vectors slightly such that the on-shell conditions
   ! and momentum conservation are improved.
   pure subroutine adjust_kinematics(vecs)
      implicit none
      real(ki), dimension(6,4), intent(inout) :: vecs

      real(ki) :: p02, p12, Sz, SE, s0, s1
      real(ki) :: z0, z1, z0a, z0b, E0, E1, E0a, E0b
      real(ki) :: a, b, c, d, x, y
      integer :: i

      ! Put particles onshell.
      vecs(1,1) = sqrt(vecs(1,2)**2 + vecs(1,3)**2 + vecs(1,4)**2)
      vecs(2,1) = sqrt(vecs(2,2)**2 + vecs(2,3)**2 + vecs(2,4)**2)
      vecs(3,1) = sqrt(vecs(3,2)**2 + vecs(3,3)**2 + vecs(3,4)**2)
      vecs(4,1) = sqrt(vecs(4,2)**2 + vecs(4,3)**2 + vecs(4,4)**2)
      s0 = mB**2
      s1 = mB**2
      ! Momentum conservation in x- and y- direction
      vecs(6,2) = sum(vecs(1:2,2)) - sum(vecs(3:5,2))
      vecs(6,3) = sum(vecs(1:2,3)) - sum(vecs(3:5,3))

      SE = sum(vecs(3:4,1)) - sum(vecs(1:2,1))
      Sz = sum(vecs(3:4,4)) - sum(vecs(1:2,4))
      p02 = vecs(5,2)**2 + vecs(5,3)**2 + s0
      p12 = vecs(6,2)**2 + vecs(6,3)**2 + s1

      x = Sz/SE
      y = (p12 - p02)/(SE*SE)

      ! Solve a*z0^2 + b*z0 + c = 0

      a = (x - 1.0_ki) * (x + 1.0_ki)
      b = Sz*(a + y)
      c = 0.25_ki * SE*SE * (a*(x*x + 2.0_ki*y - 1.0_ki) + y*y) - p02

      if (abs(a) .lt. epsilon(1.0_ki) * 1.0E+02_ki) then
         ! linear equation
         z0 = - c / b
         E0 = 0.5_ki*SE*(a + y) + z0*x
      else
         ! quadratic equation
         d = b*b-4.0_ki*a*c
         c = 0.5_ki*SE*(a+y)

         if (d .lt. 0.0_ki) then
            ! assume d == 0 because d < 0 must be numerical inaccuracy
            z0 = 0.5_ki * (-b)/a
            E0 = c + z0*x
         else
            d = sqrt(d)

            z0a = 0.5_ki*(- b + d)/a
            z0b = 0.5_ki*(- b - d)/a
            E0a = c + z0a*x
            E0b = c + z0b*x

            if (abs(E0a - vecs(5,1)) + abs(z0a - vecs(5,4)) .lt. abs(E0b - vecs(5,1)) + abs(z0b - vecs(5,4))) then
                 E0 = E0a
                 z0 = z0a
            else
                 E0 = E0b
                 z0 = z0b
            end if
         end if
      end if

      z1 = - z0 - Sz
      E1 = - E0 - SE

      ! Adjust the last two vectors:
      vecs(5,1) = E0
      vecs(5,4) = z0
      vecs(6,1) = E1
      vecs(6,4) = z1
   end subroutine adjust_kinematics
   !---#] subroutine adjust_kinematics :
   !---#[ function epsi0 :
   pure function epsi0(k, q, s) result(eps)
      implicit none

      real(ki), dimension(0:3), intent(in) :: k, q
      integer, intent(in) :: s
      complex(ki), dimension(0:3) :: eps

      select case(s)
      case(1)
         eps = sqrthalf * Spab3(q,k) / Spaa(q,k)
      case(-1)
         eps = sqrthalf * Spab3(k,q) / Spbb(k,q)
      case default
         eps(:) = (0.0_ki,0.0_ki)
      end select
   end  function epsi0
   !---#] function epsi0 :
   !---#[ function epso0 :
   pure function epso0(k, q, s) result(eps)
      implicit none

      real(ki), dimension(0:3), intent(in) :: k, q
      integer, intent(in) :: s
      complex(ki), dimension(0:3) :: eps

      eps = conjg(epsi0(k, q, s))
   end  function epso0
   !---#] function epso0 :
   !---#[ function epsim :
   pure function epsim(k, q, m, s) result(eps)
      implicit none
      real(ki), dimension(0:3), intent(in) :: k, q
      integer, intent(in) :: s
      real(ki), intent(in) :: m
      complex(ki), dimension(0:3) :: eps

      real(ki), dimension(0:3) :: l

      call light_cone_decomposition(k, l, q, m)

      select case(s)
      case(1)
         eps = sqrthalf * Spab3(q,l) / Spaa(q,l)
      case(-1)
         eps = sqrthalf * Spab3(l,q) / Spbb(l,q)
      case(0)
         eps = (l+l-k)/m
      case default
         eps(:) = (0.0_ki,0.0_ki)
      end select
   end  function epsim
   !---#] function epsim :
   !---#[ function epsom :
   pure function epsom(k, q, m, s) result(eps)
      implicit none
      real(ki), dimension(0:3), intent(in) :: k, q
      integer, intent(in) :: s
      real(ki), intent(in) :: m
      complex(ki), dimension(0:3) :: eps

      eps = conjg(epsim(k, q, m, s))
   end  function epsom
   !---#] function epsom :
end module p0_dbaru_epnebbbar_kinematics
