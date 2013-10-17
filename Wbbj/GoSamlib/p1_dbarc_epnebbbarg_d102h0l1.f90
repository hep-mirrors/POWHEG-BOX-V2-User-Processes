module     p1_dbarc_epnebbbarg_d102h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d102h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc102(60)
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k4
      complex(ki) :: Qspval5k4
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspe7
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k4 = dotproduct(Q,spval6k4)
      Qspval5k4 = dotproduct(Q,spval5k4)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspe7 = dotproduct(Q,e7)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc102(1)=abb102(7)
      acc102(2)=abb102(8)
      acc102(3)=abb102(9)
      acc102(4)=abb102(10)
      acc102(5)=abb102(11)
      acc102(6)=abb102(12)
      acc102(7)=abb102(13)
      acc102(8)=abb102(14)
      acc102(9)=abb102(15)
      acc102(10)=abb102(16)
      acc102(11)=abb102(17)
      acc102(12)=abb102(18)
      acc102(13)=abb102(19)
      acc102(14)=abb102(20)
      acc102(15)=abb102(21)
      acc102(16)=abb102(22)
      acc102(17)=abb102(23)
      acc102(18)=abb102(24)
      acc102(19)=abb102(25)
      acc102(20)=abb102(26)
      acc102(21)=abb102(27)
      acc102(22)=abb102(28)
      acc102(23)=abb102(29)
      acc102(24)=abb102(30)
      acc102(25)=abb102(31)
      acc102(26)=abb102(32)
      acc102(27)=abb102(33)
      acc102(28)=abb102(34)
      acc102(29)=abb102(35)
      acc102(30)=abb102(36)
      acc102(31)=abb102(37)
      acc102(32)=abb102(38)
      acc102(33)=abb102(39)
      acc102(34)=abb102(40)
      acc102(35)=abb102(41)
      acc102(36)=abb102(42)
      acc102(37)=abb102(43)
      acc102(38)=abb102(47)
      acc102(39)=abb102(48)
      acc102(40)=abb102(50)
      acc102(41)=abb102(53)
      acc102(42)=abb102(54)
      acc102(43)=abb102(55)
      acc102(44)=abb102(56)
      acc102(45)=Qspvak3k2*acc102(19)
      acc102(46)=acc102(6)*Qspval6e7
      acc102(47)=acc102(10)*Qspval5e7
      acc102(48)=acc102(13)*Qspvae7k2
      acc102(49)=acc102(15)*Qspval6k4
      acc102(50)=acc102(18)*Qspval5k4
      acc102(51)=acc102(23)*Qspvak4k2
      acc102(52)=acc102(30)*Qspvak1k4
      acc102(53)=acc102(35)*Qspvak1k3
      acc102(54)=acc102(38)*Qspvak1k7
      acc102(55)=acc102(39)*Qspvak1e7
      acc102(56)=acc102(41)*Qspval5k7
      acc102(57)=acc102(42)*Qspval6k7
      acc102(58)=acc102(43)*Qspval5k3
      acc102(59)=acc102(44)*Qspval6k3
      acc102(60)=Qspvak7k2*acc102(40)
      acc102(45)=acc102(60)+acc102(59)+acc102(58)+acc102(57)+acc102(56)+acc102(&
      &55)+acc102(54)+acc102(53)+acc102(52)+acc102(51)+acc102(50)+acc102(49)+ac&
      &c102(48)+acc102(47)+acc102(46)+acc102(45)
      acc102(45)=Qspvak4k3*acc102(45)
      acc102(46)=acc102(2)*Qspvak4k2
      acc102(47)=acc102(3)*Qspvae7k2
      acc102(48)=acc102(9)*Qspval5e7
      acc102(49)=acc102(17)*Qspe7
      acc102(50)=acc102(24)*Qspval6e7
      acc102(51)=acc102(28)*Qspvak1e7
      acc102(46)=acc102(51)+acc102(50)+acc102(49)+acc102(48)+acc102(7)+acc102(4&
      &7)+acc102(46)
      acc102(46)=QspQ*acc102(46)
      acc102(47)=-acc102(19)*Qspvak4k2
      acc102(48)=-acc102(11)*Qspval5e7
      acc102(49)=-acc102(25)*Qspval6e7
      acc102(50)=-acc102(26)*Qspvae7k2
      acc102(51)=-acc102(29)*Qspvak1e7
      acc102(47)=acc102(47)+acc102(51)+acc102(50)+acc102(49)+acc102(48)
      acc102(48)=Qspk3+Qspk4
      acc102(47)=acc102(48)*acc102(47)
      acc102(48)=Qspval6k2*acc102(5)
      acc102(49)=Qspval5k2*acc102(1)
      acc102(50)=Qspvak1k2*acc102(21)
      acc102(48)=acc102(50)+acc102(49)+acc102(48)
      acc102(48)=acc102(48)*Qspvak4k3
      acc102(49)=acc102(34)*Qspvak1k3
      acc102(50)=acc102(36)*Qspval6k3
      acc102(51)=acc102(37)*Qspval5k3
      acc102(48)=acc102(48)+acc102(51)+acc102(50)+acc102(49)
      acc102(48)=Qspe7*acc102(48)
      acc102(49)=acc102(4)*Qspval6k3
      acc102(50)=acc102(8)*Qspval5k3
      acc102(51)=acc102(12)*Qspvak1k3
      acc102(52)=acc102(14)*Qspvak3k2
      acc102(53)=acc102(16)*Qspvak4k2
      acc102(54)=acc102(20)*Qspvak1k7
      acc102(55)=acc102(22)*Qspval5k4
      acc102(56)=acc102(27)*Qspvak1k4
      acc102(57)=acc102(31)*Qspval5k7
      acc102(58)=acc102(32)*Qspval6k7
      acc102(59)=acc102(33)*Qspval6k4
      brack=acc102(45)+acc102(46)+acc102(47)+acc102(48)+acc102(49)+acc102(50)+a&
      &cc102(51)+acc102(52)+acc102(53)+acc102(54)+acc102(55)+acc102(56)+acc102(&
      &57)+acc102(58)+acc102(59)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram102_sign, shift => diagram102_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd102h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d102
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d102 = 0.0_ki
      d102 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d102, ki), aimag(d102), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd102h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d102
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d102 = 0.0_ki
      d102 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d102, ki), aimag(d102), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d102h0l1