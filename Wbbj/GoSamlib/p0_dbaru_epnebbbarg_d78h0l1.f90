module     p0_dbaru_epnebbbarg_d78h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d78h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd78h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc78(61)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc78(1)=abb78(11)
      acc78(2)=abb78(12)
      acc78(3)=abb78(13)
      acc78(4)=abb78(14)
      acc78(5)=abb78(15)
      acc78(6)=abb78(16)
      acc78(7)=abb78(17)
      acc78(8)=abb78(18)
      acc78(9)=abb78(19)
      acc78(10)=abb78(20)
      acc78(11)=abb78(21)
      acc78(12)=abb78(22)
      acc78(13)=abb78(23)
      acc78(14)=abb78(24)
      acc78(15)=abb78(25)
      acc78(16)=abb78(27)
      acc78(17)=abb78(28)
      acc78(18)=abb78(29)
      acc78(19)=abb78(30)
      acc78(20)=abb78(31)
      acc78(21)=abb78(32)
      acc78(22)=abb78(33)
      acc78(23)=abb78(34)
      acc78(24)=abb78(35)
      acc78(25)=abb78(36)
      acc78(26)=abb78(37)
      acc78(27)=abb78(39)
      acc78(28)=abb78(41)
      acc78(29)=abb78(43)
      acc78(30)=abb78(44)
      acc78(31)=abb78(45)
      acc78(32)=abb78(46)
      acc78(33)=abb78(48)
      acc78(34)=abb78(50)
      acc78(35)=abb78(57)
      acc78(36)=abb78(58)
      acc78(37)=abb78(60)
      acc78(38)=abb78(61)
      acc78(39)=abb78(62)
      acc78(40)=abb78(65)
      acc78(41)=abb78(66)
      acc78(42)=abb78(69)
      acc78(43)=abb78(70)
      acc78(44)=abb78(72)
      acc78(45)=abb78(74)
      acc78(46)=abb78(76)
      acc78(47)=abb78(77)
      acc78(48)=abb78(87)
      acc78(49)=Qspvak4k2*acc78(21)
      acc78(50)=Qspvak4k7*acc78(35)
      acc78(49)=acc78(49)-acc78(50)
      acc78(50)=Qspval6k2*acc78(8)
      acc78(51)=Qspk2*acc78(44)
      acc78(50)=acc78(51)+acc78(40)+acc78(50)
      acc78(50)=Qspvak4k3*acc78(50)
      acc78(51)=acc78(29)*Qspvak2k3
      acc78(52)=acc78(23)*Qspvak2l6
      acc78(53)=Qspval6k3*acc78(30)
      acc78(54)=Qspl6*acc78(48)
      acc78(55)=Qspval6k2*acc78(26)
      acc78(56)=Qspk2*acc78(32)
      acc78(57)=Qspval6k7*acc78(42)
      acc78(50)=acc78(50)+acc78(57)+acc78(56)+acc78(55)+acc78(54)+acc78(53)+acc&
      &78(17)+acc78(51)+acc78(52)+acc78(49)
      acc78(50)=Qspk7*acc78(50)
      acc78(51)=acc78(33)*Qspvak7k3
      acc78(52)=acc78(27)*Qspvak7l6
      acc78(53)=Qspval6k3*acc78(11)
      acc78(54)=Qspvak7k2*acc78(25)
      acc78(55)=Qspl6*acc78(22)
      acc78(56)=Qspval6k2*acc78(20)
      acc78(57)=Qspval6k7*acc78(34)
      acc78(51)=acc78(57)+acc78(56)+acc78(55)+acc78(54)+acc78(53)+acc78(6)+acc7&
      &8(51)+acc78(52)
      acc78(51)=Qspvak2k7*acc78(51)
      acc78(52)=Qspvak7k2*acc78(1)
      acc78(53)=Qspval6k2*acc78(28)
      acc78(52)=acc78(53)+acc78(5)+acc78(52)
      acc78(52)=Qspvak2k7*acc78(52)
      acc78(53)=Qspvak1k2*acc78(14)
      acc78(54)=QspQ*acc78(38)
      acc78(55)=Qspval6k2*acc78(7)
      acc78(56)=Qspk2*acc78(37)
      acc78(57)=Qspval6k7*acc78(2)
      acc78(52)=acc78(52)+acc78(57)+acc78(56)+acc78(55)+acc78(54)+acc78(16)+acc&
      &78(53)
      acc78(52)=Qspvak4k3*acc78(52)
      acc78(53)=QspQ*acc78(47)
      acc78(54)=Qspl6*acc78(43)
      acc78(55)=Qspk2*acc78(45)
      acc78(53)=acc78(55)+acc78(54)+acc78(15)+acc78(53)
      acc78(53)=Qspval6k7*acc78(53)
      acc78(54)=Qspvak4k2*acc78(19)
      acc78(55)=Qspvak4k7*acc78(36)
      acc78(54)=acc78(55)+acc78(4)+acc78(54)
      acc78(54)=QspQ*acc78(54)
      acc78(49)=acc78(46)+acc78(49)
      acc78(49)=Qspl6*acc78(49)
      acc78(55)=Qspvak4k2*acc78(9)
      acc78(56)=Qspvak4k7*acc78(13)
      acc78(55)=acc78(56)+acc78(3)+acc78(55)
      acc78(55)=Qspk2*acc78(55)
      acc78(56)=acc78(39)*Qspval6l5
      acc78(57)=acc78(31)*Qspval6k1
      acc78(58)=Qspvak1k2*acc78(10)
      acc78(59)=Qspval6k3*acc78(24)
      acc78(60)=Qspvak7k2*acc78(41)
      acc78(61)=Qspval6k2*acc78(18)
      brack=acc78(12)+acc78(49)+acc78(50)+acc78(51)+acc78(52)+acc78(53)+acc78(5&
      &4)+acc78(55)+acc78(56)+acc78(57)+acc78(58)+acc78(59)+acc78(60)+acc78(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd78h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d78
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d78 = 0.0_ki
      d78 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d78, ki), aimag(d78), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d78h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd78h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d78
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d78 = 0.0_ki
      d78 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d78, ki), aimag(d78), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d78h0l1
