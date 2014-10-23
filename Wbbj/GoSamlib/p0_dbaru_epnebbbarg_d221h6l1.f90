module     p0_dbaru_epnebbbarg_d221h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d221h6l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd221h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc221(25)
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      acc221(1)=abb221(15)
      acc221(2)=abb221(16)
      acc221(3)=abb221(17)
      acc221(4)=abb221(18)
      acc221(5)=abb221(19)
      acc221(6)=abb221(20)
      acc221(7)=abb221(21)
      acc221(8)=abb221(22)
      acc221(9)=abb221(23)
      acc221(10)=abb221(25)
      acc221(11)=abb221(31)
      acc221(12)=abb221(36)
      acc221(13)=abb221(44)
      acc221(14)=Qspvak7l6*acc221(9)
      acc221(15)=Qspvak7k3*acc221(10)
      acc221(16)=Qspvak7k2*acc221(6)
      acc221(17)=Qspval6k7*acc221(13)
      acc221(18)=Qspval6k3*acc221(12)
      acc221(19)=Qspval6k2*acc221(1)
      acc221(20)=Qspvak2l6*acc221(2)
      acc221(21)=Qspvak1l6*acc221(7)
      acc221(22)=Qspvak1k2*acc221(8)
      acc221(23)=Qspk7*acc221(11)
      acc221(24)=Qspl6*acc221(3)
      acc221(25)=Qspk2*acc221(4)
      brack=acc221(5)+acc221(14)+acc221(15)+acc221(16)+acc221(17)+acc221(18)+ac&
      &c221(19)+acc221(20)+acc221(21)+acc221(22)+acc221(23)+acc221(24)+acc221(2&
      &5)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd221h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d221
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d221 = 0.0_ki
      d221 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d221, ki), aimag(d221), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d221h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd221h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d221
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d221 = 0.0_ki
      d221 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d221, ki), aimag(d221), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d221h6l1
