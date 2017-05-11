module p0_gg_hhg_d17h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d17h3l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(67)
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk1
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspl4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak1l4
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk1 = dotproduct(Q,k1)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k5 = dotproduct(Q,spval3k5)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspl4 = dotproduct(Q,l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk5 = dotproduct(Q,k5)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      acc17(1)=abb17(10)
      acc17(2)=abb17(11)
      acc17(3)=abb17(12)
      acc17(4)=abb17(13)
      acc17(5)=abb17(14)
      acc17(6)=abb17(15)
      acc17(7)=abb17(17)
      acc17(8)=abb17(18)
      acc17(9)=abb17(19)
      acc17(10)=abb17(20)
      acc17(11)=abb17(21)
      acc17(12)=abb17(22)
      acc17(13)=abb17(23)
      acc17(14)=abb17(24)
      acc17(15)=abb17(25)
      acc17(16)=abb17(26)
      acc17(17)=abb17(27)
      acc17(18)=abb17(28)
      acc17(19)=abb17(29)
      acc17(20)=abb17(30)
      acc17(21)=abb17(31)
      acc17(22)=abb17(32)
      acc17(23)=abb17(33)
      acc17(24)=abb17(34)
      acc17(25)=abb17(36)
      acc17(26)=abb17(39)
      acc17(27)=abb17(40)
      acc17(28)=abb17(42)
      acc17(29)=abb17(43)
      acc17(30)=abb17(48)
      acc17(31)=abb17(49)
      acc17(32)=abb17(52)
      acc17(33)=abb17(53)
      acc17(34)=abb17(57)
      acc17(35)=abb17(59)
      acc17(36)=abb17(62)
      acc17(37)=abb17(63)
      acc17(38)=abb17(64)
      acc17(39)=abb17(65)
      acc17(40)=abb17(66)
      acc17(41)=abb17(68)
      acc17(42)=abb17(69)
      acc17(43)=abb17(70)
      acc17(44)=abb17(71)
      acc17(45)=abb17(72)
      acc17(46)=abb17(74)
      acc17(47)=abb17(75)
      acc17(48)=abb17(77)
      acc17(49)=abb17(79)
      acc17(50)=abb17(80)
      acc17(51)=acc17(48)*Qspval3k2
      acc17(52)=acc17(45)*Qspval3l4
      acc17(53)=acc17(36)*Qspvak5l3
      acc17(54)=acc17(32)*Qspval4k2
      acc17(55)=acc17(30)*Qspval4l3
      acc17(56)=acc17(14)*Qspvak5k2
      acc17(57)=Qspvak2l3*acc17(5)
      acc17(58)=Qspvak2l4*acc17(31)
      acc17(59)=Qspk1*acc17(13)
      acc17(60)=Qspl3*acc17(29)
      acc17(61)=Qspvak2k1*acc17(3)
      acc17(62)=Qspk2*acc17(7)
      acc17(63)=Qspval3k5*acc17(1)
      acc17(64)=QspQ*acc17(27)
      acc17(65)=Qspvak2k5*acc17(49)
      acc17(51)=acc17(65)+acc17(64)+acc17(63)+acc17(62)+acc17(61)+acc17(60)+acc&
      &17(59)+acc17(58)+acc17(57)+acc17(4)+acc17(56)+acc17(55)+acc17(54)+acc17(&
      &53)+acc17(51)+acc17(52)
      acc17(51)=Qspvak2k5*acc17(51)
      acc17(52)=QspQ+Qspl4
      acc17(52)=acc17(43)*acc17(52)
      acc17(53)=Qspl3*acc17(43)
      acc17(54)=Qspval4k5*acc17(38)
      acc17(55)=Qspvak2l3*acc17(25)
      acc17(56)=Qspvak2l4*acc17(35)
      acc17(57)=Qspvak1k5*acc17(2)
      acc17(58)=Qspk1*acc17(16)
      acc17(59)=Qspvak2k1*acc17(18)
      acc17(60)=Qspk2*acc17(21)
      acc17(61)=Qspk5*acc17(6)
      acc17(62)=-Qspval3k5*acc17(46)
      acc17(52)=acc17(62)+acc17(61)+acc17(60)+acc17(59)-acc17(53)+acc17(58)+acc&
      &17(57)+acc17(56)+acc17(55)+acc17(10)+acc17(54)+acc17(52)
      acc17(52)=QspQ*acc17(52)
      acc17(54)=Qspk1*acc17(41)
      acc17(55)=Qspvak2k1*acc17(24)
      acc17(56)=Qspk2*acc17(39)
      acc17(53)=acc17(56)+acc17(55)-acc17(53)+acc17(33)+acc17(54)
      acc17(53)=Qspk5*acc17(53)
      acc17(54)=-Qspk2+Qspk1
      acc17(54)=acc17(47)*acc17(54)
      acc17(55)=Qspvak2k1*acc17(19)
      acc17(54)=acc17(55)+acc17(15)+acc17(54)
      acc17(54)=Qspval3k5*acc17(54)
      acc17(55)=acc17(44)*Qspval3k1
      acc17(56)=acc17(40)*Qspval4k1
      acc17(57)=acc17(23)*Qspvak1l3
      acc17(58)=acc17(20)*Qspvak1l4
      acc17(59)=Qspl4*acc17(37)
      acc17(60)=Qspval4k5*acc17(34)
      acc17(61)=Qspvak2l3*acc17(17)
      acc17(62)=Qspvak2l4*acc17(50)
      acc17(63)=Qspvak1k5*acc17(11)
      acc17(64)=Qspk1*acc17(26)
      acc17(65)=-Qspvak1k5*acc17(22)
      acc17(65)=acc17(42)+acc17(65)
      acc17(65)=Qspl3*acc17(65)
      acc17(66)=Qspvak2k1*acc17(9)
      acc17(67)=Qspvak1k5*acc17(8)
      acc17(67)=acc17(28)+acc17(67)
      acc17(67)=Qspk2*acc17(67)
      brack=acc17(12)+acc17(51)+acc17(52)+acc17(53)+acc17(54)+acc17(55)+acc17(5&
      &6)+acc17(57)+acc17(58)+acc17(59)+acc17(60)+acc17(61)+acc17(62)+acc17(63)&
      &+acc17(64)+acc17(65)+acc17(66)+acc17(67)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d17h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d17h3l1_qp
