module     p0_gg_hhg_d21h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d21h0l1.f90
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
      use p0_gg_hhg_abbrevd21h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(64)
      complex(ki) :: Qspvak5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      acc21(1)=abb21(11)
      acc21(2)=abb21(12)
      acc21(3)=abb21(13)
      acc21(4)=abb21(14)
      acc21(5)=abb21(15)
      acc21(6)=abb21(16)
      acc21(7)=abb21(17)
      acc21(8)=abb21(18)
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
      acc21(39)=abb21(51)
      acc21(40)=abb21(52)
      acc21(41)=abb21(54)
      acc21(42)=abb21(55)
      acc21(43)=abb21(56)
      acc21(44)=abb21(60)
      acc21(45)=abb21(67)
      acc21(46)=abb21(69)
      acc21(47)=abb21(71)
      acc21(48)=abb21(76)
      acc21(49)=abb21(81)
      acc21(50)=abb21(86)
      acc21(51)=abb21(87)
      acc21(52)=acc21(47)*Qspvak5k2
      acc21(53)=QspQ*acc21(3)
      acc21(54)=Qspk2*acc21(35)
      acc21(52)=acc21(54)+acc21(53)+acc21(15)+acc21(52)
      acc21(52)=Qspvak2k5*acc21(52)
      acc21(53)=Qspvak1k2*acc21(30)
      acc21(54)=Qspk5*acc21(20)
      acc21(53)=acc21(54)+acc21(10)+acc21(53)
      acc21(53)=QspQ*acc21(53)
      acc21(54)=Qspvak1k2*acc21(38)
      acc21(55)=Qspk5*acc21(51)
      acc21(54)=acc21(55)+acc21(19)+acc21(54)
      acc21(54)=Qspk2*acc21(54)
      acc21(55)=Qspvak1k2*acc21(36)
      acc21(56)=Qspk5*acc21(50)
      acc21(57)=Qspvak1k2*acc21(47)
      acc21(57)=acc21(23)+acc21(57)
      acc21(57)=Qspvak2k1*acc21(57)
      acc21(58)=acc21(48)*Qspvak5l3
      acc21(58)=acc21(25)+acc21(58)
      acc21(58)=Qspval3k5*acc21(58)
      acc21(59)=Qspval3k5*acc21(3)
      acc21(59)=acc21(6)+acc21(59)
      acc21(59)=Qspvak2l3*acc21(59)
      acc21(52)=acc21(52)+acc21(54)+acc21(59)+acc21(53)+acc21(58)+acc21(57)+acc&
      &21(56)+acc21(11)+acc21(55)
      acc21(52)=Qspvak2k5*acc21(52)
      acc21(53)=Qspk5*acc21(46)
      acc21(54)=Qspvak1k5*acc21(32)
      acc21(55)=Qspvak1k5*acc21(43)
      acc21(55)=acc21(29)+acc21(55)
      acc21(55)=Qspvak2k1*acc21(55)
      acc21(56)=Qspvak1l3*acc21(30)
      acc21(56)=acc21(1)+acc21(56)
      acc21(56)=Qspval3k5*acc21(56)
      acc21(57)=QspQ*acc21(45)
      acc21(58)=Qspvak1k5*acc21(40)
      acc21(58)=acc21(5)+acc21(58)
      acc21(58)=Qspk2*acc21(58)
      acc21(53)=acc21(58)+acc21(57)+acc21(56)+acc21(55)+acc21(54)+acc21(22)+acc&
      &21(53)
      acc21(53)=Qspk2*acc21(53)
      acc21(54)=Qspval3k2*acc21(39)
      acc21(55)=acc21(48)*Qspval3k1
      acc21(54)=acc21(55)+acc21(26)+acc21(54)
      acc21(54)=Qspvak1k5*acc21(54)
      acc21(55)=Qspval3k1*acc21(4)
      acc21(56)=Qspval3k2*acc21(7)
      acc21(57)=Qspk5*acc21(24)
      acc21(58)=Qspk5*acc21(27)
      acc21(58)=acc21(9)+acc21(58)
      acc21(58)=Qspval3k5*acc21(58)
      acc21(54)=acc21(58)+acc21(54)+acc21(57)+acc21(56)+acc21(17)+acc21(55)
      acc21(54)=Qspvak2l3*acc21(54)
      acc21(55)=Qspk5*acc21(37)
      acc21(56)=Qspvak1k5*acc21(34)
      acc21(57)=Qspvak1k5*acc21(27)
      acc21(57)=acc21(28)+acc21(57)
      acc21(57)=Qspvak2k1*acc21(57)
      acc21(58)=QspQ*acc21(8)
      acc21(55)=acc21(58)+acc21(57)+acc21(56)+acc21(21)+acc21(55)
      acc21(55)=QspQ*acc21(55)
      acc21(56)=acc21(44)*Qspvak2l4
      acc21(57)=acc21(2)*Qspval4k5
      acc21(58)=Qspvak1l3*acc21(13)
      acc21(59)=Qspval3k1*acc21(41)
      acc21(60)=Qspval3k2*acc21(49)
      acc21(61)=Qspk5*acc21(33)
      acc21(62)=Qspvak1k5*acc21(31)
      acc21(63)=Qspvak1k5*acc21(42)
      acc21(63)=acc21(16)+acc21(63)
      acc21(63)=Qspvak2k1*acc21(63)
      acc21(64)=acc21(48)*Qspvak1l3
      acc21(64)=acc21(14)+acc21(64)
      acc21(64)=Qspvak2k1*acc21(64)
      acc21(64)=acc21(18)+acc21(64)
      acc21(64)=Qspval3k5*acc21(64)
      brack=acc21(12)+acc21(52)+acc21(53)+acc21(54)+acc21(55)+acc21(56)+acc21(5&
      &7)+acc21(58)+acc21(59)+acc21(60)+acc21(61)+acc21(62)+acc21(63)+acc21(64)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d21h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd21h0
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
end module p0_gg_hhg_d21h0l1
