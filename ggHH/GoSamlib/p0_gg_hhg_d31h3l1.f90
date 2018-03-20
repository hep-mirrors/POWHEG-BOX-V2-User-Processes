module     p0_gg_hhg_d31h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d31h3l1.f90
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
      use p0_gg_hhg_abbrevd31h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc31(19)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k2
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      QspQ = dotproduct(Q,Q)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc31(1)=abb31(6)
      acc31(2)=abb31(7)
      acc31(3)=abb31(8)
      acc31(4)=abb31(9)
      acc31(5)=abb31(10)
      acc31(6)=abb31(11)
      acc31(7)=abb31(12)
      acc31(8)=abb31(13)
      acc31(9)=abb31(14)
      acc31(10)=abb31(15)
      acc31(11)=abb31(16)
      acc31(12)=abb31(18)
      acc31(13)=abb31(19)
      acc31(14)=Qspk2+Qspk5
      acc31(15)=-acc31(13)*acc31(14)
      acc31(16)=Qspvak2k1*acc31(11)
      acc31(17)=Qspvak5k1*acc31(1)
      acc31(15)=acc31(17)+acc31(16)+acc31(12)+acc31(15)
      acc31(15)=Qspk2*acc31(15)
      acc31(14)=QspQ-acc31(14)
      acc31(14)=acc31(3)*acc31(14)
      acc31(16)=Qspvak2k1*acc31(4)*Qspvak5k2
      acc31(17)=Qspvak5k1*acc31(10)
      acc31(14)=acc31(17)+acc31(5)+acc31(16)+acc31(14)
      acc31(14)=Qspvak2k5*acc31(14)
      acc31(16)=QspQ*acc31(8)
      acc31(17)=Qspk5*acc31(9)
      acc31(18)=Qspvak2k1*acc31(7)*Qspvak1k2
      acc31(19)=Qspvak5k1*acc31(2)
      brack=acc31(6)+acc31(14)+acc31(15)+acc31(16)+acc31(17)+acc31(18)+acc31(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d31h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd31h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d31
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d31 = 0.0_ki
      d31 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d31, ki), aimag(d31), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d31h3l1
