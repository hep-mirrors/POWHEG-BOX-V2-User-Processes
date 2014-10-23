module     p0_dbaru_epnebbbarg_d303h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d303h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc303(25)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      acc303(1)=abb303(10)
      acc303(2)=abb303(11)
      acc303(3)=abb303(12)
      acc303(4)=abb303(13)
      acc303(5)=abb303(14)
      acc303(6)=abb303(15)
      acc303(7)=abb303(16)
      acc303(8)=abb303(17)
      acc303(9)=abb303(18)
      acc303(10)=abb303(19)
      acc303(11)=abb303(20)
      acc303(12)=abb303(21)
      acc303(13)=abb303(22)
      acc303(14)=abb303(23)
      acc303(15)=abb303(24)
      acc303(16)=abb303(26)
      acc303(17)=abb303(27)
      acc303(18)=abb303(31)
      acc303(19)=abb303(34)
      acc303(20)=acc303(11)*Qspvak1k2
      acc303(21)=acc303(14)*Qspvak4k2
      acc303(20)=acc303(21)+acc303(20)+acc303(4)
      acc303(20)=acc303(20)*Qspval5l6
      acc303(21)=acc303(6)*QspQ
      acc303(22)=acc303(9)*Qspvak4k2
      acc303(23)=acc303(10)*Qspk2
      acc303(24)=acc303(15)*Qspvak1k2
      acc303(25)=Qspl5*acc303(8)
      acc303(20)=acc303(24)+acc303(22)+acc303(20)+acc303(25)+acc303(23)+acc303(&
      &21)+acc303(5)
      acc303(20)=Qspvak7k2*acc303(20)
      acc303(21)=acc303(7)*Qspvak7k2
      acc303(22)=acc303(13)*Qspk2
      acc303(23)=acc303(18)*QspQ
      acc303(24)=Qspvak7l6*acc303(3)
      acc303(25)=Qspk7*acc303(19)
      acc303(21)=acc303(25)+acc303(24)+acc303(23)+acc303(22)+acc303(12)+acc303(&
      &21)
      acc303(21)=Qspval5k2*acc303(21)
      acc303(22)=acc303(2)*Qspval5l6
      acc303(22)=acc303(17)+acc303(22)
      acc303(22)=Qspvak4k2*acc303(22)
      acc303(23)=acc303(1)*Qspval5l6
      acc303(23)=acc303(16)+acc303(23)
      acc303(23)=Qspvak1k2*acc303(23)
      brack=acc303(20)+acc303(21)+acc303(22)+acc303(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h6
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
   & bind(c, name="p0_dbaru_epnebbbarg_d303h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h6
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
end module p0_dbaru_epnebbbarg_d303h6l1
