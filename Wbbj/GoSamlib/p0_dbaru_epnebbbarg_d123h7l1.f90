module     p0_dbaru_epnebbbarg_d123h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d123h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd123h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc123(33)
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      acc123(1)=abb123(10)
      acc123(2)=abb123(11)
      acc123(3)=abb123(12)
      acc123(4)=abb123(13)
      acc123(5)=abb123(14)
      acc123(6)=abb123(15)
      acc123(7)=abb123(16)
      acc123(8)=abb123(17)
      acc123(9)=abb123(18)
      acc123(10)=abb123(19)
      acc123(11)=abb123(20)
      acc123(12)=abb123(21)
      acc123(13)=abb123(22)
      acc123(14)=abb123(23)
      acc123(15)=abb123(24)
      acc123(16)=abb123(25)
      acc123(17)=abb123(26)
      acc123(18)=abb123(27)
      acc123(19)=abb123(29)
      acc123(20)=abb123(32)
      acc123(21)=abb123(35)
      acc123(22)=abb123(42)
      acc123(23)=acc123(1)*Qspk2
      acc123(24)=acc123(7)*Qspval5k2
      acc123(25)=acc123(8)*Qspval6k2
      acc123(26)=acc123(12)*Qspvak1k2
      acc123(23)=acc123(26)+acc123(25)+acc123(24)+acc123(5)+acc123(23)
      acc123(23)=acc123(23)*Qspvak4k3
      acc123(24)=acc123(4)*Qspvak4k2
      acc123(25)=acc123(11)*Qspvak1k2
      acc123(26)=acc123(16)*Qspval5k2
      acc123(27)=acc123(19)*QspQ
      acc123(28)=acc123(21)*Qspk2
      acc123(29)=acc123(22)*Qspval6k2
      acc123(30)=Qspval6k3*acc123(15)
      acc123(31)=Qspval5k3*acc123(6)
      acc123(32)=Qspvak2k3*acc123(14)
      acc123(33)=Qspvak1k3*acc123(17)
      acc123(23)=acc123(29)+acc123(28)+acc123(26)+acc123(25)+acc123(23)+acc123(&
      &33)+acc123(32)+acc123(31)+acc123(30)+acc123(27)+acc123(24)+acc123(2)
      acc123(23)=Qspvak7k2*acc123(23)
      acc123(24)=acc123(13)*Qspvak4k2
      acc123(24)=acc123(24)+acc123(9)
      acc123(24)=Qspk2*acc123(24)
      acc123(25)=acc123(10)*Qspvak4k2
      acc123(25)=acc123(25)+acc123(3)
      acc123(25)=QspQ*acc123(25)
      acc123(26)=Qspk7*acc123(18)
      brack=acc123(20)+acc123(23)+acc123(24)+acc123(25)+acc123(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd123h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d123h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd123h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d123h7l1
