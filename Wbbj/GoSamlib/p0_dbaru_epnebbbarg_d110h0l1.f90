module     p0_dbaru_epnebbbarg_d110h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d110h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd110h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc110(21)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      acc110(1)=abb110(11)
      acc110(2)=abb110(12)
      acc110(3)=abb110(13)
      acc110(4)=abb110(14)
      acc110(5)=abb110(15)
      acc110(6)=abb110(16)
      acc110(7)=abb110(17)
      acc110(8)=abb110(18)
      acc110(9)=abb110(19)
      acc110(10)=abb110(20)
      acc110(11)=abb110(21)
      acc110(12)=abb110(23)
      acc110(13)=abb110(24)
      acc110(14)=acc110(3)*Qspval6k2
      acc110(15)=Qspvak7k2*acc110(4)
      acc110(14)=acc110(15)+acc110(5)+acc110(14)
      acc110(14)=Qspvak2k7*acc110(14)
      acc110(15)=acc110(10)*Qspval6k2
      acc110(16)=acc110(11)*Qspk2
      acc110(15)=acc110(16)+acc110(15)+acc110(7)
      acc110(15)=Qspk7*acc110(15)
      acc110(16)=acc110(1)*Qspval6k2
      acc110(17)=acc110(2)*Qspk2
      acc110(18)=Qspval6k7*acc110(6)
      acc110(19)=Qspvak4k2*acc110(8)
      acc110(20)=Qspvak1k2*acc110(9)
      acc110(21)=QspQ*acc110(12)
      brack=acc110(13)+acc110(14)+acc110(15)+acc110(16)+acc110(17)+acc110(18)+a&
      &cc110(19)+acc110(20)+acc110(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd110h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d110
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d110 = 0.0_ki
      d110 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d110, ki), aimag(d110), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d110h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd110h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d110
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d110 = 0.0_ki
      d110 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d110, ki), aimag(d110), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d110h0l1
