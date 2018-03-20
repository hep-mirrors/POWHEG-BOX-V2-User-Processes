module     p0_gg_hhg_d6h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d6h0l1.f90
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
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc6(13)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k5
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc6(1)=abb6(8)
      acc6(2)=abb6(9)
      acc6(3)=abb6(10)
      acc6(4)=abb6(11)
      acc6(5)=abb6(14)
      acc6(6)=abb6(16)
      acc6(7)=abb6(18)
      acc6(8)=abb6(19)
      acc6(9)=abb6(20)
      acc6(10)=acc6(1)*Qspvak1k2
      acc6(11)=Qspk5*acc6(8)
      acc6(12)=Qspvak2k5*acc6(9)
      acc6(10)=acc6(12)+acc6(11)+acc6(7)+acc6(10)
      acc6(10)=Qspvak2k5*acc6(10)
      acc6(11)=acc6(5)*QspQ
      acc6(12)=Qspk5*acc6(6)
      acc6(13)=acc6(3)*Qspvak2k1
      acc6(13)=acc6(13)+acc6(2)
      acc6(13)=Qspvak1k5*acc6(13)
      brack=acc6(4)+acc6(10)+acc6(11)+acc6(12)+acc6(13)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d6h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd6h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d6h0l1
