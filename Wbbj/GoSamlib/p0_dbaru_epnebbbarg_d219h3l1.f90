module     p0_dbaru_epnebbbarg_d219h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d219h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd219h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc219(25)
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      acc219(1)=abb219(15)
      acc219(2)=abb219(16)
      acc219(3)=abb219(17)
      acc219(4)=abb219(19)
      acc219(5)=abb219(20)
      acc219(6)=abb219(21)
      acc219(7)=abb219(22)
      acc219(8)=abb219(23)
      acc219(9)=abb219(24)
      acc219(10)=abb219(25)
      acc219(11)=abb219(26)
      acc219(12)=abb219(31)
      acc219(13)=abb219(32)
      acc219(14)=Qspvak7l5*acc219(4)
      acc219(15)=Qspval5k7*acc219(9)
      acc219(16)=Qspvak4k7*acc219(12)
      acc219(17)=Qspvak4l5*acc219(13)
      acc219(18)=Qspvak2k7*acc219(6)
      acc219(19)=Qspvak2l5*acc219(1)
      acc219(20)=Qspvak2k3*acc219(8)
      acc219(21)=Qspvak1k7*acc219(11)
      acc219(22)=Qspvak1l5*acc219(10)
      acc219(23)=Qspk7*acc219(5)
      acc219(24)=Qspl5*acc219(7)
      acc219(25)=Qspk2*acc219(2)
      brack=acc219(3)+acc219(14)+acc219(15)+acc219(16)+acc219(17)+acc219(18)+ac&
      &c219(19)+acc219(20)+acc219(21)+acc219(22)+acc219(23)+acc219(24)+acc219(2&
      &5)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd219h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d219
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d219 = 0.0_ki
      d219 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d219, ki), aimag(d219), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d219h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd219h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d219
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d219 = 0.0_ki
      d219 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d219, ki), aimag(d219), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d219h3l1
