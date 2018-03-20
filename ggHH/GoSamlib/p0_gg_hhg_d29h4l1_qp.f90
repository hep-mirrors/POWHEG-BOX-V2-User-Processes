module     p0_gg_hhg_d29h4l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d29h4l1_qp.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc29(44)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1l3
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      acc29(1)=abb29(10)
      acc29(2)=abb29(11)
      acc29(3)=abb29(12)
      acc29(4)=abb29(13)
      acc29(5)=abb29(14)
      acc29(6)=abb29(15)
      acc29(7)=abb29(16)
      acc29(8)=abb29(18)
      acc29(9)=abb29(19)
      acc29(10)=abb29(20)
      acc29(11)=abb29(21)
      acc29(12)=abb29(22)
      acc29(13)=abb29(23)
      acc29(14)=abb29(24)
      acc29(15)=abb29(25)
      acc29(16)=abb29(26)
      acc29(17)=abb29(27)
      acc29(18)=abb29(28)
      acc29(19)=abb29(29)
      acc29(20)=abb29(35)
      acc29(21)=abb29(36)
      acc29(22)=abb29(37)
      acc29(23)=abb29(44)
      acc29(24)=abb29(47)
      acc29(25)=abb29(48)
      acc29(26)=abb29(49)
      acc29(27)=abb29(53)
      acc29(28)=abb29(55)
      acc29(29)=abb29(57)
      acc29(30)=abb29(58)
      acc29(31)=abb29(59)
      acc29(32)=abb29(60)
      acc29(33)=abb29(61)
      acc29(34)=QspQ*acc29(13)
      acc29(35)=Qspk2*acc29(6)
      acc29(34)=acc29(35)+acc29(3)+acc29(34)
      acc29(34)=Qspk2*acc29(34)
      acc29(35)=Qspvak2k5*acc29(18)
      acc29(36)=QspQ*acc29(9)
      acc29(37)=-acc29(33)*Qspvak2l4
      acc29(37)=acc29(12)+acc29(37)
      acc29(37)=Qspval4k2*acc29(37)
      acc29(38)=Qspvak2k5*acc29(19)
      acc29(38)=acc29(8)+acc29(38)
      acc29(38)=Qspvak5k2*acc29(38)
      acc29(34)=acc29(38)+acc29(34)+acc29(37)+acc29(36)+acc29(2)+acc29(35)
      acc29(34)=Qspvak1k2*acc29(34)
      acc29(35)=-Qspval4k2*acc29(31)
      acc29(35)=acc29(35)+acc29(4)
      acc29(35)=Qspvak1l4*acc29(35)
      acc29(36)=QspQ*acc29(27)
      acc29(37)=Qspvak1k5*acc29(17)
      acc29(35)=acc29(37)+acc29(16)+acc29(36)+acc29(35)
      acc29(35)=Qspk2*acc29(35)
      acc29(36)=-QspQ*acc29(31)
      acc29(37)=Qspk2*acc29(30)
      acc29(36)=acc29(37)+acc29(29)+acc29(36)
      acc29(36)=Qspvak1k5*acc29(36)
      acc29(37)=QspQ*acc29(20)
      acc29(38)=-acc29(33)*Qspval4k5
      acc29(38)=acc29(5)+acc29(38)
      acc29(38)=Qspvak1l4*acc29(38)
      acc29(36)=acc29(38)+acc29(14)+acc29(37)+acc29(36)
      acc29(36)=Qspvak5k2*acc29(36)
      acc29(37)=QspQ*acc29(23)
      acc29(38)=-acc29(33)*Qspvak5l4
      acc29(38)=acc29(32)+acc29(38)
      acc29(38)=Qspval4k2*acc29(38)
      acc29(37)=acc29(38)+acc29(11)+acc29(37)
      acc29(37)=Qspvak1k5*acc29(37)
      acc29(38)=acc29(26)*Qspval3k2
      acc29(39)=acc29(22)*Qspvak1l3
      acc29(40)=Qspvak5l4*acc29(28)
      acc29(41)=Qspval4k5*acc29(24)
      acc29(42)=QspQ*acc29(15)
      acc29(43)=Qspval4k5*acc29(7)
      acc29(43)=acc29(1)+acc29(43)
      acc29(43)=Qspvak1l4*acc29(43)
      acc29(44)=Qspvak1l4*acc29(21)
      acc29(44)=acc29(25)+acc29(44)
      acc29(44)=Qspval4k2*acc29(44)
      brack=acc29(10)+acc29(34)+acc29(35)+acc29(36)+acc29(37)+acc29(38)+acc29(3&
      &9)+acc29(40)+acc29(41)+acc29(42)+acc29(43)+acc29(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d29h4l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d29
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d29 = 0.0_ki
      d29 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d29, ki), aimag(d29), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d29h4l1_qp
