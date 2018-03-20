module     p0_gg_hhg_d25h4l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d25h4l1_qp.f90
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
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc25(43)
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      acc25(1)=abb25(10)
      acc25(2)=abb25(11)
      acc25(3)=abb25(12)
      acc25(4)=abb25(13)
      acc25(5)=abb25(14)
      acc25(6)=abb25(15)
      acc25(7)=abb25(16)
      acc25(8)=abb25(17)
      acc25(9)=abb25(18)
      acc25(10)=abb25(19)
      acc25(11)=abb25(21)
      acc25(12)=abb25(22)
      acc25(13)=abb25(23)
      acc25(14)=abb25(24)
      acc25(15)=abb25(25)
      acc25(16)=abb25(26)
      acc25(17)=abb25(27)
      acc25(18)=abb25(28)
      acc25(19)=abb25(30)
      acc25(20)=abb25(31)
      acc25(21)=abb25(33)
      acc25(22)=abb25(34)
      acc25(23)=abb25(35)
      acc25(24)=abb25(36)
      acc25(25)=abb25(37)
      acc25(26)=abb25(39)
      acc25(27)=abb25(43)
      acc25(28)=abb25(46)
      acc25(29)=abb25(47)
      acc25(30)=abb25(48)
      acc25(31)=abb25(52)
      acc25(32)=abb25(53)
      acc25(33)=abb25(55)
      acc25(34)=QspQ-Qspk1
      acc25(34)=acc25(29)*acc25(34)
      acc25(35)=Qspvak1l4*acc25(25)
      acc25(36)=Qspval4k2*acc25(17)
      acc25(37)=Qspvak1k5*acc25(5)
      acc25(38)=Qspval3k2*acc25(13)
      acc25(39)=Qspk2*acc25(27)
      acc25(40)=Qspvak1l3*acc25(9)
      acc25(41)=Qspvak1k2*acc25(1)
      acc25(34)=acc25(41)+acc25(40)+acc25(39)+acc25(38)+acc25(37)+acc25(36)+acc&
      &25(35)+acc25(2)+acc25(34)
      acc25(34)=QspQ*acc25(34)
      acc25(35)=Qspval4k2*acc25(20)
      acc25(36)=Qspvak1k5*acc25(4)
      acc25(37)=Qspval3k2*acc25(11)
      acc25(38)=Qspk2*acc25(21)
      acc25(39)=Qspvak1l3*acc25(6)
      acc25(40)=Qspvak1k2*acc25(15)
      acc25(35)=acc25(40)+acc25(39)+acc25(38)+acc25(37)+acc25(36)+acc25(19)+acc&
      &25(35)
      acc25(35)=Qspvak1k2*acc25(35)
      acc25(36)=Qspval4k2*acc25(23)
      acc25(37)=Qspvak1k5*acc25(22)
      acc25(38)=Qspk2*acc25(12)
      acc25(36)=acc25(38)+acc25(37)+acc25(7)+acc25(36)
      acc25(36)=Qspvak1l3*acc25(36)
      acc25(37)=Qspk1*acc25(33)
      acc25(38)=Qspvak1l4*acc25(28)
      acc25(37)=acc25(38)+acc25(31)+acc25(37)
      acc25(37)=Qspval3k2*acc25(37)
      acc25(38)=Qspk1*acc25(10)
      acc25(39)=Qspvak1l4*acc25(16)
      acc25(38)=acc25(39)+acc25(26)+acc25(38)
      acc25(38)=Qspk2*acc25(38)
      acc25(39)=Qspvak5k2*acc25(24)
      acc25(40)=Qspk1*acc25(30)
      acc25(41)=Qspvak1l4*acc25(18)
      acc25(42)=Qspval4k2*acc25(32)
      acc25(43)=Qspvak5k2*acc25(8)
      acc25(43)=acc25(3)+acc25(43)
      acc25(43)=Qspvak1k5*acc25(43)
      brack=acc25(14)+acc25(34)+acc25(35)+acc25(36)+acc25(37)+acc25(38)+acc25(3&
      &9)+acc25(40)+acc25(41)+acc25(42)+acc25(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d25h4l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d25
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d25 = 0.0_ki
      d25 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d25, ki), aimag(d25), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d25h4l1_qp
