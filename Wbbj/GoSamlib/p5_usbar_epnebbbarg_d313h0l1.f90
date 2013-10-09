module     p5_usbar_epnebbbarg_d313h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d313h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd313h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc313(71)
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspe7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k1
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspe7 = dotproduct(Q,e7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      acc313(1)=abb313(8)
      acc313(2)=abb313(9)
      acc313(3)=abb313(10)
      acc313(4)=abb313(11)
      acc313(5)=abb313(12)
      acc313(6)=abb313(13)
      acc313(7)=abb313(14)
      acc313(8)=abb313(15)
      acc313(9)=abb313(16)
      acc313(10)=abb313(17)
      acc313(11)=abb313(18)
      acc313(12)=abb313(19)
      acc313(13)=abb313(20)
      acc313(14)=abb313(21)
      acc313(15)=abb313(22)
      acc313(16)=abb313(23)
      acc313(17)=abb313(24)
      acc313(18)=abb313(25)
      acc313(19)=abb313(26)
      acc313(20)=abb313(27)
      acc313(21)=abb313(28)
      acc313(22)=abb313(29)
      acc313(23)=abb313(30)
      acc313(24)=abb313(31)
      acc313(25)=abb313(32)
      acc313(26)=abb313(33)
      acc313(27)=abb313(34)
      acc313(28)=abb313(35)
      acc313(29)=abb313(36)
      acc313(30)=abb313(37)
      acc313(31)=abb313(38)
      acc313(32)=abb313(39)
      acc313(33)=abb313(40)
      acc313(34)=abb313(41)
      acc313(35)=abb313(42)
      acc313(36)=abb313(43)
      acc313(37)=abb313(44)
      acc313(38)=abb313(45)
      acc313(39)=abb313(46)
      acc313(40)=abb313(48)
      acc313(41)=abb313(49)
      acc313(42)=abb313(50)
      acc313(43)=abb313(51)
      acc313(44)=abb313(52)
      acc313(45)=abb313(54)
      acc313(46)=abb313(55)
      acc313(47)=abb313(57)
      acc313(48)=abb313(58)
      acc313(49)=abb313(59)
      acc313(50)=abb313(60)
      acc313(51)=abb313(61)
      acc313(52)=abb313(62)
      acc313(53)=abb313(65)
      acc313(54)=abb313(67)
      acc313(55)=Qspk2*acc313(44)
      acc313(56)=Qspvak4k2*acc313(7)
      acc313(55)=acc313(56)+acc313(39)+acc313(55)
      acc313(55)=Qspval6k1*acc313(55)
      acc313(56)=Qspval5k2*acc313(3)
      acc313(57)=Qspval6k2*acc313(8)
      acc313(56)=acc313(57)+acc313(2)+acc313(56)
      acc313(56)=Qspvak2k1*acc313(56)
      acc313(57)=-Qspval5k2*acc313(49)
      acc313(58)=-Qspval6k2*acc313(7)
      acc313(57)=acc313(58)+acc313(9)+acc313(57)
      acc313(57)=Qspvak4k1*acc313(57)
      acc313(58)=acc313(34)*Qspval5k7
      acc313(59)=Qspvak2l5*acc313(36)
      acc313(60)=Qspvak4l5*acc313(54)
      acc313(61)=Qspval6l5*acc313(46)
      acc313(62)=Qspvak7k1*acc313(29)
      acc313(63)=Qspvak7k2*acc313(16)
      acc313(64)=Qspk2*acc313(27)
      acc313(65)=Qspvak4k2*acc313(5)
      acc313(66)=Qspval6k2*acc313(1)
      acc313(67)=Qspval5k1*acc313(28)
      acc313(55)=acc313(67)+acc313(57)+acc313(56)+acc313(66)+acc313(55)+acc313(&
      &65)+acc313(64)+acc313(63)+acc313(62)+acc313(61)+acc313(60)+acc313(59)+ac&
      &c313(58)+acc313(21)
      acc313(55)=Qspe7*acc313(55)
      acc313(56)=QspQ*acc313(22)
      acc313(57)=Qspk2*acc313(31)
      acc313(58)=Qspk7*acc313(41)
      acc313(59)=Qspvak4k2*acc313(6)
      acc313(60)=-Qspvak2k1*acc313(51)
      acc313(61)=Qspvak4k1*acc313(50)
      acc313(56)=acc313(61)+acc313(60)+acc313(59)+acc313(58)+acc313(57)+acc313(&
      &30)+acc313(56)
      acc313(56)=Qspval5e7*acc313(56)
      acc313(57)=Qspvak7k2*acc313(52)
      acc313(58)=acc313(51)*Qspvak2e7
      acc313(59)=-acc313(50)*Qspvak4e7
      acc313(60)=QspQ*acc313(48)
      acc313(61)=Qspk7*acc313(47)
      acc313(62)=Qspvae7k2*acc313(43)
      acc313(57)=acc313(62)+acc313(61)+acc313(60)+acc313(59)+acc313(58)+acc313(&
      &19)+acc313(57)
      acc313(57)=Qspval5k1*acc313(57)
      acc313(58)=QspQ*acc313(25)
      acc313(59)=Qspk2*acc313(42)
      acc313(60)=Qspk7*acc313(38)
      acc313(61)=-Qspvak4k2*acc313(17)
      acc313(62)=-Qspval6k2*acc313(12)
      acc313(58)=acc313(62)+acc313(61)+acc313(60)+acc313(59)+acc313(33)+acc313(&
      &58)
      acc313(58)=Qspvae7k1*acc313(58)
      acc313(59)=QspQ*acc313(20)
      acc313(60)=Qspk7*acc313(37)
      acc313(61)=Qspval6k1*acc313(12)
      acc313(62)=Qspvak2k1*acc313(14)
      acc313(63)=Qspvak4k1*acc313(17)
      acc313(59)=acc313(63)+acc313(62)+acc313(61)+acc313(60)+acc313(15)+acc313(&
      &59)
      acc313(59)=Qspvae7k2*acc313(59)
      acc313(60)=Qspvak2l5*acc313(23)
      acc313(61)=Qspvak4l5*acc313(53)
      acc313(62)=Qspval6l5*acc313(45)
      acc313(63)=Qspvak7k1*acc313(4)
      acc313(64)=QspQ*acc313(11)
      acc313(65)=Qspk2*acc313(35)
      acc313(66)=Qspk7*acc313(26)
      acc313(67)=Qspvak4k2*acc313(40)
      acc313(68)=Qspval6k1*acc313(32)
      acc313(69)=Qspval6k2*acc313(13)
      acc313(70)=Qspvak2k1*acc313(24)
      acc313(71)=Qspvak4k1*acc313(18)
      brack=acc313(10)+acc313(55)+acc313(56)+acc313(57)+acc313(58)+acc313(59)+a&
      &cc313(60)+acc313(61)+acc313(62)+acc313(63)+acc313(64)+acc313(65)+acc313(&
      &66)+acc313(67)+acc313(68)+acc313(69)+acc313(70)+acc313(71)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram313_sign, shift => diagram313_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd313h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d313
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d313 = 0.0_ki
      d313 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d313, ki), aimag(d313), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd313h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d313
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d313 = 0.0_ki
      d313 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d313, ki), aimag(d313), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d313h0l1
