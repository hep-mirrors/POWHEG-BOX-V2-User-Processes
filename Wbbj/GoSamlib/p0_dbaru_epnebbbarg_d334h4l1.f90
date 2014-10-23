module     p0_dbaru_epnebbbarg_d334h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d334h4l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd334h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc334(20)
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      acc334(1)=abb334(12)
      acc334(2)=abb334(13)
      acc334(3)=abb334(14)
      acc334(4)=abb334(15)
      acc334(5)=abb334(16)
      acc334(6)=abb334(18)
      acc334(7)=abb334(23)
      acc334(8)=abb334(25)
      acc334(9)=abb334(29)
      acc334(10)=abb334(31)
      acc334(11)=abb334(32)
      acc334(12)=abb334(35)
      acc334(13)=abb334(36)
      acc334(14)=acc334(9)*Qspval6k7
      acc334(15)=acc334(5)*Qspval6k3
      acc334(16)=acc334(3)*Qspvak1k2
      acc334(17)=Qspk2*acc334(12)
      acc334(18)=Qspl6*acc334(10)
      acc334(19)=Qspval6k2*acc334(1)
      acc334(20)=Qspvak7k2*acc334(13)
      acc334(14)=acc334(20)+acc334(19)+acc334(18)+acc334(17)+acc334(16)+acc334(&
      &15)+acc334(14)+acc334(6)
      acc334(14)=Qspvak7k2*acc334(14)
      acc334(15)=acc334(7)*QspQ
      acc334(16)=Qspk2*acc334(11)
      acc334(17)=Qspval6k2*acc334(2)
      acc334(18)=-Qspk7+Qspl6
      acc334(18)=acc334(8)*acc334(18)
      brack=acc334(4)+acc334(14)+acc334(15)+acc334(16)+acc334(17)+acc334(18)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd334h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d334
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d334 = 0.0_ki
      d334 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d334, ki), aimag(d334), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d334h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd334h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d334
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d334 = 0.0_ki
      d334 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d334, ki), aimag(d334), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d334h4l1
