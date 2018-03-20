module     p0_gg_hhg_d63h0l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d63h0l1_qp.f90
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
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc63(50)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak1l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval4k5
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      acc63(1)=abb63(8)
      acc63(2)=abb63(9)
      acc63(3)=abb63(10)
      acc63(4)=abb63(11)
      acc63(5)=abb63(12)
      acc63(6)=abb63(13)
      acc63(7)=abb63(14)
      acc63(8)=abb63(15)
      acc63(9)=abb63(16)
      acc63(10)=abb63(17)
      acc63(11)=abb63(18)
      acc63(12)=abb63(19)
      acc63(13)=abb63(20)
      acc63(14)=abb63(21)
      acc63(15)=abb63(22)
      acc63(16)=abb63(23)
      acc63(17)=abb63(24)
      acc63(18)=abb63(25)
      acc63(19)=abb63(26)
      acc63(20)=abb63(27)
      acc63(21)=abb63(28)
      acc63(22)=abb63(29)
      acc63(23)=abb63(30)
      acc63(24)=abb63(31)
      acc63(25)=abb63(32)
      acc63(26)=abb63(33)
      acc63(27)=abb63(34)
      acc63(28)=abb63(36)
      acc63(29)=abb63(37)
      acc63(30)=abb63(38)
      acc63(31)=abb63(39)
      acc63(32)=abb63(40)
      acc63(33)=abb63(41)
      acc63(34)=abb63(42)
      acc63(35)=abb63(43)
      acc63(36)=abb63(44)
      acc63(37)=abb63(45)
      acc63(38)=abb63(46)
      acc63(39)=abb63(47)
      acc63(40)=abb63(48)
      acc63(41)=abb63(49)
      acc63(42)=Qspvak2k1*acc63(21)
      acc63(43)=Qspvak2l4*acc63(23)
      acc63(44)=Qspvak1l4*acc63(3)
      acc63(45)=QspQ*acc63(35)
      acc63(46)=Qspvak2k5*acc63(18)
      acc63(42)=acc63(46)+acc63(45)+acc63(44)+acc63(43)+acc63(13)+acc63(42)
      acc63(42)=Qspk2*acc63(42)
      acc63(43)=-Qspvak2k1*acc63(38)
      acc63(44)=Qspvak2l4*acc63(31)
      acc63(43)=acc63(44)+acc63(2)+acc63(43)
      acc63(43)=Qspval4k2*acc63(43)
      acc63(44)=Qspvak2k1*acc63(32)
      acc63(45)=Qspvak2l4*acc63(8)
      acc63(44)=acc63(45)+acc63(36)+acc63(44)
      acc63(44)=QspQ*acc63(44)
      acc63(45)=Qspval4k2*acc63(1)
      acc63(46)=QspQ*acc63(19)
      acc63(45)=acc63(46)+acc63(7)+acc63(45)
      acc63(45)=Qspvak2k5*acc63(45)
      acc63(46)=Qspvak2k1*acc63(34)
      acc63(47)=-Qspvak2l4*acc63(16)
      acc63(48)=Qspvak1l4*acc63(41)
      acc63(42)=acc63(42)+acc63(45)+acc63(44)+acc63(48)+acc63(43)+acc63(47)+acc&
      &63(28)+acc63(46)
      acc63(42)=Qspvak1k5*acc63(42)
      acc63(43)=Qspval4k2*acc63(33)
      acc63(44)=Qspvak1l4*acc63(24)
      acc63(45)=QspQ*acc63(26)
      acc63(46)=Qspvak2k5*acc63(5)*Qspvak1k2
      acc63(43)=acc63(46)+acc63(45)+acc63(44)+acc63(11)+acc63(43)
      acc63(43)=Qspvak2k5*acc63(43)
      acc63(44)=Qspvak1l4*acc63(12)
      acc63(45)=QspQ*acc63(27)
      acc63(44)=acc63(45)+acc63(6)+acc63(44)
      acc63(44)=Qspvak2k5*acc63(44)
      acc63(45)=-Qspval4k5*acc63(33)
      acc63(46)=Qspval4k5*acc63(29)
      acc63(46)=acc63(10)+acc63(46)
      acc63(46)=Qspvak1l4*acc63(46)
      acc63(47)=Qspval4k5*acc63(40)
      acc63(47)=acc63(25)+acc63(47)
      acc63(47)=QspQ*acc63(47)
      acc63(44)=acc63(44)+acc63(47)+acc63(46)+acc63(14)+acc63(45)
      acc63(44)=Qspk2*acc63(44)
      acc63(45)=Qspvak2k1*acc63(22)
      acc63(46)=Qspvak2l4*acc63(20)
      acc63(47)=Qspval4k2*acc63(15)
      acc63(48)=Qspval4k5*acc63(37)
      acc63(49)=Qspval4k5*acc63(30)
      acc63(49)=acc63(4)+acc63(49)
      acc63(49)=Qspvak1l4*acc63(49)
      acc63(50)=Qspval4k5*acc63(39)
      acc63(50)=acc63(17)+acc63(50)
      acc63(50)=QspQ*acc63(50)
      brack=acc63(9)+acc63(42)+acc63(43)+acc63(44)+acc63(45)+acc63(46)+acc63(47&
      &)+acc63(48)+acc63(49)+acc63(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d63h0l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d63h0l1_qp
