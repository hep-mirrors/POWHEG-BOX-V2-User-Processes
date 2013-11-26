module     p5_usbar_epnebbbarg_d312h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d312h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc312(73)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc312(1)=abb312(9)
      acc312(2)=abb312(10)
      acc312(3)=abb312(11)
      acc312(4)=abb312(12)
      acc312(5)=abb312(13)
      acc312(6)=abb312(14)
      acc312(7)=abb312(15)
      acc312(8)=abb312(16)
      acc312(9)=abb312(17)
      acc312(10)=abb312(18)
      acc312(11)=abb312(19)
      acc312(12)=abb312(20)
      acc312(13)=abb312(21)
      acc312(14)=abb312(22)
      acc312(15)=abb312(23)
      acc312(16)=abb312(24)
      acc312(17)=abb312(25)
      acc312(18)=abb312(26)
      acc312(19)=abb312(27)
      acc312(20)=abb312(28)
      acc312(21)=abb312(29)
      acc312(22)=abb312(30)
      acc312(23)=abb312(31)
      acc312(24)=abb312(34)
      acc312(25)=abb312(35)
      acc312(26)=abb312(36)
      acc312(27)=abb312(39)
      acc312(28)=abb312(40)
      acc312(29)=abb312(41)
      acc312(30)=abb312(43)
      acc312(31)=abb312(44)
      acc312(32)=abb312(45)
      acc312(33)=abb312(46)
      acc312(34)=abb312(48)
      acc312(35)=abb312(51)
      acc312(36)=abb312(52)
      acc312(37)=abb312(53)
      acc312(38)=abb312(55)
      acc312(39)=abb312(56)
      acc312(40)=abb312(60)
      acc312(41)=abb312(64)
      acc312(42)=abb312(65)
      acc312(43)=abb312(66)
      acc312(44)=abb312(68)
      acc312(45)=abb312(69)
      acc312(46)=abb312(73)
      acc312(47)=abb312(75)
      acc312(48)=abb312(76)
      acc312(49)=abb312(102)
      acc312(50)=abb312(115)
      acc312(51)=abb312(133)
      acc312(52)=abb312(137)
      acc312(53)=abb312(149)
      acc312(54)=acc312(18)*Qspval6k2
      acc312(55)=acc312(23)*Qspval5k2
      acc312(56)=acc312(24)*Qspval5k1
      acc312(57)=acc312(25)*Qspe7
      acc312(58)=acc312(28)*Qspvak2k1
      acc312(59)=acc312(34)*Qspk2
      acc312(60)=acc312(36)*Qspvak4k2
      acc312(61)=acc312(44)*Qspvak4k1
      acc312(54)=acc312(61)+acc312(60)+acc312(59)+acc312(58)+acc312(57)+acc312(&
      &56)+acc312(55)+acc312(54)+acc312(2)
      acc312(54)=QspQ*acc312(54)
      acc312(55)=acc312(1)*Qspvak2k1
      acc312(56)=acc312(12)*Qspval6k1
      acc312(57)=acc312(32)*Qspvak4k2
      acc312(58)=acc312(41)*Qspvak4k1
      acc312(59)=acc312(42)*Qspe7
      acc312(55)=acc312(59)+acc312(58)+acc312(40)+acc312(57)+acc312(56)+acc312(&
      &55)
      acc312(55)=Qspk2*acc312(55)
      acc312(56)=acc312(13)*Qspval6k1
      acc312(57)=acc312(31)*Qspval6k2
      acc312(58)=acc312(35)*Qspl6
      acc312(59)=acc312(51)*Qspval6k7
      acc312(60)=Qspval6l5*acc312(52)
      acc312(56)=acc312(60)+acc312(59)+acc312(58)+acc312(33)+acc312(57)+acc312(&
      &56)
      acc312(56)=Qspvae7k1*acc312(56)
      acc312(57)=-acc312(11)*Qspvak2k1
      acc312(58)=-acc312(29)*Qspvak4k2
      acc312(59)=acc312(39)*Qspvak4k1
      acc312(60)=-acc312(49)*Qspk2
      acc312(57)=acc312(60)+acc312(57)+acc312(59)+acc312(58)
      acc312(58)=Qspk1-Qspl6
      acc312(57)=acc312(58)*acc312(57)
      acc312(59)=acc312(30)*Qspvak2k1
      acc312(60)=acc312(45)*Qspvak4k1
      acc312(59)=acc312(60)+acc312(59)+acc312(15)
      acc312(59)=acc312(59)*Qspe7
      acc312(60)=acc312(8)*Qspvak2k1
      acc312(61)=acc312(14)*Qspvak4k1
      acc312(59)=acc312(61)+acc312(60)+acc312(3)+acc312(59)
      acc312(59)=Qspval6k2*acc312(59)
      acc312(60)=acc312(4)*Qspval6k1
      acc312(61)=acc312(27)*Qspvak4k2
      acc312(62)=acc312(53)*Qspk1
      acc312(60)=acc312(62)+acc312(61)+acc312(19)+acc312(60)
      acc312(60)=Qspe7*acc312(60)
      acc312(61)=acc312(5)*Qspval5k1
      acc312(62)=acc312(48)*Qspvak7k1
      acc312(61)=acc312(62)+acc312(17)+acc312(61)
      acc312(61)=Qspval6e7*acc312(61)
      acc312(58)=-QspQ-acc312(58)
      acc312(58)=acc312(7)*acc312(58)
      acc312(58)=acc312(10)+acc312(58)
      acc312(58)=Qspval6k1*acc312(58)
      acc312(62)=acc312(6)*Qspvak2k1
      acc312(63)=acc312(16)*Qspval5k2
      acc312(64)=acc312(21)*Qspk1
      acc312(65)=acc312(22)*Qspval6k7
      acc312(66)=acc312(26)*Qspvak4k2
      acc312(67)=acc312(37)*Qspvak7k1
      acc312(68)=acc312(38)*Qspl6
      acc312(69)=acc312(46)*Qspk2**2
      acc312(70)=acc312(50)*Qspval5k1
      acc312(71)=Qspvae7k2*acc312(43)
      acc312(72)=Qspvak7k2*acc312(47)
      acc312(73)=Qspvak1k2*acc312(9)
      brack=acc312(20)+acc312(54)+acc312(55)+acc312(56)+acc312(57)+acc312(58)+a&
      &cc312(59)+acc312(60)+acc312(61)+acc312(62)+acc312(63)+acc312(64)+acc312(&
      &65)+acc312(66)+acc312(67)+acc312(68)+acc312(69)+acc312(70)+acc312(71)+ac&
      &c312(72)+acc312(73)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram312_sign, shift => diagram312_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd312h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d312
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d312 = 0.0_ki
      d312 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d312, ki), aimag(d312), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd312h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d312
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d312 = 0.0_ki
      d312 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d312, ki), aimag(d312), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d312h0l1
