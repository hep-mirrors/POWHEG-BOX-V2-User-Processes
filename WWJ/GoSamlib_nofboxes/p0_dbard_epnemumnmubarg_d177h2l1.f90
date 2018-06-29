module     p0_dbard_epnemumnmubarg_d177h2l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity2d177h2l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd177h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc177(33)
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc177(1)=abb177(13)
      acc177(2)=abb177(14)
      acc177(3)=abb177(15)
      acc177(4)=abb177(17)
      acc177(5)=abb177(18)
      acc177(6)=abb177(19)
      acc177(7)=abb177(21)
      acc177(8)=abb177(23)
      acc177(9)=abb177(24)
      acc177(10)=abb177(25)
      acc177(11)=abb177(26)
      acc177(12)=abb177(28)
      acc177(13)=abb177(29)
      acc177(14)=abb177(39)
      acc177(15)=abb177(40)
      acc177(16)=abb177(41)
      acc177(17)=abb177(96)
      acc177(18)=abb177(109)
      acc177(19)=abb177(114)
      acc177(20)=abb177(115)
      acc177(21)=abb177(131)
      acc177(22)=abb177(134)
      acc177(23)=Qspvak4k3*acc177(13)
      acc177(24)=Qspvak4k6*acc177(4)
      acc177(25)=Qspvak5k3*acc177(11)
      acc177(26)=Qspvak5k6*acc177(9)
      acc177(27)=-Qspk6-Qspk5+Qspk4+Qspk3
      acc177(28)=-acc177(8)*acc177(27)
      acc177(23)=acc177(28)+acc177(26)+acc177(25)+acc177(24)+acc177(3)+acc177(2&
      &3)
      acc177(23)=Qspvak2k1*acc177(23)
      acc177(24)=Qspvak4k3*acc177(20)
      acc177(25)=Qspvak4k6*acc177(22)
      acc177(26)=Qspvak5k3*acc177(21)
      acc177(28)=Qspvak5k6*acc177(19)
      acc177(27)=-acc177(17)*acc177(27)
      acc177(24)=acc177(27)+acc177(28)+acc177(26)+acc177(25)+acc177(6)+acc177(2&
      &4)
      acc177(24)=Qspvak2k7*acc177(24)
      acc177(25)=acc177(18)*Qspvak2k5
      acc177(26)=acc177(16)*Qspvak7k1
      acc177(27)=acc177(15)*QspQ
      acc177(28)=acc177(14)*Qspk7
      acc177(29)=acc177(12)*Qspvak2k6
      acc177(30)=acc177(10)*Qspvak2k4
      acc177(31)=acc177(7)*Qspvak2k3
      acc177(32)=acc177(5)*Qspk1
      acc177(33)=acc177(1)*Qspvak1k7
      brack=acc177(2)+acc177(23)+acc177(24)+acc177(25)+acc177(26)+acc177(27)+ac&
      &c177(28)+acc177(29)+acc177(30)+acc177(31)+acc177(32)+acc177(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd177h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d177
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d177 = 0.0_ki
      d177 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d177, ki), aimag(d177), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d177h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd177h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d177
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d177 = 0.0_ki
      d177 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d177, ki), aimag(d177), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d177h2l1
