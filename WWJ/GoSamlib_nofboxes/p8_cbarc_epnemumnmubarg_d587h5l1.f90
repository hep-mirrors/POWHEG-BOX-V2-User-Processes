module     p8_cbarc_epnemumnmubarg_d587h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity5d587h5l1.f90
   ! generator: buildfortran.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc587(42)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k6
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      QspQ = dotproduct(Q,Q)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      acc587(1)=abb587(7)
      acc587(2)=abb587(8)
      acc587(3)=abb587(9)
      acc587(4)=abb587(10)
      acc587(5)=abb587(11)
      acc587(6)=abb587(12)
      acc587(7)=abb587(13)
      acc587(8)=abb587(14)
      acc587(9)=abb587(15)
      acc587(10)=abb587(16)
      acc587(11)=abb587(17)
      acc587(12)=abb587(18)
      acc587(13)=abb587(19)
      acc587(14)=abb587(20)
      acc587(15)=abb587(21)
      acc587(16)=abb587(23)
      acc587(17)=abb587(24)
      acc587(18)=abb587(26)
      acc587(19)=abb587(27)
      acc587(20)=abb587(28)
      acc587(21)=abb587(29)
      acc587(22)=abb587(30)
      acc587(23)=abb587(31)
      acc587(24)=abb587(32)
      acc587(25)=abb587(35)
      acc587(26)=abb587(36)
      acc587(27)=abb587(38)
      acc587(28)=abb587(39)
      acc587(29)=abb587(43)
      acc587(30)=abb587(44)
      acc587(31)=abb587(45)
      acc587(32)=-Qspk2+Qspk4+Qspk3
      acc587(33)=-acc587(20)*acc587(32)
      acc587(34)=acc587(14)*Qspvak1k3
      acc587(35)=Qspvak1k2*acc587(12)
      acc587(36)=Qspvak4k2*acc587(4)
      acc587(37)=Qspvak4k3*acc587(27)
      acc587(33)=acc587(37)+acc587(36)+acc587(35)+acc587(19)+acc587(34)+acc587(&
      &33)
      acc587(33)=Qspvak7k2*acc587(33)
      acc587(34)=acc587(21)*acc587(32)
      acc587(35)=Qspk6+Qspk5
      acc587(36)=Qspk7+acc587(35)
      acc587(36)=acc587(16)*acc587(36)
      acc587(37)=Qspvak1k2*acc587(15)
      acc587(38)=acc587(6)*Qspvak1k5
      acc587(39)=Qspvak1k6*acc587(3)
      acc587(40)=Qspvak4k2*acc587(2)
      acc587(41)=Qspvak4k3*acc587(26)
      acc587(42)=QspQ*acc587(25)
      acc587(33)=acc587(33)+acc587(42)+acc587(41)+acc587(40)+acc587(39)+acc587(&
      &38)+acc587(8)+acc587(37)+acc587(36)+acc587(34)
      acc587(33)=Qspvak5k6*acc587(33)
      acc587(34)=acc587(32)*acc587(18)
      acc587(36)=Qspvak1k6*acc587(9)
      acc587(37)=Qspvak4k2*acc587(10)
      acc587(38)=Qspvak4k3*acc587(29)
      acc587(34)=acc587(34)+acc587(36)+acc587(37)-acc587(38)-acc587(13)
      acc587(34)=-acc587(34)*acc587(35)
      acc587(35)=acc587(22)*acc587(32)
      acc587(36)=Qspvak1k6*acc587(6)
      acc587(37)=Qspvak4k2*acc587(17)
      acc587(38)=-Qspvak4k3*acc587(30)
      acc587(35)=acc587(38)+acc587(37)+acc587(36)+acc587(7)+acc587(35)
      acc587(35)=QspQ*acc587(35)
      acc587(32)=acc587(23)*acc587(32)
      acc587(36)=Qspk7*acc587(11)
      acc587(37)=Qspvak1k6*acc587(1)
      acc587(38)=Qspvak4k2*acc587(28)
      acc587(39)=Qspvak4k3*acc587(31)
      acc587(40)=Qspvak1k6*acc587(5)
      acc587(40)=acc587(24)+acc587(40)
      acc587(40)=Qspvak7k2*acc587(40)
      brack=acc587(32)+acc587(33)+acc587(34)+acc587(35)+acc587(36)+acc587(37)+a&
      &cc587(38)+acc587(39)+acc587(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd587h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d587
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d587 = 0.0_ki
      d587 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d587, ki), aimag(d587), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d587h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd587h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d587
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d587 = 0.0_ki
      d587 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d587, ki), aimag(d587), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p8_cbarc_epnemumnmubarg_d587h5l1
