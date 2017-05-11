module     p0_gg_hhg_d55h1l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d55h1l1.f90
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
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc55(59)
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
      acc55(1)=abb55(10)
      acc55(2)=abb55(11)
      acc55(3)=abb55(12)
      acc55(4)=abb55(13)
      acc55(5)=abb55(14)
      acc55(6)=abb55(15)
      acc55(7)=abb55(16)
      acc55(8)=abb55(17)
      acc55(9)=abb55(18)
      acc55(10)=abb55(19)
      acc55(11)=abb55(21)
      acc55(12)=abb55(22)
      acc55(13)=abb55(23)
      acc55(14)=abb55(24)
      acc55(15)=abb55(25)
      acc55(16)=abb55(26)
      acc55(17)=abb55(29)
      acc55(18)=abb55(30)
      acc55(19)=abb55(31)
      acc55(20)=abb55(32)
      acc55(21)=abb55(33)
      acc55(22)=abb55(35)
      acc55(23)=abb55(36)
      acc55(24)=abb55(37)
      acc55(25)=abb55(39)
      acc55(26)=abb55(40)
      acc55(27)=abb55(41)
      acc55(28)=abb55(44)
      acc55(29)=abb55(45)
      acc55(30)=abb55(48)
      acc55(31)=abb55(49)
      acc55(32)=abb55(53)
      acc55(33)=abb55(54)
      acc55(34)=abb55(55)
      acc55(35)=abb55(58)
      acc55(36)=abb55(59)
      acc55(37)=abb55(60)
      acc55(38)=abb55(61)
      acc55(39)=abb55(62)
      acc55(40)=abb55(63)
      acc55(41)=abb55(64)
      acc55(42)=abb55(65)
      acc55(43)=abb55(66)
      acc55(44)=abb55(68)
      acc55(45)=abb55(69)
      acc55(46)=abb55(71)
      acc55(47)=abb55(76)
      acc55(48)=abb55(78)
      acc55(49)=Qspvak2l4*acc55(10)
      acc55(50)=Qspval4k5*acc55(24)
      acc55(51)=Qspk2*acc55(19)
      acc55(52)=Qspl3*acc55(14)
      acc55(53)=Qspl4*acc55(8)
      acc55(54)=Qspval3k5*acc55(11)
      acc55(55)=Qspk1*acc55(22)
      acc55(56)=QspQ*acc55(12)
      acc55(57)=Qspvak2l3*acc55(3)
      acc55(49)=acc55(57)+acc55(56)+acc55(55)+acc55(54)+acc55(53)+acc55(52)+acc&
      &55(51)+acc55(50)+acc55(1)+acc55(49)
      acc55(49)=Qspvak2k1*acc55(49)
      acc55(50)=Qspk1*acc55(36)
      acc55(51)=QspQ*acc55(30)
      acc55(52)=Qspvak2k1*acc55(20)
      acc55(50)=acc55(52)+acc55(51)+acc55(40)+acc55(50)
      acc55(50)=Qspvak2k5*acc55(50)
      acc55(51)=Qspk1*acc55(45)
      acc55(52)=QspQ*acc55(42)
      acc55(51)=acc55(52)+acc55(23)+acc55(51)
      acc55(51)=Qspvak2l3*acc55(51)
      acc55(52)=Qspvak2l4*acc55(41)
      acc55(53)=Qspval4k5*acc55(13)
      acc55(54)=Qspk2*acc55(28)
      acc55(55)=Qspl3*acc55(26)
      acc55(56)=Qspl4*acc55(37)
      acc55(57)=-Qspval3k5*acc55(7)
      acc55(58)=Qspk1*acc55(38)
      acc55(59)=Qspvak2l4*acc55(43)
      acc55(59)=acc55(5)+acc55(59)
      acc55(59)=QspQ*acc55(59)
      acc55(49)=acc55(50)+acc55(49)+acc55(51)+acc55(59)+acc55(58)+acc55(57)+acc&
      &55(56)+acc55(55)+acc55(54)+acc55(53)+acc55(31)+acc55(52)
      acc55(49)=Qspvak2k5*acc55(49)
      acc55(50)=acc55(39)*Qspvak1k5
      acc55(51)=Qspk2*acc55(47)
      acc55(52)=Qspl3*acc55(46)
      acc55(53)=Qspl4*acc55(34)
      acc55(54)=Qspval3k5*acc55(21)
      acc55(55)=Qspk1*acc55(48)
      acc55(56)=QspQ*acc55(35)
      acc55(57)=Qspvak2l3*acc55(2)
      acc55(58)=Qspvak2k1*acc55(4)
      acc55(50)=acc55(58)+acc55(57)+acc55(56)+acc55(55)+acc55(54)+acc55(53)+acc&
      &55(52)+acc55(51)+acc55(50)+acc55(6)
      acc55(50)=Qspvak2k1*acc55(50)
      acc55(51)=Qspk1*acc55(44)
      acc55(52)=QspQ*acc55(33)
      acc55(51)=acc55(52)+acc55(32)+acc55(51)
      acc55(51)=Qspvak2l3*acc55(51)
      acc55(52)=Qspval4k5*acc55(17)
      acc55(53)=Qspk2*acc55(29)
      acc55(54)=Qspl3*acc55(27)
      acc55(55)=Qspl4*acc55(25)
      acc55(56)=Qspval3k5*acc55(18)
      acc55(57)=Qspk1*acc55(15)
      acc55(58)=QspQ*acc55(9)
      brack=acc55(16)+acc55(49)+acc55(50)+acc55(51)+acc55(52)+acc55(53)+acc55(5&
      &4)+acc55(55)+acc55(56)+acc55(57)+acc55(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd55h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d55
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d55 = 0.0_ki
      d55 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d55, ki), aimag(d55), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d55h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd55h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d55
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d55 = 0.0_ki
      d55 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d55, ki), aimag(d55), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d55h1l1
