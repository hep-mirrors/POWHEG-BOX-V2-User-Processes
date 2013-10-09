module     p1_dbarc_epnebbbarg_d100h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d100h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd100h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc100(78)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7k7
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspe7 = dotproduct(Q,e7)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7k7 = dotproduct(Q,spvae7k7)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      acc100(1)=abb100(9)
      acc100(2)=abb100(10)
      acc100(3)=abb100(11)
      acc100(4)=abb100(12)
      acc100(5)=abb100(13)
      acc100(6)=abb100(14)
      acc100(7)=abb100(15)
      acc100(8)=abb100(16)
      acc100(9)=abb100(17)
      acc100(10)=abb100(18)
      acc100(11)=abb100(20)
      acc100(12)=abb100(21)
      acc100(13)=abb100(22)
      acc100(14)=abb100(23)
      acc100(15)=abb100(24)
      acc100(16)=abb100(25)
      acc100(17)=abb100(26)
      acc100(18)=abb100(27)
      acc100(19)=abb100(30)
      acc100(20)=abb100(31)
      acc100(21)=abb100(32)
      acc100(22)=abb100(33)
      acc100(23)=abb100(35)
      acc100(24)=abb100(36)
      acc100(25)=abb100(37)
      acc100(26)=abb100(38)
      acc100(27)=abb100(39)
      acc100(28)=abb100(40)
      acc100(29)=abb100(41)
      acc100(30)=abb100(42)
      acc100(31)=abb100(43)
      acc100(32)=abb100(44)
      acc100(33)=abb100(45)
      acc100(34)=abb100(47)
      acc100(35)=abb100(49)
      acc100(36)=abb100(50)
      acc100(37)=abb100(51)
      acc100(38)=abb100(52)
      acc100(39)=abb100(53)
      acc100(40)=abb100(54)
      acc100(41)=abb100(55)
      acc100(42)=abb100(57)
      acc100(43)=abb100(58)
      acc100(44)=abb100(59)
      acc100(45)=abb100(62)
      acc100(46)=abb100(64)
      acc100(47)=abb100(66)
      acc100(48)=abb100(68)
      acc100(49)=abb100(69)
      acc100(50)=abb100(70)
      acc100(51)=abb100(71)
      acc100(52)=abb100(72)
      acc100(53)=abb100(75)
      acc100(54)=acc100(17)*Qspvak1k2
      acc100(55)=acc100(20)*Qspvak4k2
      acc100(56)=acc100(26)*Qspvak1k7
      acc100(57)=acc100(31)*Qspvak4l6
      acc100(58)=acc100(36)*Qspvak4k7
      acc100(59)=acc100(40)*Qspvae7k2
      acc100(60)=acc100(50)*Qspvak1l6
      acc100(54)=acc100(60)+acc100(59)+acc100(58)+acc100(57)+acc100(56)+acc100(&
      &24)+acc100(55)+acc100(54)
      acc100(54)=Qspval6e7*acc100(54)
      acc100(55)=acc100(4)*Qspvak1k2
      acc100(56)=acc100(23)*Qspval6k2
      acc100(57)=acc100(32)*Qspvak4k2
      acc100(58)=acc100(44)*Qspvak1e7
      acc100(59)=acc100(45)*Qspvak7k2
      acc100(60)=acc100(49)*Qspvak4e7
      acc100(55)=acc100(60)+acc100(59)+acc100(58)+acc100(57)+acc100(56)+acc100(&
      &21)+acc100(55)
      acc100(55)=Qspvae7k2*acc100(55)
      acc100(56)=acc100(12)*Qspval6k2
      acc100(57)=acc100(25)*Qspvak1k7
      acc100(58)=acc100(28)*Qspvak1k2
      acc100(59)=acc100(33)*Qspvak7k2
      acc100(60)=acc100(42)*Qspvak4k7
      acc100(61)=acc100(53)*Qspvak4k2
      acc100(56)=acc100(61)+acc100(47)+acc100(60)+acc100(59)+acc100(58)+acc100(&
      &57)+acc100(56)
      acc100(56)=Qspe7*acc100(56)
      acc100(57)=acc100(3)*Qspvak4k2
      acc100(58)=acc100(18)*Qspvak1k2
      acc100(59)=-acc100(39)*Qspvak4e7
      acc100(60)=-acc100(46)*Qspvae7k2
      acc100(61)=-acc100(52)*Qspvak1e7
      acc100(57)=acc100(60)+acc100(57)+acc100(58)+acc100(61)+acc100(59)
      acc100(58)=Qspl6+Qspk7
      acc100(57)=acc100(58)*acc100(57)
      acc100(58)=acc100(6)*Qspvak4k2
      acc100(59)=acc100(15)*Qspvak1k2
      acc100(60)=acc100(41)*Qspvak1e7
      acc100(61)=acc100(43)*Qspvak4e7
      acc100(58)=acc100(61)+acc100(60)+acc100(59)+acc100(7)+acc100(58)
      acc100(58)=Qspk2*acc100(58)
      acc100(59)=acc100(2)*Qspl6
      acc100(60)=acc100(5)*Qspvak7k2
      acc100(61)=acc100(9)*Qspvak4k2
      acc100(62)=acc100(10)*Qspvak1k2
      acc100(63)=acc100(11)*Qspvak1k7
      acc100(64)=acc100(22)*Qspval6k2
      acc100(65)=acc100(27)*Qspk7
      acc100(66)=acc100(29)*Qspvak4k7
      acc100(67)=acc100(30)*Qspvak4l6
      acc100(68)=acc100(34)*Qspvak1l6
      acc100(69)=acc100(38)*Qspvak4e7
      acc100(70)=acc100(51)*Qspvak1e7
      acc100(71)=Qspvae7k7*acc100(19)
      acc100(72)=Qspvak7e7*acc100(35)
      acc100(73)=Qspvae7l6*acc100(37)
      acc100(74)=Qspvak7l6*acc100(14)
      acc100(75)=Qspval6k7*acc100(1)
      acc100(76)=Qspvak2k7*acc100(48)
      acc100(77)=Qspvak2l6*acc100(8)
      acc100(78)=QspQ*acc100(13)
      brack=acc100(16)+acc100(54)+acc100(55)+acc100(56)+acc100(57)+acc100(58)+a&
      &cc100(59)+acc100(60)+acc100(61)+acc100(62)+acc100(63)+acc100(64)+acc100(&
      &65)+acc100(66)+acc100(67)+acc100(68)+acc100(69)+acc100(70)+acc100(71)+ac&
      &c100(72)+acc100(73)+acc100(74)+acc100(75)+acc100(76)+acc100(77)+acc100(7&
      &8)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram100_sign, shift => diagram100_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd100h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd100h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d100h1l1
