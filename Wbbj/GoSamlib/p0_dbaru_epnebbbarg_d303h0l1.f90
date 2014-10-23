module     p0_dbaru_epnebbbarg_d303h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d303h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd303h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc303(29)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5l6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      acc303(1)=abb303(11)
      acc303(2)=abb303(12)
      acc303(3)=abb303(13)
      acc303(4)=abb303(14)
      acc303(5)=abb303(15)
      acc303(6)=abb303(16)
      acc303(7)=abb303(17)
      acc303(8)=abb303(18)
      acc303(9)=abb303(19)
      acc303(10)=abb303(20)
      acc303(11)=abb303(21)
      acc303(12)=abb303(22)
      acc303(13)=abb303(23)
      acc303(14)=abb303(24)
      acc303(15)=abb303(25)
      acc303(16)=abb303(27)
      acc303(17)=abb303(29)
      acc303(18)=abb303(34)
      acc303(19)=abb303(40)
      acc303(20)=abb303(41)
      acc303(21)=abb303(54)
      acc303(22)=abb303(63)
      acc303(23)=-Qspvak1k2*acc303(6)
      acc303(24)=-Qspvak4k2*acc303(12)
      acc303(23)=acc303(24)+acc303(5)+acc303(23)
      acc303(23)=Qspvak2k7*acc303(23)
      acc303(24)=acc303(11)*Qspval6k7
      acc303(25)=Qspvak1k2*acc303(7)
      acc303(26)=Qspvak4k2*acc303(16)
      acc303(27)=Qspval6k2*acc303(15)
      acc303(28)=Qspk2*acc303(4)
      acc303(23)=acc303(28)+acc303(27)+acc303(23)+acc303(26)+acc303(25)+acc303(&
      &24)+acc303(8)
      acc303(23)=Qspval5k2*acc303(23)
      acc303(24)=QspQ*acc303(14)
      acc303(25)=Qspl5*acc303(21)
      acc303(26)=Qspval5k7*acc303(3)
      acc303(27)=Qspk2*acc303(22)
      acc303(24)=acc303(27)+acc303(26)+acc303(25)+acc303(19)+acc303(24)
      acc303(24)=Qspk2*acc303(24)
      acc303(25)=QspQ*acc303(17)
      acc303(26)=Qspl5*acc303(20)
      acc303(27)=Qspvak7k2*acc303(18)
      acc303(28)=Qspvak7k2*acc303(9)
      acc303(28)=acc303(2)+acc303(28)
      acc303(28)=Qspval5k7*acc303(28)
      acc303(29)=acc303(10)*Qspval5l6
      acc303(29)=acc303(29)+acc303(1)
      acc303(29)=Qspval6k2*acc303(29)
      brack=acc303(13)+acc303(23)+acc303(24)+acc303(25)+acc303(26)+acc303(27)+a&
      &cc303(28)+acc303(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d303h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d303h0l1
