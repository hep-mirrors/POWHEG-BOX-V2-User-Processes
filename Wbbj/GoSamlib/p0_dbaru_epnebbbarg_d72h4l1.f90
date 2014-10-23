module     p0_dbaru_epnebbbarg_d72h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d72h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc72(40)
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k2
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      QspQ = dotproduct(Q,Q)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      acc72(1)=abb72(8)
      acc72(2)=abb72(9)
      acc72(3)=abb72(10)
      acc72(4)=abb72(11)
      acc72(5)=abb72(12)
      acc72(6)=abb72(13)
      acc72(7)=abb72(14)
      acc72(8)=abb72(15)
      acc72(9)=abb72(16)
      acc72(10)=abb72(17)
      acc72(11)=abb72(18)
      acc72(12)=abb72(19)
      acc72(13)=abb72(20)
      acc72(14)=abb72(21)
      acc72(15)=abb72(22)
      acc72(16)=abb72(23)
      acc72(17)=abb72(24)
      acc72(18)=abb72(25)
      acc72(19)=abb72(26)
      acc72(20)=abb72(27)
      acc72(21)=abb72(28)
      acc72(22)=abb72(31)
      acc72(23)=abb72(32)
      acc72(24)=abb72(33)
      acc72(25)=abb72(34)
      acc72(26)=abb72(35)
      acc72(27)=abb72(36)
      acc72(28)=acc72(8)*Qspval5k1
      acc72(29)=acc72(18)*Qspval5k3
      acc72(30)=acc72(20)*QspQ
      acc72(31)=acc72(22)*Qspvak7k3
      acc72(32)=acc72(24)*Qspval5k2
      acc72(33)=acc72(25)*Qspvak7k2
      acc72(34)=acc72(27)*Qspvak7k1
      acc72(28)=acc72(33)+acc72(32)+acc72(34)+acc72(31)+acc72(30)+acc72(29)+acc&
      &72(28)+acc72(4)
      acc72(28)=Qspvak1k2*acc72(28)
      acc72(29)=acc72(1)*Qspvak7k2
      acc72(30)=acc72(5)*Qspval5k2
      acc72(29)=acc72(6)+acc72(30)+acc72(29)
      acc72(29)=acc72(29)*Qspvak1k2
      acc72(30)=acc72(10)*Qspval5k2
      acc72(31)=acc72(13)*Qspvak7k2
      acc72(29)=acc72(31)+acc72(12)+acc72(30)+acc72(29)
      acc72(29)=Qspvak4k3*acc72(29)
      acc72(30)=-Qspk1+Qspk4+Qspk3
      acc72(31)=acc72(23)*Qspvak1k2
      acc72(31)=acc72(31)+acc72(26)
      acc72(30)=acc72(31)*acc72(30)
      acc72(31)=acc72(2)*Qspvak7k2
      acc72(32)=acc72(3)*Qspval5k1
      acc72(33)=acc72(7)*Qspval5k2
      acc72(34)=acc72(11)*Qspvak7k3
      acc72(35)=acc72(14)*Qspvak7k1
      acc72(36)=acc72(15)*QspQ
      acc72(37)=acc72(17)*Qspval5k3
      acc72(38)=Qspvak7l6*acc72(19)
      acc72(39)=Qspval5l6*acc72(9)
      acc72(40)=Qspvak4k2*acc72(16)
      brack=acc72(21)+acc72(28)+acc72(29)+acc72(30)+acc72(31)+acc72(32)+acc72(3&
      &3)+acc72(34)+acc72(35)+acc72(36)+acc72(37)+acc72(38)+acc72(39)+acc72(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d72h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d72h4l1
