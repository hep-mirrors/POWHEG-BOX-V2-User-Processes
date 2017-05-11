module     p0_gg_hhg_d21h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d21h4l1.f90
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
      use p0_gg_hhg_abbrevd21h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(50)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspl3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k5
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspl3 = dotproduct(Q,l3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc21(1)=abb21(10)
      acc21(2)=abb21(11)
      acc21(3)=abb21(12)
      acc21(4)=abb21(13)
      acc21(5)=abb21(14)
      acc21(6)=abb21(15)
      acc21(7)=abb21(17)
      acc21(8)=abb21(18)
      acc21(9)=abb21(19)
      acc21(10)=abb21(20)
      acc21(11)=abb21(21)
      acc21(12)=abb21(22)
      acc21(13)=abb21(23)
      acc21(14)=abb21(24)
      acc21(15)=abb21(25)
      acc21(16)=abb21(26)
      acc21(17)=abb21(27)
      acc21(18)=abb21(28)
      acc21(19)=abb21(29)
      acc21(20)=abb21(30)
      acc21(21)=abb21(31)
      acc21(22)=abb21(32)
      acc21(23)=abb21(33)
      acc21(24)=abb21(34)
      acc21(25)=abb21(35)
      acc21(26)=abb21(36)
      acc21(27)=abb21(37)
      acc21(28)=abb21(38)
      acc21(29)=abb21(39)
      acc21(30)=abb21(41)
      acc21(31)=abb21(42)
      acc21(32)=abb21(46)
      acc21(33)=abb21(48)
      acc21(34)=abb21(49)
      acc21(35)=abb21(50)
      acc21(36)=abb21(51)
      acc21(37)=abb21(54)
      acc21(38)=abb21(55)
      acc21(39)=Qspvak1k2*acc21(28)
      acc21(40)=Qspvak5k2*acc21(37)
      acc21(39)=acc21(40)+acc21(35)+acc21(39)
      acc21(39)=Qspl3*acc21(39)
      acc21(40)=Qspvak1k2*acc21(29)
      acc21(41)=Qspvak5k2*acc21(20)
      acc21(40)=acc21(41)+acc21(36)+acc21(40)
      acc21(40)=Qspk2*acc21(40)
      acc21(41)=Qspvak1k2*acc21(1)
      acc21(42)=Qspvak5k2*acc21(5)
      acc21(41)=acc21(42)+acc21(34)+acc21(41)
      acc21(41)=QspQ*acc21(41)
      acc21(42)=acc21(17)*Qspvak5l3
      acc21(43)=acc21(15)*Qspvak1l3
      acc21(44)=acc21(2)*Qspval3k2
      acc21(45)=Qspl4*acc21(32)
      acc21(46)=Qspvak1l4*acc21(26)
      acc21(47)=Qspval4k2*acc21(10)
      acc21(48)=Qspvak5l4*acc21(38)
      acc21(49)=Qspvak1k2*acc21(7)
      acc21(50)=Qspvak5k2*acc21(21)
      acc21(39)=acc21(41)+acc21(40)+acc21(39)+acc21(50)+acc21(49)+acc21(48)+acc&
      &21(47)+acc21(46)+acc21(45)+acc21(44)+acc21(13)+acc21(42)+acc21(43)
      acc21(39)=Qspvak2k5*acc21(39)
      acc21(40)=QspQ+Qspl4
      acc21(40)=acc21(19)*acc21(40)
      acc21(41)=Qspl3*acc21(27)
      acc21(42)=Qspk5*acc21(16)
      acc21(43)=Qspvak1k5*acc21(3)
      acc21(44)=-Qspvak1l4*acc21(12)
      acc21(45)=Qspval4k2*acc21(18)
      acc21(46)=-Qspvak5l4*acc21(30)
      acc21(47)=Qspk2*acc21(24)
      acc21(40)=acc21(47)+acc21(41)+acc21(46)+acc21(45)+acc21(44)+acc21(43)+acc&
      &21(4)+acc21(42)+acc21(40)
      acc21(40)=QspQ*acc21(40)
      acc21(42)=Qspk2*acc21(33)
      acc21(41)=acc21(42)+acc21(8)+acc21(41)
      acc21(41)=Qspk2*acc21(41)
      acc21(42)=Qspk5*acc21(25)
      acc21(43)=Qspvak1k5*acc21(9)
      acc21(44)=Qspl4*acc21(23)
      acc21(45)=Qspvak1l4*acc21(14)
      acc21(46)=Qspval4k2*acc21(6)
      acc21(47)=Qspvak5l4*acc21(31)
      acc21(48)=Qspl3*acc21(22)
      brack=acc21(11)+acc21(39)+acc21(40)+acc21(41)+acc21(42)+acc21(43)+acc21(4&
      &4)+acc21(45)+acc21(46)+acc21(47)+acc21(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd21h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d21h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd21h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d21h4l1
