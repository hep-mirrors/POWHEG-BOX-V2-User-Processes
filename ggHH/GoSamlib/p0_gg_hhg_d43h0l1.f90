module     p0_gg_hhg_d43h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d43h0l1.f90
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
      use p0_gg_hhg_abbrevd43h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc43(43)
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k2
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      acc43(1)=abb43(10)
      acc43(2)=abb43(11)
      acc43(3)=abb43(12)
      acc43(4)=abb43(13)
      acc43(5)=abb43(14)
      acc43(6)=abb43(15)
      acc43(7)=abb43(16)
      acc43(8)=abb43(17)
      acc43(9)=abb43(18)
      acc43(10)=abb43(19)
      acc43(11)=abb43(20)
      acc43(12)=abb43(21)
      acc43(13)=abb43(22)
      acc43(14)=abb43(23)
      acc43(15)=abb43(24)
      acc43(16)=abb43(25)
      acc43(17)=abb43(26)
      acc43(18)=abb43(27)
      acc43(19)=abb43(28)
      acc43(20)=abb43(29)
      acc43(21)=abb43(30)
      acc43(22)=abb43(31)
      acc43(23)=abb43(32)
      acc43(24)=abb43(33)
      acc43(25)=abb43(34)
      acc43(26)=abb43(35)
      acc43(27)=abb43(36)
      acc43(28)=abb43(37)
      acc43(29)=abb43(38)
      acc43(30)=abb43(40)
      acc43(31)=abb43(41)
      acc43(32)=abb43(42)
      acc43(33)=abb43(43)
      acc43(34)=abb43(45)
      acc43(35)=Qspk1*acc43(31)
      acc43(36)=Qspvak1l3*acc43(1)
      acc43(37)=QspQ*acc43(15)
      acc43(35)=acc43(37)+acc43(36)+acc43(17)+acc43(35)
      acc43(35)=Qspvak2k5*acc43(35)
      acc43(36)=Qspk1*acc43(27)
      acc43(37)=Qspvak1l3*acc43(10)
      acc43(36)=acc43(37)+acc43(24)+acc43(36)
      acc43(36)=Qspval4k5*acc43(36)
      acc43(37)=Qspk1*acc43(23)
      acc43(38)=Qspvak1l3*acc43(11)
      acc43(39)=Qspval4k5*acc43(26)
      acc43(39)=acc43(16)+acc43(39)
      acc43(39)=QspQ*acc43(39)
      acc43(40)=Qspvak2l4*acc43(2)
      acc43(40)=acc43(21)+acc43(40)
      acc43(40)=Qspvak1k5*acc43(40)
      acc43(35)=acc43(35)+acc43(40)+acc43(39)+acc43(36)+acc43(38)+acc43(18)+acc&
      &43(37)
      acc43(35)=Qspk2*acc43(35)
      acc43(36)=-QspQ-Qspk1
      acc43(36)=acc43(30)*acc43(36)
      acc43(37)=Qspvak2k5*acc43(20)
      acc43(37)=acc43(37)+acc43(9)
      acc43(37)=Qspvak1k2*acc43(37)
      acc43(38)=Qspval3k2*acc43(32)
      acc43(39)=Qspvak1l3*acc43(8)
      acc43(40)=Qspvak1k5*acc43(4)
      acc43(36)=acc43(40)+acc43(39)+acc43(3)+acc43(38)+acc43(37)+acc43(36)
      acc43(36)=Qspvak2k5*acc43(36)
      acc43(37)=Qspval3k2*acc43(34)
      acc43(38)=Qspvak1k2*acc43(28)
      acc43(39)=QspQ*acc43(22)
      acc43(40)=Qspvak1k5*acc43(6)
      acc43(37)=acc43(40)+acc43(39)+acc43(38)+acc43(14)+acc43(37)
      acc43(37)=Qspvak2l4*acc43(37)
      acc43(37)=acc43(33)+acc43(37)
      acc43(37)=Qspvak1k5*acc43(37)
      acc43(38)=-QspQ+Qspk1
      acc43(38)=acc43(13)*acc43(38)
      acc43(39)=Qspval3k2*acc43(29)
      acc43(40)=Qspvak1k2*acc43(7)
      acc43(41)=Qspvak1l3*acc43(19)
      acc43(42)=Qspval4k5*acc43(25)
      acc43(43)=Qspvak2l4*acc43(12)
      brack=acc43(5)+acc43(35)+acc43(36)+acc43(37)+acc43(38)+acc43(39)+acc43(40&
      &)+acc43(41)+acc43(42)+acc43(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d43h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h0
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
end module p0_gg_hhg_d43h0l1
