module     p0_dbaru_epnebbbarg_d296h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d296h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd296h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc296(26)
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc296(1)=abb296(10)
      acc296(2)=abb296(11)
      acc296(3)=abb296(12)
      acc296(4)=abb296(13)
      acc296(5)=abb296(14)
      acc296(6)=abb296(15)
      acc296(7)=abb296(16)
      acc296(8)=abb296(18)
      acc296(9)=abb296(19)
      acc296(10)=abb296(20)
      acc296(11)=abb296(24)
      acc296(12)=abb296(26)
      acc296(13)=abb296(27)
      acc296(14)=abb296(31)
      acc296(15)=abb296(33)
      acc296(16)=abb296(36)
      acc296(17)=abb296(38)
      acc296(18)=abb296(39)
      acc296(19)=abb296(44)
      acc296(20)=abb296(49)
      acc296(21)=acc296(1)*Qspval6k3
      acc296(22)=Qspval6k7*acc296(9)
      acc296(21)=acc296(22)+acc296(21)
      acc296(21)=acc296(21)*Qspvak1k2
      acc296(22)=acc296(16)*QspQ
      acc296(23)=acc296(18)*Qspval6k3
      acc296(24)=Qspval6l5*acc296(17)
      acc296(25)=Qspval6k1*acc296(5)
      acc296(26)=Qspl6*acc296(13)
      acc296(21)=acc296(23)+acc296(21)+acc296(26)+acc296(25)+acc296(24)+acc296(&
      &22)+acc296(7)
      acc296(21)=Qspvak7k2*acc296(21)
      acc296(22)=acc296(2)*Qspvak4k3
      acc296(22)=acc296(4)+acc296(22)
      acc296(22)=Qspvak7k2*acc296(22)
      acc296(23)=-Qspk7+Qspk2
      acc296(23)=acc296(6)*acc296(23)
      acc296(24)=acc296(9)*QspQ
      acc296(22)=acc296(10)+acc296(24)+acc296(23)+acc296(22)
      acc296(22)=acc296(22)*Qspvak1k2
      acc296(23)=acc296(8)*Qspvak4k3
      acc296(23)=acc296(23)+acc296(3)
      acc296(23)=acc296(23)*Qspvak7k2
      acc296(24)=acc296(11)*QspQ
      acc296(25)=acc296(12)*Qspk2
      acc296(26)=acc296(19)*Qspk7
      acc296(22)=acc296(26)+acc296(22)+acc296(23)+acc296(20)+acc296(25)+acc296(&
      &24)
      acc296(22)=Qspval6k2*acc296(22)
      acc296(23)=acc296(14)*QspQ
      acc296(24)=acc296(15)*Qspk2
      brack=acc296(21)+acc296(22)+acc296(23)+acc296(24)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d296h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d296h4l1
