module     p0_dbaru_epnebbbarg_d40h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d40h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd40h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc40(33)
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk7 = dotproduct(Q,k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      acc40(1)=abb40(12)
      acc40(2)=abb40(13)
      acc40(3)=abb40(14)
      acc40(4)=abb40(15)
      acc40(5)=abb40(16)
      acc40(6)=abb40(17)
      acc40(7)=abb40(18)
      acc40(8)=abb40(19)
      acc40(9)=abb40(20)
      acc40(10)=abb40(24)
      acc40(11)=abb40(27)
      acc40(12)=abb40(31)
      acc40(13)=abb40(35)
      acc40(14)=abb40(36)
      acc40(15)=abb40(40)
      acc40(16)=abb40(43)
      acc40(17)=abb40(44)
      acc40(18)=abb40(47)
      acc40(19)=abb40(57)
      acc40(20)=abb40(60)
      acc40(21)=abb40(93)
      acc40(22)=acc40(2)*Qspvak1k7
      acc40(23)=acc40(5)*Qspvak2k7
      acc40(24)=acc40(15)*Qspvak4k7
      acc40(25)=acc40(18)*Qspk7
      acc40(22)=acc40(25)+acc40(16)+acc40(24)+acc40(23)+acc40(22)
      acc40(22)=Qspval5l6*acc40(22)
      acc40(23)=acc40(4)*Qspvak2k7
      acc40(24)=acc40(7)*Qspvak1k7
      acc40(25)=acc40(14)*Qspk7
      acc40(26)=acc40(19)*Qspvak4k7
      acc40(23)=acc40(26)+acc40(25)+acc40(24)+acc40(23)+acc40(1)
      acc40(23)=Qspk2*acc40(23)
      acc40(24)=-Qspl5-Qspl6
      acc40(24)=acc40(20)*acc40(24)
      acc40(25)=acc40(3)*Qspvak2k7
      acc40(26)=acc40(21)*Qspk7
      acc40(27)=Qspvak4l6*acc40(17)
      acc40(28)=Qspvak4l5*acc40(13)
      acc40(29)=Qspvak4k2*acc40(10)
      acc40(30)=Qspvak1l6*acc40(6)
      acc40(31)=Qspvak1l5*acc40(8)
      acc40(32)=Qspvak1k2*acc40(9)
      acc40(33)=QspQ*acc40(11)
      brack=acc40(12)+acc40(22)+acc40(23)+acc40(24)+acc40(25)+acc40(26)+acc40(2&
      &7)+acc40(28)+acc40(29)+acc40(30)+acc40(31)+acc40(32)+acc40(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd40h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d40
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d40 = 0.0_ki
      d40 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d40, ki), aimag(d40), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d40h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd40h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d40
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d40 = 0.0_ki
      d40 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d40, ki), aimag(d40), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d40h2l1
