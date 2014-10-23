module     p0_dbaru_epnebbbarg_d124h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d124h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd124h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc124(54)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc124(1)=abb124(10)
      acc124(2)=abb124(11)
      acc124(3)=abb124(12)
      acc124(4)=abb124(13)
      acc124(5)=abb124(14)
      acc124(6)=abb124(15)
      acc124(7)=abb124(16)
      acc124(8)=abb124(17)
      acc124(9)=abb124(18)
      acc124(10)=abb124(19)
      acc124(11)=abb124(20)
      acc124(12)=abb124(21)
      acc124(13)=abb124(22)
      acc124(14)=abb124(23)
      acc124(15)=abb124(24)
      acc124(16)=abb124(25)
      acc124(17)=abb124(26)
      acc124(18)=abb124(27)
      acc124(19)=abb124(28)
      acc124(20)=abb124(29)
      acc124(21)=abb124(30)
      acc124(22)=abb124(31)
      acc124(23)=abb124(32)
      acc124(24)=abb124(33)
      acc124(25)=abb124(34)
      acc124(26)=abb124(35)
      acc124(27)=abb124(39)
      acc124(28)=abb124(41)
      acc124(29)=abb124(43)
      acc124(30)=abb124(49)
      acc124(31)=abb124(51)
      acc124(32)=abb124(52)
      acc124(33)=abb124(53)
      acc124(34)=abb124(54)
      acc124(35)=abb124(57)
      acc124(36)=abb124(58)
      acc124(37)=abb124(59)
      acc124(38)=abb124(61)
      acc124(39)=abb124(62)
      acc124(40)=abb124(63)
      acc124(41)=abb124(64)
      acc124(42)=-acc124(39)*Qspval5k2
      acc124(43)=-acc124(37)*Qspval6k2
      acc124(44)=acc124(26)*Qspvak1k2
      acc124(45)=Qspk2*acc124(22)
      acc124(42)=acc124(45)+acc124(9)+acc124(44)+acc124(42)+acc124(43)
      acc124(42)=Qspvak4k3*acc124(42)
      acc124(43)=-acc124(25)*Qspvak7k2
      acc124(44)=Qspvak1k7*acc124(19)
      acc124(45)=Qspvak4k2*acc124(1)
      acc124(46)=Qspval5k7*acc124(15)
      acc124(47)=Qspval6k7*acc124(33)
      acc124(48)=Qspvak1k3*acc124(24)
      acc124(49)=Qspvak2k3*acc124(3)
      acc124(50)=Qspval5k3*acc124(29)
      acc124(51)=Qspval6k3*acc124(16)
      acc124(52)=Qspvak2k7*acc124(7)
      acc124(42)=acc124(52)+acc124(42)+acc124(51)+acc124(50)+acc124(49)+acc124(&
      &48)+acc124(47)+acc124(46)+acc124(45)+acc124(44)+acc124(18)+acc124(43)
      acc124(42)=Qspvak2k7*acc124(42)
      acc124(43)=Qspvak4k2*acc124(41)
      acc124(44)=Qspk2*acc124(27)
      acc124(45)=Qspvak1k3*acc124(21)
      acc124(46)=Qspvak2k3*acc124(23)
      acc124(47)=Qspval5k3*acc124(36)
      acc124(48)=Qspval6k3*acc124(30)
      acc124(43)=acc124(48)+acc124(47)+acc124(46)+acc124(45)+acc124(43)+acc124(&
      &44)
      acc124(43)=Qspk7*acc124(43)
      acc124(44)=Qspvak4k2*acc124(28)
      acc124(45)=Qspk2*acc124(25)
      acc124(46)=Qspvak1k3*acc124(20)
      acc124(47)=Qspvak2k3*acc124(10)
      acc124(48)=Qspval5k3*acc124(35)
      acc124(49)=Qspval6k3*acc124(31)
      acc124(44)=acc124(49)+acc124(48)+acc124(47)+acc124(46)+acc124(45)+acc124(&
      &5)+acc124(44)
      acc124(44)=QspQ*acc124(44)
      acc124(45)=Qspvak1k7*acc124(13)
      acc124(46)=Qspval5k7*acc124(40)
      acc124(47)=Qspval6k7*acc124(38)
      acc124(48)=QspQ*acc124(2)
      acc124(45)=acc124(48)+acc124(47)+acc124(45)+acc124(46)
      acc124(45)=Qspvak4k3*acc124(45)
      acc124(46)=Qspvak7k2*acc124(6)
      acc124(47)=Qspvak1k7*acc124(14)
      acc124(48)=Qspval5k7*acc124(34)
      acc124(49)=Qspval6k7*acc124(11)
      acc124(50)=Qspk2*acc124(12)
      acc124(51)=Qspvak1k3*acc124(4)
      acc124(52)=Qspvak2k3*acc124(8)
      acc124(53)=Qspval5k3*acc124(32)
      acc124(54)=Qspval6k3*acc124(17)
      brack=acc124(42)+acc124(43)+acc124(44)+acc124(45)+acc124(46)+acc124(47)+a&
      &cc124(48)+acc124(49)+acc124(50)+acc124(51)+acc124(52)+acc124(53)+acc124(&
      &54)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d124h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d124h1l1
