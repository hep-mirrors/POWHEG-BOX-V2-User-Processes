module     p0_gg_hhg_d57h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d57h0l1.f90
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
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc57(64)
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak2k5
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc57(1)=abb57(10)
      acc57(2)=abb57(11)
      acc57(3)=abb57(12)
      acc57(4)=abb57(13)
      acc57(5)=abb57(14)
      acc57(6)=abb57(15)
      acc57(7)=abb57(16)
      acc57(8)=abb57(17)
      acc57(9)=abb57(18)
      acc57(10)=abb57(19)
      acc57(11)=abb57(20)
      acc57(12)=abb57(21)
      acc57(13)=abb57(22)
      acc57(14)=abb57(23)
      acc57(15)=abb57(24)
      acc57(16)=abb57(25)
      acc57(17)=abb57(26)
      acc57(18)=abb57(27)
      acc57(19)=abb57(28)
      acc57(20)=abb57(29)
      acc57(21)=abb57(30)
      acc57(22)=abb57(31)
      acc57(23)=abb57(32)
      acc57(24)=abb57(33)
      acc57(25)=abb57(34)
      acc57(26)=abb57(35)
      acc57(27)=abb57(36)
      acc57(28)=abb57(37)
      acc57(29)=abb57(38)
      acc57(30)=abb57(39)
      acc57(31)=abb57(40)
      acc57(32)=abb57(42)
      acc57(33)=abb57(43)
      acc57(34)=abb57(44)
      acc57(35)=abb57(45)
      acc57(36)=abb57(46)
      acc57(37)=abb57(47)
      acc57(38)=abb57(48)
      acc57(39)=abb57(49)
      acc57(40)=abb57(50)
      acc57(41)=abb57(51)
      acc57(42)=abb57(52)
      acc57(43)=abb57(53)
      acc57(44)=abb57(54)
      acc57(45)=abb57(55)
      acc57(46)=abb57(56)
      acc57(47)=abb57(57)
      acc57(48)=abb57(58)
      acc57(49)=abb57(59)
      acc57(50)=abb57(60)
      acc57(51)=abb57(61)
      acc57(52)=abb57(62)
      acc57(53)=abb57(63)
      acc57(54)=abb57(64)
      acc57(55)=QspQ-Qspk1
      acc57(56)=-acc57(7)*acc57(55)
      acc57(57)=Qspval4k2*acc57(40)
      acc57(58)=Qspvak1k2*acc57(30)
      acc57(59)=Qspvak1k5*acc57(9)
      acc57(60)=Qspvak1l4*acc57(52)
      acc57(61)=Qspval3k2*acc57(48)
      acc57(62)=Qspk2*acc57(6)
      acc57(63)=Qspvak1l3*acc57(3)
      acc57(56)=acc57(63)+acc57(62)+acc57(61)+acc57(60)+acc57(59)+acc57(58)+acc&
      &57(13)+acc57(57)+acc57(56)
      acc57(56)=QspQ*acc57(56)
      acc57(57)=Qspval4k2*acc57(37)
      acc57(58)=Qspvak1k2*acc57(23)
      acc57(59)=Qspvak1k5*acc57(1)
      acc57(60)=Qspk2*acc57(5)
      acc57(57)=acc57(60)+acc57(59)+acc57(58)+acc57(12)+acc57(57)
      acc57(57)=Qspvak1l3*acc57(57)
      acc57(58)=Qspk1*acc57(16)
      acc57(59)=Qspvak1l4*acc57(49)
      acc57(58)=acc57(59)+acc57(45)+acc57(58)
      acc57(58)=Qspval3k2*acc57(58)
      acc57(59)=Qspk1*acc57(31)
      acc57(60)=Qspvak1l4*acc57(50)
      acc57(59)=acc57(60)+acc57(20)+acc57(59)
      acc57(59)=Qspk2*acc57(59)
      acc57(60)=Qspvak2k5*acc57(21)
      acc57(60)=acc57(60)+acc57(47)
      acc57(60)=Qspvak1k2*acc57(60)
      acc57(61)=Qspval4k2*acc57(32)
      acc57(62)=Qspvak1k5*acc57(25)
      acc57(63)=Qspk1*acc57(24)
      acc57(64)=Qspvak1l4*acc57(4)
      acc57(56)=acc57(56)+acc57(57)+acc57(59)+acc57(58)+acc57(64)+acc57(63)+acc&
      &57(62)+acc57(10)+acc57(61)+acc57(60)
      acc57(56)=Qspvak2k5*acc57(56)
      acc57(55)=acc57(39)*acc57(55)
      acc57(57)=Qspval4k2*acc57(42)
      acc57(58)=Qspvak1k2*acc57(38)
      acc57(59)=Qspvak1k5*acc57(53)
      acc57(60)=Qspvak1l4*acc57(29)
      acc57(61)=Qspval3k2*acc57(44)
      acc57(62)=Qspk2*acc57(34)
      acc57(63)=Qspvak1l3*acc57(54)
      acc57(55)=acc57(63)+acc57(62)+acc57(61)+acc57(60)+acc57(59)+acc57(58)+acc&
      &57(36)+acc57(57)+acc57(55)
      acc57(55)=QspQ*acc57(55)
      acc57(57)=Qspval4k2*acc57(46)
      acc57(58)=Qspvak1k2*acc57(17)
      acc57(59)=Qspvak1k5*acc57(2)
      acc57(60)=Qspk2*acc57(19)
      acc57(57)=acc57(60)+acc57(59)+acc57(58)+acc57(18)+acc57(57)
      acc57(57)=Qspvak1l3*acc57(57)
      acc57(58)=Qspvak1k5*acc57(51)
      acc57(59)=Qspk1*acc57(35)
      acc57(60)=Qspvak1l4*acc57(33)
      acc57(58)=acc57(60)+acc57(59)+acc57(8)+acc57(58)
      acc57(58)=Qspk2*acc57(58)
      acc57(59)=Qspk1*acc57(43)
      acc57(60)=Qspvak1l4*acc57(26)
      acc57(59)=acc57(60)+acc57(27)+acc57(59)
      acc57(59)=Qspval3k2*acc57(59)
      acc57(60)=Qspval4k2*acc57(41)
      acc57(61)=Qspvak1k2*acc57(14)
      acc57(62)=Qspvak1k5*acc57(22)
      acc57(63)=-Qspk1*acc57(28)
      acc57(64)=Qspvak1l4*acc57(15)
      brack=acc57(11)+acc57(55)+acc57(56)+acc57(57)+acc57(58)+acc57(59)+acc57(6&
      &0)+acc57(61)+acc57(62)+acc57(63)+acc57(64)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d57h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd57h0
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
end module p0_gg_hhg_d57h0l1
