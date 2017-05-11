module     p0_gg_hhg_d47h1l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d47h1l1.f90
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
      use p0_gg_hhg_abbrevd47h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc47(53)
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspl4
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k5
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspl3 = dotproduct(Q,l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspl4 = dotproduct(Q,l4)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc47(1)=abb47(10)
      acc47(2)=abb47(11)
      acc47(3)=abb47(12)
      acc47(4)=abb47(13)
      acc47(5)=abb47(14)
      acc47(6)=abb47(15)
      acc47(7)=abb47(16)
      acc47(8)=abb47(18)
      acc47(9)=abb47(19)
      acc47(10)=abb47(20)
      acc47(11)=abb47(21)
      acc47(12)=abb47(22)
      acc47(13)=abb47(23)
      acc47(14)=abb47(24)
      acc47(15)=abb47(25)
      acc47(16)=abb47(26)
      acc47(17)=abb47(27)
      acc47(18)=abb47(29)
      acc47(19)=abb47(30)
      acc47(20)=abb47(31)
      acc47(21)=abb47(32)
      acc47(22)=abb47(33)
      acc47(23)=abb47(34)
      acc47(24)=abb47(35)
      acc47(25)=abb47(36)
      acc47(26)=abb47(37)
      acc47(27)=abb47(38)
      acc47(28)=abb47(41)
      acc47(29)=abb47(42)
      acc47(30)=abb47(43)
      acc47(31)=abb47(44)
      acc47(32)=abb47(45)
      acc47(33)=abb47(46)
      acc47(34)=abb47(49)
      acc47(35)=abb47(50)
      acc47(36)=abb47(51)
      acc47(37)=abb47(52)
      acc47(38)=abb47(53)
      acc47(39)=abb47(56)
      acc47(40)=abb47(57)
      acc47(41)=abb47(59)
      acc47(42)=abb47(60)
      acc47(43)=abb47(61)
      acc47(44)=acc47(28)*Qspval4k5
      acc47(45)=Qspl3*acc47(14)
      acc47(46)=Qspval3k5*acc47(17)
      acc47(47)=-acc47(30)*Qspvak1k5
      acc47(48)=Qspl4*acc47(7)
      acc47(49)=Qspk2*acc47(19)
      acc47(50)=Qspvak2l4*acc47(4)
      acc47(51)=QspQ*acc47(36)
      acc47(52)=Qspvak2l3*acc47(11)
      acc47(53)=Qspvak2k1*acc47(8)
      acc47(44)=acc47(53)+acc47(52)+acc47(51)+acc47(50)+acc47(49)+acc47(48)+acc&
      &47(47)+acc47(46)+acc47(45)+acc47(44)+acc47(1)
      acc47(44)=Qspvak2k1*acc47(44)
      acc47(45)=acc47(31)*Qspval3k1
      acc47(46)=Qspk1*acc47(29)
      acc47(47)=Qspvak2l4*acc47(33)
      acc47(48)=-QspQ*acc47(30)
      acc47(49)=Qspvak2k1*acc47(2)
      acc47(45)=acc47(49)+acc47(48)+acc47(47)+acc47(46)+acc47(45)+acc47(16)
      acc47(45)=Qspvak2k5*acc47(45)
      acc47(46)=Qspk1*acc47(42)
      acc47(47)=QspQ*acc47(43)
      acc47(46)=acc47(47)+acc47(41)+acc47(46)
      acc47(46)=Qspvak2l3*acc47(46)
      acc47(47)=Qspl3*acc47(21)
      acc47(48)=Qspk1*acc47(25)
      acc47(49)=Qspk2*acc47(23)
      acc47(50)=Qspk2*acc47(22)
      acc47(50)=acc47(32)+acc47(50)
      acc47(50)=Qspvak2l4*acc47(50)
      acc47(51)=QspQ*acc47(18)
      acc47(44)=acc47(45)+acc47(44)+acc47(46)+acc47(51)+acc47(50)+acc47(49)+acc&
      &47(48)+acc47(15)+acc47(47)
      acc47(44)=Qspvak2k5*acc47(44)
      acc47(45)=Qspvak1k5*acc47(5)
      acc47(46)=Qspval3k5*acc47(3)
      acc47(47)=Qspl4*acc47(20)
      acc47(48)=Qspk1*acc47(24)
      acc47(49)=Qspk2*acc47(37)
      acc47(50)=Qspvak2l4*acc47(10)
      acc47(51)=QspQ*acc47(27)
      acc47(52)=Qspvak2l3*acc47(26)
      acc47(53)=Qspvak2k1*acc47(13)
      acc47(45)=acc47(53)+acc47(52)+acc47(51)+acc47(50)+acc47(49)+acc47(48)+acc&
      &47(47)+acc47(46)+acc47(6)+acc47(45)
      acc47(45)=Qspvak2k1*acc47(45)
      acc47(46)=Qspl4*acc47(38)
      acc47(47)=Qspk1*acc47(40)
      acc47(48)=Qspk2*acc47(39)
      acc47(49)=QspQ*acc47(34)
      acc47(46)=acc47(49)+acc47(48)+acc47(47)+acc47(35)+acc47(46)
      acc47(46)=Qspvak2l3*acc47(46)
      acc47(47)=QspQ*acc47(9)
      brack=acc47(12)+acc47(44)+acc47(45)+acc47(46)+acc47(47)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd47h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d47h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd47h1
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
end module p0_gg_hhg_d47h1l1
