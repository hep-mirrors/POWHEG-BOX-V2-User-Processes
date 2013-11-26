module     p9_csbar_epnebbbarg_d75h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d75h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd75h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc75(88)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2e7
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k1
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc75(1)=abb75(7)
      acc75(2)=abb75(8)
      acc75(3)=abb75(9)
      acc75(4)=abb75(10)
      acc75(5)=abb75(11)
      acc75(6)=abb75(12)
      acc75(7)=abb75(13)
      acc75(8)=abb75(14)
      acc75(9)=abb75(15)
      acc75(10)=abb75(16)
      acc75(11)=abb75(17)
      acc75(12)=abb75(18)
      acc75(13)=abb75(19)
      acc75(14)=abb75(20)
      acc75(15)=abb75(21)
      acc75(16)=abb75(23)
      acc75(17)=abb75(24)
      acc75(18)=abb75(25)
      acc75(19)=abb75(26)
      acc75(20)=abb75(27)
      acc75(21)=abb75(28)
      acc75(22)=abb75(29)
      acc75(23)=abb75(31)
      acc75(24)=abb75(32)
      acc75(25)=abb75(33)
      acc75(26)=abb75(34)
      acc75(27)=abb75(36)
      acc75(28)=abb75(37)
      acc75(29)=abb75(38)
      acc75(30)=abb75(39)
      acc75(31)=abb75(40)
      acc75(32)=abb75(41)
      acc75(33)=abb75(43)
      acc75(34)=abb75(45)
      acc75(35)=abb75(48)
      acc75(36)=abb75(49)
      acc75(37)=abb75(50)
      acc75(38)=abb75(52)
      acc75(39)=abb75(55)
      acc75(40)=abb75(56)
      acc75(41)=abb75(58)
      acc75(42)=abb75(60)
      acc75(43)=abb75(61)
      acc75(44)=abb75(62)
      acc75(45)=abb75(64)
      acc75(46)=abb75(67)
      acc75(47)=abb75(68)
      acc75(48)=abb75(69)
      acc75(49)=abb75(70)
      acc75(50)=abb75(71)
      acc75(51)=abb75(72)
      acc75(52)=abb75(73)
      acc75(53)=abb75(74)
      acc75(54)=abb75(76)
      acc75(55)=abb75(77)
      acc75(56)=abb75(78)
      acc75(57)=abb75(81)
      acc75(58)=abb75(82)
      acc75(59)=abb75(83)
      acc75(60)=abb75(84)
      acc75(61)=abb75(85)
      acc75(62)=abb75(86)
      acc75(63)=abb75(87)
      acc75(64)=abb75(88)
      acc75(65)=abb75(91)
      acc75(66)=abb75(92)
      acc75(67)=acc75(63)*Qspvak2l6
      acc75(68)=acc75(65)*Qspvak2k7
      acc75(67)=acc75(68)+acc75(67)+acc75(2)
      acc75(67)=acc75(67)*Qspe7
      acc75(68)=acc75(16)*Qspvak7l5
      acc75(69)=acc75(20)*Qspvae7l6
      acc75(70)=acc75(25)*Qspval6l5
      acc75(71)=acc75(34)*Qspvae7l5
      acc75(72)=acc75(39)*Qspk2
      acc75(73)=acc75(43)*Qspvak4k1
      acc75(74)=acc75(59)*Qspvak2l6
      acc75(75)=acc75(64)*Qspvak2k7
      acc75(76)=-Qspvak3k1*acc75(30)
      acc75(67)=acc75(75)+acc75(74)+acc75(69)+acc75(67)+acc75(76)+acc75(73)+acc&
      &75(72)+acc75(71)+acc75(29)+acc75(70)+acc75(68)
      acc75(67)=Qspvak4k3*acc75(67)
      acc75(68)=acc75(30)*Qspvak4k1
      acc75(69)=Qspl6+Qspk7
      acc75(70)=-acc75(35)*acc75(69)
      acc75(71)=acc75(26)*Qspe7
      acc75(72)=acc75(37)*Qspk2
      acc75(73)=acc75(41)*Qspvak2e7
      acc75(74)=acc75(42)*Qspvae7l6
      acc75(75)=acc75(48)*Qspvak4k3
      acc75(68)=acc75(75)+acc75(74)+acc75(73)+acc75(72)+acc75(71)+acc75(14)+acc&
      &75(70)+acc75(68)
      acc75(68)=QspQ*acc75(68)
      acc75(70)=Qspk3+Qspk4
      acc75(71)=acc75(70)-Qspk2
      acc75(72)=-acc75(50)*acc75(71)
      acc75(73)=acc75(7)*Qspvak2k1
      acc75(74)=Qspvak2k1*Qspvak4k3
      acc75(75)=acc75(10)*acc75(74)
      acc75(76)=acc75(27)*Qspvak4k3
      acc75(77)=acc75(45)*Qspvak2e7
      acc75(78)=Qspvak2e7*Qspvak4k3
      acc75(79)=acc75(51)*acc75(78)
      acc75(72)=acc75(79)+acc75(77)+acc75(76)+acc75(22)+acc75(75)+acc75(73)+acc&
      &75(72)
      acc75(69)=acc75(69)*acc75(72)
      acc75(72)=acc75(3)*Qspvak2k1
      acc75(73)=acc75(6)*acc75(74)
      acc75(75)=acc75(17)*Qspvak2l6
      acc75(76)=acc75(33)*Qspvae7l6
      acc75(77)=acc75(62)*Qspvak2k7
      acc75(72)=acc75(77)+acc75(76)+acc75(23)+acc75(75)+acc75(73)+acc75(72)
      acc75(72)=Qspvak2e7*acc75(72)
      acc75(73)=acc75(40)*Qspvae7l6
      acc75(75)=acc75(47)*Qspe7
      acc75(76)=-acc75(54)*Qspvak2e7
      acc75(73)=acc75(76)+acc75(75)+acc75(73)
      acc75(73)=acc75(71)*acc75(73)
      acc75(75)=acc75(1)*Qspe7
      acc75(76)=acc75(9)*Qspvae7l6
      acc75(77)=acc75(15)*Qspk2
      acc75(75)=acc75(77)+acc75(76)+acc75(4)+acc75(75)
      acc75(75)=Qspvak2k1*acc75(75)
      acc75(76)=acc75(8)*Qspe7
      acc75(77)=acc75(18)*Qspk2
      acc75(79)=acc75(21)*Qspvae7l6
      acc75(76)=acc75(79)+acc75(77)+acc75(76)+acc75(5)
      acc75(74)=acc75(74)*acc75(76)
      acc75(76)=acc75(44)*Qspvae7l6
      acc75(77)=acc75(53)*Qspvak2l6
      acc75(79)=acc75(66)*Qspvak2k7
      acc75(76)=acc75(79)+acc75(77)+acc75(76)+acc75(11)
      acc75(76)=acc75(78)*acc75(76)
      acc75(77)=Qspk2*acc75(70)
      acc75(78)=Qspk2**2
      acc75(77)=-acc75(78)+acc75(77)
      acc75(77)=acc75(49)*acc75(77)
      acc75(78)=acc75(13)*Qspe7
      acc75(78)=acc75(46)+acc75(78)
      acc75(78)=Qspvak2l6*acc75(78)
      acc75(71)=acc75(36)*acc75(71)
      acc75(71)=acc75(28)+acc75(71)
      acc75(71)=Qspvak4k1*acc75(71)
      acc75(79)=acc75(61)*Qspe7
      acc75(79)=acc75(79)+acc75(52)
      acc75(79)=Qspvak2k7*acc75(79)
      acc75(70)=acc75(32)*acc75(70)
      acc75(80)=acc75(19)*Qspvae7l6
      acc75(81)=acc75(24)*Qspk2
      acc75(82)=acc75(31)*Qspval6l5
      acc75(83)=acc75(38)*Qspe7
      acc75(84)=acc75(55)*Qspvae7l5
      acc75(85)=acc75(56)*Qspvak7l5
      acc75(86)=Qspvae7k1*acc75(58)
      acc75(87)=Qspvak7k1*acc75(60)
      acc75(88)=Qspval6k1*acc75(57)
      brack=acc75(12)+acc75(67)+acc75(68)+acc75(69)+acc75(70)+acc75(71)+acc75(7&
      &2)+acc75(73)+acc75(74)+acc75(75)+acc75(76)+acc75(77)+acc75(78)+acc75(79)&
      &+acc75(80)+acc75(81)+acc75(82)+acc75(83)+acc75(84)+acc75(85)+acc75(86)+a&
      &cc75(87)+acc75(88)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram75_sign, shift => diagram75_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd75h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd75h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d75h3l1
