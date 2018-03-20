module     p1_dg_hhd_d4h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity0d4h0l1.f90
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
      use p1_dg_hhd_abbrevd4h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc4(26)
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspval3k1
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      acc4(1)=abb4(9)
      acc4(2)=abb4(10)
      acc4(3)=abb4(11)
      acc4(4)=abb4(12)
      acc4(5)=abb4(13)
      acc4(6)=abb4(14)
      acc4(7)=abb4(15)
      acc4(8)=abb4(16)
      acc4(9)=abb4(17)
      acc4(10)=abb4(21)
      acc4(11)=abb4(22)
      acc4(12)=abb4(24)
      acc4(13)=abb4(25)
      acc4(14)=abb4(26)
      acc4(15)=abb4(27)
      acc4(16)=abb4(28)
      acc4(17)=abb4(29)
      acc4(18)=abb4(31)
      acc4(19)=abb4(32)
      acc4(20)=acc4(2)*Qspk2
      acc4(21)=acc4(5)*QspQ
      acc4(22)=acc4(6)*Qspvak5k1
      acc4(23)=acc4(8)*Qspvak2l4
      acc4(24)=acc4(9)*Qspvak2l3
      acc4(20)=acc4(24)+acc4(23)+acc4(7)+acc4(22)+acc4(21)+acc4(20)
      acc4(20)=Qspvak2k1*acc4(20)
      acc4(21)=acc4(10)*Qspk2
      acc4(22)=acc4(15)*Qspvak2l3
      acc4(23)=acc4(17)*QspQ
      acc4(21)=acc4(23)+acc4(22)+acc4(14)+acc4(21)
      acc4(21)=Qspval4k1*acc4(21)
      acc4(22)=acc4(16)*QspQ
      acc4(23)=acc4(18)*Qspk2
      acc4(24)=acc4(19)*Qspvak2l4
      acc4(22)=acc4(24)+acc4(23)+acc4(22)+acc4(13)
      acc4(22)=Qspval3k1*acc4(22)
      acc4(23)=acc4(1)*Qspvak5k1
      acc4(24)=acc4(4)*Qspvak2l3
      acc4(25)=acc4(11)*Qspk2
      acc4(26)=acc4(12)*QspQ
      brack=acc4(3)+acc4(20)+acc4(21)+acc4(22)+acc4(23)+acc4(24)+acc4(25)+acc4(&
      &26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d4h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd4h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d4
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d4 = 0.0_ki
      d4 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d4, ki), aimag(d4), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d4h0l1
