module     p5_usbar_epnebbbarg_d107h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d107h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd107h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc107(57)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6l5
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      acc107(1)=abb107(9)
      acc107(2)=abb107(10)
      acc107(3)=abb107(11)
      acc107(4)=abb107(12)
      acc107(5)=abb107(13)
      acc107(6)=abb107(14)
      acc107(7)=abb107(15)
      acc107(8)=abb107(16)
      acc107(9)=abb107(17)
      acc107(10)=abb107(18)
      acc107(11)=abb107(19)
      acc107(12)=abb107(20)
      acc107(13)=abb107(21)
      acc107(14)=abb107(22)
      acc107(15)=abb107(23)
      acc107(16)=abb107(24)
      acc107(17)=abb107(25)
      acc107(18)=abb107(26)
      acc107(19)=abb107(27)
      acc107(20)=abb107(28)
      acc107(21)=abb107(29)
      acc107(22)=abb107(30)
      acc107(23)=abb107(31)
      acc107(24)=abb107(32)
      acc107(25)=abb107(33)
      acc107(26)=abb107(34)
      acc107(27)=abb107(35)
      acc107(28)=abb107(36)
      acc107(29)=abb107(37)
      acc107(30)=abb107(38)
      acc107(31)=abb107(39)
      acc107(32)=abb107(40)
      acc107(33)=abb107(41)
      acc107(34)=abb107(42)
      acc107(35)=abb107(48)
      acc107(36)=abb107(50)
      acc107(37)=abb107(52)
      acc107(38)=abb107(56)
      acc107(39)=abb107(57)
      acc107(40)=Qspk7-Qspk1
      acc107(41)=acc107(36)*acc107(40)
      acc107(42)=Qspval5k1*acc107(24)
      acc107(43)=Qspval5k7*acc107(26)
      acc107(44)=Qspval6k1*acc107(34)
      acc107(45)=Qspval6k7*acc107(6)
      acc107(46)=Qspe7*acc107(38)
      acc107(47)=Qspvae7k1*acc107(19)
      acc107(41)=acc107(47)+acc107(46)+acc107(45)+acc107(44)+acc107(43)+acc107(&
      &11)+acc107(42)+acc107(41)
      acc107(41)=Qspk2*acc107(41)
      acc107(42)=acc107(20)*acc107(40)
      acc107(43)=Qspval5k1*acc107(9)
      acc107(44)=Qspval5k7*acc107(37)
      acc107(45)=-Qspval6k1*acc107(8)
      acc107(46)=-Qspval6k7*acc107(35)
      acc107(47)=Qspe7*acc107(13)
      acc107(48)=Qspvae7k1*acc107(5)
      acc107(42)=acc107(48)+acc107(47)+acc107(46)+acc107(45)+acc107(44)+acc107(&
      &3)+acc107(43)+acc107(42)
      acc107(42)=Qspvak4k2*acc107(42)
      acc107(43)=-acc107(30)*acc107(40)
      acc107(44)=Qspvak2k1*acc107(31)
      acc107(45)=Qspvak2k7*acc107(27)
      acc107(46)=Qspvak4k1*acc107(8)
      acc107(47)=Qspvak4k7*acc107(35)
      acc107(48)=Qspe7*acc107(14)
      acc107(49)=Qspvae7k1*acc107(7)
      acc107(43)=acc107(49)+acc107(48)+acc107(47)+acc107(46)+acc107(45)+acc107(&
      &1)+acc107(44)+acc107(43)
      acc107(43)=Qspval6k2*acc107(43)
      acc107(44)=Qspvak2k1*acc107(32)
      acc107(45)=Qspvak2k7*acc107(28)
      acc107(46)=-Qspvak4k1*acc107(9)
      acc107(47)=-Qspvak4k7*acc107(37)
      acc107(44)=acc107(47)+acc107(46)+acc107(44)+acc107(45)
      acc107(44)=Qspval5k2*acc107(44)
      acc107(40)=acc107(33)*acc107(40)
      acc107(45)=acc107(39)*Qspvak4l5
      acc107(46)=acc107(29)*Qspvak2l5
      acc107(47)=acc107(15)*Qspval6l5
      acc107(48)=Qspvak2k1*acc107(23)
      acc107(49)=Qspvak2k7*acc107(21)
      acc107(50)=Qspvak4k1*acc107(12)
      acc107(51)=Qspvak4k7*acc107(25)
      acc107(52)=Qspval5k1*acc107(22)
      acc107(53)=Qspval5k7*acc107(17)
      acc107(54)=Qspval6k1*acc107(10)
      acc107(55)=Qspval6k7*acc107(2)
      acc107(56)=Qspe7*acc107(18)
      acc107(57)=Qspvae7k1*acc107(16)
      brack=acc107(4)+acc107(40)+acc107(41)+acc107(42)+acc107(43)+acc107(44)+ac&
      &c107(45)+acc107(46)+acc107(47)+acc107(48)+acc107(49)+acc107(50)+acc107(5&
      &1)+acc107(52)+acc107(53)+acc107(54)+acc107(55)+acc107(56)+acc107(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram107_sign, shift => diagram107_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd107h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d107
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d107 = 0.0_ki
      d107 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d107, ki), aimag(d107), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd107h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d107
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d107 = 0.0_ki
      d107 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d107, ki), aimag(d107), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d107h0l1