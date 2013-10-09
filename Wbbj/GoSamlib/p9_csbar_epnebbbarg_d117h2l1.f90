module     p9_csbar_epnebbbarg_d117h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d117h2l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd117h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc117(86)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk7
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspk7 = dotproduct(Q,k7)
      acc117(1)=abb117(9)
      acc117(2)=abb117(10)
      acc117(3)=abb117(11)
      acc117(4)=abb117(12)
      acc117(5)=abb117(13)
      acc117(6)=abb117(14)
      acc117(7)=abb117(15)
      acc117(8)=abb117(16)
      acc117(9)=abb117(17)
      acc117(10)=abb117(18)
      acc117(11)=abb117(19)
      acc117(12)=abb117(20)
      acc117(13)=abb117(21)
      acc117(14)=abb117(22)
      acc117(15)=abb117(23)
      acc117(16)=abb117(24)
      acc117(17)=abb117(25)
      acc117(18)=abb117(26)
      acc117(19)=abb117(27)
      acc117(20)=abb117(28)
      acc117(21)=abb117(29)
      acc117(22)=abb117(30)
      acc117(23)=abb117(31)
      acc117(24)=abb117(32)
      acc117(25)=abb117(33)
      acc117(26)=abb117(34)
      acc117(27)=abb117(35)
      acc117(28)=abb117(36)
      acc117(29)=abb117(37)
      acc117(30)=abb117(38)
      acc117(31)=abb117(39)
      acc117(32)=abb117(40)
      acc117(33)=abb117(41)
      acc117(34)=abb117(42)
      acc117(35)=abb117(43)
      acc117(36)=abb117(44)
      acc117(37)=abb117(45)
      acc117(38)=abb117(46)
      acc117(39)=abb117(47)
      acc117(40)=abb117(48)
      acc117(41)=abb117(49)
      acc117(42)=abb117(50)
      acc117(43)=abb117(51)
      acc117(44)=abb117(52)
      acc117(45)=abb117(53)
      acc117(46)=abb117(54)
      acc117(47)=abb117(55)
      acc117(48)=abb117(56)
      acc117(49)=abb117(57)
      acc117(50)=abb117(58)
      acc117(51)=abb117(59)
      acc117(52)=abb117(60)
      acc117(53)=abb117(61)
      acc117(54)=abb117(62)
      acc117(55)=abb117(63)
      acc117(56)=abb117(64)
      acc117(57)=abb117(66)
      acc117(58)=abb117(68)
      acc117(59)=abb117(69)
      acc117(60)=abb117(70)
      acc117(61)=abb117(71)
      acc117(62)=abb117(72)
      acc117(63)=abb117(73)
      acc117(64)=abb117(75)
      acc117(65)=abb117(86)
      acc117(66)=abb117(95)
      acc117(67)=abb117(97)
      acc117(68)=abb117(147)
      acc117(69)=Qspvak4k1*acc117(59)
      acc117(70)=Qspvak2k1*acc117(20)
      acc117(69)=acc117(70)+acc117(16)+acc117(69)
      acc117(69)=Qspk2*acc117(69)
      acc117(70)=Qspvak4k1*acc117(62)
      acc117(71)=Qspvak2k1*acc117(56)
      acc117(70)=acc117(71)+acc117(43)+acc117(70)
      acc117(70)=Qspval5l6*acc117(70)
      acc117(71)=Qspl6+Qspl5
      acc117(72)=acc117(66)*acc117(71)
      acc117(73)=acc117(12)*Qspval6k1
      acc117(74)=Qspvak2l5*acc117(52)
      acc117(75)=Qspvak4l5*acc117(55)
      acc117(76)=Qspval5k1*acc117(31)
      acc117(77)=Qspvak2l6*acc117(24)
      acc117(78)=Qspvak2k7*acc117(35)
      acc117(79)=Qspvak4k2*acc117(17)
      acc117(80)=Qspvak4l6*acc117(40)
      acc117(81)=Qspvak4k7*acc117(36)
      acc117(82)=Qspvak7k1*acc117(39)
      acc117(83)=Qspvak4k1*acc117(57)
      acc117(84)=Qspk1*acc117(58)
      acc117(85)=Qspvak2k1*acc117(10)
      acc117(86)=QspQ*acc117(68)
      acc117(69)=acc117(70)+acc117(69)+acc117(86)+acc117(85)+acc117(84)+acc117(&
      &83)+acc117(82)+acc117(81)+acc117(80)+acc117(79)+acc117(78)+acc117(77)+ac&
      &c117(76)+acc117(75)+acc117(74)+acc117(73)+acc117(11)+acc117(72)
      acc117(69)=Qspe7*acc117(69)
      acc117(70)=Qspval5k1*acc117(33)
      acc117(72)=Qspvak2l6*acc117(5)
      acc117(73)=Qspvak4k2*acc117(7)
      acc117(74)=Qspvak4l6*acc117(27)
      acc117(75)=-Qspvak4k1*acc117(67)
      acc117(76)=Qspvak2k1*acc117(18)
      acc117(77)=Qspvae7k1*acc117(21)
      acc117(70)=acc117(77)+acc117(76)+acc117(75)+acc117(74)+acc117(73)+acc117(&
      &72)+acc117(15)+acc117(70)
      acc117(70)=QspQ*acc117(70)
      acc117(72)=Qspvak2k7*acc117(63)
      acc117(73)=Qspvak4k7*acc117(38)
      acc117(74)=Qspvak7k1*acc117(41)
      acc117(75)=Qspk1*acc117(61)
      acc117(76)=Qspvae7k1*acc117(1)
      acc117(77)=Qspk7*acc117(9)
      acc117(78)=QspQ*acc117(22)
      acc117(72)=acc117(78)+acc117(77)+acc117(76)+acc117(75)+acc117(74)+acc117(&
      &73)+acc117(3)+acc117(72)
      acc117(72)=Qspk2*acc117(72)
      acc117(73)=Qspvak2k7*acc117(64)
      acc117(74)=Qspvak4k7*acc117(46)
      acc117(75)=Qspvak7k1*acc117(30)
      acc117(76)=Qspk1*acc117(45)
      acc117(77)=Qspvae7k1*acc117(29)
      acc117(78)=Qspk7*acc117(44)
      acc117(79)=QspQ*acc117(42)
      acc117(73)=acc117(79)+acc117(78)+acc117(77)+acc117(76)+acc117(75)+acc117(&
      &74)+acc117(25)+acc117(73)
      acc117(73)=Qspval5l6*acc117(73)
      acc117(74)=Qspval5k1*acc117(32)
      acc117(75)=Qspvak2l6*acc117(49)
      acc117(76)=Qspvak4k2*acc117(37)
      acc117(77)=Qspvak4l6*acc117(50)
      acc117(78)=Qspvak2k1*acc117(19)
      acc117(79)=Qspvae7k1*acc117(4)
      acc117(74)=acc117(79)+acc117(78)+acc117(77)+acc117(76)+acc117(75)+acc117(&
      &65)+acc117(74)
      acc117(74)=Qspk7*acc117(74)
      acc117(75)=Qspvak4k1*acc117(60)
      acc117(76)=Qspvak2k1*acc117(54)
      acc117(75)=acc117(76)+acc117(51)+acc117(75)
      acc117(75)=Qspk1*acc117(75)
      acc117(76)=-acc117(47)*acc117(71)
      acc117(77)=Qspvak2l5*acc117(8)
      acc117(78)=Qspvak4l5*acc117(53)
      acc117(79)=Qspvak2l6*acc117(14)
      acc117(80)=Qspvak2k7*acc117(34)
      acc117(81)=Qspvak4k2*acc117(6)
      acc117(82)=Qspvak4l6*acc117(48)
      acc117(83)=Qspvak4k7*acc117(28)
      acc117(84)=Qspvak7k1*acc117(13)
      acc117(71)=-acc117(23)*acc117(71)
      acc117(71)=acc117(2)+acc117(71)
      acc117(71)=Qspvae7k1*acc117(71)
      brack=acc117(26)+acc117(69)+acc117(70)+acc117(71)+acc117(72)+acc117(73)+a&
      &cc117(74)+acc117(75)+acc117(76)+acc117(77)+acc117(78)+acc117(79)+acc117(&
      &80)+acc117(81)+acc117(82)+acc117(83)+acc117(84)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram117_sign, shift => diagram117_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd117h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d117
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d117 = 0.0_ki
      d117 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d117, ki), aimag(d117), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd117h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d117
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d117 = 0.0_ki
      d117 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d117, ki), aimag(d117), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d117h2l1
