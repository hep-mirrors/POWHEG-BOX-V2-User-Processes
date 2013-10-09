module     p1_dbarc_epnebbbarg_d15h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d15h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd15h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(68)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      acc15(1)=abb15(9)
      acc15(2)=abb15(10)
      acc15(3)=abb15(11)
      acc15(4)=abb15(12)
      acc15(5)=abb15(13)
      acc15(6)=abb15(14)
      acc15(7)=abb15(15)
      acc15(8)=abb15(16)
      acc15(9)=abb15(18)
      acc15(10)=abb15(19)
      acc15(11)=abb15(20)
      acc15(12)=abb15(21)
      acc15(13)=abb15(22)
      acc15(14)=abb15(23)
      acc15(15)=abb15(24)
      acc15(16)=abb15(25)
      acc15(17)=abb15(27)
      acc15(18)=abb15(28)
      acc15(19)=abb15(29)
      acc15(20)=abb15(30)
      acc15(21)=abb15(32)
      acc15(22)=abb15(33)
      acc15(23)=abb15(34)
      acc15(24)=abb15(35)
      acc15(25)=abb15(36)
      acc15(26)=abb15(38)
      acc15(27)=abb15(39)
      acc15(28)=abb15(40)
      acc15(29)=abb15(41)
      acc15(30)=abb15(42)
      acc15(31)=abb15(43)
      acc15(32)=abb15(44)
      acc15(33)=abb15(45)
      acc15(34)=abb15(46)
      acc15(35)=abb15(47)
      acc15(36)=abb15(48)
      acc15(37)=abb15(49)
      acc15(38)=abb15(50)
      acc15(39)=abb15(51)
      acc15(40)=abb15(52)
      acc15(41)=abb15(53)
      acc15(42)=abb15(54)
      acc15(43)=abb15(55)
      acc15(44)=abb15(56)
      acc15(45)=abb15(57)
      acc15(46)=abb15(58)
      acc15(47)=abb15(59)
      acc15(48)=abb15(60)
      acc15(49)=abb15(61)
      acc15(50)=abb15(62)
      acc15(51)=abb15(76)
      acc15(52)=abb15(79)
      acc15(53)=abb15(83)
      acc15(54)=abb15(89)
      acc15(55)=abb15(93)
      acc15(56)=abb15(95)
      acc15(57)=abb15(100)
      acc15(58)=Qspk2-Qspk7
      acc15(59)=-acc15(29)*acc15(58)
      acc15(60)=Qspvak1k3*acc15(39)
      acc15(61)=Qspvak1l5*acc15(50)
      acc15(62)=Qspvak1l6*acc15(13)
      acc15(63)=QspQ*acc15(21)
      acc15(64)=Qspk1*acc15(31)
      acc15(65)=Qspvak1k2*acc15(1)
      acc15(66)=Qspe7*acc15(17)
      acc15(67)=Qspvae7k2*acc15(5)
      acc15(59)=acc15(67)+acc15(66)+acc15(65)+acc15(64)+acc15(63)+acc15(62)+acc&
      &15(61)+acc15(7)+acc15(60)+acc15(59)
      acc15(59)=Qspval5k2*acc15(59)
      acc15(60)=-acc15(45)*acc15(58)
      acc15(61)=Qspvak1k3*acc15(28)
      acc15(62)=Qspvak1l5*acc15(48)
      acc15(63)=Qspvak1l6*acc15(47)
      acc15(64)=QspQ*acc15(34)
      acc15(65)=Qspk1*acc15(49)
      acc15(66)=Qspvak1k2*acc15(18)
      acc15(67)=Qspe7*acc15(40)
      acc15(68)=Qspvae7k2*acc15(3)
      acc15(60)=acc15(68)+acc15(67)+acc15(66)+acc15(65)+acc15(64)+acc15(63)+acc&
      &15(62)+acc15(20)+acc15(61)+acc15(60)
      acc15(60)=Qspval6k2*acc15(60)
      acc15(61)=acc15(24)*acc15(58)
      acc15(62)=Qspvak1k7*acc15(44)
      acc15(63)=Qspe7*acc15(33)
      acc15(64)=Qspvae7k2*acc15(4)
      acc15(61)=acc15(64)+acc15(63)+acc15(42)+acc15(62)+acc15(61)
      acc15(61)=Qspval5k2*acc15(61)
      acc15(62)=acc15(37)*acc15(58)
      acc15(63)=Qspvak1k7*acc15(43)
      acc15(64)=Qspe7*acc15(35)
      acc15(65)=Qspvae7k2*acc15(38)
      acc15(62)=acc15(65)+acc15(64)+acc15(32)+acc15(63)+acc15(62)
      acc15(62)=Qspval6k2*acc15(62)
      acc15(63)=-acc15(25)*acc15(58)
      acc15(64)=Qspk1*acc15(26)
      acc15(65)=Qspvak1k2*acc15(6)
      acc15(66)=Qspe7*acc15(19)
      acc15(67)=Qspvae7k2*acc15(27)
      acc15(61)=acc15(62)+acc15(61)+acc15(67)+acc15(66)+acc15(65)+acc15(9)+acc1&
      &5(64)+acc15(63)
      acc15(61)=Qspvak4k3*acc15(61)
      acc15(62)=Qspl6+Qspl5
      acc15(63)=acc15(62)-Qspk1
      acc15(64)=acc15(56)*acc15(63)
      acc15(65)=QspQ*acc15(30)
      acc15(64)=acc15(65)+acc15(64)
      acc15(58)=acc15(53)*acc15(58)
      acc15(65)=Qspvak1k2*acc15(10)
      acc15(66)=Qspe7*acc15(57)
      acc15(67)=Qspvae7k2*acc15(16)
      acc15(58)=acc15(67)+acc15(66)+acc15(65)+acc15(51)+acc15(58)+acc15(64)
      acc15(58)=Qspk2*acc15(58)
      acc15(65)=acc15(46)*acc15(63)
      acc15(66)=QspQ*acc15(15)
      acc15(65)=acc15(66)+acc15(22)+acc15(65)
      acc15(65)=Qspvak1k2*acc15(65)
      acc15(64)=acc15(52)-acc15(64)
      acc15(64)=Qspk7*acc15(64)
      acc15(66)=acc15(55)*acc15(63)
      acc15(67)=QspQ*acc15(41)
      acc15(66)=acc15(67)+acc15(36)+acc15(66)
      acc15(66)=Qspe7*acc15(66)
      acc15(63)=-acc15(12)*acc15(63)
      acc15(67)=QspQ*acc15(8)
      acc15(63)=acc15(67)+acc15(2)+acc15(63)
      acc15(63)=Qspvae7k2*acc15(63)
      acc15(62)=-acc15(54)*acc15(62)
      acc15(67)=QspQ*acc15(23)
      acc15(68)=Qspk1*acc15(11)
      brack=acc15(14)+acc15(58)+acc15(59)+acc15(60)+acc15(61)+acc15(62)+acc15(6&
      &3)+acc15(64)+acc15(65)+acc15(66)+acc15(67)+acc15(68)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram15_sign, shift => diagram15_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd15h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd15h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d15h0l1
