module     p9_csbar_epnebbbarg_d301h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d301h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc301(63)
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6e7
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspk7 = dotproduct(Q,k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      acc301(1)=abb301(7)
      acc301(2)=abb301(8)
      acc301(3)=abb301(9)
      acc301(4)=abb301(10)
      acc301(5)=abb301(11)
      acc301(6)=abb301(12)
      acc301(7)=abb301(13)
      acc301(8)=abb301(14)
      acc301(9)=abb301(15)
      acc301(10)=abb301(16)
      acc301(11)=abb301(17)
      acc301(12)=abb301(18)
      acc301(13)=abb301(19)
      acc301(14)=abb301(20)
      acc301(15)=abb301(21)
      acc301(16)=abb301(22)
      acc301(17)=abb301(23)
      acc301(18)=abb301(24)
      acc301(19)=abb301(25)
      acc301(20)=abb301(26)
      acc301(21)=abb301(27)
      acc301(22)=abb301(28)
      acc301(23)=abb301(29)
      acc301(24)=abb301(30)
      acc301(25)=abb301(31)
      acc301(26)=abb301(33)
      acc301(27)=abb301(34)
      acc301(28)=abb301(35)
      acc301(29)=abb301(36)
      acc301(30)=abb301(38)
      acc301(31)=abb301(40)
      acc301(32)=abb301(42)
      acc301(33)=abb301(44)
      acc301(34)=abb301(45)
      acc301(35)=abb301(46)
      acc301(36)=abb301(48)
      acc301(37)=abb301(49)
      acc301(38)=abb301(50)
      acc301(39)=abb301(51)
      acc301(40)=abb301(52)
      acc301(41)=abb301(60)
      acc301(42)=abb301(61)
      acc301(43)=abb301(64)
      acc301(44)=abb301(65)
      acc301(45)=abb301(66)
      acc301(46)=abb301(67)
      acc301(47)=abb301(68)
      acc301(48)=abb301(69)
      acc301(49)=abb301(70)
      acc301(50)=acc301(8)*Qspvak3k2
      acc301(51)=Qspval6k2*acc301(38)
      acc301(52)=Qspvak4k2*acc301(11)
      acc301(50)=acc301(52)+acc301(51)+acc301(20)+acc301(50)
      acc301(50)=Qspvak4k3*acc301(50)
      acc301(51)=-Qspk1+Qspk4+Qspk3
      acc301(52)=Qspval6k2*acc301(49)
      acc301(52)=acc301(52)-acc301(37)
      acc301(52)=acc301(52)*acc301(51)
      acc301(53)=-acc301(8)*Qspvak1k2
      acc301(54)=Qspval6k2*acc301(16)
      acc301(53)=acc301(54)+acc301(4)+acc301(53)
      acc301(53)=Qspvak4k1*acc301(53)
      acc301(54)=-acc301(32)*acc301(51)
      acc301(55)=Qspvak4k1*acc301(3)
      acc301(54)=acc301(55)+acc301(54)
      acc301(54)=Qspvak4k2*acc301(54)
      acc301(55)=acc301(43)*Qspvak7k1
      acc301(56)=acc301(35)*Qspval6k3
      acc301(57)=acc301(34)*Qspvak7k3
      acc301(58)=acc301(26)*Qspval6k1
      acc301(59)=Qspval5k2*acc301(25)
      acc301(60)=Qspval6l5*acc301(10)
      acc301(61)=Qspvak7k2*acc301(48)
      acc301(62)=QspQ*acc301(41)
      acc301(63)=Qspk2*acc301(1)
      acc301(50)=acc301(50)+acc301(54)+acc301(53)+acc301(63)+acc301(62)+acc301(&
      &61)+acc301(60)+acc301(59)+acc301(58)+acc301(28)+acc301(57)+acc301(55)+ac&
      &c301(56)+acc301(52)
      acc301(50)=Qspe7*acc301(50)
      acc301(52)=-acc301(23)*Qspvak3k2
      acc301(53)=-acc301(5)*Qspvak3k7
      acc301(54)=Qspvak4k7*acc301(39)
      acc301(55)=Qspval6k7*acc301(33)
      acc301(56)=Qspvak4k2*acc301(18)
      acc301(52)=acc301(56)+acc301(55)+acc301(54)+acc301(53)+acc301(17)+acc301(&
      &52)
      acc301(52)=Qspvak4k3*acc301(52)
      acc301(53)=acc301(23)*Qspvak1k2
      acc301(54)=acc301(5)*Qspvak1k7
      acc301(55)=Qspvak4k7*acc301(19)
      acc301(56)=Qspval6k7*acc301(7)
      acc301(53)=acc301(56)+acc301(55)+acc301(54)+acc301(2)+acc301(53)
      acc301(53)=Qspvak4k1*acc301(53)
      acc301(54)=Qspvae7k1*acc301(46)
      acc301(55)=Qspvae7k2*acc301(44)
      acc301(56)=Qspvae7k3*acc301(24)
      acc301(54)=-acc301(56)+acc301(54)-acc301(55)
      acc301(55)=acc301(27)-acc301(54)
      acc301(55)=Qspk7*acc301(55)
      acc301(56)=Qspvae7k1*acc301(6)
      acc301(57)=Qspvae7k2*acc301(45)
      acc301(58)=Qspvae7k3*acc301(22)
      acc301(56)=acc301(58)+acc301(57)+acc301(9)+acc301(56)
      acc301(56)=QspQ*acc301(56)
      acc301(54)=acc301(31)+acc301(54)
      acc301(54)=Qspk2*acc301(54)
      acc301(57)=Qspvak4k7*acc301(30)
      acc301(58)=Qspval6k7*acc301(47)
      acc301(57)=-acc301(36)+acc301(57)+acc301(58)
      acc301(57)=acc301(57)*acc301(51)
      acc301(51)=acc301(40)*acc301(51)
      acc301(58)=Qspvak4k1*acc301(13)
      acc301(51)=acc301(58)+acc301(51)
      acc301(51)=Qspvak4k2*acc301(51)
      acc301(58)=acc301(21)*Qspval6e7
      acc301(59)=Qspval5k2*acc301(12)
      acc301(60)=Qspval6l5*acc301(42)
      acc301(61)=Qspvak7k2*acc301(14)
      acc301(62)=Qspval6k2*acc301(29)
      brack=acc301(15)+acc301(50)+acc301(51)+acc301(52)+acc301(53)+acc301(54)+a&
      &cc301(55)+acc301(56)+acc301(57)+acc301(58)+acc301(59)+acc301(60)+acc301(&
      &61)+acc301(62)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram301_sign, shift => diagram301_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d301h0l1
