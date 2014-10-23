module     p0_dbaru_epnebbbarg_d305h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d305h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd305h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc305(47)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1k7
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc305(1)=abb305(9)
      acc305(2)=abb305(10)
      acc305(3)=abb305(11)
      acc305(4)=abb305(12)
      acc305(5)=abb305(13)
      acc305(6)=abb305(14)
      acc305(7)=abb305(15)
      acc305(8)=abb305(16)
      acc305(9)=abb305(17)
      acc305(10)=abb305(18)
      acc305(11)=abb305(19)
      acc305(12)=abb305(20)
      acc305(13)=abb305(21)
      acc305(14)=abb305(22)
      acc305(15)=abb305(23)
      acc305(16)=abb305(24)
      acc305(17)=abb305(25)
      acc305(18)=abb305(26)
      acc305(19)=abb305(28)
      acc305(20)=abb305(29)
      acc305(21)=abb305(30)
      acc305(22)=abb305(31)
      acc305(23)=abb305(32)
      acc305(24)=abb305(33)
      acc305(25)=abb305(34)
      acc305(26)=abb305(36)
      acc305(27)=abb305(37)
      acc305(28)=abb305(38)
      acc305(29)=abb305(39)
      acc305(30)=abb305(40)
      acc305(31)=abb305(41)
      acc305(32)=abb305(45)
      acc305(33)=abb305(46)
      acc305(34)=abb305(48)
      acc305(35)=Qspvak1k2*acc305(14)
      acc305(36)=Qspvak4k2*acc305(17)
      acc305(35)=acc305(36)+acc305(27)+acc305(35)
      acc305(35)=Qspvak2l5*acc305(35)
      acc305(36)=Qspvak1l5*acc305(23)
      acc305(37)=Qspvak4l5*acc305(25)
      acc305(36)=acc305(37)+acc305(2)+acc305(36)
      acc305(36)=Qspk2*acc305(36)
      acc305(37)=acc305(18)*Qspvak7k2
      acc305(38)=Qspvak1l6*acc305(9)
      acc305(39)=Qspvak4l6*acc305(19)
      acc305(40)=acc305(13)*Qspvak7l5
      acc305(41)=Qspvak2l6*acc305(3)
      acc305(41)=acc305(1)+acc305(41)
      acc305(41)=Qspvak1k2*acc305(41)
      acc305(42)=Qspvak1l5*acc305(15)
      acc305(43)=Qspvak2l6*acc305(24)
      acc305(43)=acc305(8)+acc305(43)
      acc305(43)=Qspvak4k2*acc305(43)
      acc305(44)=Qspvak4l5*acc305(16)
      acc305(45)=QspQ*acc305(5)
      acc305(46)=Qspk7*acc305(6)
      acc305(47)=Qspvak2k7*acc305(7)
      acc305(35)=acc305(47)+acc305(36)+acc305(35)+acc305(46)+acc305(45)+acc305(&
      &44)+acc305(43)+acc305(42)+acc305(41)+acc305(40)+acc305(39)+acc305(38)+ac&
      &c305(37)+acc305(4)
      acc305(35)=Qspvak2k7*acc305(35)
      acc305(36)=acc305(32)*Qspvak4k7
      acc305(37)=acc305(10)*Qspvak1k7
      acc305(38)=QspQ*acc305(28)
      acc305(39)=Qspk7*acc305(26)
      acc305(36)=acc305(39)+acc305(38)+acc305(37)+acc305(36)+acc305(29)
      acc305(36)=Qspk2*acc305(36)
      acc305(37)=QspQ*acc305(13)
      acc305(38)=Qspk7*acc305(11)
      acc305(37)=acc305(38)+acc305(21)+acc305(37)
      acc305(37)=Qspvak2l5*acc305(37)
      acc305(38)=Qspvak1l6*acc305(30)
      acc305(39)=Qspvak4l6*acc305(34)
      acc305(40)=Qspvak1l5*acc305(31)
      acc305(41)=Qspvak4l5*acc305(33)
      acc305(42)=QspQ*acc305(20)
      acc305(43)=Qspk7*acc305(22)
      brack=acc305(12)+acc305(35)+acc305(36)+acc305(37)+acc305(38)+acc305(39)+a&
      &cc305(40)+acc305(41)+acc305(42)+acc305(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd305h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d305h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd305h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d305h3l1
