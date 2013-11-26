module     p9_csbar_epnebbbarg_d307h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d307h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd307h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc307(76)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval5e7
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      QspQ = dotproduct(Q,Q)
      Qspval5e7 = dotproduct(Q,spval5e7)
      acc307(1)=abb307(8)
      acc307(2)=abb307(9)
      acc307(3)=abb307(10)
      acc307(4)=abb307(11)
      acc307(5)=abb307(12)
      acc307(6)=abb307(13)
      acc307(7)=abb307(14)
      acc307(8)=abb307(15)
      acc307(9)=abb307(16)
      acc307(10)=abb307(17)
      acc307(11)=abb307(18)
      acc307(12)=abb307(19)
      acc307(13)=abb307(20)
      acc307(14)=abb307(21)
      acc307(15)=abb307(22)
      acc307(16)=abb307(23)
      acc307(17)=abb307(24)
      acc307(18)=abb307(25)
      acc307(19)=abb307(26)
      acc307(20)=abb307(27)
      acc307(21)=abb307(28)
      acc307(22)=abb307(29)
      acc307(23)=abb307(30)
      acc307(24)=abb307(31)
      acc307(25)=abb307(32)
      acc307(26)=abb307(33)
      acc307(27)=abb307(34)
      acc307(28)=abb307(35)
      acc307(29)=abb307(36)
      acc307(30)=abb307(37)
      acc307(31)=abb307(38)
      acc307(32)=abb307(39)
      acc307(33)=abb307(40)
      acc307(34)=abb307(41)
      acc307(35)=abb307(42)
      acc307(36)=abb307(43)
      acc307(37)=abb307(44)
      acc307(38)=abb307(45)
      acc307(39)=abb307(46)
      acc307(40)=abb307(47)
      acc307(41)=abb307(48)
      acc307(42)=abb307(49)
      acc307(43)=abb307(50)
      acc307(44)=abb307(51)
      acc307(45)=abb307(52)
      acc307(46)=abb307(53)
      acc307(47)=abb307(54)
      acc307(48)=abb307(55)
      acc307(49)=abb307(56)
      acc307(50)=abb307(57)
      acc307(51)=abb307(58)
      acc307(52)=abb307(62)
      acc307(53)=abb307(63)
      acc307(54)=abb307(65)
      acc307(55)=abb307(66)
      acc307(56)=abb307(67)
      acc307(57)=abb307(68)
      acc307(58)=abb307(70)
      acc307(59)=abb307(71)
      acc307(60)=abb307(72)
      acc307(61)=abb307(75)
      acc307(62)=abb307(76)
      acc307(63)=abb307(78)
      acc307(64)=-Qspk1+Qspk4+Qspk3
      acc307(65)=-acc307(13)*acc307(64)
      acc307(66)=Qspval5k1*acc307(56)
      acc307(67)=Qspval5k3*acc307(57)
      acc307(68)=Qspval6k1*acc307(38)
      acc307(69)=Qspval6k3*acc307(50)
      acc307(70)=Qspvak4k1*acc307(40)
      acc307(71)=Qspvak4k3*acc307(61)
      acc307(65)=acc307(71)+acc307(70)+acc307(69)+acc307(68)+acc307(67)+acc307(&
      &1)+acc307(66)+acc307(65)
      acc307(65)=Qspk2*acc307(65)
      acc307(66)=acc307(53)*acc307(64)
      acc307(67)=Qspvak2k1*acc307(11)
      acc307(68)=Qspvak2k3*acc307(33)
      acc307(69)=Qspvak4k1*acc307(6)
      acc307(70)=Qspvak4k3*acc307(63)
      acc307(66)=acc307(70)+acc307(69)+acc307(67)+acc307(68)+acc307(66)
      acc307(66)=Qspval6k2*acc307(66)
      acc307(67)=Qspvak2k1*acc307(49)
      acc307(68)=Qspvak2k3*acc307(31)
      acc307(67)=acc307(68)+acc307(67)
      acc307(67)=Qspval5k2*acc307(67)
      acc307(68)=acc307(48)*acc307(64)
      acc307(69)=Qspl6*acc307(43)
      acc307(70)=Qspvak2l6*acc307(15)
      acc307(71)=Qspval5k1*acc307(58)
      acc307(72)=Qspval5k3*acc307(55)
      acc307(73)=Qspvak4k1*acc307(21)
      acc307(74)=Qspvak4k3*acc307(47)
      acc307(65)=acc307(65)+acc307(66)+acc307(74)+acc307(73)+acc307(72)+acc307(&
      &71)+acc307(70)+acc307(25)+acc307(69)+acc307(68)+acc307(67)
      acc307(65)=Qspe7*acc307(65)
      acc307(66)=acc307(36)*acc307(64)
      acc307(67)=Qspval6k1*acc307(54)
      acc307(68)=Qspval6k3*acc307(52)
      acc307(69)=Qspvak2k1*acc307(3)
      acc307(70)=Qspvak2k3*acc307(32)
      acc307(71)=Qspvak4k1*acc307(2)
      acc307(72)=Qspvak4k3*acc307(5)
      acc307(66)=acc307(72)+acc307(71)+acc307(70)+acc307(69)+acc307(68)+acc307(&
      &19)+acc307(67)+acc307(66)
      acc307(66)=Qspvak7k2*acc307(66)
      acc307(67)=-acc307(10)*acc307(64)
      acc307(68)=Qspval5k7*acc307(28)
      acc307(69)=Qspvak4k1*acc307(23)
      acc307(70)=Qspvak4k3*acc307(60)
      acc307(67)=acc307(70)+acc307(69)+acc307(35)+acc307(68)+acc307(67)
      acc307(67)=Qspk2*acc307(67)
      acc307(68)=Qspvak2k7*acc307(9)
      acc307(69)=Qspvae7k2*acc307(42)
      acc307(70)=QspQ*acc307(18)
      acc307(68)=-acc307(68)+acc307(69)+acc307(70)+acc307(45)
      acc307(68)=-acc307(68)*acc307(64)
      acc307(69)=Qspvak2k7*acc307(29)
      acc307(70)=Qspvae7k2*acc307(4)
      acc307(71)=QspQ*acc307(7)
      acc307(69)=acc307(71)+acc307(70)+acc307(12)+acc307(69)
      acc307(69)=Qspvak4k1*acc307(69)
      acc307(70)=Qspvak2k7*acc307(22)
      acc307(71)=Qspvae7k2*acc307(46)
      acc307(72)=QspQ*acc307(62)
      acc307(70)=acc307(72)+acc307(71)+acc307(44)+acc307(70)
      acc307(70)=Qspvak4k3*acc307(70)
      acc307(64)=acc307(39)*acc307(64)
      acc307(71)=Qspvak4k1*acc307(8)
      acc307(72)=Qspvak4k3*acc307(59)
      acc307(64)=acc307(72)+acc307(71)+acc307(30)+acc307(64)
      acc307(64)=Qspval6k2*acc307(64)
      acc307(71)=Qspvak2k1*acc307(14)
      acc307(72)=Qspvak2k3*acc307(37)
      acc307(71)=acc307(72)+acc307(24)+acc307(71)
      acc307(71)=Qspval5k7*acc307(71)
      acc307(72)=Qspval5e7*acc307(20)
      acc307(73)=Qspvae7k2*acc307(51)
      acc307(72)=acc307(73)+acc307(16)+acc307(72)
      acc307(72)=QspQ*acc307(72)
      acc307(73)=Qspl6*acc307(41)
      acc307(74)=Qspvak2l6*acc307(26)
      acc307(75)=Qspval5e7*acc307(27)
      acc307(76)=Qspvae7k2*acc307(34)
      brack=acc307(17)+acc307(64)+acc307(65)+acc307(66)+acc307(67)+acc307(68)+a&
      &cc307(69)+acc307(70)+acc307(71)+acc307(72)+acc307(73)+acc307(74)+acc307(&
      &75)+acc307(76)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram307_sign, shift => diagram307_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd307h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd307h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d307h0l1
