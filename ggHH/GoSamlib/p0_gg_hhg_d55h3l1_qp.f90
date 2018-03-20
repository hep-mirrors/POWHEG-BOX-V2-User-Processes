module     p0_gg_hhg_d55h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d55h3l1_qp.f90
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
      use p0_gg_hhg_abbrevd55h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc55(61)
      complex(ki) :: Qspk1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak5k2
      Qspk1 = dotproduct(Q,k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      acc55(1)=abb55(9)
      acc55(2)=abb55(10)
      acc55(3)=abb55(11)
      acc55(4)=abb55(12)
      acc55(5)=abb55(13)
      acc55(6)=abb55(14)
      acc55(7)=abb55(15)
      acc55(8)=abb55(16)
      acc55(9)=abb55(17)
      acc55(10)=abb55(18)
      acc55(11)=abb55(19)
      acc55(12)=abb55(20)
      acc55(13)=abb55(21)
      acc55(14)=abb55(22)
      acc55(15)=abb55(23)
      acc55(16)=abb55(24)
      acc55(17)=abb55(25)
      acc55(18)=abb55(26)
      acc55(19)=abb55(27)
      acc55(20)=abb55(28)
      acc55(21)=abb55(29)
      acc55(22)=abb55(30)
      acc55(23)=abb55(31)
      acc55(24)=abb55(32)
      acc55(25)=abb55(33)
      acc55(26)=abb55(34)
      acc55(27)=abb55(36)
      acc55(28)=abb55(37)
      acc55(29)=abb55(38)
      acc55(30)=abb55(39)
      acc55(31)=abb55(40)
      acc55(32)=abb55(42)
      acc55(33)=abb55(43)
      acc55(34)=abb55(44)
      acc55(35)=abb55(45)
      acc55(36)=abb55(46)
      acc55(37)=abb55(47)
      acc55(38)=abb55(48)
      acc55(39)=abb55(50)
      acc55(40)=abb55(51)
      acc55(41)=abb55(52)
      acc55(42)=abb55(53)
      acc55(43)=abb55(54)
      acc55(44)=abb55(55)
      acc55(45)=abb55(56)
      acc55(46)=abb55(57)
      acc55(47)=abb55(58)
      acc55(48)=abb55(59)
      acc55(49)=abb55(60)
      acc55(50)=abb55(61)
      acc55(51)=abb55(62)
      acc55(52)=abb55(63)
      acc55(53)=Qspk1*acc55(35)
      acc55(54)=Qspval4k1*acc55(43)
      acc55(55)=Qspvak2k1*acc55(21)
      acc55(56)=-Qspvak2l3*acc55(51)
      acc55(53)=acc55(56)+acc55(55)+acc55(54)+acc55(39)+acc55(53)
      acc55(53)=QspQ*acc55(53)
      acc55(54)=Qspk1*acc55(37)
      acc55(55)=Qspval4k1*acc55(44)
      acc55(56)=Qspvak2k1*acc55(15)
      acc55(57)=QspQ*acc55(36)
      acc55(54)=acc55(57)+acc55(56)+acc55(55)+acc55(33)+acc55(54)
      acc55(54)=Qspk2*acc55(54)
      acc55(55)=Qspk1*acc55(50)
      acc55(56)=Qspval4k1*acc55(40)
      acc55(57)=Qspvak2k1*acc55(20)
      acc55(55)=acc55(57)+acc55(56)+acc55(30)+acc55(55)
      acc55(55)=Qspvak2l3*acc55(55)
      acc55(56)=Qspvak5k1*acc55(6)
      acc55(57)=Qspk1*acc55(32)
      acc55(58)=Qspval4k1*acc55(34)
      acc55(59)=Qspvak2k5*acc55(24)
      acc55(60)=Qspk5*acc55(25)
      acc55(61)=Qspvak2k1*acc55(9)
      acc55(53)=acc55(54)+acc55(53)+acc55(55)+acc55(61)+acc55(60)+acc55(59)+acc&
      &55(58)+acc55(57)+acc55(18)+acc55(56)
      acc55(53)=Qspk2*acc55(53)
      acc55(54)=Qspvak2k5*acc55(22)
      acc55(55)=Qspvak2k1*acc55(5)
      acc55(54)=acc55(55)+acc55(42)+acc55(54)
      acc55(54)=QspQ*acc55(54)
      acc55(55)=Qspk1*acc55(38)
      acc55(56)=Qspval4k1*acc55(46)
      acc55(57)=Qspvak2l4*acc55(27)
      acc55(58)=Qspvak2k5*acc55(26)
      acc55(59)=Qspvak2l4*acc55(49)
      acc55(59)=acc55(29)+acc55(59)
      acc55(59)=Qspk5*acc55(59)
      acc55(60)=Qspvak2k1*acc55(17)
      acc55(61)=Qspvak2l3*acc55(41)
      acc55(54)=acc55(54)+acc55(61)+acc55(60)+acc55(59)+acc55(58)+acc55(57)+acc&
      &55(56)+acc55(19)+acc55(55)
      acc55(54)=QspQ*acc55(54)
      acc55(55)=Qspk1*acc55(52)
      acc55(56)=Qspval4k1*acc55(45)
      acc55(57)=Qspvak2k1*acc55(13)
      acc55(55)=acc55(57)+acc55(56)+acc55(14)+acc55(55)
      acc55(55)=Qspvak2l3*acc55(55)
      acc55(56)=Qspvak5k1*acc55(8)
      acc55(57)=Qspval3k1*acc55(31)
      acc55(56)=acc55(57)+acc55(23)+acc55(56)
      acc55(56)=Qspvak2l4*acc55(56)
      acc55(57)=Qspvak5k1*acc55(28)
      acc55(58)=Qspval3k1*acc55(4)
      acc55(57)=acc55(58)+acc55(11)+acc55(57)
      acc55(57)=Qspvak2k5*acc55(57)
      acc55(58)=Qspval3k1*acc55(2)
      acc55(59)=Qspval3k1*acc55(48)
      acc55(59)=acc55(47)+acc55(59)
      acc55(59)=Qspvak2l4*acc55(59)
      acc55(58)=acc55(59)+acc55(16)+acc55(58)
      acc55(58)=Qspk5*acc55(58)
      acc55(59)=Qspvak2k5*acc55(7)*Qspvak5k2
      acc55(60)=Qspk5*acc55(28)
      acc55(59)=acc55(60)+acc55(12)+acc55(59)
      acc55(59)=Qspvak2k1*acc55(59)
      acc55(60)=Qspvak5k1*acc55(3)
      acc55(61)=Qspval3k1*acc55(1)
      brack=acc55(10)+acc55(53)+acc55(54)+acc55(55)+acc55(56)+acc55(57)+acc55(5&
      &8)+acc55(59)+acc55(60)+acc55(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d55h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d55
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d55 = 0.0_ki
      d55 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d55, ki), aimag(d55), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d55h3l1_qp
