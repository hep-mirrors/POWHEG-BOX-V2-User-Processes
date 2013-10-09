module     p1_dbarc_epnebbbarg_d296h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d296h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd296h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc296(59)
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k3
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc296(1)=abb296(7)
      acc296(2)=abb296(8)
      acc296(3)=abb296(9)
      acc296(4)=abb296(10)
      acc296(5)=abb296(11)
      acc296(6)=abb296(12)
      acc296(7)=abb296(13)
      acc296(8)=abb296(14)
      acc296(9)=abb296(15)
      acc296(10)=abb296(16)
      acc296(11)=abb296(17)
      acc296(12)=abb296(18)
      acc296(13)=abb296(19)
      acc296(14)=abb296(20)
      acc296(15)=abb296(21)
      acc296(16)=abb296(22)
      acc296(17)=abb296(23)
      acc296(18)=abb296(24)
      acc296(19)=abb296(25)
      acc296(20)=abb296(26)
      acc296(21)=abb296(27)
      acc296(22)=abb296(28)
      acc296(23)=abb296(29)
      acc296(24)=abb296(30)
      acc296(25)=abb296(31)
      acc296(26)=abb296(32)
      acc296(27)=abb296(34)
      acc296(28)=abb296(35)
      acc296(29)=abb296(36)
      acc296(30)=abb296(37)
      acc296(31)=abb296(38)
      acc296(32)=abb296(39)
      acc296(33)=abb296(40)
      acc296(34)=abb296(41)
      acc296(35)=abb296(42)
      acc296(36)=abb296(44)
      acc296(37)=abb296(45)
      acc296(38)=abb296(47)
      acc296(39)=abb296(48)
      acc296(40)=abb296(49)
      acc296(41)=abb296(50)
      acc296(42)=abb296(51)
      acc296(43)=abb296(52)
      acc296(44)=abb296(55)
      acc296(45)=abb296(58)
      acc296(46)=abb296(60)
      acc296(47)=abb296(61)
      acc296(48)=Qspk2+Qspl6
      acc296(49)=-acc296(47)*acc296(48)
      acc296(50)=Qspval6k3*acc296(46)
      acc296(51)=Qspk7*acc296(47)
      acc296(52)=Qspvae7k2*acc296(37)
      acc296(53)=-QspQ*acc296(33)
      acc296(54)=Qspvak1k2*Qspval6e7
      acc296(55)=-acc296(17)*acc296(54)
      acc296(56)=Qspval6k2*acc296(5)
      acc296(49)=acc296(56)+acc296(55)+acc296(53)+acc296(51)+acc296(50)+acc296(&
      &6)+acc296(52)+acc296(49)
      acc296(49)=Qspk2*acc296(49)
      acc296(52)=Qspval6k7*acc296(40)
      acc296(53)=Qspval6k3*acc296(15)
      acc296(52)=acc296(52)+acc296(53)
      acc296(52)=Qspvak1k2*acc296(52)
      acc296(53)=Qspval6k1*acc296(11)
      acc296(55)=Qspval6l5*acc296(39)
      acc296(56)=Qspval6k3*acc296(43)
      acc296(57)=Qspl6*acc296(45)
      acc296(58)=Qspvak1k2*acc296(36)
      acc296(58)=acc296(9)+acc296(58)
      acc296(58)=Qspval6k2*acc296(58)
      acc296(59)=Qspk2*acc296(23)
      acc296(52)=acc296(59)+acc296(58)+acc296(52)+acc296(57)+acc296(56)+acc296(&
      &55)+acc296(34)+acc296(53)
      acc296(52)=Qspe7*acc296(52)
      acc296(48)=-acc296(31)*acc296(48)
      acc296(53)=Qspvak1k2*Qspval6l5*acc296(19)
      acc296(55)=Qspval6k2*acc296(18)
      acc296(48)=acc296(55)+acc296(53)+acc296(28)+acc296(48)
      acc296(48)=Qspe7*acc296(48)
      acc296(53)=QspQ*acc296(24)
      acc296(55)=Qspvak1k2*acc296(21)
      acc296(53)=acc296(55)+acc296(4)+acc296(53)
      acc296(53)=Qspval6k2*acc296(53)
      acc296(55)=Qspvae7k2*acc296(35)
      acc296(56)=Qspval6k2*acc296(20)
      acc296(55)=acc296(56)+acc296(10)+acc296(55)
      acc296(55)=Qspk2*acc296(55)
      acc296(56)=Qspval6k7*acc296(26)
      acc296(57)=Qspl6*acc296(30)
      acc296(58)=Qspvae7k2*acc296(38)
      acc296(58)=acc296(29)+acc296(58)
      acc296(58)=QspQ*acc296(58)
      acc296(54)=acc296(12)*acc296(54)
      acc296(48)=acc296(48)+acc296(55)+acc296(53)+acc296(54)+acc296(58)+acc296(&
      &57)+acc296(13)+acc296(56)
      acc296(48)=Qspvak4k3*acc296(48)
      acc296(53)=Qspvae7k2*acc296(22)
      acc296(54)=Qspval6k3*acc296(44)
      acc296(55)=-Qspl6*acc296(33)
      acc296(53)=acc296(55)+acc296(54)+acc296(32)+acc296(53)
      acc296(53)=QspQ*acc296(53)
      acc296(54)=Qspk7*acc296(25)
      acc296(55)=QspQ*acc296(1)
      acc296(56)=Qspvak1k2*acc296(14)
      acc296(54)=acc296(56)+acc296(55)+acc296(3)+acc296(54)
      acc296(54)=Qspval6k2*acc296(54)
      acc296(55)=Qspk7*acc296(17)
      acc296(56)=QspQ*acc296(27)
      acc296(55)=acc296(55)+acc296(56)+acc296(2)
      acc296(55)=Qspvak1k2*Qspval6e7*acc296(55)
      acc296(56)=Qspval6k1*acc296(8)
      acc296(57)=Qspval6l5*acc296(41)
      acc296(50)=acc296(42)-acc296(50)
      acc296(50)=Qspk7*acc296(50)
      acc296(51)=acc296(16)+acc296(51)
      acc296(51)=Qspl6*acc296(51)
      brack=acc296(7)+acc296(48)+acc296(49)+acc296(50)+acc296(51)+acc296(52)+ac&
      &c296(53)+acc296(54)+acc296(55)+acc296(56)+acc296(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram296_sign, shift => diagram296_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd296h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd296h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d296h1l1
