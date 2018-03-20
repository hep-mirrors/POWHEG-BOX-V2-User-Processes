module     p0_gg_hhg_d43h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d43h3l1_qp.f90
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
      use p0_gg_hhg_abbrevd43h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc43(57)
      complex(ki) :: Qspk1
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5k2
      Qspk1 = dotproduct(Q,k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      acc43(1)=abb43(9)
      acc43(2)=abb43(10)
      acc43(3)=abb43(11)
      acc43(4)=abb43(12)
      acc43(5)=abb43(13)
      acc43(6)=abb43(14)
      acc43(7)=abb43(15)
      acc43(8)=abb43(16)
      acc43(9)=abb43(17)
      acc43(10)=abb43(18)
      acc43(11)=abb43(19)
      acc43(12)=abb43(20)
      acc43(13)=abb43(21)
      acc43(14)=abb43(22)
      acc43(15)=abb43(23)
      acc43(16)=abb43(24)
      acc43(17)=abb43(25)
      acc43(18)=abb43(26)
      acc43(19)=abb43(27)
      acc43(20)=abb43(29)
      acc43(21)=abb43(30)
      acc43(22)=abb43(31)
      acc43(23)=abb43(32)
      acc43(24)=abb43(34)
      acc43(25)=abb43(35)
      acc43(26)=abb43(36)
      acc43(27)=abb43(37)
      acc43(28)=abb43(38)
      acc43(29)=abb43(39)
      acc43(30)=abb43(40)
      acc43(31)=abb43(41)
      acc43(32)=abb43(42)
      acc43(33)=abb43(43)
      acc43(34)=abb43(44)
      acc43(35)=abb43(45)
      acc43(36)=abb43(48)
      acc43(37)=abb43(49)
      acc43(38)=abb43(50)
      acc43(39)=abb43(51)
      acc43(40)=abb43(52)
      acc43(41)=abb43(53)
      acc43(42)=abb43(54)
      acc43(43)=abb43(55)
      acc43(44)=abb43(56)
      acc43(45)=abb43(59)
      acc43(46)=abb43(60)
      acc43(47)=Qspk1*acc43(22)
      acc43(48)=Qspval3k1*acc43(41)
      acc43(49)=Qspvak5l4*acc43(39)
      acc43(50)=Qspvak2k1*acc43(14)
      acc43(47)=acc43(50)+acc43(49)+acc43(48)+acc43(18)+acc43(47)
      acc43(47)=QspQ*acc43(47)
      acc43(48)=Qspk1*acc43(35)
      acc43(49)=Qspval3k1*acc43(42)
      acc43(50)=Qspvak2k1*acc43(27)
      acc43(51)=-QspQ*acc43(22)
      acc43(48)=acc43(51)+acc43(50)+acc43(49)+acc43(31)+acc43(48)
      acc43(48)=Qspk2*acc43(48)
      acc43(49)=Qspk1*acc43(37)
      acc43(50)=Qspval3k1*acc43(38)
      acc43(49)=acc43(50)+acc43(36)+acc43(49)
      acc43(49)=Qspvak5l4*acc43(49)
      acc43(50)=Qspk5*acc43(30)
      acc43(51)=Qspk1*acc43(28)
      acc43(52)=Qspval3k1*acc43(40)
      acc43(53)=Qspvak2k5*acc43(44)
      acc43(54)=Qspvak5l4*acc43(15)
      acc43(54)=acc43(11)+acc43(54)
      acc43(54)=Qspvak2k1*acc43(54)
      acc43(55)=Qspvak2l3*acc43(19)
      acc43(55)=acc43(2)+acc43(55)
      acc43(55)=Qspvak5k1*acc43(55)
      acc43(47)=acc43(48)+acc43(47)+acc43(55)+acc43(54)+acc43(49)+acc43(53)+acc&
      &43(52)+acc43(51)+acc43(29)+acc43(50)
      acc43(47)=Qspk2*acc43(47)
      acc43(48)=Qspvak2k5*acc43(13)
      acc43(49)=Qspvak2k1*acc43(5)
      acc43(48)=acc43(48)+acc43(49)
      acc43(48)=QspQ*acc43(48)
      acc43(49)=Qspvak2k5*acc43(43)
      acc43(50)=Qspvak2k1*acc43(10)
      acc43(51)=Qspvak2l3*acc43(45)
      acc43(51)=acc43(3)+acc43(51)
      acc43(51)=Qspvak5k1*acc43(51)
      acc43(48)=acc43(48)+acc43(51)+acc43(50)+acc43(16)+acc43(49)
      acc43(48)=QspQ*acc43(48)
      acc43(49)=Qspval4k2*acc43(1)
      acc43(50)=Qspval4k2*acc43(20)
      acc43(50)=acc43(46)+acc43(50)
      acc43(50)=Qspvak2l3*acc43(50)
      acc43(51)=Qspvak2k5*acc43(32)
      acc43(49)=acc43(51)+acc43(50)+acc43(8)+acc43(49)
      acc43(49)=Qspvak5k1*acc43(49)
      acc43(50)=Qspval4k2*acc43(4)
      acc43(51)=Qspvak2k5*acc43(9)*Qspvak5k2
      acc43(50)=acc43(51)+acc43(7)+acc43(50)
      acc43(50)=Qspvak2k1*acc43(50)
      acc43(51)=Qspk5*acc43(17)
      acc43(52)=Qspval4k2*acc43(26)
      acc43(53)=Qspk1*acc43(25)
      acc43(54)=Qspval3k1*acc43(24)
      acc43(55)=Qspk5*acc43(34)
      acc43(55)=acc43(23)+acc43(55)
      acc43(55)=Qspvak2l3*acc43(55)
      acc43(56)=Qspvak2k5*acc43(6)
      acc43(57)=Qspvak2k5*acc43(21)
      acc43(57)=acc43(33)+acc43(57)
      acc43(57)=Qspvak5l4*acc43(57)
      brack=acc43(12)+acc43(47)+acc43(48)+acc43(49)+acc43(50)+acc43(51)+acc43(5&
      &2)+acc43(53)+acc43(54)+acc43(55)+acc43(56)+acc43(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d43h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd43h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d43
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d43 = 0.0_ki
      d43 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d43, ki), aimag(d43), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d43h3l1_qp
