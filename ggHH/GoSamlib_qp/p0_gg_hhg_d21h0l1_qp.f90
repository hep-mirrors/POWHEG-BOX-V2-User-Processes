module p0_gg_hhg_d21h0l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d21h0l1.f90
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
      use p0_gg_hhg_abbrevd21h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(75)
      complex(ki) :: Qspl3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k5
      Qspl3 = dotproduct(Q,l3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc21(1)=abb21(11)
      acc21(2)=abb21(12)
      acc21(3)=abb21(13)
      acc21(4)=abb21(14)
      acc21(5)=abb21(15)
      acc21(6)=abb21(17)
      acc21(7)=abb21(18)
      acc21(8)=abb21(19)
      acc21(9)=abb21(20)
      acc21(10)=abb21(21)
      acc21(11)=abb21(22)
      acc21(12)=abb21(23)
      acc21(13)=abb21(24)
      acc21(14)=abb21(25)
      acc21(15)=abb21(26)
      acc21(16)=abb21(27)
      acc21(17)=abb21(28)
      acc21(18)=abb21(29)
      acc21(19)=abb21(30)
      acc21(20)=abb21(31)
      acc21(21)=abb21(32)
      acc21(22)=abb21(33)
      acc21(23)=abb21(34)
      acc21(24)=abb21(35)
      acc21(25)=abb21(36)
      acc21(26)=abb21(37)
      acc21(27)=abb21(38)
      acc21(28)=abb21(39)
      acc21(29)=abb21(40)
      acc21(30)=abb21(41)
      acc21(31)=abb21(42)
      acc21(32)=abb21(43)
      acc21(33)=abb21(44)
      acc21(34)=abb21(45)
      acc21(35)=abb21(46)
      acc21(36)=abb21(47)
      acc21(37)=abb21(48)
      acc21(38)=abb21(49)
      acc21(39)=abb21(50)
      acc21(40)=abb21(51)
      acc21(41)=abb21(52)
      acc21(42)=abb21(54)
      acc21(43)=abb21(56)
      acc21(44)=abb21(59)
      acc21(45)=abb21(60)
      acc21(46)=abb21(61)
      acc21(47)=abb21(62)
      acc21(48)=abb21(63)
      acc21(49)=abb21(66)
      acc21(50)=abb21(67)
      acc21(51)=abb21(68)
      acc21(52)=abb21(70)
      acc21(53)=abb21(78)
      acc21(54)=abb21(79)
      acc21(55)=-Qspl3*acc21(23)
      acc21(56)=Qspk2*acc21(11)
      acc21(57)=QspQ*acc21(39)
      acc21(55)=acc21(57)+acc21(56)+acc21(7)+acc21(55)
      acc21(55)=Qspvak2k5*acc21(55)
      acc21(56)=Qspk5+Qspk1
      acc21(57)=-acc21(54)*acc21(56)
      acc21(58)=Qspvak1k2*acc21(10)
      acc21(57)=acc21(58)+acc21(53)+acc21(57)
      acc21(57)=Qspl3*acc21(57)
      acc21(58)=-acc21(37)*acc21(56)
      acc21(59)=Qspvak1k2*acc21(12)
      acc21(58)=acc21(59)+acc21(14)+acc21(58)
      acc21(58)=Qspk2*acc21(58)
      acc21(59)=-acc21(50)*acc21(56)
      acc21(60)=Qspvak1k2*acc21(36)
      acc21(59)=acc21(60)+acc21(49)+acc21(59)
      acc21(59)=QspQ*acc21(59)
      acc21(56)=-acc21(40)*acc21(56)
      acc21(60)=acc21(52)*Qspvak5l4
      acc21(61)=acc21(46)*Qspvak5k2
      acc21(62)=acc21(42)*Qspvak5l3
      acc21(63)=acc21(41)*Qspvak2l3
      acc21(64)=acc21(34)*Qspvak2l4
      acc21(65)=acc21(19)*Qspvak1l3
      acc21(66)=acc21(18)*Qspval3k2
      acc21(67)=acc21(4)*Qspval3k1
      acc21(68)=acc21(1)*Qspval3k5
      acc21(69)=Qspl4*acc21(51)
      acc21(70)=Qspvak1l4*acc21(3)
      acc21(71)=Qspvak2k1*acc21(9)
      acc21(72)=Qspval4k1*acc21(47)
      acc21(73)=Qspval4k2*acc21(48)
      acc21(74)=Qspval4k5*acc21(15)
      acc21(75)=Qspvak1k2*acc21(8)
      acc21(55)=acc21(55)+acc21(59)+acc21(58)+acc21(57)+acc21(75)+acc21(74)+acc&
      &21(73)+acc21(72)+acc21(71)+acc21(70)+acc21(69)+acc21(68)+acc21(2)+acc21(&
      &67)+acc21(66)+acc21(65)+acc21(64)+acc21(63)+acc21(62)+acc21(60)+acc21(61&
      &)+acc21(56)
      acc21(55)=Qspvak2k5*acc21(55)
      acc21(56)=-QspQ-Qspl4
      acc21(56)=acc21(30)*acc21(56)
      acc21(57)=Qspl3*acc21(24)
      acc21(58)=Qspvak1k5*acc21(27)
      acc21(59)=Qspvak1l4*acc21(6)
      acc21(60)=Qspvak2k1*acc21(44)
      acc21(61)=Qspval4k1*acc21(33)
      acc21(62)=Qspval4k2*acc21(38)
      acc21(63)=Qspval4k5*acc21(29)
      acc21(64)=Qspk5*acc21(26)
      acc21(65)=Qspk2*acc21(31)
      acc21(56)=acc21(65)-acc21(57)+acc21(64)+acc21(63)+acc21(62)+acc21(61)+acc&
      &21(60)+acc21(59)+acc21(21)+acc21(58)+acc21(56)
      acc21(56)=QspQ*acc21(56)
      acc21(58)=Qspk2*acc21(25)
      acc21(57)=acc21(58)+acc21(22)-acc21(57)
      acc21(57)=Qspk2*acc21(57)
      acc21(58)=Qspvak1k5*acc21(17)
      acc21(59)=Qspl4*acc21(32)
      acc21(60)=Qspvak1l4*acc21(45)
      acc21(61)=Qspvak2k1*acc21(35)
      acc21(62)=Qspval4k1*acc21(20)
      acc21(63)=Qspval4k2*acc21(5)
      acc21(64)=Qspval4k5*acc21(28)
      acc21(65)=Qspk5*acc21(16)
      acc21(66)=Qspl3*acc21(43)
      brack=acc21(13)+acc21(55)+acc21(56)+acc21(57)+acc21(58)+acc21(59)+acc21(6&
      &0)+acc21(61)+acc21(62)+acc21(63)+acc21(64)+acc21(65)+acc21(66)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h0_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d21h0l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d21h0l1_qp
