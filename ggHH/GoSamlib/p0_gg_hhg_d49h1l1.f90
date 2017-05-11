module     p0_gg_hhg_d49h1l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d49h1l1.f90
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
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc49(35)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk5 = dotproduct(Q,k5)
      Qspk2 = dotproduct(Q,k2)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc49(1)=abb49(8)
      acc49(2)=abb49(9)
      acc49(3)=abb49(10)
      acc49(4)=abb49(11)
      acc49(5)=abb49(12)
      acc49(6)=abb49(13)
      acc49(7)=abb49(14)
      acc49(8)=abb49(15)
      acc49(9)=abb49(16)
      acc49(10)=abb49(17)
      acc49(11)=abb49(18)
      acc49(12)=abb49(19)
      acc49(13)=abb49(20)
      acc49(14)=abb49(21)
      acc49(15)=abb49(22)
      acc49(16)=abb49(23)
      acc49(17)=abb49(24)
      acc49(18)=abb49(25)
      acc49(19)=abb49(26)
      acc49(20)=abb49(27)
      acc49(21)=abb49(28)
      acc49(22)=abb49(31)
      acc49(23)=abb49(33)
      acc49(24)=abb49(34)
      acc49(25)=abb49(35)
      acc49(26)=abb49(36)
      acc49(27)=acc49(18)*Qspvak1k5
      acc49(28)=acc49(1)*Qspval4k5
      acc49(29)=Qspk5*acc49(12)
      acc49(30)=Qspk2*acc49(4)
      acc49(31)=Qspl4*acc49(6)
      acc49(32)=Qspvak2l4*acc49(5)
      acc49(33)=QspQ*acc49(20)
      acc49(34)=Qspk1*acc49(13)
      acc49(35)=Qspvak2k1*acc49(2)
      acc49(27)=acc49(35)+acc49(34)+acc49(33)+acc49(32)+acc49(31)+acc49(30)+acc&
      &49(29)+acc49(28)+acc49(27)+acc49(8)
      acc49(27)=Qspvak2k1*acc49(27)
      acc49(28)=Qspk1-Qspl4
      acc49(28)=acc49(16)*acc49(28)
      acc49(29)=Qspk2*acc49(10)
      acc49(30)=QspQ*acc49(9)
      acc49(28)=acc49(30)+acc49(3)+acc49(29)+acc49(28)
      acc49(28)=Qspvak2k1*acc49(28)
      acc49(29)=QspQ*acc49(11)
      acc49(30)=Qspk1*acc49(23)
      acc49(28)=acc49(28)+acc49(30)+acc49(22)+acc49(29)
      acc49(28)=Qspvak2k5*acc49(28)
      acc49(29)=Qspk5*acc49(17)
      acc49(30)=Qspk2*acc49(19)
      acc49(31)=-Qspl4*acc49(15)
      acc49(32)=Qspvak2l4*acc49(26)
      acc49(33)=-Qspvak2l4*acc49(25)
      acc49(33)=acc49(7)+acc49(33)
      acc49(33)=QspQ*acc49(33)
      acc49(34)=Qspvak2l4*acc49(24)
      acc49(34)=acc49(21)+acc49(34)
      acc49(34)=Qspk1*acc49(34)
      acc49(27)=acc49(28)+acc49(27)+acc49(34)+acc49(33)+acc49(32)+acc49(31)+acc&
      &49(30)+acc49(14)+acc49(29)
      brack=Qspvak2k5*acc49(27)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d49h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d49h1l1
