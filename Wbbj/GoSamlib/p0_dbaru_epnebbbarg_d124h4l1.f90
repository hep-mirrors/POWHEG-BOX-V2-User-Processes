module     p0_dbaru_epnebbbarg_d124h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d124h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc124(27)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc124(1)=abb124(9)
      acc124(2)=abb124(10)
      acc124(3)=abb124(11)
      acc124(4)=abb124(12)
      acc124(5)=abb124(13)
      acc124(6)=abb124(14)
      acc124(7)=abb124(15)
      acc124(8)=abb124(16)
      acc124(9)=abb124(17)
      acc124(10)=abb124(18)
      acc124(11)=abb124(20)
      acc124(12)=abb124(21)
      acc124(13)=abb124(22)
      acc124(14)=abb124(23)
      acc124(15)=abb124(26)
      acc124(16)=abb124(30)
      acc124(17)=acc124(8)*Qspval6k2
      acc124(18)=acc124(6)*Qspvak1k2
      acc124(19)=acc124(3)*Qspval5k2
      acc124(17)=acc124(19)+acc124(17)+acc124(18)
      acc124(17)=Qspvak4k3*acc124(17)
      acc124(18)=acc124(16)*Qspval6k7
      acc124(19)=acc124(14)*Qspval5k7
      acc124(20)=acc124(12)*Qspvak1k7
      acc124(21)=acc124(9)*Qspval6k3
      acc124(22)=acc124(2)*Qspvak1k3
      acc124(23)=acc124(1)*Qspval5k3
      acc124(24)=Qspk7*acc124(13)
      acc124(25)=QspQ*acc124(11)
      acc124(26)=Qspvak4k2*acc124(5)
      acc124(27)=Qspvak7k2*acc124(15)
      acc124(17)=acc124(27)+acc124(17)+acc124(26)+acc124(25)+acc124(24)+acc124(&
      &23)+acc124(22)+acc124(21)+acc124(20)+acc124(18)+acc124(19)
      acc124(17)=Qspvak7k2*acc124(17)
      acc124(18)=Qspk7*acc124(10)
      acc124(19)=QspQ*acc124(7)
      acc124(18)=acc124(18)+acc124(19)
      acc124(18)=Qspvak4k2*acc124(18)
      acc124(19)=QspQ*acc124(4)
      brack=acc124(17)+acc124(18)+acc124(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d124h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d124h4l1
