module     p1_dg_hhd_d6h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity1d6h1l1.f90
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
      use p1_dg_hhd_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc6(37)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak1l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak5k1
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      acc6(1)=abb6(9)
      acc6(2)=abb6(10)
      acc6(3)=abb6(12)
      acc6(4)=abb6(13)
      acc6(5)=abb6(14)
      acc6(6)=abb6(15)
      acc6(7)=abb6(16)
      acc6(8)=abb6(17)
      acc6(9)=abb6(18)
      acc6(10)=abb6(19)
      acc6(11)=abb6(20)
      acc6(12)=abb6(21)
      acc6(13)=abb6(22)
      acc6(14)=abb6(23)
      acc6(15)=abb6(24)
      acc6(16)=abb6(25)
      acc6(17)=abb6(26)
      acc6(18)=abb6(27)
      acc6(19)=abb6(28)
      acc6(20)=abb6(30)
      acc6(21)=abb6(32)
      acc6(22)=abb6(35)
      acc6(23)=abb6(36)
      acc6(24)=abb6(37)
      acc6(25)=abb6(38)
      acc6(26)=abb6(39)
      acc6(27)=Qspk1*acc6(2)
      acc6(27)=acc6(27)+acc6(26)
      acc6(27)=Qspk2*acc6(27)
      acc6(28)=Qspval3k1*acc6(15)
      acc6(28)=acc6(3)+acc6(28)
      acc6(28)=Qspvak1l3*acc6(28)
      acc6(29)=QspQ*acc6(23)
      acc6(30)=acc6(8)*Qspvak2k1
      acc6(30)=acc6(17)+acc6(30)
      acc6(30)=Qspvak1k2*acc6(30)
      acc6(27)=acc6(30)+acc6(29)+acc6(25)+acc6(28)+acc6(27)
      acc6(27)=Qspvak5k2*acc6(27)
      acc6(28)=Qspk2*acc6(10)
      acc6(29)=Qspvak5l3*acc6(21)
      acc6(29)=acc6(5)+acc6(29)
      acc6(29)=Qspval3k2*acc6(29)
      acc6(30)=QspQ*acc6(9)
      acc6(28)=acc6(30)+acc6(29)+acc6(19)+acc6(28)
      acc6(28)=Qspk1*acc6(28)
      acc6(29)=acc6(24)*Qspval4k2
      acc6(30)=acc6(14)*Qspvak1l4
      acc6(31)=Qspval3k1*acc6(11)
      acc6(32)=Qspvak1l3*acc6(16)
      acc6(33)=Qspvak5l3*acc6(6)
      acc6(34)=Qspk2*acc6(12)
      acc6(35)=Qspvak5l3*acc6(18)
      acc6(35)=acc6(7)+acc6(35)
      acc6(35)=Qspval3k2*acc6(35)
      acc6(36)=QspQ*acc6(1)
      acc6(36)=acc6(22)+acc6(36)
      acc6(36)=QspQ*acc6(36)
      acc6(37)=QspQ*acc6(21)
      acc6(37)=acc6(37)+acc6(20)
      acc6(37)=Qspvak5k1*acc6(37)
      acc6(37)=acc6(13)+acc6(37)
      acc6(37)=Qspvak1k2*acc6(37)
      brack=acc6(4)+acc6(27)+acc6(28)+acc6(29)+acc6(30)+acc6(31)+acc6(32)+acc6(&
      &33)+acc6(34)+acc6(35)+acc6(36)+acc6(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d6h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd6h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d6h1l1
