module     p0_dbaru_epnebbbarg_d100h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d100h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd100h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc100(25)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      acc100(1)=abb100(10)
      acc100(2)=abb100(12)
      acc100(3)=abb100(13)
      acc100(4)=abb100(14)
      acc100(5)=abb100(15)
      acc100(6)=abb100(16)
      acc100(7)=abb100(17)
      acc100(8)=abb100(18)
      acc100(9)=abb100(19)
      acc100(10)=abb100(20)
      acc100(11)=abb100(21)
      acc100(12)=abb100(24)
      acc100(13)=abb100(25)
      acc100(14)=abb100(28)
      acc100(15)=abb100(29)
      acc100(16)=abb100(33)
      acc100(17)=abb100(41)
      acc100(18)=Qspk7+Qspl6
      acc100(18)=acc100(15)*acc100(18)
      acc100(19)=Qspvak1k2*acc100(1)
      acc100(20)=Qspvak4k2*acc100(12)
      acc100(21)=Qspvak7l6*acc100(2)
      acc100(22)=Qspvak7k2*acc100(3)
      acc100(18)=acc100(22)+acc100(21)+acc100(20)+acc100(19)+acc100(14)+acc100(&
      &18)
      acc100(18)=Qspvak7k2*acc100(18)
      acc100(19)=acc100(10)*QspQ
      acc100(20)=Qspl6*acc100(16)
      acc100(21)=Qspval6k2*acc100(7)
      acc100(22)=Qspk2*acc100(4)
      acc100(23)=Qspk2*acc100(6)
      acc100(23)=acc100(9)+acc100(23)
      acc100(23)=Qspvak1k2*acc100(23)
      acc100(24)=Qspk2*acc100(13)
      acc100(24)=acc100(11)+acc100(24)
      acc100(24)=Qspvak4k2*acc100(24)
      acc100(25)=Qspval6k2*acc100(8)
      acc100(25)=acc100(17)+acc100(25)
      acc100(25)=Qspvak7l6*acc100(25)
      brack=acc100(5)+acc100(18)+acc100(19)+acc100(20)+acc100(21)+acc100(22)+ac&
      &c100(23)+acc100(24)+acc100(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d100h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d100h6l1
