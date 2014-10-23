module     p0_dbaru_epnebbbarg_d83h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d83h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd83h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc83(62)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc83(1)=abb83(8)
      acc83(2)=abb83(9)
      acc83(3)=abb83(10)
      acc83(4)=abb83(12)
      acc83(5)=abb83(13)
      acc83(6)=abb83(14)
      acc83(7)=abb83(15)
      acc83(8)=abb83(16)
      acc83(9)=abb83(17)
      acc83(10)=abb83(18)
      acc83(11)=abb83(19)
      acc83(12)=abb83(20)
      acc83(13)=abb83(21)
      acc83(14)=abb83(22)
      acc83(15)=abb83(23)
      acc83(16)=abb83(25)
      acc83(17)=abb83(26)
      acc83(18)=abb83(27)
      acc83(19)=abb83(28)
      acc83(20)=abb83(29)
      acc83(21)=abb83(30)
      acc83(22)=abb83(31)
      acc83(23)=abb83(32)
      acc83(24)=abb83(33)
      acc83(25)=abb83(34)
      acc83(26)=abb83(35)
      acc83(27)=abb83(37)
      acc83(28)=abb83(39)
      acc83(29)=abb83(40)
      acc83(30)=abb83(41)
      acc83(31)=abb83(42)
      acc83(32)=abb83(43)
      acc83(33)=abb83(44)
      acc83(34)=abb83(45)
      acc83(35)=abb83(46)
      acc83(36)=abb83(47)
      acc83(37)=abb83(48)
      acc83(38)=abb83(49)
      acc83(39)=abb83(50)
      acc83(40)=abb83(51)
      acc83(41)=abb83(52)
      acc83(42)=abb83(53)
      acc83(43)=abb83(54)
      acc83(44)=abb83(55)
      acc83(45)=abb83(56)
      acc83(46)=abb83(57)
      acc83(47)=abb83(58)
      acc83(48)=abb83(60)
      acc83(49)=abb83(61)
      acc83(50)=-Qspvak2l5*acc83(46)
      acc83(51)=-Qspvak2l6*acc83(43)
      acc83(50)=acc83(51)+acc83(50)+acc83(3)
      acc83(50)=Qspvak1k2*acc83(50)
      acc83(51)=Qspk1*acc83(34)
      acc83(52)=-acc83(30)*Qspvak3k2
      acc83(53)=Qspk2*acc83(22)
      acc83(54)=Qspvak1l5*acc83(14)
      acc83(55)=Qspvak1l6*acc83(29)
      acc83(50)=acc83(55)+acc83(54)+acc83(53)+acc83(51)+acc83(52)+acc83(50)
      acc83(50)=Qspvak4k3*acc83(50)
      acc83(51)=Qspk2*acc83(21)
      acc83(52)=Qspvak1l5*acc83(11)
      acc83(53)=Qspvak1l6*acc83(49)
      acc83(54)=Qspvak2l5*acc83(19)
      acc83(55)=Qspvak2l6*acc83(17)
      acc83(56)=-Qspvak4k2*acc83(30)
      acc83(51)=acc83(56)+acc83(55)+acc83(54)+acc83(53)+acc83(52)+acc83(18)+acc&
      &83(51)
      acc83(51)=QspQ*acc83(51)
      acc83(52)=Qspk2*acc83(24)
      acc83(53)=-Qspvak1l5*acc83(13)
      acc83(54)=-Qspvak1l6*acc83(48)
      acc83(55)=Qspvak2l5*acc83(44)
      acc83(56)=Qspvak2l6*acc83(39)
      acc83(53)=acc83(56)+acc83(55)+acc83(54)+acc83(53)+acc83(23)-acc83(52)
      acc83(53)=Qspk7*acc83(53)
      acc83(54)=Qspk4+Qspk3
      acc83(55)=Qspk7+acc83(54)
      acc83(56)=acc83(20)*acc83(55)
      acc83(57)=Qspvak2l5*acc83(6)
      acc83(58)=Qspvak2l6*acc83(4)
      acc83(59)=Qspvak4k3*acc83(35)
      acc83(56)=acc83(59)+acc83(58)+acc83(57)+acc83(5)+acc83(56)
      acc83(56)=Qspvak4k2*acc83(56)
      acc83(57)=Qspvak2l5*acc83(33)
      acc83(58)=Qspvak2l6*acc83(31)
      acc83(59)=Qspvak4k3*acc83(27)
      acc83(57)=acc83(59)+acc83(58)+acc83(28)+acc83(57)
      acc83(57)=Qspvak7k2*acc83(57)
      acc83(52)=-acc83(52)*acc83(54)
      acc83(58)=Qspvak1k3*acc83(1)
      acc83(59)=Qspvak1k7*acc83(7)
      acc83(58)=acc83(58)+acc83(59)
      acc83(58)=Qspvak2l5*acc83(58)
      acc83(59)=Qspvak1k3*acc83(2)
      acc83(60)=Qspvak1k7*acc83(45)
      acc83(59)=acc83(59)+acc83(60)
      acc83(59)=Qspvak2l6*acc83(59)
      acc83(60)=Qspk1*acc83(25)
      acc83(61)=Qspvak3k2*acc83(26)
      acc83(62)=-acc83(13)*acc83(54)
      acc83(62)=acc83(10)+acc83(62)
      acc83(62)=Qspvak1l5*acc83(62)
      acc83(54)=-acc83(48)*acc83(54)
      acc83(54)=acc83(47)+acc83(54)
      acc83(54)=Qspvak1l6*acc83(54)
      acc83(50)=acc83(57)+acc83(51)+acc83(56)+acc83(50)+acc83(53)+acc83(59)+acc&
      &83(58)+acc83(54)+acc83(62)+acc83(60)+acc83(61)+acc83(52)
      acc83(50)=Qspvak7k2*acc83(50)
      acc83(51)=Qspvak2l5*acc83(40)
      acc83(52)=Qspvak2l6*acc83(42)
      acc83(51)=acc83(52)+acc83(9)+acc83(51)
      acc83(51)=Qspvak4k2*acc83(51)
      acc83(52)=-acc83(16)*acc83(55)
      acc83(53)=Qspvak2l5*acc83(36)
      acc83(54)=Qspvak2l6*acc83(37)
      acc83(55)=Qspvak4k3*acc83(32)
      acc83(56)=QspQ*acc83(12)
      acc83(51)=acc83(56)+acc83(51)+acc83(55)+acc83(54)+acc83(53)+acc83(8)+acc8&
      &3(52)
      acc83(51)=QspQ*acc83(51)
      acc83(52)=Qspvak2l5*acc83(38)
      acc83(53)=Qspvak2l6*acc83(41)
      acc83(52)=acc83(53)+acc83(15)+acc83(52)
      acc83(52)=Qspvak4k2*Qspk7*acc83(52)
      brack=acc83(50)+acc83(51)+acc83(52)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d83h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d83h7l1
