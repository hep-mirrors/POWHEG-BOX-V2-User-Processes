module     p0_dbaru_epnebbbarg_d300h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d300h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc300(40)
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc300(1)=abb300(10)
      acc300(2)=abb300(11)
      acc300(3)=abb300(12)
      acc300(4)=abb300(13)
      acc300(5)=abb300(14)
      acc300(6)=abb300(15)
      acc300(7)=abb300(16)
      acc300(8)=abb300(17)
      acc300(9)=abb300(18)
      acc300(10)=abb300(19)
      acc300(11)=abb300(20)
      acc300(12)=abb300(21)
      acc300(13)=abb300(22)
      acc300(14)=abb300(23)
      acc300(15)=abb300(24)
      acc300(16)=abb300(25)
      acc300(17)=abb300(26)
      acc300(18)=abb300(27)
      acc300(19)=abb300(34)
      acc300(20)=abb300(35)
      acc300(21)=abb300(37)
      acc300(22)=abb300(38)
      acc300(23)=abb300(39)
      acc300(24)=abb300(41)
      acc300(25)=abb300(42)
      acc300(26)=abb300(43)
      acc300(27)=abb300(44)
      acc300(28)=abb300(46)
      acc300(29)=QspQ*acc300(13)
      acc300(30)=Qspl5*acc300(7)
      acc300(31)=Qspval5k1*acc300(4)
      acc300(32)=Qspval5k3*acc300(18)
      acc300(33)=Qspval5l6*acc300(15)
      acc300(34)=Qspval5k7*acc300(17)
      acc300(35)=Qspk2*acc300(12)
      acc300(36)=Qspvak4k3*acc300(2)
      acc300(36)=acc300(3)+acc300(36)
      acc300(36)=Qspval5k2*acc300(36)
      acc300(29)=acc300(36)+acc300(35)+acc300(34)+acc300(33)+acc300(32)+acc300(&
      &31)+acc300(30)+acc300(5)+acc300(29)
      acc300(29)=Qspvak1k2*acc300(29)
      acc300(30)=Qspvak4k2*acc300(10)
      acc300(31)=Qspvak4k3*acc300(1)
      acc300(32)=Qspval6k2*acc300(27)
      acc300(33)=Qspk2*acc300(24)
      acc300(34)=Qspval5k2*acc300(25)
      acc300(30)=acc300(34)+acc300(33)+acc300(32)+acc300(31)+acc300(6)+acc300(3&
      &0)
      acc300(30)=Qspval5k2*acc300(30)
      acc300(31)=QspQ*acc300(20)
      acc300(32)=Qspl5*acc300(16)
      acc300(33)=Qspvak4k2*acc300(9)
      acc300(34)=Qspval5k1*acc300(28)
      acc300(35)=Qspval5k3*acc300(21)
      acc300(36)=Qspval5l6*acc300(19)
      acc300(37)=Qspval5k7*acc300(8)
      acc300(38)=Qspval6k2*acc300(23)
      acc300(39)=Qspk2*acc300(14)
      acc300(40)=Qspval5k2*acc300(26)
      acc300(40)=acc300(22)+acc300(40)
      acc300(40)=Qspvak7k2*acc300(40)
      acc300(29)=acc300(40)+acc300(29)+acc300(30)+acc300(39)+acc300(38)+acc300(&
      &37)+acc300(36)+acc300(35)+acc300(34)+acc300(33)+acc300(32)+acc300(11)+ac&
      &c300(31)
      brack=Qspvak7k2*acc300(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d300h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d300h4l1
