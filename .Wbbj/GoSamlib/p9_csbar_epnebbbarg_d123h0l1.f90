module     p9_csbar_epnebbbarg_d123h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d123h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd123h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc123(69)
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      acc123(1)=abb123(8)
      acc123(2)=abb123(9)
      acc123(3)=abb123(10)
      acc123(4)=abb123(11)
      acc123(5)=abb123(12)
      acc123(6)=abb123(13)
      acc123(7)=abb123(14)
      acc123(8)=abb123(15)
      acc123(9)=abb123(16)
      acc123(10)=abb123(17)
      acc123(11)=abb123(18)
      acc123(12)=abb123(19)
      acc123(13)=abb123(20)
      acc123(14)=abb123(21)
      acc123(15)=abb123(22)
      acc123(16)=abb123(23)
      acc123(17)=abb123(24)
      acc123(18)=abb123(25)
      acc123(19)=abb123(26)
      acc123(20)=abb123(27)
      acc123(21)=abb123(28)
      acc123(22)=abb123(29)
      acc123(23)=abb123(30)
      acc123(24)=abb123(31)
      acc123(25)=abb123(32)
      acc123(26)=abb123(33)
      acc123(27)=abb123(34)
      acc123(28)=abb123(36)
      acc123(29)=abb123(37)
      acc123(30)=abb123(39)
      acc123(31)=abb123(45)
      acc123(32)=abb123(47)
      acc123(33)=abb123(48)
      acc123(34)=abb123(51)
      acc123(35)=abb123(52)
      acc123(36)=abb123(53)
      acc123(37)=abb123(54)
      acc123(38)=abb123(55)
      acc123(39)=abb123(56)
      acc123(40)=abb123(58)
      acc123(41)=abb123(59)
      acc123(42)=abb123(60)
      acc123(43)=abb123(61)
      acc123(44)=abb123(62)
      acc123(45)=abb123(63)
      acc123(46)=abb123(65)
      acc123(47)=abb123(67)
      acc123(48)=abb123(69)
      acc123(49)=abb123(70)
      acc123(50)=abb123(73)
      acc123(51)=abb123(77)
      acc123(52)=abb123(78)
      acc123(53)=abb123(80)
      acc123(54)=abb123(82)
      acc123(55)=abb123(84)
      acc123(56)=abb123(86)
      acc123(57)=abb123(88)
      acc123(58)=-Qspk1+Qspl6+Qspl5
      acc123(59)=acc123(36)*acc123(58)
      acc123(60)=acc123(27)*Qspvak2l5
      acc123(61)=acc123(26)*Qspvak2k1
      acc123(62)=acc123(22)*Qspvak2l6
      acc123(63)=Qspval5k1*acc123(1)
      acc123(64)=Qspval5k2*acc123(23)
      acc123(65)=Qspval6k1*acc123(14)
      acc123(66)=Qspval6k2*acc123(25)
      acc123(67)=Qspk2*acc123(32)
      acc123(59)=acc123(67)+acc123(66)+acc123(65)+acc123(64)+acc123(63)+acc123(&
      &8)+acc123(62)+acc123(60)+acc123(61)+acc123(59)
      acc123(59)=Qspvak4k3*acc123(59)
      acc123(60)=Qspk4+Qspk3
      acc123(61)=acc123(56)*acc123(60)
      acc123(62)=-acc123(49)*acc123(58)
      acc123(63)=acc123(15)*Qspvak2k3
      acc123(64)=Qspval5k1*acc123(30)
      acc123(65)=Qspval5k2*acc123(33)
      acc123(66)=Qspval6k1*acc123(45)
      acc123(67)=Qspval6k2*acc123(51)
      acc123(68)=QspQ*acc123(4)
      acc123(69)=Qspk2*acc123(16)
      acc123(59)=acc123(59)+acc123(69)+acc123(68)+acc123(67)+acc123(66)+acc123(&
      &65)+acc123(64)+acc123(63)+acc123(6)+acc123(62)+acc123(61)
      acc123(59)=Qspe7*acc123(59)
      acc123(61)=acc123(41)*acc123(60)
      acc123(62)=acc123(37)*acc123(58)
      acc123(63)=Qspval5k1*acc123(44)
      acc123(64)=Qspval5k2*acc123(50)
      acc123(65)=Qspval6k1*acc123(48)
      acc123(66)=Qspval6k2*acc123(55)
      acc123(67)=QspQ*acc123(9)
      acc123(68)=Qspk2*acc123(39)
      acc123(61)=acc123(68)+acc123(67)+acc123(66)+acc123(65)+acc123(64)+acc123(&
      &63)+acc123(20)+acc123(62)+acc123(61)
      acc123(61)=Qspk2*acc123(61)
      acc123(62)=acc123(34)*acc123(58)
      acc123(63)=Qspk7*acc123(29)
      acc123(64)=Qspval5k1*acc123(2)
      acc123(65)=Qspval5k2*acc123(12)
      acc123(66)=Qspval6k1*acc123(10)
      acc123(67)=Qspval6k2*acc123(19)
      acc123(68)=QspQ*acc123(17)
      acc123(69)=Qspk2*acc123(18)
      acc123(62)=acc123(69)+acc123(68)+acc123(67)+acc123(66)+acc123(65)+acc123(&
      &64)+acc123(7)+acc123(63)+acc123(62)
      acc123(62)=Qspvak4k3*acc123(62)
      acc123(63)=-acc123(57)*acc123(58)
      acc123(64)=Qspval5k1*acc123(46)
      acc123(65)=Qspval5k2*acc123(35)
      acc123(66)=Qspval6k1*acc123(53)
      acc123(67)=Qspval6k2*acc123(28)
      acc123(63)=-acc123(63)-acc123(64)+acc123(65)-acc123(66)+acc123(67)+acc123&
      &(52)
      acc123(60)=-acc123(63)*acc123(60)
      acc123(63)=-acc123(5)*acc123(58)
      acc123(64)=Qspval5k1*acc123(43)
      acc123(65)=Qspval5k2*acc123(47)
      acc123(66)=Qspval6k1*acc123(21)
      acc123(67)=Qspval6k2*acc123(54)
      acc123(63)=acc123(67)+acc123(66)+acc123(65)+acc123(64)+acc123(3)+acc123(6&
      &3)
      acc123(63)=QspQ*acc123(63)
      acc123(58)=acc123(42)*acc123(58)
      acc123(64)=Qspk7*acc123(38)
      acc123(65)=Qspval5k1*acc123(40)
      acc123(66)=Qspval5k2*acc123(31)
      acc123(67)=Qspval6k1*acc123(11)
      acc123(68)=Qspval6k2*acc123(24)
      brack=acc123(13)+acc123(58)+acc123(59)+acc123(60)+acc123(61)+acc123(62)+a&
      &cc123(63)+acc123(64)+acc123(65)+acc123(66)+acc123(67)+acc123(68)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram123_sign, shift => diagram123_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd123h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd123h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d123h0l1
