module     p0_gg_hhg_d59h0l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d59h0l1_qp.f90
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
      use p0_gg_hhg_abbrevd59h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc59(50)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak1l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k5
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
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
      acc59(23)=abb59(30)
      acc59(24)=abb59(31)
      acc59(25)=abb59(32)
      acc59(26)=abb59(33)
      acc59(27)=abb59(34)
      acc59(28)=abb59(36)
      acc59(29)=abb59(37)
      acc59(30)=abb59(38)
      acc59(31)=abb59(39)
      acc59(32)=abb59(40)
      acc59(33)=abb59(41)
      acc59(34)=abb59(42)
      acc59(35)=abb59(43)
      acc59(36)=abb59(44)
      acc59(37)=abb59(45)
      acc59(38)=abb59(46)
      acc59(39)=abb59(47)
      acc59(40)=abb59(48)
      acc59(41)=abb59(49)
      acc59(42)=Qspvak2k1*acc59(21)
      acc59(43)=Qspvak2l3*acc59(23)
      acc59(44)=Qspvak1l3*acc59(3)
      acc59(45)=QspQ*acc59(35)
      acc59(46)=Qspvak2k5*acc59(18)
      acc59(42)=acc59(46)+acc59(45)+acc59(44)+acc59(43)+acc59(13)+acc59(42)
      acc59(42)=Qspk2*acc59(42)
      acc59(43)=-Qspvak2k1*acc59(38)
      acc59(44)=Qspvak2l3*acc59(31)
      acc59(43)=acc59(44)+acc59(2)+acc59(43)
      acc59(43)=Qspval3k2*acc59(43)
      acc59(44)=Qspvak2k1*acc59(32)
      acc59(45)=Qspvak2l3*acc59(8)
      acc59(44)=acc59(45)+acc59(36)+acc59(44)
      acc59(44)=QspQ*acc59(44)
      acc59(45)=Qspval3k2*acc59(1)
      acc59(46)=QspQ*acc59(19)
      acc59(45)=acc59(46)+acc59(7)+acc59(45)
      acc59(45)=Qspvak2k5*acc59(45)
      acc59(46)=Qspvak2k1*acc59(34)
      acc59(47)=-Qspvak2l3*acc59(16)
      acc59(48)=Qspvak1l3*acc59(41)
      acc59(42)=acc59(42)+acc59(45)+acc59(44)+acc59(48)+acc59(43)+acc59(47)+acc&
      &59(28)+acc59(46)
      acc59(42)=Qspvak1k5*acc59(42)
      acc59(43)=Qspval3k2*acc59(33)
      acc59(44)=Qspvak1l3*acc59(24)
      acc59(45)=QspQ*acc59(26)
      acc59(46)=Qspvak2k5*acc59(5)*Qspvak1k2
      acc59(43)=acc59(46)+acc59(45)+acc59(44)+acc59(11)+acc59(43)
      acc59(43)=Qspvak2k5*acc59(43)
      acc59(44)=Qspvak1l3*acc59(12)
      acc59(45)=QspQ*acc59(27)
      acc59(44)=acc59(45)+acc59(6)+acc59(44)
      acc59(44)=Qspvak2k5*acc59(44)
      acc59(45)=-Qspval3k5*acc59(33)
      acc59(46)=Qspval3k5*acc59(29)
      acc59(46)=acc59(10)+acc59(46)
      acc59(46)=Qspvak1l3*acc59(46)
      acc59(47)=Qspval3k5*acc59(40)
      acc59(47)=acc59(25)+acc59(47)
      acc59(47)=QspQ*acc59(47)
      acc59(44)=acc59(44)+acc59(47)+acc59(46)+acc59(14)+acc59(45)
      acc59(44)=Qspk2*acc59(44)
      acc59(45)=Qspvak2k1*acc59(22)
      acc59(46)=Qspvak2l3*acc59(20)
      acc59(47)=Qspval3k2*acc59(15)
      acc59(48)=Qspval3k5*acc59(37)
      acc59(49)=Qspval3k5*acc59(30)
      acc59(49)=acc59(4)+acc59(49)
      acc59(49)=Qspvak1l3*acc59(49)
      acc59(50)=Qspval3k5*acc59(39)
      acc59(50)=acc59(17)+acc59(50)
      acc59(50)=QspQ*acc59(50)
      brack=acc59(9)+acc59(42)+acc59(43)+acc59(44)+acc59(45)+acc59(46)+acc59(47&
      &)+acc59(48)+acc59(49)+acc59(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d59h0l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd59h0_qp
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
end module p0_gg_hhg_d59h0l1_qp
