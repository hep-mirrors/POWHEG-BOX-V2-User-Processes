module     p5_usbar_epnebbbarg_d292h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d292h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd292h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc292(57)
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k1
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc292(1)=abb292(8)
      acc292(2)=abb292(9)
      acc292(3)=abb292(10)
      acc292(4)=abb292(11)
      acc292(5)=abb292(12)
      acc292(6)=abb292(13)
      acc292(7)=abb292(14)
      acc292(8)=abb292(15)
      acc292(9)=abb292(16)
      acc292(10)=abb292(17)
      acc292(11)=abb292(18)
      acc292(12)=abb292(19)
      acc292(13)=abb292(20)
      acc292(14)=abb292(21)
      acc292(15)=abb292(22)
      acc292(16)=abb292(23)
      acc292(17)=abb292(24)
      acc292(18)=abb292(25)
      acc292(19)=abb292(26)
      acc292(20)=abb292(27)
      acc292(21)=abb292(28)
      acc292(22)=abb292(29)
      acc292(23)=abb292(30)
      acc292(24)=abb292(31)
      acc292(25)=abb292(32)
      acc292(26)=abb292(33)
      acc292(27)=abb292(34)
      acc292(28)=abb292(35)
      acc292(29)=abb292(36)
      acc292(30)=abb292(37)
      acc292(31)=abb292(38)
      acc292(32)=abb292(39)
      acc292(33)=abb292(40)
      acc292(34)=abb292(42)
      acc292(35)=abb292(44)
      acc292(36)=abb292(49)
      acc292(37)=abb292(58)
      acc292(38)=abb292(60)
      acc292(39)=abb292(63)
      acc292(40)=abb292(64)
      acc292(41)=abb292(71)
      acc292(42)=abb292(76)
      acc292(43)=abb292(79)
      acc292(44)=abb292(87)
      acc292(45)=abb292(88)
      acc292(46)=abb292(98)
      acc292(47)=-Qspk1+Qspl6+Qspl5
      acc292(48)=-acc292(19)*acc292(47)
      acc292(49)=Qspvak2k3*acc292(14)
      acc292(50)=QspQ*acc292(13)
      acc292(51)=Qspvak2l6*acc292(25)
      acc292(52)=Qspvak2l5*acc292(27)
      acc292(53)=Qspvak2l5*acc292(29)
      acc292(53)=acc292(4)+acc292(53)
      acc292(53)=Qspvak4k3*acc292(53)
      acc292(48)=acc292(53)+acc292(52)+acc292(51)+acc292(50)+acc292(49)+acc292(&
      &1)+acc292(48)
      acc292(48)=Qspe7*acc292(48)
      acc292(49)=acc292(12)*Qspvak2k7
      acc292(50)=acc292(9)*Qspvak2e7
      acc292(51)=Qspk2*acc292(6)
      acc292(49)=acc292(51)+acc292(3)+acc292(49)+acc292(50)
      acc292(49)=Qspvak4k3*acc292(49)
      acc292(50)=-acc292(21)*acc292(47)
      acc292(51)=-Qspk7*acc292(11)
      acc292(52)=Qspk7*acc292(20)
      acc292(52)=acc292(33)+acc292(52)
      acc292(52)=Qspvak2k3*acc292(52)
      acc292(53)=Qspvak2k3*acc292(8)
      acc292(53)=acc292(7)+acc292(53)
      acc292(53)=QspQ*acc292(53)
      acc292(54)=-Qspvak2k3*acc292(20)
      acc292(54)=acc292(11)+acc292(54)
      acc292(54)=Qspk2*acc292(54)
      acc292(55)=Qspvak2l6*acc292(23)
      acc292(56)=Qspvak2l5*acc292(26)
      acc292(57)=Qspe7*acc292(24)
      acc292(57)=acc292(15)+acc292(57)
      acc292(57)=Qspvak2k1*acc292(57)
      acc292(48)=acc292(57)+acc292(48)+acc292(49)+acc292(56)+acc292(55)+acc292(&
      &54)+acc292(53)+acc292(52)+acc292(51)+acc292(2)+acc292(50)
      acc292(48)=Qspvak2k1*acc292(48)
      acc292(49)=Qspvak2l6*acc292(41)
      acc292(50)=Qspvak2l5*acc292(40)
      acc292(49)=acc292(50)+acc292(34)+acc292(49)
      acc292(49)=Qspvak4k3*acc292(49)
      acc292(50)=-acc292(39)*acc292(47)
      acc292(51)=QspQ*acc292(28)
      acc292(52)=Qspk2*acc292(37)
      acc292(53)=Qspvak2l6*acc292(35)
      acc292(54)=Qspvak2l5*acc292(30)
      acc292(49)=acc292(49)+acc292(54)+acc292(53)+acc292(52)+acc292(51)+acc292(&
      &22)+acc292(50)
      acc292(49)=Qspe7*acc292(49)
      acc292(50)=Qspk2-Qspk7
      acc292(51)=acc292(44)*acc292(50)
      acc292(52)=QspQ*acc292(46)
      acc292(51)=acc292(52)+acc292(32)+acc292(51)
      acc292(51)=Qspvak2l6*acc292(51)
      acc292(50)=-acc292(31)*acc292(50)
      acc292(52)=QspQ*acc292(36)
      acc292(50)=acc292(52)+acc292(5)+acc292(50)
      acc292(50)=Qspvak2l5*acc292(50)
      acc292(52)=Qspvak2l6*acc292(10)
      acc292(53)=Qspvak2l5*acc292(38)
      acc292(52)=acc292(53)+acc292(16)+acc292(52)
      acc292(52)=Qspvak4k3*acc292(52)
      acc292(47)=-acc292(45)*acc292(47)
      acc292(53)=Qspk7*acc292(43)
      acc292(54)=QspQ*acc292(42)
      acc292(55)=Qspk2*acc292(18)
      brack=acc292(17)+acc292(47)+acc292(48)+acc292(49)+acc292(50)+acc292(51)+a&
      &cc292(52)+acc292(53)+acc292(54)+acc292(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram292_sign, shift => diagram292_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd292h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd292h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d292h3l1
