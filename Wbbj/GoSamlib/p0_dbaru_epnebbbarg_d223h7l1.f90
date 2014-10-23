module     p0_dbaru_epnebbbarg_d223h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d223h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd223h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc223(25)
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc223(1)=abb223(10)
      acc223(2)=abb223(11)
      acc223(3)=abb223(12)
      acc223(4)=abb223(13)
      acc223(5)=abb223(14)
      acc223(6)=abb223(15)
      acc223(7)=abb223(16)
      acc223(8)=abb223(17)
      acc223(9)=abb223(18)
      acc223(10)=abb223(19)
      acc223(11)=abb223(20)
      acc223(12)=abb223(21)
      acc223(13)=abb223(22)
      acc223(14)=abb223(24)
      acc223(15)=abb223(26)
      acc223(16)=abb223(30)
      acc223(17)=abb223(45)
      acc223(18)=acc223(4)*Qspk2
      acc223(19)=acc223(7)*Qspvak2l5
      acc223(20)=acc223(15)*Qspvak2l6
      acc223(21)=Qspvak4l6*acc223(8)
      acc223(22)=Qspvak4l5*acc223(17)
      acc223(23)=Qspvak1l6*acc223(5)
      acc223(24)=Qspvak1l5*acc223(11)
      acc223(18)=acc223(24)+acc223(23)+acc223(22)+acc223(21)+acc223(20)+acc223(&
      &10)+acc223(19)+acc223(18)
      acc223(18)=Qspvak7k2*acc223(18)
      acc223(19)=-Qspl6-Qspl5
      acc223(20)=acc223(16)*Qspvak7k2
      acc223(20)=acc223(20)-acc223(9)
      acc223(19)=acc223(20)*acc223(19)
      acc223(20)=-Qspk1+Qspk3+Qspk4
      acc223(20)=acc223(12)*acc223(20)
      acc223(21)=acc223(3)*Qspvak2l5
      acc223(22)=acc223(6)*Qspvak2l6
      acc223(23)=acc223(13)*Qspk2
      acc223(24)=Qspk7*acc223(2)
      acc223(25)=QspQ*acc223(14)
      brack=acc223(1)+acc223(18)+acc223(19)+acc223(20)+acc223(21)+acc223(22)+ac&
      &c223(23)+acc223(24)+acc223(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d223
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2+k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d223 = 0.0_ki
      d223 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d223, ki), aimag(d223), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d223h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d223
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2+k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d223 = 0.0_ki
      d223 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d223, ki), aimag(d223), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d223h7l1
