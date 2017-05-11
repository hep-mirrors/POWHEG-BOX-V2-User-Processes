module p0_gg_hhg_d57h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d57h1l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd57h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc57(59)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl3
      complex(ki) :: Qspl4
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k5
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk2 = dotproduct(Q,k2)
      Qspl3 = dotproduct(Q,l3)
      Qspl4 = dotproduct(Q,l4)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc57(1)=abb57(10)
      acc57(2)=abb57(11)
      acc57(3)=abb57(12)
      acc57(4)=abb57(13)
      acc57(5)=abb57(14)
      acc57(6)=abb57(15)
      acc57(7)=abb57(16)
      acc57(8)=abb57(17)
      acc57(9)=abb57(18)
      acc57(10)=abb57(19)
      acc57(11)=abb57(21)
      acc57(12)=abb57(22)
      acc57(13)=abb57(23)
      acc57(14)=abb57(24)
      acc57(15)=abb57(25)
      acc57(16)=abb57(26)
      acc57(17)=abb57(29)
      acc57(18)=abb57(30)
      acc57(19)=abb57(31)
      acc57(20)=abb57(32)
      acc57(21)=abb57(33)
      acc57(22)=abb57(35)
      acc57(23)=abb57(36)
      acc57(24)=abb57(37)
      acc57(25)=abb57(39)
      acc57(26)=abb57(40)
      acc57(27)=abb57(41)
      acc57(28)=abb57(44)
      acc57(29)=abb57(45)
      acc57(30)=abb57(48)
      acc57(31)=abb57(49)
      acc57(32)=abb57(53)
      acc57(33)=abb57(54)
      acc57(34)=abb57(55)
      acc57(35)=abb57(58)
      acc57(36)=abb57(59)
      acc57(37)=abb57(60)
      acc57(38)=abb57(61)
      acc57(39)=abb57(62)
      acc57(40)=abb57(63)
      acc57(41)=abb57(64)
      acc57(42)=abb57(65)
      acc57(43)=abb57(66)
      acc57(44)=abb57(68)
      acc57(45)=abb57(69)
      acc57(46)=abb57(71)
      acc57(47)=abb57(76)
      acc57(48)=abb57(78)
      acc57(49)=Qspvak2l4*acc57(10)
      acc57(50)=Qspval4k5*acc57(24)
      acc57(51)=Qspk2*acc57(19)
      acc57(52)=Qspl3*acc57(14)
      acc57(53)=Qspl4*acc57(8)
      acc57(54)=Qspval3k5*acc57(11)
      acc57(55)=Qspk1*acc57(22)
      acc57(56)=QspQ*acc57(12)
      acc57(57)=Qspvak2l3*acc57(3)
      acc57(49)=acc57(57)+acc57(56)+acc57(55)+acc57(54)+acc57(53)+acc57(52)+acc&
      &57(51)+acc57(50)+acc57(1)+acc57(49)
      acc57(49)=Qspvak2k1*acc57(49)
      acc57(50)=Qspk1*acc57(36)
      acc57(51)=QspQ*acc57(30)
      acc57(52)=Qspvak2k1*acc57(20)
      acc57(50)=acc57(52)+acc57(51)+acc57(40)+acc57(50)
      acc57(50)=Qspvak2k5*acc57(50)
      acc57(51)=Qspk1*acc57(45)
      acc57(52)=QspQ*acc57(42)
      acc57(51)=acc57(52)+acc57(23)+acc57(51)
      acc57(51)=Qspvak2l3*acc57(51)
      acc57(52)=Qspvak2l4*acc57(41)
      acc57(53)=Qspval4k5*acc57(13)
      acc57(54)=Qspk2*acc57(28)
      acc57(55)=Qspl3*acc57(26)
      acc57(56)=Qspl4*acc57(37)
      acc57(57)=-Qspval3k5*acc57(7)
      acc57(58)=Qspk1*acc57(38)
      acc57(59)=Qspvak2l4*acc57(43)
      acc57(59)=acc57(5)+acc57(59)
      acc57(59)=QspQ*acc57(59)
      acc57(49)=acc57(50)+acc57(49)+acc57(51)+acc57(59)+acc57(58)+acc57(57)+acc&
      &57(56)+acc57(55)+acc57(54)+acc57(53)+acc57(31)+acc57(52)
      acc57(49)=Qspvak2k5*acc57(49)
      acc57(50)=acc57(39)*Qspvak1k5
      acc57(51)=Qspk2*acc57(47)
      acc57(52)=Qspl3*acc57(46)
      acc57(53)=Qspl4*acc57(34)
      acc57(54)=Qspval3k5*acc57(21)
      acc57(55)=Qspk1*acc57(48)
      acc57(56)=QspQ*acc57(35)
      acc57(57)=Qspvak2l3*acc57(2)
      acc57(58)=Qspvak2k1*acc57(4)
      acc57(50)=acc57(58)+acc57(57)+acc57(56)+acc57(55)+acc57(54)+acc57(53)+acc&
      &57(52)+acc57(51)+acc57(50)+acc57(6)
      acc57(50)=Qspvak2k1*acc57(50)
      acc57(51)=Qspk1*acc57(44)
      acc57(52)=QspQ*acc57(33)
      acc57(51)=acc57(52)+acc57(32)+acc57(51)
      acc57(51)=Qspvak2l3*acc57(51)
      acc57(52)=Qspval4k5*acc57(17)
      acc57(53)=Qspk2*acc57(29)
      acc57(54)=Qspl3*acc57(27)
      acc57(55)=Qspl4*acc57(25)
      acc57(56)=Qspval3k5*acc57(18)
      acc57(57)=Qspk1*acc57(15)
      acc57(58)=QspQ*acc57(9)
      brack=acc57(16)+acc57(49)+acc57(50)+acc57(51)+acc57(52)+acc57(53)+acc57(5&
      &4)+acc57(55)+acc57(56)+acc57(57)+acc57(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd57h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d57
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d57 = 0.0_ki
      d57 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d57, ki), aimag(d57), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d57h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd57h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d57
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d57 = 0.0_ki
      d57 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d57, ki), aimag(d57), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d57h1l1_qp
