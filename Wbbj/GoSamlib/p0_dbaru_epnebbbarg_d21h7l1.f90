module     p0_dbaru_epnebbbarg_d21h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d21h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd21h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(45)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      acc21(1)=abb21(12)
      acc21(2)=abb21(13)
      acc21(3)=abb21(14)
      acc21(4)=abb21(15)
      acc21(5)=abb21(16)
      acc21(6)=abb21(17)
      acc21(7)=abb21(18)
      acc21(8)=abb21(19)
      acc21(9)=abb21(20)
      acc21(10)=abb21(21)
      acc21(11)=abb21(22)
      acc21(12)=abb21(23)
      acc21(13)=abb21(25)
      acc21(14)=abb21(26)
      acc21(15)=abb21(27)
      acc21(16)=abb21(28)
      acc21(17)=abb21(29)
      acc21(18)=abb21(30)
      acc21(19)=abb21(31)
      acc21(20)=abb21(32)
      acc21(21)=abb21(33)
      acc21(22)=abb21(34)
      acc21(23)=abb21(35)
      acc21(24)=abb21(36)
      acc21(25)=abb21(38)
      acc21(26)=abb21(39)
      acc21(27)=abb21(43)
      acc21(28)=abb21(44)
      acc21(29)=abb21(46)
      acc21(30)=abb21(51)
      acc21(31)=abb21(56)
      acc21(32)=abb21(57)
      acc21(33)=abb21(141)
      acc21(34)=acc21(9)*Qspvak1k2
      acc21(35)=acc21(12)*Qspvak7k2
      acc21(36)=acc21(18)*Qspvak1l5
      acc21(37)=acc21(23)*Qspk2
      acc21(38)=acc21(27)*Qspvak4k3
      acc21(39)=acc21(28)*Qspvak4k2
      acc21(40)=acc21(29)*Qspvak1l6
      acc21(41)=acc21(32)*Qspk1
      acc21(34)=acc21(41)+acc21(40)+acc21(39)+acc21(38)+acc21(37)+acc21(36)+acc&
      &21(35)+acc21(34)+acc21(6)
      acc21(34)=Qspvak2l6*acc21(34)
      acc21(35)=acc21(1)*Qspvak1l5
      acc21(36)=acc21(5)*Qspvak1k2
      acc21(37)=acc21(13)*Qspvak7k2
      acc21(38)=acc21(17)*Qspvak4k2
      acc21(39)=acc21(19)*Qspk2
      acc21(40)=acc21(24)*Qspk1
      acc21(41)=acc21(26)*Qspvak4k3
      acc21(42)=acc21(30)*Qspvak1l6
      acc21(35)=acc21(42)+acc21(41)+acc21(40)+acc21(39)+acc21(38)+acc21(37)+acc&
      &21(8)+acc21(36)+acc21(35)
      acc21(35)=Qspvak2l5*acc21(35)
      acc21(36)=acc21(20)*Qspvak2l5
      acc21(37)=acc21(31)*Qspvak2l6
      acc21(36)=acc21(33)+acc21(37)+acc21(36)
      acc21(37)=Qspk3+Qspk4
      acc21(36)=acc21(37)*acc21(36)
      acc21(37)=-acc21(10)*Qspvak2l5
      acc21(38)=-acc21(25)*Qspvak2l6
      acc21(37)=acc21(38)+acc21(37)+acc21(16)
      acc21(38)=Qspl5+Qspl6
      acc21(37)=acc21(38)*acc21(37)
      acc21(38)=acc21(2)*Qspvak4k2
      acc21(39)=acc21(3)*Qspvak7k2
      acc21(40)=acc21(4)*Qspk2
      acc21(41)=acc21(11)*Qspvak1l5
      acc21(42)=acc21(14)*Qspk1
      acc21(43)=acc21(21)*Qspvak1l6
      acc21(44)=acc21(22)*Qspvak4k3
      acc21(45)=QspQ*acc21(15)
      brack=acc21(7)+acc21(34)+acc21(35)+acc21(36)+acc21(37)+acc21(38)+acc21(39&
      &)+acc21(40)+acc21(41)+acc21(42)+acc21(43)+acc21(44)+acc21(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d21h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d21h7l1
