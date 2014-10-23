module     p0_dbaru_epnebbbarg_d15h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d15h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd15h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(58)
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      acc15(1)=abb15(11)
      acc15(2)=abb15(12)
      acc15(3)=abb15(13)
      acc15(4)=abb15(14)
      acc15(5)=abb15(15)
      acc15(6)=abb15(16)
      acc15(7)=abb15(17)
      acc15(8)=abb15(18)
      acc15(9)=abb15(19)
      acc15(10)=abb15(20)
      acc15(11)=abb15(22)
      acc15(12)=abb15(23)
      acc15(13)=abb15(24)
      acc15(14)=abb15(25)
      acc15(15)=abb15(27)
      acc15(16)=abb15(28)
      acc15(17)=abb15(29)
      acc15(18)=abb15(30)
      acc15(19)=abb15(32)
      acc15(20)=abb15(33)
      acc15(21)=abb15(34)
      acc15(22)=abb15(35)
      acc15(23)=abb15(36)
      acc15(24)=abb15(37)
      acc15(25)=abb15(38)
      acc15(26)=abb15(39)
      acc15(27)=abb15(40)
      acc15(28)=abb15(41)
      acc15(29)=abb15(42)
      acc15(30)=abb15(43)
      acc15(31)=abb15(44)
      acc15(32)=abb15(45)
      acc15(33)=abb15(46)
      acc15(34)=abb15(47)
      acc15(35)=abb15(48)
      acc15(36)=abb15(49)
      acc15(37)=abb15(50)
      acc15(38)=abb15(51)
      acc15(39)=abb15(52)
      acc15(40)=abb15(53)
      acc15(41)=abb15(62)
      acc15(42)=abb15(64)
      acc15(43)=abb15(73)
      acc15(44)=abb15(83)
      acc15(45)=abb15(84)
      acc15(46)=abb15(86)
      acc15(47)=abb15(92)
      acc15(48)=abb15(93)
      acc15(49)=Qspvak1k7*acc15(23)
      acc15(50)=Qspk7*acc15(43)
      acc15(51)=Qspvak2k7*acc15(14)
      acc15(49)=acc15(51)+acc15(50)+acc15(48)+acc15(49)
      acc15(49)=Qspvak4k3*acc15(49)
      acc15(50)=Qspk1-Qspk2
      acc15(51)=acc15(27)*acc15(50)
      acc15(52)=Qspvak1k3*acc15(36)
      acc15(53)=Qspvak1l5*acc15(26)
      acc15(54)=Qspvak1l6*acc15(22)
      acc15(55)=QspQ*acc15(20)
      acc15(56)=Qspvak1k2*acc15(16)
      acc15(57)=Qspk7*acc15(25)
      acc15(58)=Qspvak2k7*acc15(7)
      acc15(49)=acc15(49)+acc15(58)+acc15(57)+acc15(56)+acc15(55)+acc15(54)+acc&
      &15(53)+acc15(21)+acc15(52)+acc15(51)
      acc15(49)=Qspval5k2*acc15(49)
      acc15(51)=Qspvak1k7*acc15(19)
      acc15(52)=Qspk7*acc15(44)
      acc15(53)=Qspvak2k7*acc15(11)
      acc15(51)=acc15(53)+acc15(52)+acc15(41)+acc15(51)
      acc15(51)=Qspvak4k3*acc15(51)
      acc15(50)=acc15(42)*acc15(50)
      acc15(52)=Qspvak1k3*acc15(33)
      acc15(53)=Qspvak1l5*acc15(17)
      acc15(54)=Qspvak1l6*acc15(24)
      acc15(55)=QspQ*acc15(13)
      acc15(56)=Qspvak1k2*acc15(38)
      acc15(57)=Qspk7*acc15(31)
      acc15(58)=Qspvak2k7*acc15(1)
      acc15(50)=acc15(51)+acc15(58)+acc15(57)+acc15(56)+acc15(55)+acc15(54)+acc&
      &15(53)+acc15(15)+acc15(52)+acc15(50)
      acc15(50)=Qspval6k2*acc15(50)
      acc15(51)=Qspk1*acc15(34)
      acc15(52)=Qspvak1k2*acc15(5)
      acc15(53)=Qspk7*acc15(29)
      acc15(54)=Qspvak2k7*acc15(8)
      acc15(51)=acc15(54)+acc15(53)+acc15(52)+acc15(28)+acc15(51)
      acc15(51)=Qspvak4k3*acc15(51)
      acc15(52)=Qspl6+Qspl5
      acc15(53)=acc15(52)-Qspk1
      acc15(54)=-acc15(37)*acc15(53)
      acc15(55)=QspQ*acc15(30)
      acc15(56)=Qspk2*acc15(39)
      acc15(54)=acc15(56)+acc15(55)+acc15(12)+acc15(54)
      acc15(54)=Qspvak1k2*acc15(54)
      acc15(55)=acc15(46)*acc15(53)
      acc15(56)=QspQ*acc15(18)
      acc15(57)=Qspk2*acc15(47)
      acc15(55)=acc15(57)+acc15(56)+acc15(35)+acc15(55)
      acc15(55)=Qspk7*acc15(55)
      acc15(53)=acc15(32)*acc15(53)
      acc15(56)=QspQ*acc15(6)
      acc15(57)=Qspk2*acc15(2)
      acc15(53)=acc15(57)+acc15(56)+acc15(3)+acc15(53)
      acc15(53)=Qspvak2k7*acc15(53)
      acc15(52)=-acc15(45)*acc15(52)
      acc15(56)=QspQ*acc15(9)
      acc15(57)=Qspk2*acc15(40)
      acc15(58)=Qspk1*acc15(4)
      brack=acc15(10)+acc15(49)+acc15(50)+acc15(51)+acc15(52)+acc15(53)+acc15(5&
      &4)+acc15(55)+acc15(56)+acc15(57)+acc15(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd15h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d15h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd15h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d15h0l1
