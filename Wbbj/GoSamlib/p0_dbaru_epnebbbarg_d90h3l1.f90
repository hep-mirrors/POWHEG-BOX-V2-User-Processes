module     p0_dbaru_epnebbbarg_d90h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d90h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd90h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc90(20)
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      Qspl5 = dotproduct(Q,l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc90(1)=abb90(13)
      acc90(2)=abb90(14)
      acc90(3)=abb90(15)
      acc90(4)=abb90(16)
      acc90(5)=abb90(17)
      acc90(6)=abb90(18)
      acc90(7)=abb90(19)
      acc90(8)=abb90(25)
      acc90(9)=abb90(29)
      acc90(10)=abb90(30)
      acc90(11)=abb90(33)
      acc90(12)=abb90(35)
      acc90(13)=abb90(36)
      acc90(14)=abb90(40)
      acc90(15)=Qspl5*acc90(9)
      acc90(16)=Qspval6l5*acc90(12)
      acc90(17)=Qspvak2l6*acc90(4)
      acc90(15)=acc90(17)+acc90(16)+acc90(2)+acc90(15)
      acc90(15)=Qspk2*acc90(15)
      acc90(16)=Qspvak2l5*acc90(7)
      acc90(17)=Qspvak2l6*acc90(6)
      acc90(16)=acc90(17)+acc90(10)+acc90(16)
      acc90(16)=Qspval5k2*acc90(16)
      acc90(17)=Qspvak2l5*acc90(3)
      acc90(18)=Qspvak2l6*acc90(5)
      acc90(17)=acc90(18)+acc90(14)+acc90(17)
      acc90(17)=Qspval6k2*acc90(17)
      acc90(18)=Qspl5*acc90(13)
      acc90(19)=Qspval6l5*acc90(11)
      acc90(20)=Qspvak2l5*acc90(1)
      brack=acc90(8)+acc90(15)+acc90(16)+acc90(17)+acc90(18)+acc90(19)+acc90(20)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd90h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d90
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d90 = 0.0_ki
      d90 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d90, ki), aimag(d90), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d90h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd90h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d90
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d90 = 0.0_ki
      d90 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d90, ki), aimag(d90), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d90h3l1
