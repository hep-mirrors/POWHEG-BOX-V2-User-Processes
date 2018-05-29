module     p8_cbarc_epnemumnmubarg_d591h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d591h5l1.f90
   ! generator: buildfortran.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd591h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc591(32)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k4
      complex(ki) :: Qspvak1k4
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      QspQ = dotproduct(Q,Q)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k4 = dotproduct(Q,spvak5k4)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      acc591(1)=abb591(7)
      acc591(2)=abb591(8)
      acc591(3)=abb591(9)
      acc591(4)=abb591(10)
      acc591(5)=abb591(11)
      acc591(6)=abb591(12)
      acc591(7)=abb591(13)
      acc591(8)=abb591(14)
      acc591(9)=abb591(15)
      acc591(10)=abb591(16)
      acc591(11)=abb591(17)
      acc591(12)=abb591(18)
      acc591(13)=abb591(19)
      acc591(14)=abb591(20)
      acc591(15)=abb591(21)
      acc591(16)=abb591(22)
      acc591(17)=abb591(23)
      acc591(18)=abb591(24)
      acc591(19)=abb591(25)
      acc591(20)=abb591(26)
      acc591(21)=abb591(28)
      acc591(22)=abb591(29)
      acc591(23)=acc591(7)*Qspvak1k2
      acc591(24)=-acc591(19)*Qspvak5k2
      acc591(23)=acc591(24)+acc591(23)+acc591(5)
      acc591(23)=acc591(23)*Qspvak7k2
      acc591(24)=acc591(3)*Qspvak1k2
      acc591(25)=acc591(13)*Qspvak5k2
      acc591(23)=acc591(25)+acc591(24)+acc591(23)
      acc591(23)=Qspvak4k3*acc591(23)
      acc591(24)=-acc591(21)*Qspvak4k2
      acc591(25)=acc591(9)*Qspvak1k2
      acc591(26)=-acc591(17)*Qspvak5k2
      acc591(24)=acc591(26)+acc591(25)+acc591(24)
      acc591(25)=Qspk3+Qspk4
      acc591(24)=acc591(25)*acc591(24)
      acc591(26)=acc591(8)*Qspvak1k2
      acc591(27)=acc591(18)*Qspvak5k2
      acc591(28)=acc591(22)*Qspvak4k2
      acc591(26)=acc591(28)+acc591(27)+acc591(26)+acc591(4)
      acc591(26)=QspQ*acc591(26)
      acc591(27)=acc591(6)*Qspvak4k3
      acc591(27)=acc591(27)+acc591(1)
      acc591(27)=Qspvak4k2*acc591(27)
      acc591(28)=acc591(16)*Qspvak7k2
      acc591(28)=acc591(28)+acc591(14)
      acc591(28)=Qspvak5k3*acc591(28)
      acc591(29)=acc591(21)*Qspvak4k3
      acc591(29)=acc591(2)+acc591(29)
      acc591(29)=Qspvak3k2*acc591(29)
      acc591(30)=acc591(15)*Qspvak7k2
      acc591(30)=acc591(30)+acc591(11)
      acc591(30)=Qspvak1k3*acc591(30)
      acc591(25)=-QspQ+acc591(25)
      acc591(25)=acc591(10)*Qspvak7k2*acc591(25)
      acc591(31)=Qspvak5k4*acc591(12)
      acc591(32)=Qspvak1k4*acc591(20)
      brack=acc591(23)+acc591(24)+acc591(25)+acc591(26)+acc591(27)+acc591(28)+a&
      &cc591(29)+acc591(30)+acc591(31)+acc591(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd591h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d591
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d591 = 0.0_ki
      d591 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d591, ki), aimag(d591), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d591h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd591h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d591
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d591 = 0.0_ki
      d591 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d591, ki), aimag(d591), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p8_cbarc_epnemumnmubarg_d591h5l1
