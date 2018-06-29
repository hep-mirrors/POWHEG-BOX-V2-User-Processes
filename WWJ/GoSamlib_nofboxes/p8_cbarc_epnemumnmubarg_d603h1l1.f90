module     p8_cbarc_epnemumnmubarg_d603h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d603h1l1.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc603(35)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc603(1)=abb603(6)
      acc603(2)=abb603(7)
      acc603(3)=abb603(8)
      acc603(4)=abb603(9)
      acc603(5)=abb603(10)
      acc603(6)=abb603(11)
      acc603(7)=abb603(12)
      acc603(8)=abb603(13)
      acc603(9)=abb603(14)
      acc603(10)=abb603(15)
      acc603(11)=abb603(16)
      acc603(12)=abb603(17)
      acc603(13)=abb603(18)
      acc603(14)=abb603(19)
      acc603(15)=abb603(20)
      acc603(16)=abb603(21)
      acc603(17)=abb603(22)
      acc603(18)=abb603(23)
      acc603(19)=abb603(24)
      acc603(20)=abb603(25)
      acc603(21)=abb603(26)
      acc603(22)=abb603(27)
      acc603(23)=abb603(29)
      acc603(24)=abb603(31)
      acc603(25)=abb603(33)
      acc603(26)=Qspvak1k2*acc603(2)
      acc603(27)=Qspvak5k2*acc603(1)
      acc603(26)=acc603(27)+acc603(17)+acc603(26)
      acc603(26)=Qspvak4k3*acc603(26)
      acc603(27)=acc603(24)*Qspvak5k3
      acc603(28)=acc603(15)*Qspvak1k3
      acc603(29)=Qspvak1k2*acc603(21)
      acc603(30)=Qspvak5k2*acc603(25)
      acc603(31)=Qspk4+Qspk3
      acc603(32)=-acc603(7)*acc603(31)
      acc603(33)=Qspvak4k2*acc603(4)
      acc603(34)=QspQ*acc603(5)
      acc603(35)=Qspk2*acc603(23)
      acc603(26)=acc603(35)+acc603(26)+acc603(34)+acc603(33)+acc603(32)+acc603(&
      &30)+acc603(29)+acc603(3)+acc603(27)+acc603(28)
      acc603(26)=Qspvak2k7*acc603(26)
      acc603(27)=Qspk2-acc603(31)
      acc603(27)=acc603(22)*acc603(27)
      acc603(28)=Qspvak4k2*acc603(20)
      acc603(29)=QspQ*acc603(8)
      acc603(30)=Qspvak4k3*acc603(14)
      acc603(27)=acc603(30)+acc603(29)+acc603(9)+acc603(28)+acc603(27)
      acc603(27)=Qspk2*acc603(27)
      acc603(28)=Qspk7*acc603(16)
      acc603(29)=QspQ*acc603(18)
      acc603(28)=acc603(29)+acc603(10)+acc603(28)
      acc603(28)=Qspvak4k3*acc603(28)
      acc603(29)=acc603(13)*Qspvak7k2
      acc603(30)=Qspk7*acc603(12)
      acc603(31)=Qspvak4k2*acc603(19)
      acc603(31)=acc603(6)+acc603(31)
      acc603(31)=QspQ*acc603(31)
      brack=acc603(11)+acc603(26)+acc603(27)+acc603(28)+acc603(29)+acc603(30)+a&
      &cc603(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd603h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d603
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d603 = 0.0_ki
      d603 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d603, ki), aimag(d603), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d603h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd603h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d603
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d603 = 0.0_ki
      d603 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d603, ki), aimag(d603), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p8_cbarc_epnemumnmubarg_d603h1l1
