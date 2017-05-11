module p0_gg_hhg_d53h0l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d53h0l1.f90
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
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc53(68)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk1 = dotproduct(Q,k1)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc53(1)=abb53(8)
      acc53(2)=abb53(9)
      acc53(3)=abb53(10)
      acc53(4)=abb53(11)
      acc53(5)=abb53(12)
      acc53(6)=abb53(13)
      acc53(7)=abb53(14)
      acc53(8)=abb53(15)
      acc53(9)=abb53(16)
      acc53(10)=abb53(17)
      acc53(11)=abb53(18)
      acc53(12)=abb53(20)
      acc53(13)=abb53(21)
      acc53(14)=abb53(22)
      acc53(15)=abb53(23)
      acc53(16)=abb53(24)
      acc53(17)=abb53(25)
      acc53(18)=abb53(26)
      acc53(19)=abb53(27)
      acc53(20)=abb53(28)
      acc53(21)=abb53(29)
      acc53(22)=abb53(30)
      acc53(23)=abb53(31)
      acc53(24)=abb53(32)
      acc53(25)=abb53(33)
      acc53(26)=abb53(35)
      acc53(27)=abb53(36)
      acc53(28)=abb53(37)
      acc53(29)=abb53(38)
      acc53(30)=abb53(39)
      acc53(31)=abb53(40)
      acc53(32)=abb53(42)
      acc53(33)=abb53(43)
      acc53(34)=abb53(45)
      acc53(35)=abb53(46)
      acc53(36)=abb53(47)
      acc53(37)=abb53(49)
      acc53(38)=abb53(50)
      acc53(39)=abb53(51)
      acc53(40)=abb53(53)
      acc53(41)=abb53(54)
      acc53(42)=abb53(55)
      acc53(43)=abb53(56)
      acc53(44)=abb53(57)
      acc53(45)=abb53(58)
      acc53(46)=abb53(64)
      acc53(47)=abb53(67)
      acc53(48)=abb53(68)
      acc53(49)=abb53(69)
      acc53(50)=abb53(70)
      acc53(51)=abb53(72)
      acc53(52)=abb53(74)
      acc53(53)=abb53(75)
      acc53(54)=abb53(78)
      acc53(55)=abb53(79)
      acc53(56)=abb53(80)
      acc53(57)=abb53(81)
      acc53(58)=-Qspvak2k1*acc53(55)
      acc53(59)=Qspvak2l4*acc53(54)
      acc53(60)=-Qspk5*acc53(29)
      acc53(61)=Qspval4k5*acc53(40)
      acc53(62)=Qspk1*acc53(32)
      acc53(63)=Qspl4*acc53(14)
      acc53(64)=Qspvak1k5*acc53(12)
      acc53(65)=Qspk2*acc53(2)
      acc53(66)=Qspvak1k2*acc53(27)
      acc53(67)=QspQ*acc53(20)
      acc53(58)=acc53(67)+acc53(66)+acc53(65)+acc53(64)+acc53(63)+acc53(62)+acc&
      &53(61)+acc53(60)+acc53(59)+acc53(6)+acc53(58)
      acc53(58)=QspQ*acc53(58)
      acc53(59)=Qspvak2k1*acc53(13)
      acc53(60)=Qspvak2l4*acc53(28)
      acc53(61)=Qspk5*acc53(19)
      acc53(62)=Qspval4k5*acc53(16)
      acc53(63)=Qspk1*acc53(36)
      acc53(64)=Qspl4*acc53(22)
      acc53(65)=Qspvak1k5*acc53(5)
      acc53(66)=Qspk2*acc53(1)
      acc53(59)=acc53(66)+acc53(65)+acc53(64)+acc53(63)+acc53(62)+acc53(61)+acc&
      &53(60)+acc53(7)+acc53(59)
      acc53(59)=Qspvak1k2*acc53(59)
      acc53(60)=Qspk1*acc53(48)
      acc53(61)=Qspl4*acc53(46)
      acc53(62)=Qspvak1k5*acc53(24)
      acc53(63)=Qspk2*acc53(34)
      acc53(64)=Qspvak1k2*acc53(9)
      acc53(65)=QspQ*acc53(10)
      acc53(60)=acc53(65)+acc53(64)+acc53(63)+acc53(62)+acc53(61)+acc53(44)+acc&
      &53(60)
      acc53(60)=QspQ*acc53(60)
      acc53(61)=-Qspl4*acc53(11)
      acc53(62)=Qspk2*acc53(23)
      acc53(63)=QspQ*acc53(21)
      acc53(61)=acc53(63)+acc53(62)+acc53(18)+acc53(61)
      acc53(61)=Qspvak1k2*acc53(61)
      acc53(61)=acc53(49)+acc53(61)
      acc53(61)=Qspvak2k5*acc53(61)
      acc53(62)=Qspk1*acc53(42)
      acc53(63)=Qspvak1k5*acc53(37)
      acc53(62)=acc53(63)+acc53(51)+acc53(62)
      acc53(62)=Qspk2*acc53(62)
      acc53(63)=Qspk5*acc53(50)
      acc53(64)=Qspval4k5*acc53(53)
      acc53(65)=Qspk1*acc53(47)
      acc53(66)=Qspk1*acc53(52)
      acc53(66)=acc53(38)+acc53(66)
      acc53(66)=Qspl4*acc53(66)
      acc53(67)=-Qspl4*acc53(25)
      acc53(67)=acc53(17)+acc53(67)
      acc53(67)=Qspvak1k5*acc53(67)
      acc53(59)=acc53(61)+acc53(60)+acc53(59)+acc53(62)+acc53(67)+acc53(66)+acc&
      &53(65)+acc53(64)+acc53(15)+acc53(63)
      acc53(59)=Qspvak2k5*acc53(59)
      acc53(60)=Qspval4k5*acc53(45)
      acc53(61)=Qspk1*acc53(43)
      acc53(62)=Qspvak1k5*acc53(3)
      acc53(60)=acc53(62)+acc53(61)+acc53(35)+acc53(60)
      acc53(60)=Qspk2*acc53(60)
      acc53(61)=Qspvak2k1*acc53(56)
      acc53(62)=Qspvak2l4*acc53(26)
      acc53(63)=Qspk5*acc53(30)
      acc53(64)=Qspval4k5*acc53(41)
      acc53(65)=Qspk1*acc53(39)
      acc53(66)=Qspl4*acc53(33)
      acc53(67)=Qspvak1k5*acc53(57)
      acc53(68)=Qspk2*acc53(31)
      acc53(68)=acc53(8)+acc53(68)
      acc53(68)=Qspvak1k2*acc53(68)
      brack=acc53(4)+acc53(58)+acc53(59)+acc53(60)+acc53(61)+acc53(62)+acc53(63&
      &)+acc53(64)+acc53(65)+acc53(66)+acc53(67)+acc53(68)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d53h0l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d53h0l1_qp
