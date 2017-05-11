module     pb_gg_hh_d10h3l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity3d10h3l1.f90
   ! generator: buildfortran.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc10(48)
      complex(ki) :: QspQ
      complex(ki) :: Qspl3
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1l4
      QspQ = dotproduct(Q,Q)
      Qspl3 = dotproduct(Q,l3)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk1 = dotproduct(Q,k1)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      acc10(1)=abb10(7)
      acc10(2)=abb10(8)
      acc10(3)=abb10(9)
      acc10(4)=abb10(10)
      acc10(5)=abb10(12)
      acc10(6)=abb10(13)
      acc10(7)=abb10(14)
      acc10(8)=abb10(15)
      acc10(9)=abb10(17)
      acc10(10)=abb10(18)
      acc10(11)=abb10(20)
      acc10(12)=abb10(23)
      acc10(13)=abb10(24)
      acc10(14)=abb10(25)
      acc10(15)=abb10(26)
      acc10(16)=abb10(27)
      acc10(17)=abb10(28)
      acc10(18)=abb10(29)
      acc10(19)=abb10(31)
      acc10(20)=abb10(32)
      acc10(21)=abb10(33)
      acc10(22)=abb10(34)
      acc10(23)=abb10(35)
      acc10(24)=abb10(36)
      acc10(25)=abb10(37)
      acc10(26)=abb10(38)
      acc10(27)=abb10(39)
      acc10(28)=abb10(40)
      acc10(29)=abb10(42)
      acc10(30)=abb10(43)
      acc10(31)=abb10(44)
      acc10(32)=abb10(45)
      acc10(33)=abb10(46)
      acc10(34)=abb10(47)
      acc10(35)=-QspQ+Qspl3-Qspl4
      acc10(35)=acc10(4)*acc10(35)
      acc10(36)=Qspvak2l4*acc10(29)
      acc10(37)=Qspval4k1*acc10(21)
      acc10(38)=Qspk2*acc10(13)
      acc10(39)=Qspvak2l3*acc10(32)
      acc10(40)=Qspval3k1*acc10(26)
      acc10(41)=Qspvak1k2*acc10(6)
      acc10(42)=Qspk1*acc10(5)
      acc10(35)=acc10(42)+acc10(41)+acc10(40)+acc10(39)+acc10(38)+acc10(37)+acc&
      &10(7)+acc10(36)+acc10(35)
      acc10(35)=QspQ*acc10(35)
      acc10(36)=acc10(34)*Qspval3l4
      acc10(37)=acc10(33)*Qspval4l3
      acc10(38)=Qspval4k2*acc10(14)
      acc10(39)=-Qspvak1l3*acc10(30)
      acc10(40)=Qspval3k2*acc10(9)
      acc10(41)=Qspvak1k2*acc10(1)
      acc10(36)=acc10(41)+acc10(40)+acc10(39)+acc10(38)+acc10(12)+acc10(36)+acc&
      &10(37)
      acc10(36)=Qspvak2k1*acc10(36)
      acc10(37)=Qspk2*acc10(15)
      acc10(38)=Qspvak1l3*acc10(27)
      acc10(39)=-Qspvak2l3*acc10(30)
      acc10(40)=Qspval3k1*acc10(25)
      acc10(41)=Qspval3k2*acc10(22)
      acc10(42)=Qspvak1k2*acc10(3)
      acc10(37)=acc10(42)+acc10(41)+acc10(40)+acc10(39)+acc10(38)+acc10(8)+acc1&
      &0(37)
      acc10(37)=Qspk1*acc10(37)
      acc10(38)=acc10(23)*Qspvak1l4
      acc10(39)=Qspl4*acc10(16)
      acc10(40)=Qspvak2l4*acc10(28)
      acc10(41)=Qspval4k1*acc10(18)
      acc10(42)=Qspval4k2*acc10(20)
      acc10(43)=Qspk2*acc10(17)
      acc10(44)=Qspvak1l3*acc10(11)
      acc10(45)=Qspvak2l3*acc10(31)
      acc10(46)=Qspval3k1*acc10(24)
      acc10(47)=Qspval3k2*acc10(19)
      acc10(48)=Qspvak1k2*acc10(2)
      brack=acc10(10)+acc10(35)+acc10(36)+acc10(37)+acc10(38)+acc10(39)+acc10(4&
      &0)+acc10(41)+acc10(42)+acc10(43)+acc10(44)+acc10(45)+acc10(46)+acc10(47)&
      &+acc10(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d10
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d10 = 0.0_ki
      d10 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d10, ki), aimag(d10), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="pb_gg_hh_d10h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d10
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d10 = 0.0_ki
      d10 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d10, ki), aimag(d10), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module pb_gg_hh_d10h3l1
