module     p0_gg_hhg_d65h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d65h3l1_qp.f90
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
      use p0_gg_hhg_abbrevd65h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(64)
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspval4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval3k1
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      acc65(1)=abb65(9)
      acc65(2)=abb65(10)
      acc65(3)=abb65(11)
      acc65(4)=abb65(12)
      acc65(5)=abb65(13)
      acc65(6)=abb65(14)
      acc65(7)=abb65(15)
      acc65(8)=abb65(16)
      acc65(9)=abb65(17)
      acc65(10)=abb65(18)
      acc65(11)=abb65(19)
      acc65(12)=abb65(20)
      acc65(13)=abb65(21)
      acc65(14)=abb65(22)
      acc65(15)=abb65(23)
      acc65(16)=abb65(24)
      acc65(17)=abb65(25)
      acc65(18)=abb65(26)
      acc65(19)=abb65(27)
      acc65(20)=abb65(28)
      acc65(21)=abb65(29)
      acc65(22)=abb65(30)
      acc65(23)=abb65(31)
      acc65(24)=abb65(32)
      acc65(25)=abb65(33)
      acc65(26)=abb65(34)
      acc65(27)=abb65(35)
      acc65(28)=abb65(36)
      acc65(29)=abb65(37)
      acc65(30)=abb65(38)
      acc65(31)=abb65(39)
      acc65(32)=abb65(40)
      acc65(33)=abb65(41)
      acc65(34)=abb65(42)
      acc65(35)=abb65(43)
      acc65(36)=abb65(45)
      acc65(37)=abb65(47)
      acc65(38)=abb65(48)
      acc65(39)=abb65(49)
      acc65(40)=abb65(50)
      acc65(41)=abb65(51)
      acc65(42)=abb65(52)
      acc65(43)=abb65(53)
      acc65(44)=abb65(55)
      acc65(45)=abb65(56)
      acc65(46)=abb65(60)
      acc65(47)=abb65(61)
      acc65(48)=abb65(63)
      acc65(49)=abb65(64)
      acc65(50)=abb65(65)
      acc65(51)=abb65(66)
      acc65(52)=abb65(67)
      acc65(53)=abb65(68)
      acc65(54)=Qspvak5l4*acc65(48)
      acc65(54)=acc65(42)+acc65(54)
      acc65(54)=Qspval4k1*acc65(54)
      acc65(55)=QspQ*acc65(26)
      acc65(54)=acc65(55)+acc65(28)+acc65(54)
      acc65(54)=Qspvak2k5*acc65(54)
      acc65(55)=Qspvak2l3*acc65(52)
      acc65(56)=Qspvak5k1*acc65(31)
      acc65(57)=Qspvak2l4*acc65(53)
      acc65(58)=Qspvak5l4*acc65(21)
      acc65(59)=-Qspvak5l4*acc65(41)
      acc65(59)=acc65(2)+acc65(59)
      acc65(59)=Qspval4k1*acc65(59)
      acc65(60)=Qspvak5k1*acc65(41)
      acc65(60)=acc65(18)+acc65(60)
      acc65(60)=QspQ*acc65(60)
      acc65(61)=Qspk2*acc65(14)
      acc65(54)=acc65(61)+acc65(54)+acc65(60)+acc65(59)+acc65(58)+acc65(57)+acc&
      &65(56)+acc65(13)+acc65(55)
      acc65(54)=Qspk2*acc65(54)
      acc65(55)=Qspvak5k2*acc65(12)
      acc65(56)=Qspk5*acc65(22)
      acc65(57)=QspQ*acc65(43)
      acc65(58)=Qspvak5k2*acc65(4)
      acc65(58)=acc65(11)+acc65(58)
      acc65(58)=Qspvak2k5*acc65(58)
      acc65(59)=Qspk5*acc65(37)
      acc65(59)=acc65(23)+acc65(59)
      acc65(59)=Qspk2*acc65(59)
      acc65(55)=acc65(59)+acc65(58)+acc65(57)+acc65(56)+acc65(17)+acc65(55)
      acc65(55)=Qspk2*acc65(55)
      acc65(56)=Qspval4k2*acc65(30)
      acc65(57)=Qspval4k2*acc65(48)
      acc65(57)=acc65(25)+acc65(57)
      acc65(57)=Qspk5*acc65(57)
      acc65(56)=acc65(57)+acc65(19)+acc65(56)
      acc65(56)=Qspvak2l4*acc65(56)
      acc65(57)=Qspk5*acc65(39)
      acc65(58)=QspQ*acc65(44)
      acc65(57)=acc65(58)+acc65(38)+acc65(57)
      acc65(57)=QspQ*acc65(57)
      acc65(58)=Qspvak2l3*acc65(34)
      acc65(59)=Qspvak5k2*acc65(15)
      acc65(60)=Qspk5*acc65(24)
      acc65(61)=Qspvak5l4*acc65(45)
      acc65(62)=-QspQ*acc65(48)
      acc65(62)=acc65(62)+acc65(1)
      acc65(62)=Qspvak5k2*acc65(62)
      acc65(62)=acc65(20)+acc65(62)
      acc65(62)=Qspvak2k5*acc65(62)
      acc65(55)=acc65(55)+acc65(62)+acc65(57)+acc65(61)+acc65(56)+acc65(60)+acc&
      &65(59)+acc65(6)+acc65(58)
      acc65(55)=Qspvak2k1*acc65(55)
      acc65(56)=-Qspvak5k1*acc65(50)
      acc65(57)=QspQ*acc65(5)
      acc65(56)=acc65(57)+acc65(16)+acc65(56)
      acc65(56)=QspQ*acc65(56)
      acc65(57)=Qspval3k1*acc65(10)
      acc65(58)=Qspval4k2*acc65(47)
      acc65(59)=Qspvak5k1*acc65(46)
      acc65(60)=Qspvak5l4*acc65(50)
      acc65(60)=acc65(49)+acc65(60)
      acc65(60)=Qspval4k1*acc65(60)
      acc65(56)=acc65(56)+acc65(60)+acc65(59)+acc65(58)+acc65(7)+acc65(57)
      acc65(56)=Qspvak2k5*acc65(56)
      acc65(57)=Qspval3k1*acc65(3)
      acc65(58)=Qspvak2l3*acc65(29)
      acc65(59)=Qspval4k2*acc65(9)
      acc65(60)=Qspvak5k1*acc65(33)
      acc65(61)=Qspval4k2*acc65(36)
      acc65(61)=acc65(51)+acc65(61)
      acc65(61)=Qspvak2l4*acc65(61)
      acc65(62)=Qspvak5l4*acc65(35)
      acc65(63)=Qspvak5l4*acc65(40)
      acc65(63)=acc65(27)+acc65(63)
      acc65(63)=Qspval4k1*acc65(63)
      acc65(64)=-Qspvak5k1*acc65(40)
      acc65(64)=acc65(32)+acc65(64)
      acc65(64)=QspQ*acc65(64)
      brack=acc65(8)+acc65(54)+acc65(55)+acc65(56)+acc65(57)+acc65(58)+acc65(59&
      &)+acc65(60)+acc65(61)+acc65(62)+acc65(63)+acc65(64)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d65h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd65h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d65h3l1_qp
