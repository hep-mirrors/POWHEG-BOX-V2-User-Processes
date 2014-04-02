module     p3_usbar_epnebbbar_d26h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity0d26h0l1.f90
   ! generator: buildfortran.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd26h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc26(70)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      acc26(1)=abb26(8)
      acc26(2)=abb26(9)
      acc26(3)=abb26(10)
      acc26(4)=abb26(11)
      acc26(5)=abb26(12)
      acc26(6)=abb26(13)
      acc26(7)=abb26(14)
      acc26(8)=abb26(15)
      acc26(9)=abb26(16)
      acc26(10)=abb26(17)
      acc26(11)=abb26(18)
      acc26(12)=abb26(19)
      acc26(13)=abb26(20)
      acc26(14)=abb26(21)
      acc26(15)=abb26(22)
      acc26(16)=abb26(23)
      acc26(17)=abb26(24)
      acc26(18)=abb26(27)
      acc26(19)=abb26(29)
      acc26(20)=abb26(30)
      acc26(21)=abb26(31)
      acc26(22)=abb26(36)
      acc26(23)=abb26(37)
      acc26(24)=abb26(38)
      acc26(25)=abb26(39)
      acc26(26)=abb26(40)
      acc26(27)=abb26(41)
      acc26(28)=abb26(42)
      acc26(29)=abb26(44)
      acc26(30)=abb26(45)
      acc26(31)=abb26(46)
      acc26(32)=abb26(47)
      acc26(33)=abb26(48)
      acc26(34)=abb26(50)
      acc26(35)=abb26(51)
      acc26(36)=abb26(52)
      acc26(37)=abb26(54)
      acc26(38)=abb26(55)
      acc26(39)=abb26(56)
      acc26(40)=abb26(57)
      acc26(41)=abb26(58)
      acc26(42)=abb26(59)
      acc26(43)=abb26(61)
      acc26(44)=abb26(63)
      acc26(45)=abb26(65)
      acc26(46)=abb26(66)
      acc26(47)=abb26(67)
      acc26(48)=abb26(68)
      acc26(49)=abb26(69)
      acc26(50)=abb26(70)
      acc26(51)=abb26(71)
      acc26(52)=abb26(72)
      acc26(53)=abb26(73)
      acc26(54)=Qspl5-Qspk1
      acc26(55)=-acc26(18)*acc26(54)
      acc26(56)=Qspval5k3*acc26(44)
      acc26(57)=Qspval5l6*acc26(42)
      acc26(58)=Qspl6*acc26(11)
      acc26(59)=QspQ*acc26(15)
      acc26(60)=Qspval6k3*acc26(36)
      acc26(61)=Qspval6k1*acc26(39)
      acc26(62)=Qspvak2k3*acc26(6)
      acc26(63)=Qspval5k1*acc26(17)
      acc26(64)=Qspval6k1*acc26(53)
      acc26(64)=acc26(48)+acc26(64)
      acc26(64)=Qspvak4k3*acc26(64)
      acc26(65)=Qspk2*acc26(21)
      acc26(55)=acc26(65)+acc26(64)+acc26(63)+acc26(62)+acc26(61)+acc26(60)+acc&
      &26(59)+acc26(58)+acc26(57)+acc26(4)+acc26(56)+acc26(55)
      acc26(55)=Qspk2*acc26(55)
      acc26(56)=acc26(27)*Qspvak4k2
      acc26(57)=acc26(16)*Qspvak1k2
      acc26(58)=Qspvak2l6*acc26(26)
      acc26(59)=Qspval5k2*acc26(46)
      acc26(60)=Qspval6k2*acc26(47)
      acc26(61)=Qspvak2k3*acc26(7)
      acc26(56)=acc26(61)+acc26(60)+acc26(59)+acc26(58)+acc26(57)+acc26(37)+acc&
      &26(56)
      acc26(56)=Qspval5k1*acc26(56)
      acc26(57)=-acc26(51)*acc26(54)
      acc26(58)=QspQ*acc26(14)
      acc26(59)=Qspval5k2*acc26(2)
      acc26(60)=Qspval6k1*acc26(1)
      acc26(61)=Qspval6k2*acc26(5)
      acc26(57)=acc26(61)+acc26(60)+acc26(59)+acc26(58)+acc26(57)
      acc26(57)=Qspvak2k3*acc26(57)
      acc26(58)=-Qspval5k2*acc26(45)
      acc26(59)=Qspval6k2*acc26(33)
      acc26(58)=acc26(59)+acc26(3)+acc26(58)
      acc26(58)=Qspvak2k1*acc26(58)
      acc26(59)=acc26(50)*Qspval6l5
      acc26(60)=acc26(49)*Qspvak2l5
      acc26(61)=Qspval6k1*acc26(52)
      acc26(62)=Qspval5k1*acc26(40)
      acc26(58)=acc26(62)+acc26(58)+acc26(61)+acc26(13)+acc26(59)+acc26(60)
      acc26(58)=Qspvak4k3*acc26(58)
      acc26(59)=Qspl6*acc26(9)
      acc26(60)=-Qspval6k3*acc26(1)
      acc26(61)=Qspval6k2*acc26(10)
      acc26(59)=acc26(61)+acc26(60)+acc26(8)+acc26(59)
      acc26(59)=Qspvak2k1*acc26(59)
      acc26(54)=-acc26(31)*acc26(54)
      acc26(60)=QspQ*acc26(35)
      acc26(54)=acc26(60)+acc26(54)
      acc26(54)=Qspval6k3*acc26(54)
      acc26(60)=acc26(23)*Qspvak4k1
      acc26(61)=Qspval5k3*acc26(43)
      acc26(62)=Qspval5l6*acc26(41)
      acc26(63)=Qspl6*acc26(20)
      acc26(64)=QspQ*acc26(29)
      acc26(65)=Qspk1*acc26(28)
      acc26(66)=Qspl5*acc26(32)
      acc26(67)=Qspvak2l6*acc26(19)
      acc26(68)=Qspvak2l6*acc26(25)
      acc26(68)=acc26(30)+acc26(68)
      acc26(68)=Qspval5k2*acc26(68)
      acc26(69)=Qspvak2l6*acc26(24)
      acc26(69)=acc26(38)+acc26(69)
      acc26(69)=Qspval6k1*acc26(69)
      acc26(70)=Qspvak2l6*acc26(22)
      acc26(70)=acc26(34)+acc26(70)
      acc26(70)=Qspval6k2*acc26(70)
      brack=acc26(12)+acc26(54)+acc26(55)+acc26(56)+acc26(57)+acc26(58)+acc26(5&
      &9)+acc26(60)+acc26(61)+acc26(62)+acc26(63)+acc26(64)+acc26(65)+acc26(66)&
      &+acc26(67)+acc26(68)+acc26(69)+acc26(70)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p3_usbar_epnebbbar_groups, only: &
!           & sign => diagram26_sign, shift => diagram26_shift
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd26h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d26
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d26 = 0.0_ki
      d26 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d26, ki), aimag(d26), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd26h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d26
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d26 = 0.0_ki
      d26 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d26, ki), aimag(d26), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p3_usbar_epnebbbar_d26h0l1
