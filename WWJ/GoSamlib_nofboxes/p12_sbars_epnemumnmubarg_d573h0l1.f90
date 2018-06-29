module     p12_sbars_epnemumnmubarg_d573h0l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity0d573h0l1.f90
   ! generator: buildfortran.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd573h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc573(20)
      complex(ki) :: Qspvak7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc573(1)=abb573(6)
      acc573(2)=abb573(7)
      acc573(3)=abb573(8)
      acc573(4)=abb573(9)
      acc573(5)=abb573(10)
      acc573(6)=abb573(11)
      acc573(7)=abb573(12)
      acc573(8)=abb573(13)
      acc573(9)=abb573(14)
      acc573(10)=abb573(15)
      acc573(11)=abb573(16)
      acc573(12)=abb573(17)
      acc573(13)=abb573(18)
      acc573(14)=abb573(19)
      acc573(15)=acc573(7)*Qspvak7k1
      acc573(16)=QspQ*acc573(5)
      acc573(17)=-Qspvak7k2*acc573(8)
      acc573(18)=Qspk1*acc573(11)
      acc573(19)=Qspk7*acc573(13)
      acc573(20)=Qspk2*acc573(14)
      acc573(15)=acc573(20)+acc573(19)+acc573(18)+acc573(17)+acc573(16)+acc573(&
      &12)+acc573(15)
      acc573(15)=Qspvak2k7*acc573(15)
      acc573(16)=QspQ*acc573(3)
      acc573(17)=Qspvak7k2*acc573(10)
      acc573(18)=Qspk1*acc573(1)
      acc573(19)=Qspk7*acc573(4)
      acc573(20)=Qspk2+Qspk1-Qspk7
      acc573(20)=acc573(6)*acc573(20)
      acc573(20)=acc573(9)+acc573(20)
      acc573(20)=Qspk2*acc573(20)
      brack=acc573(2)+acc573(15)+acc573(16)+acc573(17)+acc573(18)+acc573(19)+ac&
      &c573(20)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd573h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d573
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d573 = 0.0_ki
      d573 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d573, ki), aimag(d573), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d573h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd573h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d573
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d573 = 0.0_ki
      d573 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d573, ki), aimag(d573), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d573h0l1
