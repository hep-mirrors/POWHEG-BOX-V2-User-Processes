module     p0_dbaru_epnebbbarg_d301h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d301h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd301h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc301(18)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc301(1)=abb301(8)
      acc301(2)=abb301(9)
      acc301(3)=abb301(10)
      acc301(4)=abb301(11)
      acc301(5)=abb301(12)
      acc301(6)=abb301(13)
      acc301(7)=abb301(14)
      acc301(8)=abb301(15)
      acc301(9)=abb301(17)
      acc301(10)=abb301(18)
      acc301(11)=abb301(19)
      acc301(12)=abb301(20)
      acc301(13)=abb301(22)
      acc301(14)=acc301(1)*Qspvak4k2
      acc301(15)=acc301(2)*Qspvak1k2
      acc301(14)=acc301(14)+acc301(15)
      acc301(14)=acc301(14)*Qspval5l6
      acc301(15)=acc301(4)*Qspvak1k2
      acc301(16)=acc301(10)*Qspvak4k2
      acc301(17)=Qspval5k2*acc301(3)
      acc301(18)=Qspl5*acc301(9)
      acc301(14)=acc301(16)+acc301(15)+acc301(14)+acc301(18)+acc301(17)+acc301(&
      &5)
      acc301(14)=Qspvak7k2*acc301(14)
      acc301(15)=acc301(8)*Qspvak4k2
      acc301(16)=acc301(12)*Qspvak1k2
      acc301(15)=acc301(13)+acc301(16)+acc301(15)
      acc301(15)=Qspk2*acc301(15)
      acc301(16)=acc301(6)*Qspvak4k2
      acc301(17)=acc301(7)*Qspvak1k2
      acc301(16)=acc301(11)+acc301(17)+acc301(16)
      acc301(16)=QspQ*acc301(16)
      brack=acc301(14)+acc301(15)+acc301(16)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd301h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d301h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd301h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d301h6l1
