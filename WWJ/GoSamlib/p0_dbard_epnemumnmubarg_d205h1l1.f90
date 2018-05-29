module     p0_dbard_epnemumnmubarg_d205h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d205h1l1.f90
   ! generator: buildfortran.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd205h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc205(29)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      acc205(1)=abb205(14)
      acc205(2)=abb205(15)
      acc205(3)=abb205(16)
      acc205(4)=abb205(17)
      acc205(5)=abb205(18)
      acc205(6)=abb205(20)
      acc205(7)=abb205(26)
      acc205(8)=abb205(27)
      acc205(9)=abb205(34)
      acc205(10)=abb205(37)
      acc205(11)=abb205(38)
      acc205(12)=abb205(48)
      acc205(13)=abb205(62)
      acc205(14)=abb205(63)
      acc205(15)=abb205(65)
      acc205(16)=Qspk3+Qspk4
      acc205(16)=acc205(12)*acc205(16)
      acc205(17)=-Qspk5-Qspk6
      acc205(17)=acc205(13)*acc205(17)
      acc205(18)=Qspvak6k2*acc205(15)
      acc205(19)=Qspvak5k6*acc205(10)
      acc205(20)=Qspvak5k3*acc205(8)
      acc205(21)=Qspvak5k2*acc205(1)
      acc205(22)=Qspvak4k6*acc205(4)
      acc205(23)=Qspvak4k3*acc205(6)
      acc205(24)=Qspvak4k2*acc205(3)
      acc205(25)=Qspvak3k2*acc205(5)
      acc205(26)=Qspvak1k7*acc205(2)
      acc205(27)=Qspk7*acc205(11)
      acc205(28)=Qspk2*acc205(14)
      acc205(29)=Qspk1*acc205(9)
      brack=acc205(7)+acc205(16)+acc205(17)+acc205(18)+acc205(19)+acc205(20)+ac&
      &c205(21)+acc205(22)+acc205(23)+acc205(24)+acc205(25)+acc205(26)+acc205(2&
      &7)+acc205(28)+acc205(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd205h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d205
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d205 = 0.0_ki
      d205 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d205, ki), aimag(d205), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d205h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd205h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d205
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d205 = 0.0_ki
      d205 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d205, ki), aimag(d205), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d205h1l1
