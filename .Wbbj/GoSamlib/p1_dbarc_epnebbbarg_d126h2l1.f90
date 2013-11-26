module     p1_dbarc_epnebbbarg_d126h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d126h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd126h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc126(51)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1e7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      acc126(1)=abb126(8)
      acc126(2)=abb126(9)
      acc126(3)=abb126(10)
      acc126(4)=abb126(11)
      acc126(5)=abb126(12)
      acc126(6)=abb126(13)
      acc126(7)=abb126(14)
      acc126(8)=abb126(15)
      acc126(9)=abb126(16)
      acc126(10)=abb126(17)
      acc126(11)=abb126(18)
      acc126(12)=abb126(19)
      acc126(13)=abb126(20)
      acc126(14)=abb126(21)
      acc126(15)=abb126(22)
      acc126(16)=abb126(23)
      acc126(17)=abb126(24)
      acc126(18)=abb126(25)
      acc126(19)=abb126(26)
      acc126(20)=abb126(27)
      acc126(21)=abb126(28)
      acc126(22)=abb126(29)
      acc126(23)=abb126(30)
      acc126(24)=abb126(31)
      acc126(25)=abb126(32)
      acc126(26)=abb126(33)
      acc126(27)=abb126(34)
      acc126(28)=abb126(35)
      acc126(29)=abb126(36)
      acc126(30)=abb126(37)
      acc126(31)=abb126(38)
      acc126(32)=abb126(39)
      acc126(33)=abb126(40)
      acc126(34)=abb126(42)
      acc126(35)=abb126(44)
      acc126(36)=abb126(47)
      acc126(37)=abb126(48)
      acc126(38)=abb126(50)
      acc126(39)=abb126(52)
      acc126(40)=abb126(55)
      acc126(41)=Qspl6+Qspl5
      acc126(42)=-acc126(34)*acc126(41)
      acc126(43)=acc126(12)*Qspvak1l6
      acc126(44)=acc126(6)*Qspvak1k2
      acc126(45)=Qspk2*acc126(30)
      acc126(46)=Qspval5k2*acc126(1)
      acc126(47)=Qspval5l6*acc126(5)
      acc126(42)=acc126(47)+acc126(46)+acc126(45)+acc126(4)+acc126(43)+acc126(4&
      &4)+acc126(42)
      acc126(42)=Qspvak4k3*acc126(42)
      acc126(43)=-acc126(27)*acc126(41)
      acc126(44)=Qspk4+Qspk3
      acc126(45)=-Qspk7-acc126(44)
      acc126(45)=acc126(20)*acc126(45)
      acc126(46)=acc126(28)*Qspvak1k7
      acc126(47)=acc126(11)*Qspvak1k3
      acc126(48)=Qspk2*acc126(35)
      acc126(49)=Qspval5k2*acc126(3)
      acc126(50)=Qspval5l6*acc126(9)
      acc126(51)=QspQ*acc126(15)
      acc126(42)=acc126(42)+acc126(51)+acc126(50)+acc126(49)+acc126(48)+acc126(&
      &10)+acc126(46)+acc126(47)+acc126(45)+acc126(43)
      acc126(42)=Qspe7*acc126(42)
      acc126(43)=acc126(31)*acc126(41)
      acc126(45)=Qspvak1e7*acc126(39)
      acc126(46)=Qspk2*acc126(36)
      acc126(47)=Qspval5k2*acc126(2)
      acc126(48)=Qspval5l6*acc126(29)
      acc126(43)=acc126(48)+acc126(47)+acc126(46)+acc126(8)+acc126(45)+acc126(4&
      &3)
      acc126(43)=QspQ*acc126(43)
      acc126(45)=acc126(33)*acc126(41)
      acc126(46)=Qspvak1e7*acc126(40)
      acc126(47)=Qspk2*acc126(37)
      acc126(48)=Qspval5k2*acc126(7)
      acc126(49)=Qspval5l6*acc126(32)
      acc126(45)=acc126(49)+acc126(48)+acc126(47)+acc126(13)+acc126(46)+acc126(&
      &45)
      acc126(45)=Qspk7*acc126(45)
      acc126(46)=-acc126(22)*acc126(41)
      acc126(47)=Qspvak1e7*acc126(18)
      acc126(48)=Qspk2*acc126(26)
      acc126(49)=Qspval5k2*acc126(21)
      acc126(50)=Qspval5l6*acc126(14)
      acc126(46)=acc126(50)+acc126(49)+acc126(48)+acc126(17)+acc126(47)+acc126(&
      &46)
      acc126(46)=Qspvak4k3*acc126(46)
      acc126(41)=-acc126(24)*acc126(41)
      acc126(44)=-acc126(16)*acc126(44)
      acc126(47)=Qspvak1e7*acc126(38)
      acc126(48)=Qspk2*acc126(25)
      acc126(49)=Qspval5k2*acc126(19)
      acc126(50)=Qspval5l6*acc126(23)
      brack=acc126(41)+acc126(42)+acc126(43)+acc126(44)+acc126(45)+acc126(46)+a&
      &cc126(47)+acc126(48)+acc126(49)+acc126(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram126_sign, shift => diagram126_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd126h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d126
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d126 = 0.0_ki
      d126 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d126, ki), aimag(d126), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd126h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d126
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d126 = 0.0_ki
      d126 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d126, ki), aimag(d126), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d126h2l1
