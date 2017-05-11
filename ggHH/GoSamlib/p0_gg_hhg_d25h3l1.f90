module     p0_gg_hhg_d25h3l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d25h3l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc25(70)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl3
      complex(ki) :: Qspl4
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak5l4
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl3 = dotproduct(Q,l3)
      Qspl4 = dotproduct(Q,l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      acc25(1)=abb25(10)
      acc25(2)=abb25(11)
      acc25(3)=abb25(12)
      acc25(4)=abb25(13)
      acc25(5)=abb25(14)
      acc25(6)=abb25(15)
      acc25(7)=abb25(16)
      acc25(8)=abb25(18)
      acc25(9)=abb25(19)
      acc25(10)=abb25(20)
      acc25(11)=abb25(21)
      acc25(12)=abb25(22)
      acc25(13)=abb25(23)
      acc25(14)=abb25(24)
      acc25(15)=abb25(25)
      acc25(16)=abb25(26)
      acc25(17)=abb25(27)
      acc25(18)=abb25(28)
      acc25(19)=abb25(29)
      acc25(20)=abb25(30)
      acc25(21)=abb25(31)
      acc25(22)=abb25(32)
      acc25(23)=abb25(33)
      acc25(24)=abb25(34)
      acc25(25)=abb25(41)
      acc25(26)=abb25(44)
      acc25(27)=abb25(46)
      acc25(28)=abb25(47)
      acc25(29)=abb25(48)
      acc25(30)=abb25(51)
      acc25(31)=abb25(57)
      acc25(32)=abb25(58)
      acc25(33)=abb25(63)
      acc25(34)=abb25(64)
      acc25(35)=abb25(65)
      acc25(36)=abb25(66)
      acc25(37)=abb25(67)
      acc25(38)=abb25(68)
      acc25(39)=abb25(69)
      acc25(40)=abb25(70)
      acc25(41)=abb25(71)
      acc25(42)=abb25(72)
      acc25(43)=abb25(73)
      acc25(44)=abb25(74)
      acc25(45)=abb25(75)
      acc25(46)=abb25(76)
      acc25(47)=abb25(77)
      acc25(48)=abb25(79)
      acc25(49)=abb25(80)
      acc25(50)=abb25(82)
      acc25(51)=abb25(83)
      acc25(52)=abb25(85)
      acc25(53)=-acc25(36)*Qspvak1k2
      acc25(54)=acc25(21)*Qspval3l4
      acc25(55)=acc25(18)*Qspval4k2
      acc25(56)=acc25(17)*Qspval4l3
      acc25(57)=acc25(14)*Qspvak5k2
      acc25(58)=Qspval3k2*acc25(22)
      acc25(59)=-acc25(51)*Qspvak1l3
      acc25(60)=Qspvak2l4*acc25(13)
      acc25(61)=Qspval3k5*acc25(19)
      acc25(62)=Qspvak5l3*acc25(12)
      acc25(63)=Qspk2*acc25(8)
      acc25(64)=Qspk5*acc25(9)
      acc25(65)=Qspvak2l3*acc25(3)
      acc25(66)=Qspvak2k5*acc25(24)
      acc25(67)=Qspval3k1*acc25(1)
      acc25(68)=Qspk1*acc25(10)
      acc25(69)=QspQ*acc25(11)
      acc25(70)=Qspvak2k1*acc25(23)
      acc25(53)=acc25(70)+acc25(69)+acc25(68)+acc25(67)+acc25(66)+acc25(65)+acc&
      &25(64)+acc25(63)+acc25(62)+acc25(61)+acc25(60)+acc25(59)+acc25(58)+acc25&
      &(2)+acc25(57)+acc25(56)+acc25(55)+acc25(53)+acc25(54)
      acc25(53)=Qspvak2k1*acc25(53)
      acc25(54)=-QspQ+Qspl3-Qspl4
      acc25(54)=acc25(38)*acc25(54)
      acc25(55)=Qspval4k1*acc25(46)
      acc25(56)=Qspvak5k1*acc25(32)
      acc25(57)=Qspvak2l4*acc25(50)
      acc25(58)=Qspk2*acc25(28)
      acc25(59)=Qspk5*acc25(34)
      acc25(60)=Qspvak2l3*acc25(51)
      acc25(61)=Qspvak2k5*acc25(6)
      acc25(62)=Qspval3k1*acc25(48)
      acc25(63)=Qspk1*acc25(7)
      acc25(54)=acc25(63)+acc25(62)+acc25(61)+acc25(60)+acc25(59)+acc25(58)+acc&
      &25(57)+acc25(56)+acc25(25)+acc25(55)+acc25(54)
      acc25(54)=QspQ*acc25(54)
      acc25(55)=Qspval3k5*acc25(47)
      acc25(56)=Qspvak5l3*acc25(41)
      acc25(57)=Qspk2*acc25(37)
      acc25(58)=Qspk5*acc25(35)
      acc25(59)=Qspvak2l3*acc25(52)
      acc25(60)=Qspvak2k5*acc25(49)
      acc25(61)=Qspval3k1*acc25(44)
      acc25(55)=acc25(61)+acc25(60)+acc25(59)+acc25(58)+acc25(57)+acc25(56)+acc&
      &25(33)+acc25(55)
      acc25(55)=Qspk1*acc25(55)
      acc25(56)=acc25(43)*Qspval4k5
      acc25(57)=acc25(39)*Qspvak5l4
      acc25(58)=Qspl4*acc25(20)
      acc25(59)=Qspval3k2*acc25(27)
      acc25(60)=Qspval4k1*acc25(45)
      acc25(61)=Qspvak5k1*acc25(15)
      acc25(62)=Qspvak2l4*acc25(26)
      acc25(63)=Qspval3k5*acc25(42)
      acc25(64)=Qspvak5l3*acc25(40)
      acc25(65)=Qspk2*acc25(29)
      acc25(66)=Qspk5*acc25(16)
      acc25(67)=Qspvak2l3*acc25(31)
      acc25(68)=Qspvak2k5*acc25(4)
      acc25(69)=Qspval3k1*acc25(30)
      brack=acc25(5)+acc25(53)+acc25(54)+acc25(55)+acc25(56)+acc25(57)+acc25(58&
      &)+acc25(59)+acc25(60)+acc25(61)+acc25(62)+acc25(63)+acc25(64)+acc25(65)+&
      &acc25(66)+acc25(67)+acc25(68)+acc25(69)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd25h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d25
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d25 = 0.0_ki
      d25 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d25, ki), aimag(d25), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d25h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd25h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d25
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d25 = 0.0_ki
      d25 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d25, ki), aimag(d25), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d25h3l1
