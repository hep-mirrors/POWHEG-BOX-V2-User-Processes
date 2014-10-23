module     p0_dbaru_epnebbbarg_d75h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d75h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd75h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc75(57)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5l6
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      acc75(1)=abb75(8)
      acc75(2)=abb75(9)
      acc75(3)=abb75(10)
      acc75(4)=abb75(11)
      acc75(5)=abb75(12)
      acc75(6)=abb75(13)
      acc75(7)=abb75(14)
      acc75(8)=abb75(15)
      acc75(9)=abb75(16)
      acc75(10)=abb75(17)
      acc75(11)=abb75(18)
      acc75(12)=abb75(19)
      acc75(13)=abb75(20)
      acc75(14)=abb75(21)
      acc75(15)=abb75(22)
      acc75(16)=abb75(23)
      acc75(17)=abb75(24)
      acc75(18)=abb75(25)
      acc75(19)=abb75(26)
      acc75(20)=abb75(27)
      acc75(21)=abb75(28)
      acc75(22)=abb75(29)
      acc75(23)=abb75(30)
      acc75(24)=abb75(31)
      acc75(25)=abb75(32)
      acc75(26)=abb75(33)
      acc75(27)=abb75(34)
      acc75(28)=abb75(35)
      acc75(29)=abb75(36)
      acc75(30)=abb75(37)
      acc75(31)=abb75(42)
      acc75(32)=abb75(43)
      acc75(33)=abb75(45)
      acc75(34)=abb75(49)
      acc75(35)=abb75(60)
      acc75(36)=abb75(66)
      acc75(37)=abb75(70)
      acc75(38)=abb75(73)
      acc75(39)=abb75(75)
      acc75(40)=abb75(76)
      acc75(41)=abb75(79)
      acc75(42)=abb75(81)
      acc75(43)=abb75(82)
      acc75(44)=abb75(84)
      acc75(45)=abb75(85)
      acc75(46)=Qspk7+Qspl6
      acc75(47)=acc75(41)*acc75(46)
      acc75(48)=Qspvak4k2*acc75(17)
      acc75(49)=Qspvak1k3*acc75(19)
      acc75(50)=Qspval5k3*acc75(38)
      acc75(51)=Qspvak7l6*acc75(42)
      acc75(52)=QspQ*acc75(37)
      acc75(53)=Qspvak7k2*acc75(24)
      acc75(54)=Qspk2*acc75(40)
      acc75(47)=acc75(54)+acc75(53)+acc75(52)+acc75(51)+acc75(50)+acc75(49)+acc&
      &75(32)+acc75(48)+acc75(47)
      acc75(47)=Qspk2*acc75(47)
      acc75(48)=acc75(15)*acc75(46)
      acc75(49)=-acc75(13)*Qspvak1l6
      acc75(50)=Qspvak7l6*acc75(10)
      acc75(51)=Qspvak7k2*acc75(7)
      acc75(48)=acc75(51)+acc75(50)+acc75(14)+acc75(49)+acc75(48)
      acc75(48)=Qspvak4k3*acc75(48)
      acc75(49)=-acc75(30)*acc75(46)
      acc75(50)=Qspvak1k2*acc75(12)
      acc75(51)=Qspvak1k3*acc75(23)
      acc75(52)=Qspvak7l6*acc75(2)
      acc75(53)=Qspvak7k2*acc75(8)
      acc75(54)=Qspvak4k3*acc75(6)
      acc75(54)=acc75(28)+acc75(54)
      acc75(54)=Qspk2*acc75(54)
      acc75(48)=acc75(54)+acc75(48)+acc75(53)+acc75(52)+acc75(51)+acc75(25)+acc&
      &75(50)+acc75(49)
      acc75(48)=Qspval5k2*acc75(48)
      acc75(49)=-acc75(39)*acc75(46)
      acc75(50)=Qspvak1k3*acc75(21)
      acc75(51)=Qspvak7l6*acc75(36)
      acc75(49)=acc75(51)+acc75(43)+acc75(50)+acc75(49)
      acc75(49)=QspQ*acc75(49)
      acc75(50)=Qspvak4k2*acc75(1)
      acc75(51)=Qspval5k3*acc75(29)
      acc75(52)=QspQ*acc75(34)
      acc75(50)=acc75(52)+acc75(51)+acc75(4)+acc75(50)
      acc75(50)=Qspvak7k2*acc75(50)
      acc75(51)=Qspl5*acc75(11)
      acc75(52)=Qspval5l6*acc75(13)
      acc75(52)=acc75(20)+acc75(52)
      acc75(52)=Qspvak1k2*acc75(52)
      acc75(51)=acc75(52)+acc75(9)+acc75(51)
      acc75(51)=Qspvak4k3*acc75(51)
      acc75(52)=acc75(33)*acc75(46)
      acc75(53)=Qspl5*acc75(31)
      acc75(54)=Qspvak4k2*acc75(16)
      acc75(55)=Qspval5l6*acc75(27)
      acc75(55)=acc75(26)+acc75(55)
      acc75(55)=Qspvak1k2*acc75(55)
      acc75(56)=Qspval5l6*acc75(22)
      acc75(56)=acc75(18)+acc75(56)
      acc75(56)=Qspvak1k3*acc75(56)
      acc75(46)=acc75(44)*acc75(46)
      acc75(46)=acc75(35)+acc75(46)
      acc75(46)=Qspval5k3*acc75(46)
      acc75(57)=Qspval5k3*acc75(45)
      acc75(57)=acc75(3)+acc75(57)
      acc75(57)=Qspvak7l6*acc75(57)
      brack=acc75(5)+acc75(46)+acc75(47)+acc75(48)+acc75(49)+acc75(50)+acc75(51&
      &)+acc75(52)+acc75(53)+acc75(54)+acc75(55)+acc75(56)+acc75(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d75h6l1
