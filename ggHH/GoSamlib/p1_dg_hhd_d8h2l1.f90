module     p1_dg_hhd_d8h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity2d8h2l1.f90
   ! generator: buildfortran.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd8h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc8(37)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak1k5
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc8(1)=abb8(9)
      acc8(2)=abb8(10)
      acc8(3)=abb8(12)
      acc8(4)=abb8(13)
      acc8(5)=abb8(14)
      acc8(6)=abb8(15)
      acc8(7)=abb8(16)
      acc8(8)=abb8(17)
      acc8(9)=abb8(18)
      acc8(10)=abb8(19)
      acc8(11)=abb8(20)
      acc8(12)=abb8(21)
      acc8(13)=abb8(22)
      acc8(14)=abb8(23)
      acc8(15)=abb8(24)
      acc8(16)=abb8(25)
      acc8(17)=abb8(27)
      acc8(18)=abb8(28)
      acc8(19)=abb8(30)
      acc8(20)=abb8(32)
      acc8(21)=abb8(35)
      acc8(22)=abb8(36)
      acc8(23)=abb8(37)
      acc8(24)=abb8(38)
      acc8(25)=abb8(40)
      acc8(26)=abb8(41)
      acc8(27)=Qspk1*acc8(2)
      acc8(27)=acc8(27)+acc8(26)
      acc8(27)=Qspk2*acc8(27)
      acc8(28)=Qspvak1l4*acc8(15)
      acc8(28)=acc8(3)+acc8(28)
      acc8(28)=Qspval4k1*acc8(28)
      acc8(29)=QspQ*acc8(24)
      acc8(30)=acc8(8)*Qspvak1k2
      acc8(30)=acc8(16)+acc8(30)
      acc8(30)=Qspvak2k1*acc8(30)
      acc8(27)=acc8(30)+acc8(29)+acc8(25)+acc8(28)+acc8(27)
      acc8(27)=Qspvak2k5*acc8(27)
      acc8(28)=Qspk2*acc8(10)
      acc8(29)=Qspval4k5*acc8(20)
      acc8(29)=acc8(5)+acc8(29)
      acc8(29)=Qspvak2l4*acc8(29)
      acc8(30)=QspQ*acc8(9)
      acc8(28)=acc8(30)+acc8(29)+acc8(18)+acc8(28)
      acc8(28)=Qspk1*acc8(28)
      acc8(29)=acc8(23)*Qspval3k1
      acc8(30)=acc8(11)*Qspvak2l3
      acc8(31)=Qspvak1l4*acc8(14)
      acc8(32)=Qspval4k1*acc8(22)
      acc8(33)=Qspval4k5*acc8(6)
      acc8(34)=Qspk2*acc8(12)
      acc8(35)=Qspval4k5*acc8(17)
      acc8(35)=acc8(7)+acc8(35)
      acc8(35)=Qspvak2l4*acc8(35)
      acc8(36)=QspQ*acc8(1)
      acc8(36)=acc8(21)+acc8(36)
      acc8(36)=QspQ*acc8(36)
      acc8(37)=QspQ*acc8(20)
      acc8(37)=acc8(37)+acc8(19)
      acc8(37)=Qspvak1k5*acc8(37)
      acc8(37)=acc8(13)+acc8(37)
      acc8(37)=Qspvak2k1*acc8(37)
      brack=acc8(4)+acc8(27)+acc8(28)+acc8(29)+acc8(30)+acc8(31)+acc8(32)+acc8(&
      &33)+acc8(34)+acc8(35)+acc8(36)+acc8(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d8h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd8h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d8
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d8 = 0.0_ki
      d8 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d8, ki), aimag(d8), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d8h2l1
