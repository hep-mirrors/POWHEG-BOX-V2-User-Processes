module     p0_gg_hhg_d47h4l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d47h4l1_qp.f90
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
      use p0_gg_hhg_abbrevd47h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc47(57)
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k5
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc47(1)=abb47(9)
      acc47(2)=abb47(10)
      acc47(3)=abb47(11)
      acc47(4)=abb47(12)
      acc47(5)=abb47(13)
      acc47(6)=abb47(14)
      acc47(7)=abb47(15)
      acc47(8)=abb47(16)
      acc47(9)=abb47(17)
      acc47(10)=abb47(18)
      acc47(11)=abb47(19)
      acc47(12)=abb47(20)
      acc47(13)=abb47(21)
      acc47(14)=abb47(22)
      acc47(15)=abb47(23)
      acc47(16)=abb47(24)
      acc47(17)=abb47(25)
      acc47(18)=abb47(26)
      acc47(19)=abb47(27)
      acc47(20)=abb47(30)
      acc47(21)=abb47(31)
      acc47(22)=abb47(32)
      acc47(23)=abb47(33)
      acc47(24)=abb47(34)
      acc47(25)=abb47(35)
      acc47(26)=abb47(36)
      acc47(27)=abb47(38)
      acc47(28)=abb47(39)
      acc47(29)=abb47(40)
      acc47(30)=abb47(41)
      acc47(31)=abb47(42)
      acc47(32)=abb47(43)
      acc47(33)=abb47(44)
      acc47(34)=abb47(45)
      acc47(35)=abb47(46)
      acc47(36)=abb47(47)
      acc47(37)=abb47(48)
      acc47(38)=abb47(52)
      acc47(39)=abb47(53)
      acc47(40)=abb47(54)
      acc47(41)=abb47(55)
      acc47(42)=abb47(56)
      acc47(43)=abb47(57)
      acc47(44)=abb47(58)
      acc47(45)=abb47(59)
      acc47(46)=abb47(60)
      acc47(47)=Qspk1*acc47(21)
      acc47(48)=Qspvak1l4*acc47(20)
      acc47(49)=Qspval3k5*acc47(42)
      acc47(50)=Qspvak1k2*acc47(14)
      acc47(47)=acc47(50)+acc47(49)+acc47(48)+acc47(18)+acc47(47)
      acc47(47)=QspQ*acc47(47)
      acc47(48)=Qspk1*acc47(34)
      acc47(49)=Qspvak1l4*acc47(46)
      acc47(50)=Qspvak1k2*acc47(23)
      acc47(51)=-QspQ*acc47(21)
      acc47(48)=acc47(51)+acc47(50)+acc47(49)+acc47(30)+acc47(48)
      acc47(48)=Qspk2*acc47(48)
      acc47(49)=Qspk1*acc47(40)
      acc47(50)=Qspvak1l4*acc47(41)
      acc47(49)=acc47(50)+acc47(39)+acc47(49)
      acc47(49)=Qspval3k5*acc47(49)
      acc47(50)=Qspk5*acc47(29)
      acc47(51)=Qspk1*acc47(27)
      acc47(52)=Qspvak1l4*acc47(44)
      acc47(53)=Qspvak5k2*acc47(35)
      acc47(54)=Qspval3k5*acc47(15)
      acc47(54)=acc47(11)+acc47(54)
      acc47(54)=Qspvak1k2*acc47(54)
      acc47(55)=Qspval4k2*acc47(19)
      acc47(55)=acc47(2)+acc47(55)
      acc47(55)=Qspvak1k5*acc47(55)
      acc47(47)=acc47(48)+acc47(47)+acc47(55)+acc47(54)+acc47(53)+acc47(49)+acc&
      &47(52)+acc47(51)+acc47(28)+acc47(50)
      acc47(47)=Qspk2*acc47(47)
      acc47(48)=Qspvak5k2*acc47(32)
      acc47(49)=Qspvak1k2*acc47(5)
      acc47(48)=acc47(48)+acc47(49)
      acc47(48)=QspQ*acc47(48)
      acc47(49)=Qspvak5k2*acc47(33)
      acc47(50)=Qspvak1k2*acc47(10)
      acc47(51)=Qspval4k2*acc47(26)
      acc47(51)=acc47(3)+acc47(51)
      acc47(51)=Qspvak1k5*acc47(51)
      acc47(48)=acc47(48)+acc47(51)+acc47(50)+acc47(16)+acc47(49)
      acc47(48)=QspQ*acc47(48)
      acc47(49)=Qspvak2l3*acc47(1)
      acc47(50)=Qspvak2l3*acc47(43)
      acc47(50)=acc47(31)+acc47(50)
      acc47(50)=Qspval4k2*acc47(50)
      acc47(51)=Qspvak5k2*acc47(13)
      acc47(49)=acc47(51)+acc47(50)+acc47(8)+acc47(49)
      acc47(49)=Qspvak1k5*acc47(49)
      acc47(50)=Qspvak2l3*acc47(4)
      acc47(51)=Qspvak5k2*acc47(9)*Qspvak2k5
      acc47(50)=acc47(51)+acc47(7)+acc47(50)
      acc47(50)=Qspvak1k2*acc47(50)
      acc47(51)=Qspk5*acc47(17)
      acc47(52)=Qspvak2l3*acc47(45)
      acc47(53)=Qspk1*acc47(25)
      acc47(54)=Qspvak1l4*acc47(24)
      acc47(55)=Qspk5*acc47(37)
      acc47(55)=acc47(22)+acc47(55)
      acc47(55)=Qspval4k2*acc47(55)
      acc47(56)=Qspval3k5*acc47(36)
      acc47(57)=Qspval3k5*acc47(38)
      acc47(57)=acc47(6)+acc47(57)
      acc47(57)=Qspvak5k2*acc47(57)
      brack=acc47(12)+acc47(47)+acc47(48)+acc47(49)+acc47(50)+acc47(51)+acc47(5&
      &2)+acc47(53)+acc47(54)+acc47(55)+acc47(56)+acc47(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d47h4l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd47h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d47h4l1_qp
