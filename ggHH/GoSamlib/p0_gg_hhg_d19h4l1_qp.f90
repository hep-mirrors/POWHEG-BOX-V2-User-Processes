module     p0_gg_hhg_d19h4l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d19h4l1_qp.f90
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
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc19(32)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k5
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc19(1)=abb19(10)
      acc19(2)=abb19(11)
      acc19(3)=abb19(12)
      acc19(4)=abb19(13)
      acc19(5)=abb19(14)
      acc19(6)=abb19(15)
      acc19(7)=abb19(16)
      acc19(8)=abb19(18)
      acc19(9)=abb19(19)
      acc19(10)=abb19(20)
      acc19(11)=abb19(21)
      acc19(12)=abb19(22)
      acc19(13)=abb19(23)
      acc19(14)=abb19(24)
      acc19(15)=abb19(25)
      acc19(16)=abb19(27)
      acc19(17)=abb19(28)
      acc19(18)=abb19(29)
      acc19(19)=abb19(31)
      acc19(20)=abb19(32)
      acc19(21)=abb19(35)
      acc19(22)=abb19(37)
      acc19(23)=abb19(39)
      acc19(24)=Qspvak2l4*acc19(19)
      acc19(25)=Qspvak2l3*acc19(1)
      acc19(26)=Qspval3k5*acc19(2)
      acc19(27)=Qspval4k5*acc19(22)
      acc19(28)=Qspk2*acc19(14)
      acc19(29)=-QspQ*acc19(7)
      acc19(24)=acc19(29)+acc19(28)+acc19(27)+acc19(26)+acc19(25)+acc19(3)+acc1&
      &9(24)
      acc19(24)=QspQ*acc19(24)
      acc19(25)=Qspvak2l3*acc19(9)
      acc19(26)=Qspval3k5*acc19(10)
      acc19(27)=Qspval4k5*acc19(11)
      acc19(28)=Qspk2*acc19(17)
      acc19(25)=acc19(28)+acc19(27)+acc19(26)+acc19(15)+acc19(25)
      acc19(25)=Qspk2*acc19(25)
      acc19(26)=acc19(13)*Qspvak1k2
      acc19(27)=acc19(4)*Qspvak5k2
      acc19(26)=acc19(26)+acc19(27)
      acc19(26)=Qspvak2k5*acc19(26)
      acc19(27)=acc19(16)*Qspk5
      acc19(28)=acc19(6)*Qspvak1k5
      acc19(29)=Qspvak2l4*acc19(23)
      acc19(30)=Qspvak2l3*acc19(8)
      acc19(31)=Qspvak2l4*acc19(20)
      acc19(31)=acc19(18)+acc19(31)
      acc19(31)=Qspval3k5*acc19(31)
      acc19(32)=Qspvak2l3*acc19(5)
      acc19(32)=acc19(21)+acc19(32)
      acc19(32)=Qspval4k5*acc19(32)
      brack=acc19(12)+acc19(24)+acc19(25)+acc19(26)+acc19(27)+acc19(28)+acc19(2&
      &9)+acc19(30)+acc19(31)+acc19(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d19h4l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d19
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d19 = 0.0_ki
      d19 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d19, ki), aimag(d19), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d19h4l1_qp
