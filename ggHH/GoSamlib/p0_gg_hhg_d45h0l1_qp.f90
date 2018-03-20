module     p0_gg_hhg_d45h0l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d45h0l1_qp.f90
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
      use p0_gg_hhg_abbrevd45h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc45(33)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak2k5
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc45(1)=abb45(8)
      acc45(2)=abb45(9)
      acc45(3)=abb45(10)
      acc45(4)=abb45(11)
      acc45(5)=abb45(12)
      acc45(6)=abb45(13)
      acc45(7)=abb45(14)
      acc45(8)=abb45(15)
      acc45(9)=abb45(16)
      acc45(10)=abb45(17)
      acc45(11)=abb45(19)
      acc45(12)=abb45(20)
      acc45(13)=abb45(21)
      acc45(14)=abb45(22)
      acc45(15)=abb45(23)
      acc45(16)=abb45(24)
      acc45(17)=abb45(26)
      acc45(18)=abb45(27)
      acc45(19)=abb45(28)
      acc45(20)=abb45(29)
      acc45(21)=abb45(30)
      acc45(22)=abb45(31)
      acc45(23)=abb45(33)
      acc45(24)=abb45(34)
      acc45(25)=Qspk1*acc45(11)
      acc45(26)=Qspk2*acc45(13)
      acc45(25)=acc45(26)+acc45(5)+acc45(25)
      acc45(25)=Qspk2*acc45(25)
      acc45(26)=Qspvak2l3*acc45(24)
      acc45(27)=Qspvak2l3*acc45(19)
      acc45(27)=acc45(23)+acc45(27)
      acc45(27)=Qspval3k2*acc45(27)
      acc45(28)=QspQ*acc45(3)
      acc45(29)=-acc45(19)*Qspvak2k1
      acc45(29)=acc45(7)+acc45(29)
      acc45(29)=Qspvak1k2*acc45(29)
      acc45(30)=-Qspvak1k5*acc45(12)
      acc45(25)=acc45(30)+acc45(25)+acc45(29)+acc45(28)+acc45(27)+acc45(1)+acc4&
      &5(26)
      acc45(25)=Qspvak1k5*acc45(25)
      acc45(26)=Qspk1*acc45(16)
      acc45(27)=acc45(9)*Qspval3k5
      acc45(27)=acc45(8)+acc45(27)
      acc45(27)=Qspvak1l3*acc45(27)
      acc45(28)=QspQ*acc45(18)
      acc45(26)=acc45(28)+acc45(27)+acc45(15)+acc45(26)
      acc45(26)=Qspk2*acc45(26)
      acc45(27)=QspQ*acc45(9)
      acc45(28)=Qspk2*acc45(4)
      acc45(27)=acc45(28)+acc45(6)+acc45(27)
      acc45(27)=Qspvak2k5*acc45(27)
      acc45(27)=acc45(27)+acc45(10)
      acc45(27)=Qspvak1k2*acc45(27)
      acc45(28)=Qspval3k5*acc45(20)
      acc45(29)=Qspk1*acc45(17)
      acc45(30)=Qspvak1l3*acc45(14)
      acc45(31)=Qspvak2l3*acc45(22)
      acc45(32)=Qspval3k2*acc45(21)
      acc45(33)=acc45(18)*QspQ**2
      acc45(25)=acc45(25)+acc45(26)+acc45(33)+acc45(32)+acc45(31)+acc45(30)+acc&
      &45(29)+acc45(2)+acc45(28)+acc45(27)
      brack=Qspvak2k5*acc45(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d45h0l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d45
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d45 = 0.0_ki
      d45 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d45, ki), aimag(d45), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d45h0l1_qp
