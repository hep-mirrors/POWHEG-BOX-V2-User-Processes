module     p0_gg_hhg_d23h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d23h4l1.f90
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
      use p0_gg_hhg_abbrevd23h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(50)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspl4
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k5
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspl4 = dotproduct(Q,l4)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspl3 = dotproduct(Q,l3)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc23(1)=abb23(10)
      acc23(2)=abb23(11)
      acc23(3)=abb23(12)
      acc23(4)=abb23(13)
      acc23(5)=abb23(14)
      acc23(6)=abb23(15)
      acc23(7)=abb23(17)
      acc23(8)=abb23(18)
      acc23(9)=abb23(19)
      acc23(10)=abb23(20)
      acc23(11)=abb23(21)
      acc23(12)=abb23(22)
      acc23(13)=abb23(23)
      acc23(14)=abb23(24)
      acc23(15)=abb23(25)
      acc23(16)=abb23(26)
      acc23(17)=abb23(27)
      acc23(18)=abb23(28)
      acc23(19)=abb23(29)
      acc23(20)=abb23(30)
      acc23(21)=abb23(31)
      acc23(22)=abb23(32)
      acc23(23)=abb23(33)
      acc23(24)=abb23(34)
      acc23(25)=abb23(35)
      acc23(26)=abb23(36)
      acc23(27)=abb23(37)
      acc23(28)=abb23(38)
      acc23(29)=abb23(39)
      acc23(30)=abb23(42)
      acc23(31)=abb23(43)
      acc23(32)=abb23(44)
      acc23(33)=abb23(48)
      acc23(34)=abb23(49)
      acc23(35)=abb23(50)
      acc23(36)=abb23(51)
      acc23(37)=abb23(54)
      acc23(38)=abb23(55)
      acc23(39)=Qspvak1k2*acc23(28)
      acc23(40)=Qspvak5k2*acc23(38)
      acc23(39)=acc23(40)+acc23(34)+acc23(39)
      acc23(39)=Qspl4*acc23(39)
      acc23(40)=Qspvak1k2*acc23(29)
      acc23(41)=Qspvak5k2*acc23(20)
      acc23(40)=acc23(41)+acc23(36)+acc23(40)
      acc23(40)=Qspk2*acc23(40)
      acc23(41)=Qspvak1k2*acc23(1)
      acc23(42)=Qspvak5k2*acc23(5)
      acc23(41)=acc23(42)+acc23(32)+acc23(41)
      acc23(41)=QspQ*acc23(41)
      acc23(42)=acc23(17)*Qspvak5l4
      acc23(43)=acc23(14)*Qspvak1l4
      acc23(44)=acc23(9)*Qspval4k2
      acc23(45)=Qspl3*acc23(35)
      acc23(46)=Qspvak1l3*acc23(12)
      acc23(47)=Qspval3k2*acc23(2)
      acc23(48)=Qspvak5l3*acc23(37)
      acc23(49)=Qspvak1k2*acc23(7)
      acc23(50)=Qspvak5k2*acc23(21)
      acc23(39)=acc23(41)+acc23(40)+acc23(39)+acc23(50)+acc23(49)+acc23(48)+acc&
      &23(47)+acc23(46)+acc23(45)+acc23(44)+acc23(13)+acc23(42)+acc23(43)
      acc23(39)=Qspvak2k5*acc23(39)
      acc23(40)=QspQ+Qspl3
      acc23(40)=acc23(19)*acc23(40)
      acc23(41)=Qspl4*acc23(27)
      acc23(42)=Qspk5*acc23(16)
      acc23(43)=Qspvak1k5*acc23(3)
      acc23(44)=-Qspvak1l3*acc23(15)
      acc23(45)=Qspval3k2*acc23(18)
      acc23(46)=-Qspvak5l3*acc23(30)
      acc23(47)=Qspk2*acc23(26)
      acc23(40)=acc23(47)+acc23(41)+acc23(46)+acc23(45)+acc23(44)+acc23(43)+acc&
      &23(4)+acc23(42)+acc23(40)
      acc23(40)=QspQ*acc23(40)
      acc23(42)=Qspk2*acc23(33)
      acc23(41)=acc23(42)+acc23(8)+acc23(41)
      acc23(41)=Qspk2*acc23(41)
      acc23(42)=Qspk5*acc23(25)
      acc23(43)=Qspvak1k5*acc23(10)
      acc23(44)=Qspl3*acc23(23)
      acc23(45)=Qspvak1l3*acc23(24)
      acc23(46)=Qspval3k2*acc23(6)
      acc23(47)=Qspvak5l3*acc23(31)
      acc23(48)=Qspl4*acc23(22)
      brack=acc23(11)+acc23(39)+acc23(40)+acc23(41)+acc23(42)+acc23(43)+acc23(4&
      &4)+acc23(45)+acc23(46)+acc23(47)+acc23(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd23h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d23h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd23h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d23h4l1
