module     p0_dbaru_epnebbbar_d27h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity1d27h1l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd27h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc27(70)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k1
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc27(1)=abb27(8)
      acc27(2)=abb27(9)
      acc27(3)=abb27(10)
      acc27(4)=abb27(11)
      acc27(5)=abb27(12)
      acc27(6)=abb27(13)
      acc27(7)=abb27(14)
      acc27(8)=abb27(15)
      acc27(9)=abb27(16)
      acc27(10)=abb27(18)
      acc27(11)=abb27(19)
      acc27(12)=abb27(20)
      acc27(13)=abb27(21)
      acc27(14)=abb27(22)
      acc27(15)=abb27(23)
      acc27(16)=abb27(24)
      acc27(17)=abb27(25)
      acc27(18)=abb27(26)
      acc27(19)=abb27(27)
      acc27(20)=abb27(28)
      acc27(21)=abb27(29)
      acc27(22)=abb27(30)
      acc27(23)=abb27(32)
      acc27(24)=abb27(34)
      acc27(25)=abb27(35)
      acc27(26)=abb27(38)
      acc27(27)=abb27(40)
      acc27(28)=abb27(41)
      acc27(29)=abb27(42)
      acc27(30)=abb27(43)
      acc27(31)=abb27(44)
      acc27(32)=abb27(45)
      acc27(33)=abb27(46)
      acc27(34)=abb27(51)
      acc27(35)=abb27(52)
      acc27(36)=abb27(54)
      acc27(37)=abb27(56)
      acc27(38)=abb27(57)
      acc27(39)=abb27(58)
      acc27(40)=abb27(59)
      acc27(41)=abb27(60)
      acc27(42)=abb27(64)
      acc27(43)=abb27(65)
      acc27(44)=abb27(66)
      acc27(45)=abb27(68)
      acc27(46)=abb27(69)
      acc27(47)=abb27(70)
      acc27(48)=abb27(71)
      acc27(49)=abb27(72)
      acc27(50)=abb27(73)
      acc27(51)=abb27(75)
      acc27(52)=Qspvak2k1*acc27(6)
      acc27(53)=Qspvak2k3*acc27(8)
      acc27(54)=Qspvak2l6*acc27(22)
      acc27(55)=Qspl6*acc27(5)
      acc27(56)=Qspval6k1*acc27(21)
      acc27(57)=QspQ*acc27(19)
      acc27(58)=Qspl5*acc27(17)
      acc27(59)=Qspval6k3*acc27(39)
      acc27(60)=Qspval6l5*acc27(28)
      acc27(61)=-Qspval6l5*acc27(16)
      acc27(61)=acc27(4)+acc27(61)
      acc27(61)=Qspvak4k3*acc27(61)
      acc27(62)=-Qspvak4k3*acc27(45)
      acc27(62)=acc27(1)+acc27(62)
      acc27(62)=Qspk2*acc27(62)
      acc27(52)=acc27(62)+acc27(61)+acc27(60)+acc27(59)+acc27(58)+acc27(57)+acc&
      &27(56)+acc27(55)+acc27(54)+acc27(53)+acc27(2)+acc27(52)
      acc27(52)=Qspvak1k2*acc27(52)
      acc27(53)=Qspvak4k2*acc27(41)
      acc27(54)=Qspval5k2*acc27(49)
      acc27(55)=Qspvak1k3*acc27(24)
      acc27(56)=Qspval6k3*acc27(11)
      acc27(57)=Qspval6k2*acc27(27)
      acc27(58)=Qspvak4k3*acc27(12)
      acc27(59)=Qspk2*acc27(42)
      acc27(53)=acc27(59)+acc27(58)+acc27(57)+acc27(56)+acc27(55)+acc27(54)+acc&
      &27(29)+acc27(53)
      acc27(53)=Qspk2*acc27(53)
      acc27(54)=Qspk1*acc27(30)
      acc27(55)=Qspvak1l6*acc27(48)
      acc27(56)=-Qspvak1k3*acc27(39)
      acc27(57)=-Qspvak1l5*acc27(28)
      acc27(54)=acc27(57)+acc27(56)+acc27(55)+acc27(25)+acc27(54)
      acc27(54)=Qspval6k2*acc27(54)
      acc27(55)=Qspk1*acc27(46)
      acc27(56)=Qspvak1l6*acc27(35)
      acc27(57)=-Qspvak1k3*acc27(36)
      acc27(55)=acc27(57)+acc27(55)+acc27(56)
      acc27(55)=Qspval6l5*acc27(55)
      acc27(56)=Qspl6*acc27(26)
      acc27(57)=Qspval6k1*acc27(31)
      acc27(58)=Qspval6k3*acc27(36)
      acc27(56)=acc27(58)+acc27(57)+acc27(10)+acc27(56)
      acc27(56)=Qspvak1l5*acc27(56)
      acc27(57)=Qspval6l5*acc27(23)
      acc27(58)=Qspvak1l5*acc27(38)
      acc27(59)=Qspvak1l5*acc27(16)
      acc27(59)=acc27(32)+acc27(59)
      acc27(59)=Qspval6k2*acc27(59)
      acc27(57)=acc27(59)+acc27(58)+acc27(7)+acc27(57)
      acc27(57)=Qspvak4k3*acc27(57)
      acc27(58)=QspQ*acc27(13)
      acc27(59)=Qspl5*acc27(14)
      acc27(58)=acc27(58)+acc27(59)
      acc27(58)=Qspvak1k3*acc27(58)
      acc27(59)=QspQ*acc27(50)
      acc27(60)=Qspl5*acc27(47)
      acc27(59)=acc27(59)+acc27(60)
      acc27(59)=Qspval6k3*acc27(59)
      acc27(60)=Qspvak2k1*acc27(18)
      acc27(61)=Qspvak2k3*acc27(3)
      acc27(62)=Qspvak2l6*acc27(51)
      acc27(63)=Qspvak4k2*acc27(20)
      acc27(64)=Qspval5k2*acc27(44)
      acc27(65)=Qspk1*acc27(43)
      acc27(66)=Qspl6*acc27(34)
      acc27(67)=Qspvak1l6*acc27(9)
      acc27(68)=Qspval6k1*acc27(33)
      acc27(69)=QspQ*acc27(37)
      acc27(70)=Qspl5*acc27(40)
      brack=acc27(15)+acc27(52)+acc27(53)+acc27(54)+acc27(55)+acc27(56)+acc27(5&
      &7)+acc27(58)+acc27(59)+acc27(60)+acc27(61)+acc27(62)+acc27(63)+acc27(64)&
      &+acc27(65)+acc27(66)+acc27(67)+acc27(68)+acc27(69)+acc27(70)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram27_sign, shift => diagram27_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd27h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd27h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d27h1l1
