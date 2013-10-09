module     p1_dbarc_epnebbbarg_d12h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d12h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd12h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc12(50)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      acc12(1)=abb12(7)
      acc12(2)=abb12(8)
      acc12(3)=abb12(9)
      acc12(4)=abb12(10)
      acc12(5)=abb12(11)
      acc12(6)=abb12(12)
      acc12(7)=abb12(13)
      acc12(8)=abb12(14)
      acc12(9)=abb12(15)
      acc12(10)=abb12(16)
      acc12(11)=abb12(17)
      acc12(12)=abb12(18)
      acc12(13)=abb12(19)
      acc12(14)=abb12(20)
      acc12(15)=abb12(21)
      acc12(16)=abb12(22)
      acc12(17)=abb12(24)
      acc12(18)=abb12(26)
      acc12(19)=abb12(27)
      acc12(20)=abb12(28)
      acc12(21)=abb12(29)
      acc12(22)=abb12(30)
      acc12(23)=abb12(31)
      acc12(24)=abb12(32)
      acc12(25)=abb12(33)
      acc12(26)=abb12(34)
      acc12(27)=abb12(35)
      acc12(28)=abb12(36)
      acc12(29)=abb12(37)
      acc12(30)=abb12(38)
      acc12(31)=abb12(39)
      acc12(32)=abb12(41)
      acc12(33)=abb12(43)
      acc12(34)=abb12(44)
      acc12(35)=abb12(45)
      acc12(36)=abb12(46)
      acc12(37)=abb12(47)
      acc12(38)=Qspk3+Qspk4
      acc12(39)=acc12(38)+QspQ
      acc12(40)=acc12(17)*acc12(39)
      acc12(41)=Qspvak1k2*Qspvak4k3
      acc12(42)=acc12(4)*acc12(41)
      acc12(43)=Qspvak7k2*Qspvak4k3
      acc12(44)=acc12(6)*acc12(43)
      acc12(45)=acc12(13)*Qspvak4k2
      acc12(46)=acc12(22)*Qspvak1k3
      acc12(47)=acc12(27)*Qspvak1k2
      acc12(48)=acc12(32)*Qspvak7k3
      acc12(49)=acc12(33)*Qspvak7k2
      acc12(50)=acc12(36)*Qspvak4k3
      acc12(40)=acc12(50)+acc12(49)+acc12(47)+acc12(40)+acc12(48)+acc12(46)+acc&
      &12(45)+acc12(9)+acc12(44)+acc12(42)
      acc12(40)=Qspval6k2*acc12(40)
      acc12(39)=acc12(19)*acc12(39)
      acc12(42)=acc12(8)*acc12(41)
      acc12(44)=acc12(16)*Qspvak4k2
      acc12(45)=acc12(23)*Qspvak1k3
      acc12(46)=acc12(28)*Qspvak1k2
      acc12(47)=acc12(31)*Qspvak7k3
      acc12(48)=acc12(34)*Qspvak7k2
      acc12(49)=acc12(35)*acc12(43)
      acc12(50)=acc12(37)*Qspvak4k3
      acc12(39)=acc12(50)+acc12(48)+acc12(46)+acc12(39)+acc12(49)+acc12(47)+acc&
      &12(45)+acc12(44)+acc12(12)+acc12(42)
      acc12(39)=Qspval5k2*acc12(39)
      acc12(42)=acc12(11)*Qspvak4k2
      acc12(44)=acc12(26)*Qspvak1k2
      acc12(45)=acc12(30)*Qspvak7k2
      acc12(42)=-acc12(45)+acc12(42)-acc12(44)
      acc12(38)=-Qspk2+acc12(38)
      acc12(38)=acc12(42)*acc12(38)
      acc12(42)=acc12(5)*Qspvak4k2
      acc12(44)=acc12(24)*Qspvak1k2
      acc12(45)=acc12(29)*Qspvak7k2
      acc12(42)=acc12(45)+acc12(25)+acc12(44)+acc12(42)
      acc12(42)=QspQ*acc12(42)
      acc12(44)=acc12(18)*Qspvak4k3
      acc12(44)=acc12(44)+acc12(2)
      acc12(44)=Qspvak4k2*acc12(44)
      acc12(45)=-acc12(5)*Qspvak4k3
      acc12(45)=acc12(21)+acc12(45)
      acc12(45)=Qspvak3k2*acc12(45)
      acc12(41)=acc12(1)*acc12(41)
      acc12(43)=acc12(20)*acc12(43)
      acc12(46)=Qspvak7k1*acc12(10)
      acc12(47)=Qspvak1k7*acc12(15)
      acc12(48)=Qspk7*acc12(7)
      acc12(49)=Qspk1*acc12(14)
      brack=acc12(3)+acc12(38)+acc12(39)+acc12(40)+acc12(41)+acc12(42)+acc12(43&
      &)+acc12(44)+acc12(45)+acc12(46)+acc12(47)+acc12(48)+acc12(49)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram12_sign, shift => diagram12_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd12h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd12h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d12h0l1
