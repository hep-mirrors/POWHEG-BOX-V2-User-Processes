module     p0_dbaru_epnebbbarg_d17h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d17h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(44)
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      acc17(1)=abb17(10)
      acc17(2)=abb17(11)
      acc17(3)=abb17(12)
      acc17(4)=abb17(13)
      acc17(5)=abb17(14)
      acc17(6)=abb17(15)
      acc17(7)=abb17(16)
      acc17(8)=abb17(17)
      acc17(9)=abb17(18)
      acc17(10)=abb17(19)
      acc17(11)=abb17(20)
      acc17(12)=abb17(21)
      acc17(13)=abb17(22)
      acc17(14)=abb17(23)
      acc17(15)=abb17(24)
      acc17(16)=abb17(26)
      acc17(17)=abb17(27)
      acc17(18)=abb17(31)
      acc17(19)=abb17(34)
      acc17(20)=abb17(36)
      acc17(21)=abb17(37)
      acc17(22)=abb17(38)
      acc17(23)=abb17(39)
      acc17(24)=abb17(41)
      acc17(25)=abb17(43)
      acc17(26)=abb17(44)
      acc17(27)=abb17(48)
      acc17(28)=abb17(49)
      acc17(29)=abb17(50)
      acc17(30)=abb17(51)
      acc17(31)=abb17(64)
      acc17(32)=abb17(70)
      acc17(33)=abb17(71)
      acc17(34)=abb17(73)
      acc17(35)=acc17(10)*Qspvak2k7
      acc17(36)=acc17(14)*Qspvak1k7
      acc17(37)=acc17(26)*Qspk7
      acc17(35)=acc17(37)+acc17(17)+acc17(36)+acc17(35)
      acc17(35)=acc17(35)*Qspval5k2
      acc17(36)=acc17(5)*Qspvak2k7
      acc17(37)=acc17(13)*Qspvak1k7
      acc17(38)=acc17(29)*Qspk7
      acc17(36)=acc17(38)+acc17(19)+acc17(37)+acc17(36)
      acc17(36)=acc17(36)*Qspval6k2
      acc17(37)=acc17(3)*Qspvak2k7
      acc17(38)=acc17(11)*Qspvak1k7
      acc17(39)=acc17(21)*Qspk7
      acc17(35)=acc17(39)+acc17(38)+acc17(6)+acc17(37)+acc17(36)+acc17(35)
      acc17(35)=Qspvak4k3*acc17(35)
      acc17(36)=acc17(2)*Qspvak2k7
      acc17(37)=acc17(20)*Qspk7
      acc17(38)=acc17(22)*Qspvak4k3
      acc17(39)=acc17(27)*Qspval5k2
      acc17(40)=acc17(34)*Qspval6k2
      acc17(36)=acc17(40)+acc17(39)+acc17(38)+acc17(37)+acc17(12)+acc17(36)
      acc17(36)=QspQ*acc17(36)
      acc17(37)=-acc17(8)*Qspvak2k7
      acc17(38)=acc17(30)*Qspval5k2
      acc17(39)=-acc17(32)*Qspk7
      acc17(40)=acc17(33)*Qspval6k2
      acc17(37)=acc17(40)+acc17(39)-acc17(31)+acc17(37)+acc17(38)
      acc17(38)=Qspk3+Qspk4
      acc17(37)=acc17(38)*acc17(37)
      acc17(38)=Qspk1+Qspl5+Qspl6
      acc17(39)=acc17(23)*Qspvak4k3
      acc17(39)=acc17(39)+acc17(25)
      acc17(38)=acc17(39)*acc17(38)
      acc17(39)=acc17(4)*Qspval6k2
      acc17(40)=acc17(9)*Qspval5k2
      acc17(39)=acc17(15)+acc17(40)+acc17(39)
      acc17(39)=Qspvak1k3*acc17(39)
      acc17(40)=acc17(18)*Qspvak4k3
      acc17(40)=acc17(40)+acc17(7)
      acc17(40)=Qspk2*acc17(40)
      acc17(41)=acc17(1)*Qspvak2k7
      acc17(42)=acc17(16)*Qspk7
      acc17(43)=acc17(24)*Qspval6k2
      acc17(44)=acc17(28)*Qspval5k2
      brack=acc17(35)+acc17(36)+acc17(37)+acc17(38)+acc17(39)+acc17(40)+acc17(4&
      &1)+acc17(42)+acc17(43)+acc17(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d17h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d17h0l1
