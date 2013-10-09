module     p5_usbar_epnebbbarg_d124h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d124h0l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd124h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc124(66)
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc124(1)=abb124(9)
      acc124(2)=abb124(10)
      acc124(3)=abb124(11)
      acc124(4)=abb124(12)
      acc124(5)=abb124(13)
      acc124(6)=abb124(14)
      acc124(7)=abb124(15)
      acc124(8)=abb124(16)
      acc124(9)=abb124(17)
      acc124(10)=abb124(18)
      acc124(11)=abb124(19)
      acc124(12)=abb124(20)
      acc124(13)=abb124(21)
      acc124(14)=abb124(22)
      acc124(15)=abb124(23)
      acc124(16)=abb124(24)
      acc124(17)=abb124(26)
      acc124(18)=abb124(27)
      acc124(19)=abb124(28)
      acc124(20)=abb124(30)
      acc124(21)=abb124(32)
      acc124(22)=abb124(33)
      acc124(23)=abb124(34)
      acc124(24)=abb124(35)
      acc124(25)=abb124(36)
      acc124(26)=abb124(37)
      acc124(27)=abb124(38)
      acc124(28)=abb124(39)
      acc124(29)=abb124(40)
      acc124(30)=abb124(41)
      acc124(31)=abb124(42)
      acc124(32)=abb124(43)
      acc124(33)=abb124(45)
      acc124(34)=abb124(46)
      acc124(35)=abb124(48)
      acc124(36)=abb124(49)
      acc124(37)=abb124(50)
      acc124(38)=abb124(51)
      acc124(39)=abb124(52)
      acc124(40)=abb124(53)
      acc124(41)=abb124(54)
      acc124(42)=abb124(56)
      acc124(43)=abb124(59)
      acc124(44)=abb124(61)
      acc124(45)=abb124(63)
      acc124(46)=abb124(65)
      acc124(47)=abb124(66)
      acc124(48)=abb124(67)
      acc124(49)=abb124(68)
      acc124(50)=abb124(72)
      acc124(51)=abb124(74)
      acc124(52)=abb124(75)
      acc124(53)=abb124(76)
      acc124(54)=-Qspk1+Qspl6+Qspl5
      acc124(55)=-acc124(37)*acc124(54)
      acc124(56)=acc124(14)*Qspvak2l5
      acc124(57)=acc124(12)*Qspvak2l6
      acc124(58)=acc124(6)*Qspvak2k1
      acc124(59)=Qspk2*acc124(16)
      acc124(60)=Qspval5k1*acc124(1)
      acc124(61)=Qspval5k2*acc124(40)
      acc124(62)=Qspval6k1*acc124(2)
      acc124(63)=Qspval6k2*acc124(39)
      acc124(55)=acc124(63)+acc124(62)+acc124(61)+acc124(60)+acc124(59)+acc124(&
      &58)+acc124(10)+acc124(56)+acc124(57)+acc124(55)
      acc124(55)=Qspvak4k3*acc124(55)
      acc124(56)=Qspk4+Qspk3
      acc124(57)=Qspk7+acc124(56)
      acc124(57)=acc124(22)*acc124(57)
      acc124(58)=-acc124(23)*acc124(54)
      acc124(59)=acc124(18)*Qspvak2k7
      acc124(60)=acc124(13)*Qspvak2k3
      acc124(61)=Qspk2*acc124(25)
      acc124(62)=Qspval5k1*acc124(7)
      acc124(63)=Qspval5k2*acc124(51)
      acc124(64)=Qspval6k1*acc124(32)
      acc124(65)=Qspval6k2*acc124(46)
      acc124(66)=QspQ*acc124(15)
      acc124(55)=acc124(55)+acc124(66)+acc124(65)+acc124(64)+acc124(63)+acc124(&
      &62)+acc124(61)+acc124(8)+acc124(59)+acc124(60)+acc124(58)+acc124(57)
      acc124(55)=Qspe7*acc124(55)
      acc124(57)=acc124(36)*acc124(54)
      acc124(58)=Qspvak2e7*acc124(43)
      acc124(59)=Qspk2*acc124(24)
      acc124(60)=Qspval5k1*acc124(29)
      acc124(61)=Qspval5k2*acc124(52)
      acc124(62)=Qspval6k1*acc124(35)
      acc124(63)=Qspval6k2*acc124(48)
      acc124(57)=acc124(63)+acc124(62)+acc124(61)+acc124(60)+acc124(59)+acc124(&
      &9)+acc124(58)+acc124(57)
      acc124(57)=QspQ*acc124(57)
      acc124(58)=acc124(38)*acc124(54)
      acc124(59)=Qspvak2e7*acc124(44)
      acc124(60)=Qspk2*acc124(41)
      acc124(61)=Qspval5k1*acc124(31)
      acc124(62)=Qspval5k2*acc124(53)
      acc124(63)=Qspval6k1*acc124(47)
      acc124(64)=Qspval6k2*acc124(49)
      acc124(58)=acc124(64)+acc124(63)+acc124(62)+acc124(61)+acc124(60)+acc124(&
      &19)+acc124(59)+acc124(58)
      acc124(58)=Qspk7*acc124(58)
      acc124(59)=acc124(34)*acc124(54)
      acc124(60)=Qspvak2e7*acc124(17)
      acc124(61)=Qspk2*acc124(3)
      acc124(62)=Qspval5k1*acc124(4)
      acc124(63)=Qspval5k2*acc124(33)
      acc124(64)=Qspval6k1*acc124(5)
      acc124(65)=Qspval6k2*acc124(26)
      acc124(59)=acc124(65)+acc124(64)+acc124(63)+acc124(62)+acc124(61)+acc124(&
      &20)+acc124(60)+acc124(59)
      acc124(59)=Qspvak4k3*acc124(59)
      acc124(54)=acc124(28)*acc124(54)
      acc124(56)=acc124(21)*acc124(56)
      acc124(60)=Qspvak2e7*acc124(42)
      acc124(61)=Qspk2*acc124(11)
      acc124(62)=Qspval5k1*acc124(27)
      acc124(63)=Qspval5k2*acc124(50)
      acc124(64)=Qspval6k1*acc124(30)
      acc124(65)=Qspval6k2*acc124(45)
      brack=acc124(54)+acc124(55)+acc124(56)+acc124(57)+acc124(58)+acc124(59)+a&
      &cc124(60)+acc124(61)+acc124(62)+acc124(63)+acc124(64)+acc124(65)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram124_sign, shift => diagram124_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd124h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd124h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d124h0l1
