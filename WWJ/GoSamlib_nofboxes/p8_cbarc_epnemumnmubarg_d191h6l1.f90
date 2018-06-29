module     p8_cbarc_epnemumnmubarg_d191h6l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity6d191h6l1.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd191h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc191(43)
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak6k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: QspQ
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak6k1 = dotproduct(Q,spvak6k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      QspQ = dotproduct(Q,Q)
      acc191(1)=abb191(13)
      acc191(2)=abb191(14)
      acc191(3)=abb191(15)
      acc191(4)=abb191(16)
      acc191(5)=abb191(17)
      acc191(6)=abb191(18)
      acc191(7)=abb191(19)
      acc191(8)=abb191(20)
      acc191(9)=abb191(22)
      acc191(10)=abb191(23)
      acc191(11)=abb191(24)
      acc191(12)=abb191(26)
      acc191(13)=abb191(28)
      acc191(14)=abb191(31)
      acc191(15)=abb191(34)
      acc191(16)=abb191(36)
      acc191(17)=abb191(37)
      acc191(18)=abb191(39)
      acc191(19)=abb191(41)
      acc191(20)=abb191(42)
      acc191(21)=abb191(43)
      acc191(22)=abb191(50)
      acc191(23)=abb191(51)
      acc191(24)=abb191(56)
      acc191(25)=abb191(57)
      acc191(26)=abb191(65)
      acc191(27)=abb191(84)
      acc191(28)=abb191(85)
      acc191(29)=abb191(116)
      acc191(30)=acc191(1)*Qspvak4k3
      acc191(31)=acc191(6)*Qspvak5k3
      acc191(32)=acc191(16)*Qspvak4k6
      acc191(33)=acc191(19)*Qspvak5k6
      acc191(30)=acc191(33)+acc191(32)+acc191(31)+acc191(30)
      acc191(30)=Qspvak7k1*acc191(30)
      acc191(31)=acc191(13)*Qspvak4k3
      acc191(32)=acc191(17)*Qspvak5k3
      acc191(33)=acc191(18)*Qspvak5k6
      acc191(34)=acc191(24)*Qspvak4k6
      acc191(31)=acc191(34)+acc191(33)+acc191(32)+acc191(31)+acc191(7)
      acc191(31)=Qspvak7k2*acc191(31)
      acc191(32)=acc191(21)*Qspvak4k3
      acc191(33)=acc191(23)*Qspvak5k6
      acc191(34)=acc191(25)*Qspvak4k6
      acc191(35)=acc191(26)*Qspvak5k3
      acc191(32)=acc191(35)+acc191(34)+acc191(33)+acc191(32)+acc191(14)
      acc191(32)=Qspk7*acc191(32)
      acc191(33)=acc191(9)*Qspvak7k2
      acc191(34)=acc191(11)*Qspvak7k1
      acc191(35)=acc191(28)*Qspk7
      acc191(33)=-acc191(33)+acc191(34)+acc191(35)-acc191(27)
      acc191(34)=-Qspk3-Qspk4+Qspk6+Qspk5
      acc191(33)=acc191(33)*acc191(34)
      acc191(34)=Qspk1-Qspk2
      acc191(34)=acc191(29)*acc191(34)
      acc191(35)=acc191(2)*Qspvak4k3
      acc191(36)=acc191(5)*Qspvak5k3
      acc191(37)=acc191(20)*Qspvak5k6
      acc191(38)=acc191(22)*Qspvak4k6
      acc191(39)=Qspvak6k1*acc191(15)
      acc191(40)=Qspvak5k1*acc191(10)
      acc191(41)=Qspvak4k1*acc191(3)
      acc191(42)=Qspvak3k1*acc191(4)
      acc191(43)=QspQ*acc191(12)
      brack=acc191(8)+acc191(30)+acc191(31)+acc191(32)+acc191(33)+acc191(34)+ac&
      &c191(35)+acc191(36)+acc191(37)+acc191(38)+acc191(39)+acc191(40)+acc191(4&
      &1)+acc191(42)+acc191(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd191h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d191
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d191 = 0.0_ki
      d191 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d191, ki), aimag(d191), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d191h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd191h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d191
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d191 = 0.0_ki
      d191 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d191, ki), aimag(d191), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p8_cbarc_epnemumnmubarg_d191h6l1
