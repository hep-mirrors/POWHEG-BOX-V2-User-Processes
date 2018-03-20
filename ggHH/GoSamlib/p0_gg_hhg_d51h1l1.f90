module     p0_gg_hhg_d51h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d51h1l1.f90
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
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc51(22)
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k1
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc51(1)=abb51(8)
      acc51(2)=abb51(9)
      acc51(3)=abb51(10)
      acc51(4)=abb51(11)
      acc51(5)=abb51(12)
      acc51(6)=abb51(13)
      acc51(7)=abb51(14)
      acc51(8)=abb51(15)
      acc51(9)=abb51(16)
      acc51(10)=abb51(18)
      acc51(11)=abb51(19)
      acc51(12)=abb51(20)
      acc51(13)=abb51(21)
      acc51(14)=abb51(23)
      acc51(15)=abb51(24)
      acc51(16)=abb51(29)
      acc51(17)=abb51(30)
      acc51(18)=Qspk2*acc51(11)
      acc51(19)=-QspQ*acc51(10)
      acc51(18)=acc51(19)+acc51(7)+acc51(18)
      acc51(18)=Qspvak2k5*acc51(18)
      acc51(19)=Qspk2*acc51(17)
      acc51(20)=QspQ*acc51(16)
      acc51(21)=Qspvak2l3*acc51(14)
      acc51(22)=Qspvak2l3*acc51(10)
      acc51(22)=acc51(6)+acc51(22)
      acc51(22)=Qspval3k5*acc51(22)
      acc51(18)=acc51(18)+acc51(22)+acc51(21)+acc51(20)+acc51(13)+acc51(19)
      acc51(18)=Qspvak2k5*acc51(18)
      acc51(19)=QspQ*acc51(5)
      acc51(20)=Qspvak2l3*acc51(2)
      acc51(21)=Qspvak2l3*acc51(15)
      acc51(21)=acc51(3)+acc51(21)
      acc51(21)=Qspval3k5*acc51(21)
      acc51(22)=Qspvak2k5*acc51(1)
      acc51(22)=acc51(12)+acc51(22)
      acc51(22)=Qspvak2k1*acc51(22)
      acc51(18)=acc51(22)+acc51(18)+acc51(21)+acc51(20)+acc51(4)+acc51(19)
      acc51(18)=Qspvak2k1*acc51(18)
      acc51(19)=Qspvak2k5*acc51(9)
      brack=acc51(8)+acc51(18)+acc51(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d51h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd51h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d51
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d51 = 0.0_ki
      d51 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d51, ki), aimag(d51), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d51h1l1
