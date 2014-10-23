module     p0_dbaru_epnebbbarg_d74h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d74h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc74(48)
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak3k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc74(1)=abb74(8)
      acc74(2)=abb74(9)
      acc74(3)=abb74(10)
      acc74(4)=abb74(11)
      acc74(5)=abb74(12)
      acc74(6)=abb74(13)
      acc74(7)=abb74(14)
      acc74(8)=abb74(15)
      acc74(9)=abb74(16)
      acc74(10)=abb74(17)
      acc74(11)=abb74(18)
      acc74(12)=abb74(19)
      acc74(13)=abb74(20)
      acc74(14)=abb74(21)
      acc74(15)=abb74(22)
      acc74(16)=abb74(23)
      acc74(17)=abb74(24)
      acc74(18)=abb74(25)
      acc74(19)=abb74(26)
      acc74(20)=abb74(27)
      acc74(21)=abb74(28)
      acc74(22)=abb74(29)
      acc74(23)=abb74(30)
      acc74(24)=abb74(31)
      acc74(25)=abb74(32)
      acc74(26)=abb74(33)
      acc74(27)=abb74(34)
      acc74(28)=abb74(35)
      acc74(29)=abb74(36)
      acc74(30)=abb74(37)
      acc74(31)=abb74(38)
      acc74(32)=abb74(41)
      acc74(33)=abb74(42)
      acc74(34)=abb74(43)
      acc74(35)=abb74(46)
      acc74(36)=acc74(26)*Qspvak1l6
      acc74(37)=Qspvak1k2*acc74(12)
      acc74(36)=acc74(37)+acc74(2)+acc74(36)
      acc74(36)=Qspval6k2*acc74(36)
      acc74(37)=acc74(26)*Qspvak1k7
      acc74(38)=Qspvak1k2*acc74(20)
      acc74(37)=acc74(38)+acc74(8)+acc74(37)
      acc74(37)=Qspvak7k2*acc74(37)
      acc74(38)=Qspval6l5*acc74(21)
      acc74(39)=Qspvak7l5*acc74(15)
      acc74(40)=acc74(17)*Qspvak3k2
      acc74(41)=QspQ*acc74(24)
      acc74(42)=Qspvak1k2*acc74(6)
      acc74(43)=Qspvak4k2*acc74(11)
      acc74(36)=acc74(37)+acc74(36)+acc74(43)+acc74(42)+acc74(41)+acc74(40)+acc&
      &74(39)+acc74(22)+acc74(38)
      acc74(36)=Qspvak4k3*acc74(36)
      acc74(37)=-Qspk1+Qspk4+Qspk3
      acc74(38)=acc74(31)*acc74(37)
      acc74(39)=acc74(32)*Qspvak7k3
      acc74(40)=-acc74(25)*Qspvak1l6
      acc74(41)=acc74(3)*Qspvak7k1
      acc74(42)=QspQ*acc74(28)
      acc74(43)=Qspvak1k2*acc74(1)
      acc74(38)=acc74(43)+acc74(42)+acc74(41)+acc74(40)+acc74(4)+acc74(39)+acc7&
      &4(38)
      acc74(38)=Qspval6k2*acc74(38)
      acc74(39)=-acc74(35)*acc74(37)
      acc74(40)=-acc74(32)*Qspval6k3
      acc74(41)=-acc74(25)*Qspvak1k7
      acc74(42)=-acc74(3)*Qspval6k1
      acc74(43)=QspQ*acc74(27)
      acc74(44)=Qspvak1k2*acc74(30)
      acc74(39)=acc74(44)+acc74(43)+acc74(42)+acc74(41)+acc74(7)+acc74(40)+acc7&
      &4(39)
      acc74(39)=Qspvak7k2*acc74(39)
      acc74(40)=-acc74(23)*acc74(37)
      acc74(41)=-QspQ*acc74(17)
      acc74(40)=acc74(41)+acc74(18)+acc74(40)
      acc74(40)=Qspvak4k2*acc74(40)
      acc74(37)=acc74(33)*acc74(37)
      acc74(41)=Qspval6k1*acc74(10)
      acc74(42)=Qspval6k3*acc74(19)
      acc74(43)=Qspval6l5*acc74(34)
      acc74(44)=Qspvak7k1*acc74(9)
      acc74(45)=Qspvak7k3*acc74(13)
      acc74(46)=Qspvak7l5*acc74(14)
      acc74(47)=QspQ*acc74(29)
      acc74(48)=Qspvak1k2*acc74(5)
      brack=acc74(16)+acc74(36)+acc74(37)+acc74(38)+acc74(39)+acc74(40)+acc74(4&
      &1)+acc74(42)+acc74(43)+acc74(44)+acc74(45)+acc74(46)+acc74(47)+acc74(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d74
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d74 = 0.0_ki
      d74 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d74, ki), aimag(d74), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d74h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d74
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d74 = 0.0_ki
      d74 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d74, ki), aimag(d74), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d74h5l1
