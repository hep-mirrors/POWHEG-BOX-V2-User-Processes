module     p0_gg_hhg_d15h4l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d15h4l1_qp.f90
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
      use p0_gg_hhg_abbrevd15h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(47)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak1l4
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      acc15(1)=abb15(10)
      acc15(2)=abb15(11)
      acc15(3)=abb15(12)
      acc15(4)=abb15(13)
      acc15(5)=abb15(14)
      acc15(6)=abb15(16)
      acc15(7)=abb15(17)
      acc15(8)=abb15(18)
      acc15(9)=abb15(19)
      acc15(10)=abb15(21)
      acc15(11)=abb15(22)
      acc15(12)=abb15(23)
      acc15(13)=abb15(24)
      acc15(14)=abb15(25)
      acc15(15)=abb15(26)
      acc15(16)=abb15(27)
      acc15(17)=abb15(29)
      acc15(18)=abb15(30)
      acc15(19)=abb15(31)
      acc15(20)=abb15(32)
      acc15(21)=abb15(33)
      acc15(22)=abb15(34)
      acc15(23)=abb15(36)
      acc15(24)=abb15(40)
      acc15(25)=abb15(42)
      acc15(26)=abb15(43)
      acc15(27)=abb15(46)
      acc15(28)=abb15(47)
      acc15(29)=abb15(49)
      acc15(30)=abb15(51)
      acc15(31)=abb15(62)
      acc15(32)=abb15(67)
      acc15(33)=abb15(69)
      acc15(34)=abb15(73)
      acc15(35)=Qspvak2l4*acc15(5)
      acc15(36)=Qspval3k2*acc15(3)
      acc15(37)=Qspval3l4*acc15(22)
      acc15(38)=Qspvak5k1*acc15(20)
      acc15(39)=Qspk2*acc15(1)
      acc15(40)=-Qspvak5k1*acc15(30)
      acc15(40)=acc15(11)+acc15(40)
      acc15(40)=QspQ*acc15(40)
      acc15(41)=QspQ*acc15(4)
      acc15(41)=acc15(17)+acc15(41)
      acc15(41)=Qspvak5k2*acc15(41)
      acc15(35)=acc15(41)+acc15(40)+acc15(39)+acc15(38)+acc15(37)+acc15(36)+acc&
      &15(18)+acc15(35)
      acc15(35)=Qspvak1k2*acc15(35)
      acc15(36)=Qspval4k2*acc15(34)
      acc15(37)=Qspval4l3*acc15(8)
      acc15(38)=Qspk2*acc15(32)
      acc15(39)=Qspk2*acc15(24)
      acc15(39)=acc15(29)+acc15(39)
      acc15(39)=QspQ*acc15(39)
      acc15(36)=acc15(39)+acc15(38)+acc15(37)+acc15(21)+acc15(36)
      acc15(36)=Qspvak5k2*acc15(36)
      acc15(37)=Qspval4k2*acc15(19)
      acc15(38)=Qspval4l3*acc15(15)
      acc15(37)=acc15(38)+acc15(31)+acc15(37)
      acc15(37)=Qspvak5k1*acc15(37)
      acc15(38)=Qspval3k2*acc15(9)
      acc15(39)=Qspval3l4*acc15(28)
      acc15(38)=acc15(39)+acc15(23)+acc15(38)
      acc15(38)=Qspk2*acc15(38)
      acc15(39)=Qspvak5k1*acc15(2)
      acc15(40)=Qspk2*acc15(12)
      acc15(39)=acc15(40)+acc15(6)+acc15(39)
      acc15(39)=QspQ*acc15(39)
      acc15(40)=acc15(27)*Qspval4k1
      acc15(41)=acc15(25)*Qspvak5l3
      acc15(42)=acc15(16)*Qspvak1l4
      acc15(43)=Qspvak2l4*acc15(13)
      acc15(44)=Qspval3k2*acc15(7)
      acc15(45)=Qspval3l4*acc15(26)
      acc15(46)=Qspval4k2*acc15(33)
      acc15(47)=Qspval4l3*acc15(14)
      brack=acc15(10)+acc15(35)+acc15(36)+acc15(37)+acc15(38)+acc15(39)+acc15(4&
      &0)+acc15(41)+acc15(42)+acc15(43)+acc15(44)+acc15(45)+acc15(46)+acc15(47)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d15h4l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd15h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d15h4l1_qp
