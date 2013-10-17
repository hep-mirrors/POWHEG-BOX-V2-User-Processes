module     p9_csbar_epnebbbarg_d79h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d79h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd79h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc79(50)
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc79(1)=abb79(9)
      acc79(2)=abb79(10)
      acc79(3)=abb79(11)
      acc79(4)=abb79(12)
      acc79(5)=abb79(13)
      acc79(6)=abb79(14)
      acc79(7)=abb79(15)
      acc79(8)=abb79(16)
      acc79(9)=abb79(17)
      acc79(10)=abb79(18)
      acc79(11)=abb79(19)
      acc79(12)=abb79(21)
      acc79(13)=abb79(22)
      acc79(14)=abb79(24)
      acc79(15)=abb79(28)
      acc79(16)=abb79(29)
      acc79(17)=abb79(33)
      acc79(18)=abb79(36)
      acc79(19)=abb79(37)
      acc79(20)=abb79(42)
      acc79(21)=abb79(45)
      acc79(22)=abb79(46)
      acc79(23)=abb79(49)
      acc79(24)=abb79(52)
      acc79(25)=abb79(53)
      acc79(26)=abb79(54)
      acc79(27)=abb79(55)
      acc79(28)=abb79(63)
      acc79(29)=abb79(64)
      acc79(30)=abb79(70)
      acc79(31)=abb79(71)
      acc79(32)=abb79(73)
      acc79(33)=abb79(74)
      acc79(34)=abb79(76)
      acc79(35)=abb79(77)
      acc79(36)=abb79(78)
      acc79(37)=Qspl6+QspQ
      acc79(37)=acc79(25)*acc79(37)
      acc79(38)=Qspval6k1*acc79(36)
      acc79(39)=Qspvak7l6*acc79(34)
      acc79(40)=Qspvak2l6*acc79(28)
      acc79(41)=Qspk1*acc79(32)
      acc79(42)=Qspvak2k1*acc79(1)
      acc79(43)=Qspk2*acc79(35)
      acc79(43)=acc79(26)+acc79(43)
      acc79(43)=Qspvak7k1*acc79(43)
      acc79(37)=acc79(43)+acc79(42)+acc79(41)+acc79(40)+acc79(39)+acc79(7)+acc7&
      &9(38)+acc79(37)
      acc79(37)=Qspvak4k3*acc79(37)
      acc79(38)=Qspvak2k3*acc79(12)
      acc79(39)=Qspvak2l6*acc79(18)
      acc79(40)=Qspk2*acc79(20)
      acc79(41)=Qspvak2k1*acc79(11)
      acc79(38)=acc79(41)+acc79(40)+acc79(39)+acc79(16)+acc79(38)
      acc79(38)=Qspvak7k1*acc79(38)
      acc79(39)=Qspl6-Qspk1
      acc79(39)=acc79(9)*acc79(39)
      acc79(40)=QspQ*acc79(4)
      acc79(41)=Qspk2*acc79(10)
      acc79(39)=acc79(41)+acc79(3)+acc79(40)+acc79(39)
      acc79(39)=Qspvak2k1*acc79(39)
      acc79(40)=Qspvak4k1*acc79(19)
      acc79(41)=Qspvak4l6*acc79(31)
      acc79(40)=acc79(41)+acc79(2)+acc79(40)
      acc79(40)=QspQ*acc79(40)
      acc79(41)=Qspvak4k1*acc79(33)
      acc79(42)=Qspvak4l6*acc79(27)
      acc79(41)=acc79(41)-acc79(42)
      acc79(42)=acc79(22)-acc79(41)
      acc79(42)=Qspk1*acc79(42)
      acc79(41)=acc79(29)+acc79(41)
      acc79(41)=Qspl6*acc79(41)
      acc79(43)=Qspvak4k1*acc79(17)
      acc79(44)=Qspvak4l6*acc79(30)
      acc79(43)=acc79(44)+acc79(14)+acc79(43)
      acc79(43)=Qspk2*acc79(43)
      acc79(44)=acc79(24)*Qspvak2l5
      acc79(45)=acc79(23)*Qspvak2k7
      acc79(46)=acc79(8)*Qspvak1l6
      acc79(47)=Qspvak2k3*acc79(6)
      acc79(48)=Qspval6k1*acc79(21)
      acc79(49)=Qspvak7l6*acc79(5)
      acc79(50)=Qspvak2l6*acc79(15)
      brack=acc79(13)+acc79(37)+acc79(38)+acc79(39)+acc79(40)+acc79(41)+acc79(4&
      &2)+acc79(43)+acc79(44)+acc79(45)+acc79(46)+acc79(47)+acc79(48)+acc79(49)&
      &+acc79(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram79_sign, shift => diagram79_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd79h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd79h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d79h2l1