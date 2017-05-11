module p0_gg_hhg_d63h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d63h1l1.f90
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
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc63(59)
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspval4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspl4
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k5
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspl4 = dotproduct(Q,l4)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
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
      acc63(21)=abb63(29)
      acc63(22)=abb63(30)
      acc63(23)=abb63(31)
      acc63(24)=abb63(32)
      acc63(25)=abb63(33)
      acc63(26)=abb63(34)
      acc63(27)=abb63(35)
      acc63(28)=abb63(37)
      acc63(29)=abb63(39)
      acc63(30)=abb63(41)
      acc63(31)=abb63(45)
      acc63(32)=abb63(48)
      acc63(33)=abb63(49)
      acc63(34)=abb63(52)
      acc63(35)=abb63(55)
      acc63(36)=abb63(57)
      acc63(37)=abb63(61)
      acc63(38)=abb63(62)
      acc63(39)=abb63(63)
      acc63(40)=abb63(67)
      acc63(41)=abb63(68)
      acc63(42)=abb63(69)
      acc63(43)=abb63(70)
      acc63(44)=abb63(71)
      acc63(45)=abb63(74)
      acc63(46)=abb63(79)
      acc63(47)=abb63(80)
      acc63(48)=abb63(82)
      acc63(49)=Qspvak5k1*acc63(48)
      acc63(50)=Qspval4k1*acc63(35)
      acc63(51)=QspQ*acc63(47)
      acc63(52)=Qspk2*acc63(41)
      acc63(53)=Qspl4*acc63(18)
      acc63(54)=Qspk5*acc63(36)
      acc63(55)=Qspvak2l4*acc63(38)
      acc63(56)=Qspvak2k1*acc63(2)
      acc63(57)=Qspvak2k5*acc63(20)
      acc63(49)=acc63(57)+acc63(56)+acc63(55)+acc63(54)+acc63(53)+acc63(52)+acc&
      &63(51)+acc63(50)+acc63(15)+acc63(49)
      acc63(49)=Qspvak2k5*acc63(49)
      acc63(50)=Qspk5-Qspk1
      acc63(51)=acc63(16)*acc63(50)
      acc63(52)=QspQ*acc63(27)
      acc63(53)=Qspk2*acc63(22)
      acc63(54)=Qspl4*acc63(29)
      acc63(55)=Qspvak2l4*acc63(12)
      acc63(51)=acc63(55)+acc63(54)+acc63(53)+acc63(52)+acc63(21)+acc63(51)
      acc63(51)=Qspvak2k1*acc63(51)
      acc63(52)=-Qspl4-acc63(50)
      acc63(52)=acc63(42)*acc63(52)
      acc63(53)=QspQ*acc63(10)
      acc63(54)=Qspk2*acc63(46)
      acc63(52)=acc63(54)+acc63(53)+acc63(34)+acc63(52)
      acc63(52)=Qspvak2l4*acc63(52)
      acc63(53)=Qspvak5k1*acc63(45)
      acc63(54)=Qspval4k1*acc63(1)
      acc63(55)=Qspk1*acc63(43)
      acc63(56)=QspQ*acc63(33)
      acc63(57)=Qspk2*acc63(40)
      acc63(58)=Qspl4*acc63(39)
      acc63(59)=Qspk5*acc63(37)
      acc63(49)=acc63(49)+acc63(51)+acc63(52)+acc63(59)+acc63(58)+acc63(57)+acc&
      &63(56)+acc63(55)+acc63(54)+acc63(32)+acc63(53)
      acc63(49)=Qspvak2k5*acc63(49)
      acc63(51)=acc63(19)*Qspvak1k5
      acc63(52)=Qspk1*acc63(6)
      acc63(53)=QspQ*acc63(7)
      acc63(54)=Qspk2*acc63(23)
      acc63(55)=Qspl4*acc63(8)
      acc63(56)=Qspk5*acc63(30)
      acc63(57)=Qspvak2l4*acc63(4)
      acc63(58)=Qspvak2k1*acc63(5)
      acc63(51)=acc63(58)+acc63(57)+acc63(56)+acc63(55)+acc63(54)+acc63(53)+acc&
      &63(52)+acc63(51)+acc63(13)
      acc63(51)=Qspvak2k1*acc63(51)
      acc63(52)=-acc63(24)*acc63(50)
      acc63(53)=QspQ*acc63(9)
      acc63(54)=Qspk2*acc63(25)
      acc63(55)=Qspl4*acc63(44)
      acc63(52)=acc63(55)+acc63(54)+acc63(53)+acc63(31)+acc63(52)
      acc63(52)=Qspvak2l4*acc63(52)
      acc63(50)=acc63(17)*acc63(50)
      acc63(53)=Qspval4k1*acc63(14)
      acc63(54)=QspQ*acc63(3)
      acc63(55)=Qspk2*acc63(26)
      acc63(56)=Qspl4*acc63(28)
      brack=acc63(11)+acc63(49)+acc63(50)+acc63(51)+acc63(52)+acc63(53)+acc63(5&
      &4)+acc63(55)+acc63(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d63h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h1_qp
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
end module p0_gg_hhg_d63h1l1_qp
