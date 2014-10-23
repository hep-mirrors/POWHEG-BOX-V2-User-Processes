module     p0_dbaru_epnebbbarg_d75h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d75h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc75(30)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl5
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl5 = dotproduct(Q,l5)
      acc75(1)=abb75(7)
      acc75(2)=abb75(8)
      acc75(3)=abb75(9)
      acc75(4)=abb75(10)
      acc75(5)=abb75(11)
      acc75(6)=abb75(12)
      acc75(7)=abb75(13)
      acc75(8)=abb75(14)
      acc75(9)=abb75(15)
      acc75(10)=abb75(16)
      acc75(11)=abb75(17)
      acc75(12)=abb75(18)
      acc75(13)=abb75(19)
      acc75(14)=abb75(20)
      acc75(15)=abb75(21)
      acc75(16)=abb75(24)
      acc75(17)=abb75(28)
      acc75(18)=abb75(30)
      acc75(19)=abb75(31)
      acc75(20)=abb75(32)
      acc75(21)=abb75(33)
      acc75(22)=abb75(34)
      acc75(23)=QspQ*acc75(12)
      acc75(24)=Qspk2*acc75(3)
      acc75(25)=Qspvak4k2*acc75(2)
      acc75(26)=Qspval5k3*acc75(22)
      acc75(27)=Qspvak4k3*acc75(6)
      acc75(27)=acc75(1)+acc75(27)
      acc75(27)=Qspval5k2*acc75(27)
      acc75(23)=acc75(27)+acc75(26)+acc75(25)+acc75(24)+acc75(8)+acc75(23)
      acc75(23)=Qspval6k2*acc75(23)
      acc75(24)=QspQ*acc75(19)
      acc75(25)=Qspk2*acc75(18)
      acc75(26)=Qspvak4k2*acc75(14)
      acc75(27)=Qspval5k3*acc75(21)
      acc75(28)=Qspvak4k3*acc75(7)
      acc75(28)=acc75(5)+acc75(28)
      acc75(28)=Qspval5k2*acc75(28)
      acc75(24)=acc75(28)+acc75(27)+acc75(26)+acc75(25)+acc75(11)+acc75(24)
      acc75(24)=Qspvak7k2*acc75(24)
      acc75(25)=acc75(13)*Qspl5
      acc75(26)=QspQ*acc75(16)
      acc75(27)=Qspk2*acc75(17)
      acc75(28)=Qspvak4k2*acc75(10)
      acc75(29)=Qspval5k3*acc75(20)
      acc75(30)=Qspvak4k3*acc75(4)
      acc75(30)=acc75(15)+acc75(30)
      acc75(30)=Qspval5k2*acc75(30)
      brack=acc75(9)+acc75(23)+acc75(24)+acc75(25)+acc75(26)+acc75(27)+acc75(28&
      &)+acc75(29)+acc75(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d75h4l1
