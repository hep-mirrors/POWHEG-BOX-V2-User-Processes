module     p0_dbaru_epnebbbarg_d180h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d180h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd180h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc180(44)
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      acc180(1)=abb180(14)
      acc180(2)=abb180(15)
      acc180(3)=abb180(16)
      acc180(4)=abb180(17)
      acc180(5)=abb180(18)
      acc180(6)=abb180(19)
      acc180(7)=abb180(20)
      acc180(8)=abb180(21)
      acc180(9)=abb180(22)
      acc180(10)=abb180(23)
      acc180(11)=abb180(24)
      acc180(12)=abb180(25)
      acc180(13)=abb180(26)
      acc180(14)=abb180(27)
      acc180(15)=abb180(28)
      acc180(16)=abb180(29)
      acc180(17)=abb180(30)
      acc180(18)=abb180(31)
      acc180(19)=abb180(32)
      acc180(20)=abb180(33)
      acc180(21)=abb180(34)
      acc180(22)=abb180(36)
      acc180(23)=abb180(37)
      acc180(24)=abb180(38)
      acc180(25)=abb180(40)
      acc180(26)=abb180(41)
      acc180(27)=abb180(46)
      acc180(28)=abb180(48)
      acc180(29)=abb180(49)
      acc180(30)=abb180(51)
      acc180(31)=abb180(56)
      acc180(32)=abb180(57)
      acc180(33)=abb180(64)
      acc180(34)=acc180(10)*Qspvak2k7
      acc180(35)=acc180(27)*Qspval5k7
      acc180(36)=acc180(29)*Qspval5l6
      acc180(37)=acc180(31)*Qspk2
      acc180(38)=acc180(32)*Qspval6k2
      acc180(39)=acc180(33)*Qspval6k7
      acc180(34)=acc180(39)+acc180(38)+acc180(37)+acc180(36)+acc180(28)+acc180(&
      &35)+acc180(34)
      acc180(34)=Qspvak4k2*acc180(34)
      acc180(35)=acc180(2)*Qspval5k7
      acc180(36)=acc180(8)*Qspvak2k7
      acc180(37)=acc180(19)*Qspk2
      acc180(38)=acc180(22)*Qspval6k7
      acc180(39)=acc180(25)*Qspval6k2
      acc180(40)=acc180(26)*Qspval5l6
      acc180(35)=acc180(40)+acc180(39)+acc180(38)+acc180(37)+acc180(11)+acc180(&
      &36)+acc180(35)
      acc180(35)=Qspvak1k3*acc180(35)
      acc180(36)=acc180(4)*Qspval5k7
      acc180(37)=acc180(15)*Qspk2
      acc180(38)=acc180(16)*Qspval6k7
      acc180(39)=acc180(17)*Qspval5l6
      acc180(40)=acc180(18)*Qspval6k2
      acc180(41)=acc180(21)*Qspvak2k7
      acc180(36)=acc180(41)+acc180(40)+acc180(39)+acc180(38)+acc180(37)+acc180(&
      &6)+acc180(36)
      acc180(36)=Qspvak1k2*acc180(36)
      acc180(37)=acc180(9)*Qspvak1k3
      acc180(38)=-acc180(13)*Qspvak1k2
      acc180(39)=acc180(24)*Qspvak4k2
      acc180(37)=acc180(39)+acc180(38)-acc180(7)+acc180(37)
      acc180(38)=Qspl6+Qspk7
      acc180(37)=acc180(38)*acc180(37)
      acc180(38)=acc180(1)*Qspval6k7
      acc180(39)=acc180(3)*Qspvak2k7
      acc180(40)=acc180(23)*Qspk2
      acc180(41)=Qspval5k3*acc180(20)
      acc180(42)=Qspval5k2*acc180(12)
      acc180(43)=Qspl5*acc180(14)
      acc180(44)=QspQ*acc180(30)
      brack=acc180(5)+acc180(34)+acc180(35)+acc180(36)+acc180(37)+acc180(38)+ac&
      &c180(39)+acc180(40)+acc180(41)+acc180(42)+acc180(43)+acc180(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d180
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d180 = 0.0_ki
      d180 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d180, ki), aimag(d180), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d180h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d180
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d180 = 0.0_ki
      d180 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d180, ki), aimag(d180), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d180h0l1
