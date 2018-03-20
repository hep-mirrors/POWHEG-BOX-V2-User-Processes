module     p0_gg_hhg_d59h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d59h3l1.f90
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
      use p0_gg_hhg_abbrevd59h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc59(59)
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k2
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      acc59(1)=abb59(7)
      acc59(2)=abb59(8)
      acc59(3)=abb59(9)
      acc59(4)=abb59(10)
      acc59(5)=abb59(11)
      acc59(6)=abb59(12)
      acc59(7)=abb59(13)
      acc59(8)=abb59(14)
      acc59(9)=abb59(15)
      acc59(10)=abb59(16)
      acc59(11)=abb59(17)
      acc59(12)=abb59(18)
      acc59(13)=abb59(19)
      acc59(14)=abb59(20)
      acc59(15)=abb59(21)
      acc59(16)=abb59(22)
      acc59(17)=abb59(23)
      acc59(18)=abb59(24)
      acc59(19)=abb59(25)
      acc59(20)=abb59(26)
      acc59(21)=abb59(28)
      acc59(22)=abb59(30)
      acc59(23)=abb59(31)
      acc59(24)=abb59(32)
      acc59(25)=abb59(33)
      acc59(26)=abb59(34)
      acc59(27)=abb59(35)
      acc59(28)=abb59(36)
      acc59(29)=abb59(38)
      acc59(30)=abb59(39)
      acc59(31)=abb59(40)
      acc59(32)=abb59(41)
      acc59(33)=abb59(42)
      acc59(34)=abb59(43)
      acc59(35)=abb59(44)
      acc59(36)=abb59(46)
      acc59(37)=abb59(47)
      acc59(38)=abb59(48)
      acc59(39)=abb59(49)
      acc59(40)=abb59(50)
      acc59(41)=abb59(51)
      acc59(42)=abb59(54)
      acc59(43)=abb59(58)
      acc59(44)=abb59(59)
      acc59(45)=abb59(62)
      acc59(46)=abb59(63)
      acc59(47)=abb59(64)
      acc59(48)=abb59(65)
      acc59(49)=abb59(66)
      acc59(50)=abb59(68)
      acc59(51)=abb59(69)
      acc59(52)=Qspvak5k1*acc59(50)
      acc59(53)=Qspk5*acc59(45)
      acc59(54)=Qspvak2l3*acc59(42)
      acc59(55)=Qspval3k1*acc59(35)
      acc59(56)=Qspk2*acc59(48)
      acc59(52)=acc59(56)+acc59(55)+acc59(54)+acc59(53)+acc59(34)+acc59(52)
      acc59(52)=Qspvak2k5*acc59(52)
      acc59(53)=Qspvak1k2*acc59(4)
      acc59(54)=Qspval3k5*acc59(35)
      acc59(55)=Qspvak2l3*acc59(8)
      acc59(56)=Qspk2*acc59(15)
      acc59(53)=acc59(56)+acc59(55)+acc59(54)+acc59(27)+acc59(53)
      acc59(53)=Qspvak2k1*acc59(53)
      acc59(54)=Qspvak2k1*acc59(20)
      acc59(55)=Qspvak2k5*acc59(47)
      acc59(54)=acc59(55)+acc59(32)+acc59(54)
      acc59(54)=QspQ*acc59(54)
      acc59(55)=Qspvak5k1*acc59(38)
      acc59(56)=Qspk5*acc59(29)
      acc59(57)=Qspvak2l3*acc59(18)
      acc59(58)=Qspval3k1*acc59(11)
      acc59(59)=Qspk2*acc59(31)
      acc59(52)=acc59(54)+acc59(52)+acc59(53)+acc59(59)+acc59(58)+acc59(57)+acc&
      &59(56)+acc59(19)+acc59(55)
      acc59(52)=QspQ*acc59(52)
      acc59(53)=Qspvak5k1*acc59(37)
      acc59(54)=Qspk5*acc59(39)
      acc59(55)=Qspvak2l3*acc59(51)
      acc59(53)=acc59(55)+acc59(54)+acc59(7)+acc59(53)
      acc59(53)=Qspval3k1*acc59(53)
      acc59(54)=Qspvak5k1*acc59(49)
      acc59(55)=Qspk5*acc59(43)
      acc59(56)=Qspvak2l3*acc59(23)
      acc59(57)=Qspval3k1*acc59(46)
      acc59(57)=acc59(44)+acc59(57)
      acc59(57)=Qspk2*acc59(57)
      acc59(58)=Qspvak2k1*acc59(33)*Qspvak5k2
      acc59(53)=acc59(58)+acc59(57)+acc59(53)+acc59(56)+acc59(55)+acc59(13)+acc&
      &59(54)
      acc59(53)=Qspvak2k5*acc59(53)
      acc59(54)=Qspvak1k2*acc59(1)
      acc59(55)=Qspval3k5*acc59(51)
      acc59(54)=acc59(55)+acc59(3)+acc59(54)
      acc59(54)=Qspvak2l3*acc59(54)
      acc59(55)=Qspvak1k2*acc59(16)
      acc59(56)=Qspval3k5*acc59(26)
      acc59(55)=acc59(56)+acc59(12)+acc59(55)
      acc59(55)=Qspk2*acc59(55)
      acc59(56)=-Qspvak1k2*acc59(30)
      acc59(57)=Qspval3k5*acc59(28)
      acc59(58)=Qspk5*acc59(9)
      acc59(54)=acc59(55)+acc59(54)+acc59(58)+acc59(57)+acc59(5)+acc59(56)
      acc59(54)=Qspvak2k1*acc59(54)
      acc59(55)=Qspvak5k1*acc59(41)
      acc59(56)=Qspk5*acc59(40)
      acc59(57)=Qspvak2l3*acc59(22)
      acc59(55)=acc59(57)+acc59(56)+acc59(2)+acc59(55)
      acc59(55)=Qspval3k1*acc59(55)
      acc59(56)=Qspk2+Qspk5
      acc59(56)=acc59(17)*acc59(56)
      acc59(57)=Qspvak5k1*acc59(25)
      acc59(58)=Qspval3k1*acc59(6)
      acc59(56)=acc59(58)+acc59(10)+acc59(57)+acc59(56)
      acc59(56)=Qspk2*acc59(56)
      acc59(57)=Qspvak5k1*acc59(36)
      acc59(58)=Qspk5*acc59(21)
      acc59(59)=Qspvak2l3*acc59(24)
      brack=acc59(14)+acc59(52)+acc59(53)+acc59(54)+acc59(55)+acc59(56)+acc59(5&
      &7)+acc59(58)+acc59(59)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d59h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd59h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d59
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d59 = 0.0_ki
      d59 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d59, ki), aimag(d59), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d59h3l1
