module     p8_cbarc_epnemumnmubarg_d599h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d599h5l1.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc599(32)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk7
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk7 = dotproduct(Q,k7)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc599(1)=abb599(7)
      acc599(2)=abb599(8)
      acc599(3)=abb599(9)
      acc599(4)=abb599(10)
      acc599(5)=abb599(11)
      acc599(6)=abb599(12)
      acc599(7)=abb599(13)
      acc599(8)=abb599(14)
      acc599(9)=abb599(15)
      acc599(10)=abb599(16)
      acc599(11)=abb599(17)
      acc599(12)=abb599(18)
      acc599(13)=abb599(19)
      acc599(14)=abb599(20)
      acc599(15)=abb599(23)
      acc599(16)=abb599(26)
      acc599(17)=abb599(27)
      acc599(18)=abb599(28)
      acc599(19)=abb599(29)
      acc599(20)=abb599(30)
      acc599(21)=abb599(31)
      acc599(22)=abb599(32)
      acc599(23)=abb599(33)
      acc599(24)=-Qspk2+Qspk4+Qspk3
      acc599(25)=acc599(13)*acc599(24)
      acc599(26)=acc599(11)*Qspvak1k3
      acc599(27)=Qspvak1k2*acc599(12)
      acc599(28)=Qspvak4k2*acc599(7)
      acc599(29)=Qspvak4k3*acc599(23)
      acc599(25)=acc599(29)+acc599(28)+acc599(27)+acc599(26)+acc599(4)+acc599(2&
      &5)
      acc599(25)=Qspvak5k6*acc599(25)
      acc599(26)=Qspk7+Qspk5+Qspk6
      acc599(26)=acc599(17)*acc599(26)
      acc599(27)=acc599(18)*acc599(24)
      acc599(28)=acc599(6)*Qspvak1k6
      acc599(29)=-acc599(9)*Qspvak1k7
      acc599(30)=Qspvak4k2*acc599(2)
      acc599(31)=Qspvak4k3*acc599(20)
      acc599(32)=QspQ*acc599(16)
      acc599(25)=acc599(25)+acc599(32)+acc599(31)+acc599(30)+acc599(29)+acc599(&
      &28)+acc599(1)+acc599(27)+acc599(26)
      acc599(25)=Qspvak7k2*acc599(25)
      acc599(26)=-acc599(15)*acc599(24)
      acc599(27)=Qspvak1k2*acc599(9)
      acc599(28)=Qspvak4k2*acc599(10)
      acc599(29)=Qspvak4k3*acc599(19)
      acc599(26)=acc599(29)+acc599(28)+acc599(5)+acc599(27)+acc599(26)
      acc599(26)=QspQ*acc599(26)
      acc599(24)=-acc599(14)*acc599(24)
      acc599(27)=Qspvak1k2*acc599(3)
      acc599(28)=Qspvak4k2*acc599(21)
      acc599(29)=Qspvak4k3*acc599(22)
      acc599(24)=acc599(29)+acc599(28)+acc599(8)+acc599(27)+acc599(24)
      acc599(24)=Qspk7*acc599(24)
      brack=acc599(24)+acc599(25)+acc599(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d599
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d599 = 0.0_ki
      d599 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d599, ki), aimag(d599), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d599h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d599
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d599 = 0.0_ki
      d599 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d599, ki), aimag(d599), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p8_cbarc_epnemumnmubarg_d599h5l1
