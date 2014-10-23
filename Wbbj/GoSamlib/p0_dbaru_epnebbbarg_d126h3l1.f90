module     p0_dbaru_epnebbbarg_d126h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d126h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd126h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc126(47)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc126(1)=abb126(9)
      acc126(2)=abb126(10)
      acc126(3)=abb126(11)
      acc126(4)=abb126(12)
      acc126(5)=abb126(13)
      acc126(6)=abb126(14)
      acc126(7)=abb126(15)
      acc126(8)=abb126(16)
      acc126(9)=abb126(17)
      acc126(10)=abb126(18)
      acc126(11)=abb126(19)
      acc126(12)=abb126(20)
      acc126(13)=abb126(21)
      acc126(14)=abb126(22)
      acc126(15)=abb126(23)
      acc126(16)=abb126(24)
      acc126(17)=abb126(25)
      acc126(18)=abb126(26)
      acc126(19)=abb126(27)
      acc126(20)=abb126(28)
      acc126(21)=abb126(29)
      acc126(22)=abb126(30)
      acc126(23)=abb126(31)
      acc126(24)=abb126(32)
      acc126(25)=abb126(33)
      acc126(26)=abb126(34)
      acc126(27)=abb126(40)
      acc126(28)=abb126(41)
      acc126(29)=abb126(42)
      acc126(30)=abb126(45)
      acc126(31)=abb126(50)
      acc126(32)=abb126(51)
      acc126(33)=abb126(52)
      acc126(34)=abb126(54)
      acc126(35)=abb126(56)
      acc126(36)=abb126(65)
      acc126(37)=Qspl6+Qspl5
      acc126(38)=-acc126(36)*acc126(37)
      acc126(39)=acc126(22)*Qspvak1l5
      acc126(40)=acc126(10)*Qspvak1l6
      acc126(41)=Qspk2*acc126(11)
      acc126(42)=Qspvak2l5*acc126(21)
      acc126(43)=Qspvak2l6*acc126(26)
      acc126(38)=acc126(43)+acc126(42)+acc126(41)+acc126(40)+acc126(39)+acc126(&
      &12)+acc126(38)
      acc126(38)=Qspvak4k3*acc126(38)
      acc126(39)=acc126(27)*acc126(37)
      acc126(40)=Qspk4+Qspk3
      acc126(41)=Qspk7+acc126(40)
      acc126(41)=acc126(34)*acc126(41)
      acc126(42)=acc126(3)*Qspvak1k3
      acc126(43)=Qspk2*acc126(35)
      acc126(44)=Qspvak1k7*acc126(9)
      acc126(45)=Qspvak2l5*acc126(14)
      acc126(46)=Qspvak2l6*acc126(19)
      acc126(47)=QspQ*acc126(33)
      acc126(38)=acc126(38)+acc126(47)+acc126(46)+acc126(45)+acc126(44)+acc126(&
      &43)+acc126(13)+acc126(42)+acc126(41)+acc126(39)
      acc126(38)=Qspvak2k7*acc126(38)
      acc126(39)=acc126(28)*acc126(37)
      acc126(41)=Qspk2*acc126(31)
      acc126(42)=Qspvak1k7*acc126(16)
      acc126(43)=Qspvak2l5*acc126(4)
      acc126(44)=Qspvak2l6*acc126(1)
      acc126(39)=acc126(44)+acc126(43)+acc126(42)+acc126(15)+acc126(41)+acc126(&
      &39)
      acc126(39)=QspQ*acc126(39)
      acc126(41)=acc126(29)*acc126(37)
      acc126(42)=Qspk2*acc126(32)
      acc126(43)=Qspvak1k7*acc126(18)
      acc126(44)=Qspvak2l5*acc126(5)
      acc126(45)=Qspvak2l6*acc126(2)
      acc126(41)=acc126(45)+acc126(44)+acc126(43)+acc126(20)+acc126(42)+acc126(&
      &41)
      acc126(41)=Qspk7*acc126(41)
      acc126(37)=acc126(25)*acc126(37)
      acc126(40)=acc126(17)*acc126(40)
      acc126(42)=Qspk2*acc126(30)
      acc126(43)=Qspvak1k7*acc126(6)
      acc126(44)=Qspvak2l5*acc126(24)
      acc126(45)=Qspvak2l6*acc126(23)
      acc126(46)=Qspvak1k7*acc126(8)
      acc126(46)=acc126(7)+acc126(46)
      acc126(46)=Qspvak4k3*acc126(46)
      brack=acc126(37)+acc126(38)+acc126(39)+acc126(40)+acc126(41)+acc126(42)+a&
      &cc126(43)+acc126(44)+acc126(45)+acc126(46)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd126h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d126
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d126 = 0.0_ki
      d126 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d126, ki), aimag(d126), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d126h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd126h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d126
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d126 = 0.0_ki
      d126 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d126, ki), aimag(d126), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d126h3l1
