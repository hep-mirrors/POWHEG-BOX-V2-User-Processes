module     p0_dbard_epnemumnmubarg_d545h2l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity2d545h2l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd545h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc545(46)
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k1
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc545(1)=abb545(12)
      acc545(2)=abb545(13)
      acc545(3)=abb545(14)
      acc545(4)=abb545(15)
      acc545(5)=abb545(16)
      acc545(6)=abb545(17)
      acc545(7)=abb545(18)
      acc545(8)=abb545(19)
      acc545(9)=abb545(20)
      acc545(10)=abb545(21)
      acc545(11)=abb545(22)
      acc545(12)=abb545(23)
      acc545(13)=abb545(24)
      acc545(14)=abb545(25)
      acc545(15)=abb545(26)
      acc545(16)=abb545(27)
      acc545(17)=abb545(28)
      acc545(18)=abb545(29)
      acc545(19)=abb545(30)
      acc545(20)=abb545(31)
      acc545(21)=abb545(32)
      acc545(22)=abb545(33)
      acc545(23)=abb545(34)
      acc545(24)=abb545(35)
      acc545(25)=abb545(36)
      acc545(26)=abb545(40)
      acc545(27)=abb545(43)
      acc545(28)=abb545(47)
      acc545(29)=abb545(50)
      acc545(30)=abb545(54)
      acc545(31)=abb545(56)
      acc545(32)=abb545(58)
      acc545(33)=abb545(67)
      acc545(34)=abb545(86)
      acc545(35)=abb545(88)
      acc545(36)=abb545(90)
      acc545(37)=abb545(103)
      acc545(38)=-QspQ-Qspk7
      acc545(38)=acc545(34)*acc545(38)
      acc545(39)=-acc545(30)*Qspvak7k1
      acc545(40)=Qspvak2k3*acc545(1)
      acc545(41)=Qspvak2k4*acc545(36)
      acc545(42)=Qspvak2k5*acc545(31)
      acc545(43)=Qspvak2k6*acc545(7)
      acc545(44)=Qspk1*acc545(29)
      acc545(45)=Qspvak2k7*acc545(37)
      acc545(38)=acc545(45)+acc545(44)+acc545(43)+acc545(42)+acc545(41)+acc545(&
      &40)+acc545(6)+acc545(39)+acc545(38)
      acc545(38)=Qspvak2k7*acc545(38)
      acc545(39)=Qspvak4k3*acc545(25)
      acc545(40)=Qspvak4k6*acc545(10)
      acc545(41)=Qspvak5k3*acc545(2)
      acc545(42)=Qspvak5k6*acc545(14)
      acc545(43)=-Qspk6-Qspk5+Qspk4+Qspk3
      acc545(44)=acc545(13)*acc545(43)
      acc545(39)=acc545(44)+acc545(42)+acc545(41)+acc545(40)+acc545(11)+acc545(&
      &39)
      acc545(39)=Qspvak2k7*acc545(39)
      acc545(40)=-Qspk1+Qspk7
      acc545(40)=acc545(21)*acc545(40)
      acc545(41)=Qspvak4k3*acc545(5)
      acc545(42)=Qspvak4k6*acc545(23)
      acc545(44)=Qspvak5k3*acc545(4)
      acc545(45)=Qspvak5k6*acc545(8)
      acc545(43)=-acc545(22)*acc545(43)
      acc545(46)=QspQ*acc545(30)
      acc545(39)=acc545(39)+acc545(46)+acc545(43)+acc545(45)+acc545(44)+acc545(&
      &42)+acc545(19)+acc545(41)+acc545(40)
      acc545(39)=Qspvak2k1*acc545(39)
      acc545(40)=Qspvak2k3*acc545(17)
      acc545(41)=Qspvak2k4*acc545(33)
      acc545(42)=Qspvak2k5*acc545(26)
      acc545(43)=Qspvak2k6*acc545(24)
      acc545(40)=acc545(40)-acc545(41)+acc545(42)-acc545(43)
      acc545(41)=-Qspk7*acc545(40)
      acc545(42)=Qspvak2k3*acc545(16)
      acc545(43)=Qspvak2k4*acc545(35)
      acc545(44)=Qspvak2k5*acc545(28)
      acc545(45)=Qspvak2k6*acc545(18)
      acc545(42)=acc545(45)+acc545(44)+acc545(43)+acc545(27)+acc545(42)
      acc545(42)=QspQ*acc545(42)
      acc545(40)=acc545(9)+acc545(40)
      acc545(40)=Qspk1*acc545(40)
      acc545(43)=Qspvak2k3*acc545(12)
      acc545(44)=Qspvak2k4*acc545(32)
      acc545(45)=Qspvak2k5*acc545(15)
      acc545(46)=Qspvak2k6*acc545(3)
      brack=acc545(20)+acc545(38)+acc545(39)+acc545(40)+acc545(41)+acc545(42)+a&
      &cc545(43)+acc545(44)+acc545(45)+acc545(46)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d545
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d545 = 0.0_ki
      d545 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d545, ki), aimag(d545), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d545h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d545
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d545 = 0.0_ki
      d545 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d545, ki), aimag(d545), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d545h2l1
