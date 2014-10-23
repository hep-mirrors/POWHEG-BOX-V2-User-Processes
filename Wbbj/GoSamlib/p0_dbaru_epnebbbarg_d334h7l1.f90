module     p0_dbaru_epnebbbarg_d334h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d334h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd334h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc334(24)
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc334(1)=abb334(12)
      acc334(2)=abb334(13)
      acc334(3)=abb334(14)
      acc334(4)=abb334(15)
      acc334(5)=abb334(16)
      acc334(6)=abb334(17)
      acc334(7)=abb334(18)
      acc334(8)=abb334(19)
      acc334(9)=abb334(21)
      acc334(10)=abb334(22)
      acc334(11)=abb334(23)
      acc334(12)=abb334(24)
      acc334(13)=abb334(25)
      acc334(14)=abb334(33)
      acc334(15)=abb334(38)
      acc334(16)=abb334(83)
      acc334(17)=acc334(3)*Qspl6
      acc334(18)=acc334(5)*Qspvak7l6
      acc334(19)=acc334(8)*Qspk2
      acc334(20)=acc334(10)*Qspvak2l6
      acc334(21)=Qspvak4l6*acc334(9)
      acc334(22)=Qspvak2k7*acc334(11)
      acc334(23)=Qspvak2k3*acc334(13)
      acc334(24)=Qspvak1l6*acc334(4)
      acc334(17)=acc334(24)+acc334(23)+acc334(22)+acc334(21)+acc334(20)+acc334(&
      &19)+acc334(18)+acc334(17)+acc334(1)
      acc334(17)=Qspvak7k2*acc334(17)
      acc334(18)=acc334(2)*Qspl6
      acc334(19)=acc334(7)*Qspk2
      acc334(20)=acc334(12)*Qspvak2l6
      acc334(21)=acc334(15)*Qspvak7l6
      acc334(22)=Qspk7*acc334(16)
      acc334(23)=QspQ*acc334(14)
      brack=acc334(6)+acc334(17)+acc334(18)+acc334(19)+acc334(20)+acc334(21)+ac&
      &c334(22)+acc334(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd334h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d334
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d334 = 0.0_ki
      d334 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d334, ki), aimag(d334), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d334h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd334h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d334
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d334 = 0.0_ki
      d334 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d334, ki), aimag(d334), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d334h7l1
