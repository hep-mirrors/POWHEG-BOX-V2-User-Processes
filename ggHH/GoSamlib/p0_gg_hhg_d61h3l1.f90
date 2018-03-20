module     p0_gg_hhg_d61h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d61h3l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(64)
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk5
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval4k1
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk5 = dotproduct(Q,k5)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      acc61(1)=abb61(9)
      acc61(2)=abb61(10)
      acc61(3)=abb61(11)
      acc61(4)=abb61(12)
      acc61(5)=abb61(13)
      acc61(6)=abb61(14)
      acc61(7)=abb61(15)
      acc61(8)=abb61(16)
      acc61(9)=abb61(17)
      acc61(10)=abb61(18)
      acc61(11)=abb61(19)
      acc61(12)=abb61(20)
      acc61(13)=abb61(21)
      acc61(14)=abb61(22)
      acc61(15)=abb61(23)
      acc61(16)=abb61(24)
      acc61(17)=abb61(25)
      acc61(18)=abb61(26)
      acc61(19)=abb61(27)
      acc61(20)=abb61(28)
      acc61(21)=abb61(29)
      acc61(22)=abb61(30)
      acc61(23)=abb61(31)
      acc61(24)=abb61(32)
      acc61(25)=abb61(33)
      acc61(26)=abb61(34)
      acc61(27)=abb61(35)
      acc61(28)=abb61(36)
      acc61(29)=abb61(37)
      acc61(30)=abb61(38)
      acc61(31)=abb61(39)
      acc61(32)=abb61(40)
      acc61(33)=abb61(41)
      acc61(34)=abb61(42)
      acc61(35)=abb61(43)
      acc61(36)=abb61(44)
      acc61(37)=abb61(45)
      acc61(38)=abb61(47)
      acc61(39)=abb61(48)
      acc61(40)=abb61(49)
      acc61(41)=abb61(50)
      acc61(42)=abb61(51)
      acc61(43)=abb61(52)
      acc61(44)=abb61(53)
      acc61(45)=abb61(55)
      acc61(46)=abb61(56)
      acc61(47)=abb61(60)
      acc61(48)=abb61(61)
      acc61(49)=abb61(63)
      acc61(50)=abb61(65)
      acc61(51)=abb61(66)
      acc61(52)=abb61(67)
      acc61(53)=abb61(68)
      acc61(54)=Qspvak5l3*acc61(49)
      acc61(54)=acc61(27)+acc61(54)
      acc61(54)=Qspval3k1*acc61(54)
      acc61(55)=QspQ*acc61(26)
      acc61(54)=acc61(55)+acc61(28)+acc61(54)
      acc61(54)=Qspvak2k5*acc61(54)
      acc61(55)=Qspvak2l4*acc61(53)
      acc61(56)=Qspvak5k1*acc61(31)
      acc61(57)=Qspvak2l3*acc61(52)
      acc61(58)=Qspvak5l3*acc61(21)
      acc61(59)=-Qspvak5l3*acc61(42)
      acc61(59)=acc61(2)+acc61(59)
      acc61(59)=Qspval3k1*acc61(59)
      acc61(60)=Qspvak5k1*acc61(42)
      acc61(60)=acc61(18)+acc61(60)
      acc61(60)=QspQ*acc61(60)
      acc61(61)=Qspk2*acc61(14)
      acc61(54)=acc61(61)+acc61(54)+acc61(60)+acc61(59)+acc61(58)+acc61(57)+acc&
      &61(56)+acc61(13)+acc61(55)
      acc61(54)=Qspk2*acc61(54)
      acc61(55)=Qspvak5k2*acc61(12)
      acc61(56)=Qspk5*acc61(22)
      acc61(57)=QspQ*acc61(40)
      acc61(58)=Qspvak5k2*acc61(4)
      acc61(58)=acc61(11)+acc61(58)
      acc61(58)=Qspvak2k5*acc61(58)
      acc61(59)=Qspk5*acc61(38)
      acc61(59)=acc61(23)+acc61(59)
      acc61(59)=Qspk2*acc61(59)
      acc61(55)=acc61(59)+acc61(58)+acc61(57)+acc61(56)+acc61(17)+acc61(55)
      acc61(55)=Qspk2*acc61(55)
      acc61(56)=Qspval3k2*acc61(36)
      acc61(57)=Qspval3k2*acc61(49)
      acc61(57)=acc61(30)+acc61(57)
      acc61(57)=Qspk5*acc61(57)
      acc61(56)=acc61(57)+acc61(25)+acc61(56)
      acc61(56)=Qspvak2l3*acc61(56)
      acc61(57)=Qspk5*acc61(39)
      acc61(58)=QspQ*acc61(45)
      acc61(57)=acc61(58)+acc61(34)+acc61(57)
      acc61(57)=QspQ*acc61(57)
      acc61(58)=Qspvak2l4*acc61(19)
      acc61(59)=Qspvak5k2*acc61(15)
      acc61(60)=Qspk5*acc61(24)
      acc61(61)=Qspvak5l3*acc61(46)
      acc61(62)=-QspQ*acc61(49)
      acc61(62)=acc61(62)+acc61(1)
      acc61(62)=Qspvak5k2*acc61(62)
      acc61(62)=acc61(20)+acc61(62)
      acc61(62)=Qspvak2k5*acc61(62)
      acc61(55)=acc61(55)+acc61(62)+acc61(57)+acc61(61)+acc61(56)+acc61(60)+acc&
      &61(59)+acc61(6)+acc61(58)
      acc61(55)=Qspvak2k1*acc61(55)
      acc61(56)=-Qspvak5k1*acc61(50)
      acc61(57)=QspQ*acc61(5)
      acc61(56)=acc61(57)+acc61(16)+acc61(56)
      acc61(56)=QspQ*acc61(56)
      acc61(57)=Qspval4k1*acc61(43)
      acc61(58)=Qspval3k2*acc61(48)
      acc61(59)=Qspvak5k1*acc61(47)
      acc61(60)=Qspvak5l3*acc61(50)
      acc61(60)=acc61(10)+acc61(60)
      acc61(60)=Qspval3k1*acc61(60)
      acc61(56)=acc61(56)+acc61(60)+acc61(59)+acc61(58)+acc61(7)+acc61(57)
      acc61(56)=Qspvak2k5*acc61(56)
      acc61(57)=Qspval4k1*acc61(44)
      acc61(58)=Qspvak2l4*acc61(51)
      acc61(59)=Qspval3k2*acc61(9)
      acc61(60)=Qspvak5k1*acc61(33)
      acc61(61)=Qspval3k2*acc61(37)
      acc61(61)=acc61(29)+acc61(61)
      acc61(61)=Qspvak2l3*acc61(61)
      acc61(62)=Qspvak5l3*acc61(35)
      acc61(63)=Qspvak5l3*acc61(41)
      acc61(63)=acc61(3)+acc61(63)
      acc61(63)=Qspval3k1*acc61(63)
      acc61(64)=-Qspvak5k1*acc61(41)
      acc61(64)=acc61(32)+acc61(64)
      acc61(64)=QspQ*acc61(64)
      brack=acc61(8)+acc61(54)+acc61(55)+acc61(56)+acc61(57)+acc61(58)+acc61(59&
      &)+acc61(60)+acc61(61)+acc61(62)+acc61(63)+acc61(64)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d61h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd61h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d61h3l1
