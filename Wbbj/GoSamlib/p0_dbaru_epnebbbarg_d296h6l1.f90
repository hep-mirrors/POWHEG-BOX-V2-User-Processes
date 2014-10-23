module     p0_dbaru_epnebbbarg_d296h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d296h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd296h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc296(51)
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7l6
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      acc296(1)=abb296(10)
      acc296(2)=abb296(11)
      acc296(3)=abb296(12)
      acc296(4)=abb296(13)
      acc296(5)=abb296(14)
      acc296(6)=abb296(15)
      acc296(7)=abb296(16)
      acc296(8)=abb296(17)
      acc296(9)=abb296(18)
      acc296(10)=abb296(19)
      acc296(11)=abb296(20)
      acc296(12)=abb296(21)
      acc296(13)=abb296(22)
      acc296(14)=abb296(23)
      acc296(15)=abb296(24)
      acc296(16)=abb296(25)
      acc296(17)=abb296(26)
      acc296(18)=abb296(29)
      acc296(19)=abb296(30)
      acc296(20)=abb296(31)
      acc296(21)=abb296(32)
      acc296(22)=abb296(33)
      acc296(23)=abb296(34)
      acc296(24)=abb296(36)
      acc296(25)=abb296(38)
      acc296(26)=abb296(39)
      acc296(27)=abb296(40)
      acc296(28)=abb296(41)
      acc296(29)=abb296(42)
      acc296(30)=abb296(43)
      acc296(31)=abb296(44)
      acc296(32)=abb296(46)
      acc296(33)=abb296(55)
      acc296(34)=abb296(59)
      acc296(35)=abb296(61)
      acc296(36)=abb296(62)
      acc296(37)=abb296(65)
      acc296(38)=abb296(72)
      acc296(39)=abb296(76)
      acc296(40)=abb296(82)
      acc296(41)=acc296(12)*Qspvak2k7
      acc296(42)=Qspvak2k3*acc296(14)
      acc296(43)=Qspvak4k3*acc296(5)
      acc296(41)=acc296(43)+acc296(42)+acc296(41)+acc296(1)
      acc296(41)=Qspvak1k2*acc296(41)
      acc296(42)=Qspvak4k3*acc296(6)
      acc296(43)=Qspvak4k3*acc296(11)
      acc296(43)=acc296(2)+acc296(43)
      acc296(43)=Qspvak1k2*acc296(43)
      acc296(42)=acc296(43)+acc296(15)+acc296(42)
      acc296(42)=Qspk2*acc296(42)
      acc296(43)=acc296(22)*Qspvak2k1
      acc296(44)=acc296(10)*Qspvak2l5
      acc296(45)=acc296(4)*Qspvak2l6
      acc296(46)=acc296(3)*Qspvak1l6
      acc296(47)=Qspl6*acc296(37)
      acc296(48)=Qspvak2k3*acc296(20)
      acc296(49)=Qspval6k2*acc296(7)
      acc296(50)=Qspl6*acc296(18)
      acc296(50)=acc296(8)+acc296(50)
      acc296(50)=Qspvak4k3*acc296(50)
      acc296(51)=Qspvak4k3*acc296(19)
      acc296(51)=acc296(32)+acc296(51)
      acc296(51)=QspQ*acc296(51)
      acc296(41)=acc296(42)+acc296(41)+acc296(51)+acc296(50)+acc296(49)+acc296(&
      &48)+acc296(47)+acc296(46)+acc296(45)+acc296(9)+acc296(43)+acc296(44)
      acc296(41)=Qspvak7k2*acc296(41)
      acc296(42)=Qspk7*acc296(29)
      acc296(43)=QspQ*acc296(30)
      acc296(42)=acc296(43)+acc296(28)+acc296(42)
      acc296(42)=Qspvak1k2*acc296(42)
      acc296(43)=Qspvak7l6*acc296(39)
      acc296(44)=Qspk7*acc296(40)
      acc296(45)=-Qspval6k2*acc296(36)
      acc296(46)=Qspvak4k3*acc296(17)
      acc296(47)=QspQ*acc296(25)
      acc296(48)=-Qspvak1k2*acc296(29)
      acc296(48)=acc296(35)+acc296(48)
      acc296(48)=Qspk2*acc296(48)
      acc296(42)=acc296(48)+acc296(42)+acc296(47)+acc296(46)+acc296(45)+acc296(&
      &44)+acc296(24)+acc296(43)
      acc296(42)=Qspk2*acc296(42)
      acc296(43)=Qspvak7l6*acc296(38)
      acc296(44)=Qspk7*acc296(31)
      acc296(45)=-Qspval6k2*acc296(33)
      acc296(46)=Qspvak4k3*acc296(13)
      acc296(47)=QspQ*acc296(23)
      acc296(43)=acc296(47)+acc296(46)+acc296(45)+acc296(44)+acc296(16)+acc296(&
      &43)
      acc296(43)=QspQ*acc296(43)
      acc296(44)=Qspk7*acc296(27)
      acc296(45)=QspQ*acc296(21)
      acc296(44)=acc296(45)+acc296(26)+acc296(44)
      acc296(44)=Qspvak1k2*acc296(44)
      acc296(45)=Qspk7*acc296(36)
      acc296(45)=acc296(34)+acc296(45)
      acc296(45)=Qspval6k2*acc296(45)
      brack=acc296(41)+acc296(42)+acc296(43)+acc296(44)+acc296(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d296h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d296h6l1
