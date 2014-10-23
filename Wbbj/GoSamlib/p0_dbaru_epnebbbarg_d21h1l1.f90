module     p0_dbaru_epnebbbarg_d21h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d21h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(49)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc21(1)=abb21(13)
      acc21(2)=abb21(14)
      acc21(3)=abb21(15)
      acc21(4)=abb21(16)
      acc21(5)=abb21(17)
      acc21(6)=abb21(18)
      acc21(7)=abb21(19)
      acc21(8)=abb21(20)
      acc21(9)=abb21(21)
      acc21(10)=abb21(22)
      acc21(11)=abb21(23)
      acc21(12)=abb21(24)
      acc21(13)=abb21(25)
      acc21(14)=abb21(26)
      acc21(15)=abb21(27)
      acc21(16)=abb21(28)
      acc21(17)=abb21(29)
      acc21(18)=abb21(30)
      acc21(19)=abb21(31)
      acc21(20)=abb21(34)
      acc21(21)=abb21(35)
      acc21(22)=abb21(42)
      acc21(23)=abb21(43)
      acc21(24)=abb21(56)
      acc21(25)=abb21(72)
      acc21(26)=abb21(82)
      acc21(27)=abb21(83)
      acc21(28)=abb21(88)
      acc21(29)=abb21(94)
      acc21(30)=abb21(102)
      acc21(31)=abb21(113)
      acc21(32)=abb21(125)
      acc21(33)=abb21(142)
      acc21(34)=abb21(157)
      acc21(35)=abb21(168)
      acc21(36)=Qspk4+Qspk3
      acc21(37)=acc21(34)*acc21(36)
      acc21(38)=Qspl6+Qspl5
      acc21(39)=acc21(30)*acc21(38)
      acc21(40)=Qspvak1l6*acc21(10)
      acc21(41)=Qspk1*acc21(29)
      acc21(42)=Qspk7*acc21(25)
      acc21(43)=Qspvak1k2*acc21(18)
      acc21(44)=Qspvak1l5*acc21(8)
      acc21(45)=Qspvak2k7*acc21(4)
      acc21(46)=Qspvak4k2*acc21(12)
      acc21(47)=Qspvak4k3*acc21(5)
      acc21(48)=Qspval6l5*acc21(21)
      acc21(49)=Qspk2*acc21(26)
      acc21(37)=acc21(49)+acc21(48)+acc21(47)+acc21(46)+acc21(45)+acc21(44)+acc&
      &21(43)+acc21(42)+acc21(41)+acc21(24)+acc21(40)+acc21(39)+acc21(37)
      acc21(37)=Qspk2*acc21(37)
      acc21(39)=-acc21(27)*acc21(38)
      acc21(40)=-acc21(23)*acc21(36)
      acc21(41)=Qspvak1l6*acc21(16)
      acc21(42)=Qspk1*acc21(22)
      acc21(43)=Qspk7*acc21(20)
      acc21(44)=Qspvak1k2*acc21(19)
      acc21(45)=Qspvak1l5*acc21(15)
      acc21(46)=Qspvak2k7*acc21(3)
      acc21(47)=Qspvak4k2*acc21(11)
      acc21(48)=Qspvak4k3*acc21(2)
      acc21(39)=acc21(48)+acc21(47)+acc21(46)+acc21(45)+acc21(44)+acc21(43)+acc&
      &21(42)+acc21(9)+acc21(41)+acc21(40)+acc21(39)
      acc21(39)=Qspval6l5*acc21(39)
      acc21(36)=acc21(33)*acc21(36)
      acc21(38)=acc21(13)*acc21(38)
      acc21(40)=acc21(28)*QspQ
      acc21(41)=Qspk1*acc21(31)
      acc21(42)=Qspk7*acc21(35)
      acc21(43)=Qspvak1k2*acc21(17)
      acc21(44)=Qspvak1l5*acc21(7)
      acc21(45)=Qspvak2k7*acc21(1)
      acc21(46)=Qspvak4k2*acc21(6)
      acc21(47)=Qspvak4k3*acc21(14)
      brack=acc21(32)+acc21(36)+acc21(37)+acc21(38)+acc21(39)+acc21(40)+acc21(4&
      &1)+acc21(42)+acc21(43)+acc21(44)+acc21(45)+acc21(46)+acc21(47)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h1
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
   & bind(c, name="p0_dbaru_epnebbbarg_d21h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h1
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
end module p0_dbaru_epnebbbarg_d21h1l1
