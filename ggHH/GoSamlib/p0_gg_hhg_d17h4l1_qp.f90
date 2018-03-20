module     p0_gg_hhg_d17h4l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d17h4l1_qp.f90
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
      use p0_gg_hhg_abbrevd17h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(44)
      complex(ki) :: QspQ
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      QspQ = dotproduct(Q,Q)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc17(1)=abb17(10)
      acc17(2)=abb17(11)
      acc17(3)=abb17(12)
      acc17(4)=abb17(13)
      acc17(5)=abb17(14)
      acc17(6)=abb17(15)
      acc17(7)=abb17(17)
      acc17(8)=abb17(18)
      acc17(9)=abb17(19)
      acc17(10)=abb17(20)
      acc17(11)=abb17(21)
      acc17(12)=abb17(22)
      acc17(13)=abb17(23)
      acc17(14)=abb17(25)
      acc17(15)=abb17(26)
      acc17(16)=abb17(27)
      acc17(17)=abb17(28)
      acc17(18)=abb17(32)
      acc17(19)=abb17(33)
      acc17(20)=abb17(34)
      acc17(21)=abb17(35)
      acc17(22)=abb17(36)
      acc17(23)=abb17(37)
      acc17(24)=abb17(38)
      acc17(25)=abb17(39)
      acc17(26)=abb17(42)
      acc17(27)=abb17(43)
      acc17(28)=abb17(44)
      acc17(29)=abb17(46)
      acc17(30)=abb17(47)
      acc17(31)=abb17(50)
      acc17(32)=abb17(51)
      acc17(33)=abb17(52)
      acc17(34)=abb17(57)
      acc17(35)=-QspQ-Qspk5
      acc17(35)=acc17(6)*acc17(35)
      acc17(36)=Qspval4k2*acc17(23)
      acc17(37)=Qspvak5l4*acc17(27)
      acc17(38)=Qspval3k2*acc17(2)
      acc17(39)=Qspvak5k1*acc17(28)
      acc17(40)=Qspk2*acc17(17)
      acc17(41)=Qspvak5l3*acc17(34)
      acc17(42)=Qspvak5k2*acc17(26)
      acc17(35)=acc17(42)+acc17(41)+acc17(40)+acc17(39)+acc17(38)+acc17(37)+acc&
      &17(36)+acc17(22)+acc17(35)
      acc17(35)=QspQ*acc17(35)
      acc17(36)=Qspvak1k2*acc17(10)
      acc17(37)=Qspval4k2*acc17(9)
      acc17(38)=Qspval3k2*acc17(1)
      acc17(39)=Qspvak5k1*acc17(24)
      acc17(40)=Qspk2*acc17(16)
      acc17(41)=Qspvak5l3*acc17(30)
      acc17(42)=Qspvak5k2*acc17(31)
      acc17(36)=acc17(42)+acc17(41)+acc17(40)+acc17(39)+acc17(38)+acc17(37)+acc&
      &17(11)+acc17(36)
      acc17(36)=Qspvak5k2*acc17(36)
      acc17(37)=Qspval4k2*acc17(32)
      acc17(38)=Qspvak5k1*acc17(4)
      acc17(39)=Qspk2*acc17(20)
      acc17(37)=acc17(39)+acc17(38)+acc17(3)+acc17(37)
      acc17(37)=Qspvak5l3*acc17(37)
      acc17(38)=Qspk5*acc17(25)
      acc17(39)=Qspvak5l4*acc17(12)
      acc17(38)=acc17(39)+acc17(8)+acc17(38)
      acc17(38)=Qspval3k2*acc17(38)
      acc17(39)=Qspk5*acc17(18)
      acc17(40)=Qspvak5l4*acc17(33)
      acc17(39)=acc17(40)+acc17(15)+acc17(39)
      acc17(39)=Qspk2*acc17(39)
      acc17(40)=Qspvak1k2*acc17(5)
      acc17(41)=Qspk5*acc17(7)
      acc17(42)=Qspval4k2*acc17(29)
      acc17(43)=Qspvak5l4*acc17(19)
      acc17(44)=Qspvak1k2*acc17(13)
      acc17(44)=acc17(21)+acc17(44)
      acc17(44)=Qspvak5k1*acc17(44)
      brack=acc17(14)+acc17(35)+acc17(36)+acc17(37)+acc17(38)+acc17(39)+acc17(4&
      &0)+acc17(41)+acc17(42)+acc17(43)+acc17(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d17h4l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d17h4l1_qp
