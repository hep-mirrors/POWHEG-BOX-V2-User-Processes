module     p1_dbarc_epnebbbarg_d303h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d303h1l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd303h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc303(79)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l5
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      acc303(1)=abb303(8)
      acc303(2)=abb303(9)
      acc303(3)=abb303(10)
      acc303(4)=abb303(11)
      acc303(5)=abb303(12)
      acc303(6)=abb303(13)
      acc303(7)=abb303(14)
      acc303(8)=abb303(15)
      acc303(9)=abb303(16)
      acc303(10)=abb303(17)
      acc303(11)=abb303(18)
      acc303(12)=abb303(19)
      acc303(13)=abb303(20)
      acc303(14)=abb303(21)
      acc303(15)=abb303(22)
      acc303(16)=abb303(23)
      acc303(17)=abb303(24)
      acc303(18)=abb303(25)
      acc303(19)=abb303(26)
      acc303(20)=abb303(27)
      acc303(21)=abb303(28)
      acc303(22)=abb303(29)
      acc303(23)=abb303(30)
      acc303(24)=abb303(31)
      acc303(25)=abb303(32)
      acc303(26)=abb303(33)
      acc303(27)=abb303(34)
      acc303(28)=abb303(35)
      acc303(29)=abb303(36)
      acc303(30)=abb303(37)
      acc303(31)=abb303(38)
      acc303(32)=abb303(39)
      acc303(33)=abb303(40)
      acc303(34)=abb303(41)
      acc303(35)=abb303(42)
      acc303(36)=abb303(43)
      acc303(37)=abb303(44)
      acc303(38)=abb303(45)
      acc303(39)=abb303(46)
      acc303(40)=abb303(47)
      acc303(41)=abb303(48)
      acc303(42)=abb303(49)
      acc303(43)=abb303(50)
      acc303(44)=abb303(51)
      acc303(45)=abb303(52)
      acc303(46)=abb303(53)
      acc303(47)=abb303(55)
      acc303(48)=abb303(57)
      acc303(49)=abb303(58)
      acc303(50)=abb303(59)
      acc303(51)=abb303(60)
      acc303(52)=abb303(61)
      acc303(53)=abb303(62)
      acc303(54)=abb303(63)
      acc303(55)=abb303(68)
      acc303(56)=abb303(70)
      acc303(57)=abb303(75)
      acc303(58)=abb303(91)
      acc303(59)=abb303(92)
      acc303(60)=Qspvak1k2*acc303(15)
      acc303(61)=Qspvak4k2*acc303(10)
      acc303(60)=acc303(61)+acc303(25)+acc303(60)
      acc303(60)=Qspval6l5*acc303(60)
      acc303(61)=Qspvak1k2*acc303(44)
      acc303(62)=Qspvak4k2*acc303(42)
      acc303(61)=acc303(62)+acc303(11)+acc303(61)
      acc303(61)=Qspk2*acc303(61)
      acc303(62)=-Qspvak1l5*acc303(15)
      acc303(63)=-Qspvak4l5*acc303(10)
      acc303(62)=acc303(63)+acc303(27)+acc303(62)
      acc303(62)=Qspval6k2*acc303(62)
      acc303(63)=Qspl5*acc303(59)
      acc303(64)=Qspvak1l5*acc303(52)
      acc303(65)=Qspvak4l5*acc303(41)
      acc303(66)=QspQ*acc303(21)
      acc303(67)=Qspvak1k2*acc303(18)
      acc303(68)=Qspvak4k2*acc303(31)
      acc303(60)=acc303(62)+acc303(61)+acc303(60)+acc303(68)+acc303(67)+acc303(&
      &66)+acc303(65)+acc303(64)+acc303(48)+acc303(63)
      acc303(60)=Qspe7*acc303(60)
      acc303(61)=acc303(30)*Qspvak2l6
      acc303(62)=acc303(6)*Qspvak2l5
      acc303(63)=Qspk7*acc303(33)
      acc303(64)=Qspvak1l5*acc303(54)
      acc303(65)=Qspvak4l5*acc303(50)
      acc303(66)=QspQ*acc303(35)
      acc303(67)=Qspk2*acc303(2)
      acc303(61)=acc303(67)+acc303(66)+acc303(65)+acc303(64)+acc303(63)+acc303(&
      &62)+acc303(61)+acc303(29)
      acc303(61)=Qspval6k2*acc303(61)
      acc303(62)=Qspvak7k2*acc303(5)
      acc303(63)=Qspvak1k2*acc303(43)
      acc303(64)=Qspvak4k2*acc303(49)
      acc303(65)=Qspvae7k2*acc303(12)
      acc303(66)=Qspval6e7*acc303(3)
      acc303(67)=Qspval6l5*acc303(8)
      acc303(62)=acc303(67)+acc303(66)+acc303(65)+acc303(64)+acc303(63)+acc303(&
      &7)+acc303(62)
      acc303(62)=Qspk2*acc303(62)
      acc303(63)=Qspvae7l5*acc303(55)
      acc303(64)=Qspl5*acc303(26)
      acc303(65)=QspQ*acc303(4)
      acc303(66)=Qspvae7k2*acc303(57)
      acc303(63)=acc303(66)+acc303(65)+acc303(64)+acc303(23)+acc303(63)
      acc303(63)=Qspval6e7*acc303(63)
      acc303(64)=Qspk7*acc303(37)
      acc303(65)=QspQ*acc303(13)
      acc303(66)=-Qspvak1k2*acc303(54)
      acc303(67)=-Qspvak4k2*acc303(50)
      acc303(64)=acc303(67)+acc303(66)+acc303(65)+acc303(22)+acc303(64)
      acc303(64)=Qspval6l5*acc303(64)
      acc303(65)=Qspvak2e7*acc303(20)
      acc303(66)=Qspl5*acc303(47)
      acc303(67)=QspQ*acc303(38)
      acc303(65)=acc303(67)+acc303(66)+acc303(17)+acc303(65)
      acc303(65)=Qspvae7k2*acc303(65)
      acc303(66)=Qspvak2k7*acc303(36)
      acc303(67)=Qspval6k7*acc303(45)
      acc303(66)=acc303(67)+acc303(1)+acc303(66)
      acc303(66)=Qspvak7k2*acc303(66)
      acc303(67)=acc303(40)*Qspval5k2
      acc303(68)=Qspvak2k7*acc303(51)
      acc303(69)=Qspvak7l5*acc303(28)
      acc303(70)=Qspvak2e7*acc303(32)
      acc303(71)=Qspvae7l5*acc303(24)
      acc303(72)=Qspk7*acc303(56)
      acc303(73)=Qspvak7l5*acc303(14)
      acc303(73)=acc303(9)+acc303(73)
      acc303(73)=Qspval6k7*acc303(73)
      acc303(74)=Qspl5*acc303(58)
      acc303(75)=Qspvak1l5*acc303(53)
      acc303(76)=Qspvak4l5*acc303(46)
      acc303(77)=QspQ*acc303(16)
      acc303(78)=Qspvak1k2*acc303(39)
      acc303(79)=Qspvak4k2*acc303(34)
      brack=acc303(19)+acc303(60)+acc303(61)+acc303(62)+acc303(63)+acc303(64)+a&
      &cc303(65)+acc303(66)+acc303(67)+acc303(68)+acc303(69)+acc303(70)+acc303(&
      &71)+acc303(72)+acc303(73)+acc303(74)+acc303(75)+acc303(76)+acc303(77)+ac&
      &c303(78)+acc303(79)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram303_sign, shift => diagram303_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd303h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd303h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d303h1l1