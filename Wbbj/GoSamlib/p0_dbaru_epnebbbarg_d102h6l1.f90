module     p0_dbaru_epnebbbarg_d102h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d102h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd102h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc102(50)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspval6k4
      complex(ki) :: Qspval5k4
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak1k4
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspval6k4 = dotproduct(Q,spval6k4)
      Qspval5k4 = dotproduct(Q,spval5k4)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      acc102(1)=abb102(10)
      acc102(2)=abb102(11)
      acc102(3)=abb102(12)
      acc102(4)=abb102(13)
      acc102(5)=abb102(14)
      acc102(6)=abb102(16)
      acc102(7)=abb102(17)
      acc102(8)=abb102(18)
      acc102(9)=abb102(19)
      acc102(10)=abb102(20)
      acc102(11)=abb102(21)
      acc102(12)=abb102(22)
      acc102(13)=abb102(23)
      acc102(14)=abb102(24)
      acc102(15)=abb102(25)
      acc102(16)=abb102(26)
      acc102(17)=abb102(27)
      acc102(18)=abb102(28)
      acc102(19)=abb102(29)
      acc102(20)=abb102(30)
      acc102(21)=abb102(32)
      acc102(22)=abb102(33)
      acc102(23)=abb102(34)
      acc102(24)=abb102(35)
      acc102(25)=abb102(36)
      acc102(26)=abb102(41)
      acc102(27)=abb102(43)
      acc102(28)=abb102(44)
      acc102(29)=abb102(45)
      acc102(30)=abb102(46)
      acc102(31)=abb102(47)
      acc102(32)=abb102(48)
      acc102(33)=abb102(51)
      acc102(34)=abb102(53)
      acc102(35)=abb102(54)
      acc102(36)=abb102(57)
      acc102(37)=Qspk3+Qspk4
      acc102(38)=QspQ-acc102(37)
      acc102(38)=acc102(10)*acc102(38)
      acc102(39)=acc102(8)*Qspvak2k3
      acc102(40)=acc102(15)*Qspvak1k3
      acc102(41)=acc102(27)*Qspval6k3
      acc102(42)=acc102(31)*Qspval5k3
      acc102(38)=acc102(38)+acc102(42)+acc102(41)+acc102(40)+acc102(39)
      acc102(38)=Qspvak7k2*acc102(38)
      acc102(39)=acc102(3)*Qspvak1k2
      acc102(40)=acc102(11)*Qspval6k2
      acc102(41)=acc102(23)*Qspval5k2
      acc102(42)=acc102(35)*Qspk2
      acc102(39)=acc102(42)+acc102(41)+acc102(12)+acc102(40)+acc102(39)
      acc102(39)=acc102(39)*Qspvak7k2
      acc102(40)=acc102(21)*Qspvak1k2
      acc102(41)=acc102(33)*Qspk2
      acc102(42)=acc102(34)*Qspval5k2
      acc102(43)=acc102(36)*Qspval6k2
      acc102(39)=acc102(43)+acc102(42)+acc102(41)+acc102(40)+acc102(39)
      acc102(39)=Qspvak4k3*acc102(39)
      acc102(40)=acc102(25)*Qspvak4k2
      acc102(41)=acc102(14)*Qspk2
      acc102(42)=-acc102(19)*Qspvak1k2
      acc102(43)=acc102(20)*Qspval5k2
      acc102(44)=-acc102(28)*Qspval6k2
      acc102(40)=acc102(44)+acc102(43)+acc102(42)+acc102(41)+acc102(40)
      acc102(37)=acc102(37)*acc102(40)
      acc102(40)=acc102(2)*Qspvak1k2
      acc102(41)=acc102(7)*Qspvak4k2
      acc102(42)=acc102(22)*Qspk2
      acc102(43)=acc102(29)*Qspval6k2
      acc102(44)=acc102(32)*Qspval5k2
      acc102(40)=acc102(44)+acc102(43)+acc102(42)+acc102(18)+acc102(41)+acc102(&
      &40)
      acc102(40)=QspQ*acc102(40)
      acc102(41)=acc102(1)*Qspvak4k3
      acc102(41)=acc102(24)+acc102(41)
      acc102(41)=Qspvak4k2*acc102(41)
      acc102(42)=-acc102(25)*Qspvak4k3
      acc102(42)=acc102(6)+acc102(42)
      acc102(42)=Qspvak3k2*acc102(42)
      acc102(43)=acc102(4)*Qspvak1k3
      acc102(44)=acc102(9)*Qspvak2k3
      acc102(45)=acc102(16)*Qspval6k3
      acc102(46)=acc102(17)*Qspval5k3
      acc102(47)=Qspval6k4*acc102(26)
      acc102(48)=Qspval5k4*acc102(30)
      acc102(49)=Qspvak2k4*acc102(5)
      acc102(50)=Qspvak1k4*acc102(13)
      brack=acc102(37)+acc102(38)+acc102(39)+acc102(40)+acc102(41)+acc102(42)+a&
      &cc102(43)+acc102(44)+acc102(45)+acc102(46)+acc102(47)+acc102(48)+acc102(&
      &49)+acc102(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd102h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d102
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d102 = 0.0_ki
      d102 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d102, ki), aimag(d102), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d102h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd102h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d102
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d102 = 0.0_ki
      d102 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d102, ki), aimag(d102), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d102h6l1
