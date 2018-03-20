module     p0_gg_hhg_d57h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d57h3l1_qp.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd57h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc57(71)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspval4k1
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk1 = dotproduct(Q,k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      acc57(1)=abb57(9)
      acc57(2)=abb57(10)
      acc57(3)=abb57(11)
      acc57(4)=abb57(12)
      acc57(5)=abb57(13)
      acc57(6)=abb57(14)
      acc57(7)=abb57(15)
      acc57(8)=abb57(16)
      acc57(9)=abb57(17)
      acc57(10)=abb57(18)
      acc57(11)=abb57(19)
      acc57(12)=abb57(20)
      acc57(13)=abb57(21)
      acc57(14)=abb57(22)
      acc57(15)=abb57(23)
      acc57(16)=abb57(24)
      acc57(17)=abb57(25)
      acc57(18)=abb57(26)
      acc57(19)=abb57(27)
      acc57(20)=abb57(28)
      acc57(21)=abb57(29)
      acc57(22)=abb57(31)
      acc57(23)=abb57(32)
      acc57(24)=abb57(33)
      acc57(25)=abb57(35)
      acc57(26)=abb57(36)
      acc57(27)=abb57(37)
      acc57(28)=abb57(38)
      acc57(29)=abb57(39)
      acc57(30)=abb57(40)
      acc57(31)=abb57(41)
      acc57(32)=abb57(42)
      acc57(33)=abb57(43)
      acc57(34)=abb57(44)
      acc57(35)=abb57(47)
      acc57(36)=abb57(49)
      acc57(37)=abb57(51)
      acc57(38)=abb57(52)
      acc57(39)=abb57(54)
      acc57(40)=abb57(55)
      acc57(41)=abb57(58)
      acc57(42)=abb57(59)
      acc57(43)=abb57(62)
      acc57(44)=abb57(63)
      acc57(45)=abb57(65)
      acc57(46)=abb57(66)
      acc57(47)=abb57(67)
      acc57(48)=abb57(68)
      acc57(49)=abb57(69)
      acc57(50)=abb57(70)
      acc57(51)=abb57(71)
      acc57(52)=abb57(72)
      acc57(53)=abb57(73)
      acc57(54)=abb57(74)
      acc57(55)=abb57(77)
      acc57(56)=abb57(78)
      acc57(57)=abb57(80)
      acc57(58)=abb57(81)
      acc57(59)=abb57(83)
      acc57(60)=abb57(84)
      acc57(61)=Qspvak2l4*acc57(34)
      acc57(62)=Qspvak5k1*acc57(23)
      acc57(63)=Qspval3k1*acc57(32)
      acc57(64)=Qspvak2k1*acc57(19)
      acc57(61)=acc57(64)+acc57(63)+acc57(62)+acc57(1)+acc57(61)
      acc57(61)=Qspvak2k1*acc57(61)
      acc57(62)=Qspvak2l4*acc57(53)
      acc57(63)=Qspvak5k1*acc57(41)
      acc57(64)=Qspval3k1*acc57(42)
      acc57(65)=Qspvak2k1*acc57(15)
      acc57(62)=acc57(65)+acc57(64)+acc57(63)+acc57(12)+acc57(62)
      acc57(62)=QspQ*acc57(62)
      acc57(63)=Qspval3k1*acc57(25)
      acc57(64)=Qspvak2k1*acc57(6)
      acc57(65)=QspQ*acc57(13)
      acc57(63)=acc57(65)+acc57(64)+acc57(47)+acc57(63)
      acc57(63)=Qspk2*acc57(63)
      acc57(64)=Qspvak2l4*acc57(59)
      acc57(65)=Qspvak5k1*acc57(55)
      acc57(64)=acc57(65)+acc57(4)+acc57(64)
      acc57(64)=Qspval3k1*acc57(64)
      acc57(65)=Qspk5*acc57(27)
      acc57(66)=Qspvak2l4*acc57(58)
      acc57(67)=Qspvak2k5*acc57(18)
      acc57(68)=Qspvak5k1*acc57(37)
      acc57(61)=acc57(63)+acc57(62)+acc57(61)+acc57(64)+acc57(68)+acc57(67)+acc&
      &57(66)+acc57(11)+acc57(65)
      acc57(61)=Qspk2*acc57(61)
      acc57(62)=Qspvak2k5*acc57(29)
      acc57(63)=Qspvak2k1*acc57(16)
      acc57(62)=acc57(63)+acc57(36)+acc57(62)
      acc57(62)=QspQ*acc57(62)
      acc57(63)=Qspvak2l4*acc57(48)
      acc57(64)=-Qspvak2k5*acc57(50)
      acc57(65)=Qspk5*acc57(8)
      acc57(65)=acc57(46)+acc57(65)
      acc57(65)=Qspvak2l3*acc57(65)
      acc57(66)=Qspvak5k1*acc57(22)
      acc57(67)=Qspval3k1*acc57(38)
      acc57(68)=Qspvak2k1*acc57(7)
      acc57(62)=acc57(62)+acc57(68)+acc57(67)+acc57(66)+acc57(65)+acc57(64)+acc&
      &57(14)+acc57(63)
      acc57(62)=QspQ*acc57(62)
      acc57(63)=Qspk5*acc57(31)
      acc57(64)=Qspvak2l4*acc57(33)
      acc57(65)=-Qspvak2k5*acc57(40)*Qspvak5k2
      acc57(66)=Qspvak5k1*acc57(20)
      acc57(67)=Qspval3k1*acc57(24)
      acc57(68)=Qspvak2k1*acc57(17)
      acc57(63)=acc57(68)+acc57(67)+acc57(66)+acc57(65)+acc57(64)+acc57(21)+acc&
      &57(63)
      acc57(63)=Qspvak2k1*acc57(63)
      acc57(64)=Qspk1*acc57(60)
      acc57(65)=Qspval4k1*acc57(45)
      acc57(64)=acc57(65)+acc57(9)+acc57(64)
      acc57(64)=Qspk5*acc57(64)
      acc57(65)=Qspk1*acc57(49)
      acc57(66)=Qspval4k1*acc57(35)
      acc57(64)=acc57(64)+acc57(66)+acc57(2)+acc57(65)
      acc57(64)=Qspvak2l3*acc57(64)
      acc57(65)=Qspk1*acc57(30)
      acc57(66)=Qspval4k1*acc57(39)
      acc57(65)=acc57(66)+acc57(26)+acc57(65)
      acc57(65)=Qspvak2k5*acc57(65)
      acc57(66)=Qspvak2k5*acc57(3)
      acc57(67)=Qspvak2l3*acc57(43)
      acc57(66)=acc57(67)+acc57(10)+acc57(66)
      acc57(66)=Qspvak5k1*acc57(66)
      acc57(67)=Qspvak2l4*acc57(57)
      acc57(68)=Qspvak5k1*acc57(28)
      acc57(67)=acc57(68)+acc57(52)+acc57(67)
      acc57(67)=Qspval3k1*acc57(67)
      acc57(68)=Qspk1*acc57(51)
      acc57(69)=Qspval4k1*acc57(54)
      acc57(70)=Qspk5*acc57(44)
      acc57(71)=Qspvak2l4*acc57(56)
      brack=acc57(5)+acc57(61)+acc57(62)+acc57(63)+acc57(64)+acc57(65)+acc57(66&
      &)+acc57(67)+acc57(68)+acc57(69)+acc57(70)+acc57(71)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d57h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd57h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d57
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d57 = 0.0_ki
      d57 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d57, ki), aimag(d57), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d57h3l1_qp
