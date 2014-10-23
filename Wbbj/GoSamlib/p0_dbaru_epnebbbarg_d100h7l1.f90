module     p0_dbaru_epnebbbarg_d100h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d100h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd100h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc100(39)
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc100(1)=abb100(10)
      acc100(2)=abb100(11)
      acc100(3)=abb100(12)
      acc100(4)=abb100(13)
      acc100(5)=abb100(14)
      acc100(6)=abb100(15)
      acc100(7)=abb100(16)
      acc100(8)=abb100(17)
      acc100(9)=abb100(18)
      acc100(10)=abb100(19)
      acc100(11)=abb100(20)
      acc100(12)=abb100(22)
      acc100(13)=abb100(23)
      acc100(14)=abb100(24)
      acc100(15)=abb100(26)
      acc100(16)=abb100(27)
      acc100(17)=abb100(29)
      acc100(18)=abb100(30)
      acc100(19)=abb100(31)
      acc100(20)=abb100(32)
      acc100(21)=abb100(33)
      acc100(22)=abb100(34)
      acc100(23)=abb100(35)
      acc100(24)=abb100(38)
      acc100(25)=abb100(42)
      acc100(26)=abb100(45)
      acc100(27)=abb100(48)
      acc100(28)=acc100(23)*Qspvak1k7
      acc100(29)=acc100(10)*Qspvak4k7
      acc100(30)=-Qspl6-Qspk7
      acc100(30)=acc100(27)*acc100(30)
      acc100(31)=Qspvak1k2*acc100(9)
      acc100(32)=Qspvak1l6*acc100(12)
      acc100(33)=Qspvak4k2*acc100(5)
      acc100(34)=Qspvak4l6*acc100(22)
      acc100(35)=Qspvak7l6*acc100(1)
      acc100(36)=Qspvak7k2*acc100(14)
      acc100(28)=acc100(36)+acc100(35)+acc100(34)+acc100(33)+acc100(32)+acc100(&
      &31)+acc100(30)+acc100(29)+acc100(28)+acc100(11)
      acc100(28)=Qspvak7k2*acc100(28)
      acc100(29)=Qspvak1k2*acc100(21)
      acc100(30)=Qspvak1l6*acc100(18)
      acc100(31)=Qspvak4k2*acc100(26)
      acc100(32)=Qspvak4l6*acc100(19)
      acc100(29)=acc100(32)+acc100(31)+acc100(30)+acc100(2)+acc100(29)
      acc100(29)=Qspk2*acc100(29)
      acc100(30)=acc100(20)*Qspval6k7
      acc100(31)=acc100(3)*QspQ
      acc100(32)=Qspl6*acc100(25)
      acc100(33)=Qspk7*acc100(24)
      acc100(34)=Qspval6k2*acc100(6)
      acc100(35)=Qspvak1k2*acc100(15)
      acc100(36)=Qspvak1l6*acc100(17)
      acc100(37)=Qspvak4k2*acc100(8)
      acc100(38)=Qspvak4l6*acc100(13)
      acc100(39)=Qspval6k2*acc100(7)
      acc100(39)=acc100(4)+acc100(39)
      acc100(39)=Qspvak7l6*acc100(39)
      brack=acc100(16)+acc100(28)+acc100(29)+acc100(30)+acc100(31)+acc100(32)+a&
      &cc100(33)+acc100(34)+acc100(35)+acc100(36)+acc100(37)+acc100(38)+acc100(&
      &39)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d100h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d100h7l1
