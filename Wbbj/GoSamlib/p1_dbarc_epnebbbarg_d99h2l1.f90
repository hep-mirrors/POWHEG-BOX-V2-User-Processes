module     p1_dbarc_epnebbbarg_d99h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d99h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd99h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc99(54)
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5l6
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      acc99(1)=abb99(9)
      acc99(2)=abb99(10)
      acc99(3)=abb99(11)
      acc99(4)=abb99(12)
      acc99(5)=abb99(13)
      acc99(6)=abb99(14)
      acc99(7)=abb99(15)
      acc99(8)=abb99(16)
      acc99(9)=abb99(17)
      acc99(10)=abb99(18)
      acc99(11)=abb99(19)
      acc99(12)=abb99(20)
      acc99(13)=abb99(21)
      acc99(14)=abb99(23)
      acc99(15)=abb99(25)
      acc99(16)=abb99(29)
      acc99(17)=abb99(31)
      acc99(18)=abb99(32)
      acc99(19)=abb99(33)
      acc99(20)=abb99(34)
      acc99(21)=abb99(35)
      acc99(22)=abb99(36)
      acc99(23)=abb99(38)
      acc99(24)=abb99(39)
      acc99(25)=abb99(40)
      acc99(26)=abb99(41)
      acc99(27)=abb99(42)
      acc99(28)=abb99(45)
      acc99(29)=abb99(49)
      acc99(30)=abb99(51)
      acc99(31)=abb99(52)
      acc99(32)=abb99(54)
      acc99(33)=abb99(55)
      acc99(34)=abb99(58)
      acc99(35)=abb99(59)
      acc99(36)=abb99(62)
      acc99(37)=abb99(87)
      acc99(38)=abb99(90)
      acc99(39)=abb99(101)
      acc99(40)=abb99(105)
      acc99(41)=acc99(30)*Qspvak3k7
      acc99(42)=acc99(27)*Qspvak3l5
      acc99(43)=acc99(14)*Qspvak3e7
      acc99(44)=acc99(25)*Qspvak3l6
      acc99(45)=Qspvak4l5*acc99(11)
      acc99(46)=Qspvak4l6*acc99(31)
      acc99(47)=Qspvak4k7*acc99(29)
      acc99(48)=Qspvak2e7*acc99(21)
      acc99(49)=Qspvak4e7*acc99(12)
      acc99(50)=Qspvak2l5*acc99(20)
      acc99(51)=Qspvak2k7*acc99(34)
      acc99(41)=acc99(51)+acc99(50)+acc99(49)+acc99(48)+acc99(47)+acc99(46)+acc&
      &99(45)+acc99(44)+acc99(3)+acc99(43)+acc99(41)+acc99(42)
      acc99(41)=Qspvak4k3*acc99(41)
      acc99(42)=-acc99(25)*Qspvak2l6
      acc99(43)=Qspvak4l5*acc99(13)
      acc99(44)=Qspvak4l6*acc99(23)
      acc99(45)=Qspvak4k7*acc99(22)
      acc99(46)=Qspvak2e7*acc99(26)
      acc99(47)=Qspvak4e7*acc99(9)
      acc99(48)=Qspvak2l5*acc99(15)
      acc99(49)=Qspvak2k7*acc99(35)
      acc99(42)=acc99(49)+acc99(48)+acc99(47)+acc99(46)+acc99(45)+acc99(44)+acc&
      &99(43)+acc99(2)+acc99(42)
      acc99(42)=Qspvak4k2*acc99(42)
      acc99(43)=Qspvak4l5*acc99(24)
      acc99(44)=Qspvak4l6*acc99(18)
      acc99(45)=Qspvak4k7*acc99(6)
      acc99(46)=Qspvak2e7*acc99(39)
      acc99(47)=Qspvak4e7*acc99(38)
      acc99(48)=Qspvak2l5*acc99(17)
      acc99(49)=Qspvak2k7*acc99(33)
      acc99(43)=-acc99(45)-acc99(43)+acc99(44)-acc99(46)-acc99(47)+acc99(48)-ac&
      &c99(49)
      acc99(44)=acc99(43)+acc99(37)
      acc99(45)=-Qspk4-Qspk3
      acc99(44)=acc99(44)*acc99(45)
      acc99(43)=acc99(4)+acc99(43)
      acc99(43)=Qspk2*acc99(43)
      acc99(45)=acc99(40)*Qspvak7l6
      acc99(46)=acc99(36)*QspQ
      acc99(47)=acc99(28)*Qspvak2k3
      acc99(48)=acc99(10)*Qspvak1k3
      acc99(49)=acc99(8)*Qspvak1k2
      acc99(50)=acc99(7)*Qspvak1l6
      acc99(51)=acc99(5)*Qspval5l6
      acc99(52)=Qspvak2l6*acc99(1)
      acc99(53)=Qspvak2l5*acc99(16)
      acc99(54)=Qspvak2k7*acc99(32)
      brack=acc99(19)+acc99(41)+acc99(42)+acc99(43)+acc99(44)+acc99(45)+acc99(4&
      &6)+acc99(47)+acc99(48)+acc99(49)+acc99(50)+acc99(51)+acc99(52)+acc99(53)&
      &+acc99(54)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram99_sign, shift => diagram99_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd99h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d99
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d99 = 0.0_ki
      d99 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d99, ki), aimag(d99), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd99h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d99
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d99 = 0.0_ki
      d99 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d99, ki), aimag(d99), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d99h2l1