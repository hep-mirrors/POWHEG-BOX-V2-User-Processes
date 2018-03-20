module     p0_gg_hhg_d65h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d65h0l1.f90
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
      use p0_gg_hhg_abbrevd65h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(57)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      QspQ = dotproduct(Q,Q)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      acc65(1)=abb65(10)
      acc65(2)=abb65(11)
      acc65(3)=abb65(12)
      acc65(4)=abb65(13)
      acc65(5)=abb65(14)
      acc65(6)=abb65(15)
      acc65(7)=abb65(16)
      acc65(8)=abb65(17)
      acc65(9)=abb65(18)
      acc65(10)=abb65(19)
      acc65(11)=abb65(20)
      acc65(12)=abb65(21)
      acc65(13)=abb65(22)
      acc65(14)=abb65(23)
      acc65(15)=abb65(24)
      acc65(16)=abb65(25)
      acc65(17)=abb65(26)
      acc65(18)=abb65(27)
      acc65(19)=abb65(28)
      acc65(20)=abb65(29)
      acc65(21)=abb65(30)
      acc65(22)=abb65(31)
      acc65(23)=abb65(32)
      acc65(24)=abb65(33)
      acc65(25)=abb65(34)
      acc65(26)=abb65(35)
      acc65(27)=abb65(36)
      acc65(28)=abb65(37)
      acc65(29)=abb65(38)
      acc65(30)=abb65(42)
      acc65(31)=abb65(44)
      acc65(32)=abb65(45)
      acc65(33)=abb65(47)
      acc65(34)=abb65(48)
      acc65(35)=abb65(49)
      acc65(36)=abb65(50)
      acc65(37)=abb65(51)
      acc65(38)=abb65(52)
      acc65(39)=abb65(53)
      acc65(40)=abb65(55)
      acc65(41)=abb65(57)
      acc65(42)=abb65(59)
      acc65(43)=abb65(60)
      acc65(44)=abb65(61)
      acc65(45)=abb65(62)
      acc65(46)=abb65(63)
      acc65(47)=Qspvak1k2*acc65(12)
      acc65(48)=-Qspval4k5*acc65(20)
      acc65(48)=acc65(16)+acc65(48)
      acc65(48)=Qspvak1l4*acc65(48)
      acc65(49)=QspQ*acc65(4)
      acc65(50)=Qspvak1k5*acc65(15)
      acc65(51)=Qspk2*Qspvak1k5
      acc65(52)=acc65(34)*acc65(51)
      acc65(47)=acc65(52)+acc65(50)+acc65(49)+acc65(48)+acc65(6)+acc65(47)
      acc65(47)=Qspk2*acc65(47)
      acc65(48)=QspQ*acc65(20)
      acc65(49)=Qspk2*acc65(13)
      acc65(48)=acc65(49)+acc65(11)+acc65(48)
      acc65(48)=Qspvak2k5*acc65(48)
      acc65(48)=acc65(48)+acc65(1)
      acc65(48)=Qspvak1k2*acc65(48)
      acc65(49)=-Qspvak2l4*acc65(45)
      acc65(49)=acc65(23)+acc65(49)
      acc65(49)=Qspval4k2*acc65(49)
      acc65(50)=QspQ*acc65(14)
      acc65(49)=acc65(50)+acc65(30)+acc65(49)
      acc65(49)=Qspvak1k5*acc65(49)
      acc65(50)=Qspvak1l3*acc65(3)
      acc65(52)=Qspval3k2*acc65(24)
      acc65(53)=Qspvak2l4*acc65(22)
      acc65(54)=Qspval4k2*acc65(21)
      acc65(55)=Qspval4k5*acc65(19)
      acc65(56)=Qspval4k5*acc65(5)
      acc65(56)=acc65(2)+acc65(56)
      acc65(56)=Qspvak1l4*acc65(56)
      acc65(57)=QspQ*acc65(10)
      acc65(57)=acc65(18)+acc65(57)
      acc65(57)=QspQ*acc65(57)
      acc65(47)=acc65(47)+acc65(49)+acc65(57)+acc65(56)+acc65(55)+acc65(54)+acc&
      &65(53)+acc65(52)+acc65(7)+acc65(50)+acc65(48)
      acc65(47)=Qspvak2k5*acc65(47)
      acc65(48)=Qspvak1k2*acc65(35)
      acc65(49)=Qspval4k5*acc65(41)
      acc65(49)=acc65(8)+acc65(49)
      acc65(49)=Qspvak1l4*acc65(49)
      acc65(50)=QspQ*acc65(33)
      acc65(52)=QspQ*acc65(40)
      acc65(52)=acc65(17)+acc65(52)
      acc65(52)=Qspvak1k5*acc65(52)
      acc65(51)=acc65(43)*acc65(51)
      acc65(48)=acc65(51)+acc65(52)+acc65(50)+acc65(49)+acc65(29)+acc65(48)
      acc65(48)=Qspk2*acc65(48)
      acc65(49)=Qspvak2l4*acc65(42)
      acc65(49)=acc65(44)+acc65(49)
      acc65(49)=Qspval4k2*acc65(49)
      acc65(50)=QspQ*acc65(26)
      acc65(49)=acc65(50)+acc65(38)+acc65(49)
      acc65(49)=Qspvak1k5*acc65(49)
      acc65(50)=Qspvak1l3*acc65(27)
      acc65(51)=Qspval3k2*acc65(36)
      acc65(52)=Qspvak2l4*acc65(25)
      acc65(53)=Qspval4k2*acc65(39)
      acc65(54)=Qspval4k5*acc65(37)
      acc65(55)=Qspvak1k2*acc65(32)
      acc65(56)=Qspval4k5*acc65(46)
      acc65(56)=acc65(28)+acc65(56)
      acc65(56)=Qspvak1l4*acc65(56)
      acc65(57)=QspQ*acc65(31)
      brack=acc65(9)+acc65(47)+acc65(48)+acc65(49)+acc65(50)+acc65(51)+acc65(52&
      &)+acc65(53)+acc65(54)+acc65(55)+acc65(56)+acc65(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d65h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h0
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
end module p0_gg_hhg_d65h0l1
