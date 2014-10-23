module     p0_dbaru_epnebbbarg_d176h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d176h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd176h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc176(54)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc176(1)=abb176(14)
      acc176(2)=abb176(15)
      acc176(3)=abb176(16)
      acc176(4)=abb176(17)
      acc176(5)=abb176(18)
      acc176(6)=abb176(19)
      acc176(7)=abb176(20)
      acc176(8)=abb176(21)
      acc176(9)=abb176(22)
      acc176(10)=abb176(23)
      acc176(11)=abb176(24)
      acc176(12)=abb176(25)
      acc176(13)=abb176(26)
      acc176(14)=abb176(27)
      acc176(15)=abb176(28)
      acc176(16)=abb176(29)
      acc176(17)=abb176(30)
      acc176(18)=abb176(31)
      acc176(19)=abb176(32)
      acc176(20)=abb176(33)
      acc176(21)=abb176(34)
      acc176(22)=abb176(35)
      acc176(23)=abb176(36)
      acc176(24)=abb176(37)
      acc176(25)=abb176(38)
      acc176(26)=abb176(39)
      acc176(27)=abb176(43)
      acc176(28)=abb176(44)
      acc176(29)=abb176(46)
      acc176(30)=abb176(51)
      acc176(31)=abb176(53)
      acc176(32)=abb176(58)
      acc176(33)=acc176(25)*Qspvak2l5
      acc176(34)=acc176(29)*Qspvak2l6
      acc176(35)=acc176(32)*Qspvak2k7
      acc176(33)=acc176(35)+acc176(34)+acc176(28)+acc176(33)
      acc176(33)=Qspvak4k2*acc176(33)
      acc176(34)=acc176(16)*Qspvak2k7
      acc176(35)=acc176(19)*Qspvak2l6
      acc176(36)=acc176(22)*Qspvak2l5
      acc176(34)=acc176(36)+acc176(35)+acc176(34)+acc176(13)
      acc176(34)=Qspvak1k3*acc176(34)
      acc176(35)=acc176(5)*Qspvak2k7
      acc176(36)=acc176(20)*Qspvak2l6
      acc176(37)=acc176(23)*Qspvak2l5
      acc176(35)=acc176(37)+acc176(36)+acc176(3)+acc176(35)
      acc176(35)=Qspvak1k2*acc176(35)
      acc176(36)=acc176(10)*Qspvak2l6
      acc176(37)=acc176(30)*Qspvak2l5
      acc176(38)=acc176(31)*Qspvak2k7
      acc176(39)=Qspvak7l6*acc176(27)
      acc176(40)=Qspvak7l5*acc176(24)
      acc176(41)=Qspval5k7*acc176(1)
      acc176(42)=Qspval5l6*acc176(7)
      acc176(43)=Qspvak4k7*acc176(21)
      acc176(44)=Qspvak4l6*acc176(26)
      acc176(45)=Qspvak4l5*acc176(15)
      acc176(46)=Qspvak2k3*acc176(9)
      acc176(47)=Qspvak1k7*acc176(4)
      acc176(48)=Qspvak1l6*acc176(14)
      acc176(49)=Qspvak1l5*acc176(8)
      acc176(50)=Qspk7*acc176(11)
      acc176(51)=Qspl6*acc176(12)
      acc176(52)=Qspl5*acc176(17)
      acc176(53)=Qspk2*acc176(2)
      acc176(54)=QspQ*acc176(18)
      brack=acc176(6)+acc176(33)+acc176(34)+acc176(35)+acc176(36)+acc176(37)+ac&
      &c176(38)+acc176(39)+acc176(40)+acc176(41)+acc176(42)+acc176(43)+acc176(4&
      &4)+acc176(45)+acc176(46)+acc176(47)+acc176(48)+acc176(49)+acc176(50)+acc&
      &176(51)+acc176(52)+acc176(53)+acc176(54)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d176
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d176 = 0.0_ki
      d176 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d176, ki), aimag(d176), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d176h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d176
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d176 = 0.0_ki
      d176 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d176, ki), aimag(d176), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d176h3l1
