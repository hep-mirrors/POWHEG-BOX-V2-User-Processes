module     p0_gg_hhg_d53h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d53h0l1.f90
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
      use p0_gg_hhg_abbrevd53h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc53(33)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k2
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc53(1)=abb53(8)
      acc53(2)=abb53(9)
      acc53(3)=abb53(10)
      acc53(4)=abb53(11)
      acc53(5)=abb53(12)
      acc53(6)=abb53(13)
      acc53(7)=abb53(14)
      acc53(8)=abb53(15)
      acc53(9)=abb53(16)
      acc53(10)=abb53(17)
      acc53(11)=abb53(18)
      acc53(12)=abb53(19)
      acc53(13)=abb53(20)
      acc53(14)=abb53(21)
      acc53(15)=abb53(22)
      acc53(16)=abb53(23)
      acc53(17)=abb53(24)
      acc53(18)=abb53(25)
      acc53(19)=abb53(26)
      acc53(20)=abb53(27)
      acc53(21)=abb53(28)
      acc53(22)=abb53(29)
      acc53(23)=abb53(30)
      acc53(24)=abb53(31)
      acc53(25)=abb53(32)
      acc53(26)=abb53(33)
      acc53(27)=acc53(25)*Qspvak2k1
      acc53(28)=Qspval4k5*acc53(1)
      acc53(29)=Qspval4k5*acc53(5)
      acc53(29)=acc53(3)+acc53(29)
      acc53(29)=Qspvak2l4*acc53(29)
      acc53(30)=-QspQ*acc53(15)
      acc53(31)=Qspvak2k5*acc53(11)
      acc53(32)=Qspvak2k5*acc53(17)
      acc53(32)=acc53(20)+acc53(32)
      acc53(32)=Qspk2*acc53(32)
      acc53(27)=acc53(32)+acc53(31)+acc53(30)+acc53(29)+acc53(28)+acc53(12)+acc&
      &53(27)
      acc53(27)=Qspk2*acc53(27)
      acc53(28)=Qspval4k5*acc53(16)
      acc53(28)=acc53(10)+acc53(28)
      acc53(28)=Qspvak2l4*acc53(28)
      acc53(29)=QspQ*acc53(19)
      acc53(30)=-QspQ*acc53(16)
      acc53(30)=acc53(26)+acc53(30)
      acc53(30)=Qspvak2k5*acc53(30)
      acc53(27)=acc53(27)+acc53(30)+acc53(29)+acc53(21)+acc53(28)
      acc53(27)=Qspvak1k5*acc53(27)
      acc53(28)=QspQ*acc53(25)
      acc53(28)=acc53(24)+acc53(28)
      acc53(28)=QspQ*acc53(28)
      acc53(29)=QspQ*acc53(2)
      acc53(29)=acc53(8)+acc53(29)
      acc53(29)=Qspvak2k5*Qspvak1k2*acc53(29)
      acc53(28)=acc53(29)+acc53(4)+acc53(28)
      acc53(28)=Qspvak2k5*acc53(28)
      acc53(29)=Qspvak2k1*acc53(6)
      acc53(30)=Qspval4k5*acc53(23)
      acc53(31)=Qspval4k5*acc53(9)
      acc53(31)=acc53(18)+acc53(31)
      acc53(31)=Qspvak2l4*acc53(31)
      acc53(32)=QspQ*acc53(14)
      acc53(33)=Qspvak2k5*acc53(13)
      acc53(33)=acc53(22)+acc53(33)
      acc53(33)=Qspk2*acc53(33)
      brack=acc53(7)+acc53(27)+acc53(28)+acc53(29)+acc53(30)+acc53(31)+acc53(32&
      &)+acc53(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d53h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd53h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d53h0l1
