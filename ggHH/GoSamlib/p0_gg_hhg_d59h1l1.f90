module     p0_gg_hhg_d59h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d59h1l1.f90
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
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc59(31)
      complex(ki) :: QspQ
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k5
      QspQ = dotproduct(Q,Q)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      acc59(1)=abb59(8)
      acc59(2)=abb59(9)
      acc59(3)=abb59(10)
      acc59(4)=abb59(11)
      acc59(5)=abb59(12)
      acc59(6)=abb59(13)
      acc59(7)=abb59(14)
      acc59(8)=abb59(15)
      acc59(9)=abb59(16)
      acc59(10)=abb59(17)
      acc59(11)=abb59(18)
      acc59(12)=abb59(19)
      acc59(13)=abb59(20)
      acc59(14)=abb59(21)
      acc59(15)=abb59(22)
      acc59(16)=abb59(23)
      acc59(17)=abb59(24)
      acc59(18)=abb59(25)
      acc59(19)=abb59(26)
      acc59(20)=abb59(27)
      acc59(21)=abb59(28)
      acc59(22)=abb59(29)
      acc59(23)=abb59(32)
      acc59(24)=abb59(33)
      acc59(25)=abb59(35)
      acc59(26)=abb59(38)
      acc59(27)=-QspQ*acc59(18)
      acc59(28)=Qspval3k1*acc59(1)
      acc59(29)=Qspvak2l3*acc59(21)
      acc59(30)=Qspvak2k1*acc59(2)
      acc59(27)=acc59(30)+acc59(29)+acc59(28)+acc59(4)+acc59(27)
      acc59(27)=Qspvak2k1*acc59(27)
      acc59(28)=QspQ*acc59(24)
      acc59(29)=Qspval3k1*acc59(3)
      acc59(30)=Qspvak2k1*acc59(15)
      acc59(28)=acc59(30)+acc59(29)+acc59(12)+acc59(28)
      acc59(28)=Qspvak2k5*acc59(28)
      acc59(29)=-QspQ*acc59(23)
      acc59(30)=-Qspval3k1*acc59(8)
      acc59(29)=acc59(30)+acc59(25)+acc59(29)
      acc59(29)=Qspvak2l3*acc59(29)
      acc59(30)=QspQ*acc59(7)
      acc59(31)=Qspval3k1*acc59(5)
      acc59(27)=acc59(28)+acc59(27)+acc59(29)+acc59(31)+acc59(19)+acc59(30)
      acc59(27)=Qspvak2k5*acc59(27)
      acc59(28)=-acc59(23)*Qspvak1k5
      acc59(29)=-acc59(8)*Qspval3k5
      acc59(28)=acc59(29)+acc59(10)+acc59(28)
      acc59(28)=Qspvak2l3*acc59(28)
      acc59(29)=QspQ*acc59(6)
      acc59(30)=Qspval3k1*acc59(26)
      acc59(31)=Qspvak2k1*acc59(11)
      acc59(28)=acc59(31)+acc59(28)+acc59(30)+acc59(13)+acc59(29)
      acc59(28)=Qspvak2k1*acc59(28)
      acc59(29)=QspQ*acc59(16)
      acc59(30)=Qspval3k1*acc59(22)
      acc59(29)=acc59(30)+acc59(20)+acc59(29)
      acc59(29)=Qspvak2l3*acc59(29)
      acc59(30)=QspQ*acc59(9)
      acc59(31)=Qspval3k1*acc59(17)
      brack=acc59(14)+acc59(27)+acc59(28)+acc59(29)+acc59(30)+acc59(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d59h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd59h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d59
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d59 = 0.0_ki
      d59 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d59, ki), aimag(d59), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d59h1l1
