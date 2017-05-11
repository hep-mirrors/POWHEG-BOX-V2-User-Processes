module     p0_gg_hhg_d29h3l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d29h3l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd29h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc29(57)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspl4
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak5l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak5k1
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspl4 = dotproduct(Q,l4)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      acc29(1)=abb29(10)
      acc29(2)=abb29(11)
      acc29(3)=abb29(12)
      acc29(4)=abb29(13)
      acc29(5)=abb29(14)
      acc29(6)=abb29(15)
      acc29(7)=abb29(16)
      acc29(8)=abb29(18)
      acc29(9)=abb29(19)
      acc29(10)=abb29(20)
      acc29(11)=abb29(21)
      acc29(12)=abb29(22)
      acc29(13)=abb29(23)
      acc29(14)=abb29(24)
      acc29(15)=abb29(25)
      acc29(16)=abb29(26)
      acc29(17)=abb29(27)
      acc29(18)=abb29(28)
      acc29(19)=abb29(29)
      acc29(20)=abb29(30)
      acc29(21)=abb29(31)
      acc29(22)=abb29(32)
      acc29(23)=abb29(33)
      acc29(24)=abb29(35)
      acc29(25)=abb29(36)
      acc29(26)=abb29(37)
      acc29(27)=abb29(38)
      acc29(28)=abb29(39)
      acc29(29)=abb29(40)
      acc29(30)=abb29(45)
      acc29(31)=abb29(48)
      acc29(32)=abb29(53)
      acc29(33)=abb29(56)
      acc29(34)=abb29(57)
      acc29(35)=abb29(59)
      acc29(36)=abb29(60)
      acc29(37)=abb29(62)
      acc29(38)=abb29(63)
      acc29(39)=abb29(65)
      acc29(40)=abb29(66)
      acc29(41)=abb29(67)
      acc29(42)=abb29(69)
      acc29(43)=Qspk2+Qspk5
      acc29(44)=acc29(11)*acc29(43)
      acc29(45)=-Qspl4*acc29(26)
      acc29(44)=acc29(45)+acc29(10)+acc29(44)
      acc29(44)=Qspk2*acc29(44)
      acc29(45)=acc29(27)*Qspval3k2
      acc29(46)=acc29(23)*Qspval4k2
      acc29(47)=acc29(19)*Qspval4k5
      acc29(48)=Qspvak2l4*acc29(22)
      acc29(49)=Qspvak5k2*acc29(14)
      acc29(50)=Qspvak5l4*acc29(28)
      acc29(51)=Qspl3*acc29(13)
      acc29(52)=Qspvak2l3*acc29(4)
      acc29(53)=Qspvak2k5*acc29(15)
      acc29(54)=Qspval3k5*acc29(24)
      acc29(55)=Qspvak5l3*acc29(29)
      acc29(56)=Qspk5*acc29(9)
      acc29(57)=-Qspk5*acc29(26)
      acc29(57)=acc29(16)+acc29(57)
      acc29(57)=Qspl4*acc29(57)
      acc29(43)=-acc29(12)*acc29(43)
      acc29(43)=acc29(2)+acc29(43)
      acc29(43)=QspQ*acc29(43)
      acc29(43)=acc29(43)+acc29(44)+acc29(57)+acc29(56)+acc29(55)+acc29(54)+acc&
      &29(53)+acc29(52)+acc29(51)+acc29(50)+acc29(49)+acc29(48)+acc29(1)+acc29(&
      &47)+acc29(45)+acc29(46)
      acc29(43)=Qspvak2k1*acc29(43)
      acc29(44)=-QspQ-Qspk1-Qspl3
      acc29(44)=acc29(7)*acc29(44)
      acc29(45)=Qspvak5k1*acc29(21)
      acc29(46)=-Qspvak2l3*acc29(33)
      acc29(47)=Qspvak2k5*acc29(42)
      acc29(48)=Qspval3k5*acc29(6)
      acc29(49)=Qspvak5l3*acc29(40)
      acc29(50)=-Qspl4*acc29(34)
      acc29(51)=Qspk2*acc29(18)
      acc29(44)=acc29(51)+acc29(50)+acc29(49)+acc29(48)+acc29(47)+acc29(46)+acc&
      &29(17)+acc29(45)+acc29(44)
      acc29(44)=QspQ*acc29(44)
      acc29(45)=Qspvak2l4*acc29(36)
      acc29(46)=Qspvak5k1*acc29(5)
      acc29(47)=Qspvak5k2*acc29(20)
      acc29(48)=Qspvak5l4*acc29(38)
      acc29(49)=Qspl3*acc29(3)
      acc29(50)=Qspvak2l3*acc29(25)
      acc29(51)=Qspvak2k5*acc29(41)
      acc29(52)=Qspval3k5*acc29(35)
      acc29(53)=Qspvak5l3*acc29(39)
      acc29(54)=Qspk1*acc29(30)
      acc29(55)=-Qspk1*acc29(34)
      acc29(55)=acc29(32)+acc29(55)
      acc29(55)=Qspl4*acc29(55)
      acc29(56)=Qspk1*acc29(37)
      acc29(56)=acc29(31)+acc29(56)
      acc29(56)=Qspk2*acc29(56)
      brack=acc29(8)+acc29(43)+acc29(44)+acc29(45)+acc29(46)+acc29(47)+acc29(48&
      &)+acc29(49)+acc29(50)+acc29(51)+acc29(52)+acc29(53)+acc29(54)+acc29(55)+&
      &acc29(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd29h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d29
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k5+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d29 = 0.0_ki
      d29 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d29, ki), aimag(d29), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d29h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd29h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d29
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d29 = 0.0_ki
      d29 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d29, ki), aimag(d29), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d29h3l1
