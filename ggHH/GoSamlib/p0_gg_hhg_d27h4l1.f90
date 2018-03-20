module     p0_gg_hhg_d27h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d27h4l1.f90
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
      use p0_gg_hhg_abbrevd27h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc27(44)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l4
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      acc27(1)=abb27(10)
      acc27(2)=abb27(11)
      acc27(3)=abb27(12)
      acc27(4)=abb27(13)
      acc27(5)=abb27(14)
      acc27(6)=abb27(15)
      acc27(7)=abb27(16)
      acc27(8)=abb27(18)
      acc27(9)=abb27(19)
      acc27(10)=abb27(20)
      acc27(11)=abb27(21)
      acc27(12)=abb27(22)
      acc27(13)=abb27(23)
      acc27(14)=abb27(24)
      acc27(15)=abb27(25)
      acc27(16)=abb27(26)
      acc27(17)=abb27(27)
      acc27(18)=abb27(28)
      acc27(19)=abb27(29)
      acc27(20)=abb27(35)
      acc27(21)=abb27(36)
      acc27(22)=abb27(37)
      acc27(23)=abb27(44)
      acc27(24)=abb27(47)
      acc27(25)=abb27(48)
      acc27(26)=abb27(49)
      acc27(27)=abb27(53)
      acc27(28)=abb27(55)
      acc27(29)=abb27(57)
      acc27(30)=abb27(58)
      acc27(31)=abb27(59)
      acc27(32)=abb27(60)
      acc27(33)=abb27(61)
      acc27(34)=QspQ*acc27(13)
      acc27(35)=Qspk2*acc27(6)
      acc27(34)=acc27(35)+acc27(3)+acc27(34)
      acc27(34)=Qspk2*acc27(34)
      acc27(35)=Qspvak2k5*acc27(18)
      acc27(36)=QspQ*acc27(9)
      acc27(37)=-acc27(33)*Qspvak2l3
      acc27(37)=acc27(12)+acc27(37)
      acc27(37)=Qspval3k2*acc27(37)
      acc27(38)=Qspvak2k5*acc27(19)
      acc27(38)=acc27(8)+acc27(38)
      acc27(38)=Qspvak5k2*acc27(38)
      acc27(34)=acc27(38)+acc27(34)+acc27(37)+acc27(36)+acc27(2)+acc27(35)
      acc27(34)=Qspvak1k2*acc27(34)
      acc27(35)=-Qspval3k2*acc27(31)
      acc27(35)=acc27(35)+acc27(4)
      acc27(35)=Qspvak1l3*acc27(35)
      acc27(36)=QspQ*acc27(27)
      acc27(37)=Qspvak1k5*acc27(17)
      acc27(35)=acc27(37)+acc27(16)+acc27(36)+acc27(35)
      acc27(35)=Qspk2*acc27(35)
      acc27(36)=-QspQ*acc27(31)
      acc27(37)=Qspk2*acc27(30)
      acc27(36)=acc27(37)+acc27(29)+acc27(36)
      acc27(36)=Qspvak1k5*acc27(36)
      acc27(37)=QspQ*acc27(20)
      acc27(38)=-acc27(33)*Qspval3k5
      acc27(38)=acc27(5)+acc27(38)
      acc27(38)=Qspvak1l3*acc27(38)
      acc27(36)=acc27(38)+acc27(14)+acc27(37)+acc27(36)
      acc27(36)=Qspvak5k2*acc27(36)
      acc27(37)=QspQ*acc27(23)
      acc27(38)=-acc27(33)*Qspvak5l3
      acc27(38)=acc27(32)+acc27(38)
      acc27(38)=Qspval3k2*acc27(38)
      acc27(37)=acc27(38)+acc27(11)+acc27(37)
      acc27(37)=Qspvak1k5*acc27(37)
      acc27(38)=acc27(25)*Qspval4k2
      acc27(39)=acc27(22)*Qspvak1l4
      acc27(40)=Qspvak5l3*acc27(28)
      acc27(41)=Qspval3k5*acc27(24)
      acc27(42)=QspQ*acc27(15)
      acc27(43)=Qspval3k5*acc27(7)
      acc27(43)=acc27(1)+acc27(43)
      acc27(43)=Qspvak1l3*acc27(43)
      acc27(44)=Qspvak1l3*acc27(21)
      acc27(44)=acc27(26)+acc27(44)
      acc27(44)=Qspval3k2*acc27(44)
      brack=acc27(10)+acc27(34)+acc27(35)+acc27(36)+acc27(37)+acc27(38)+acc27(3&
      &9)+acc27(40)+acc27(41)+acc27(42)+acc27(43)+acc27(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d27h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd27h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d27h4l1
