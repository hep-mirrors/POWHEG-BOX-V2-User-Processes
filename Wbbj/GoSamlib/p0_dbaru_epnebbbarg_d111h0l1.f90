module     p0_dbaru_epnebbbarg_d111h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d111h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd111h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc111(27)
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7k2
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc111(1)=abb111(10)
      acc111(2)=abb111(11)
      acc111(3)=abb111(12)
      acc111(4)=abb111(13)
      acc111(5)=abb111(14)
      acc111(6)=abb111(15)
      acc111(7)=abb111(16)
      acc111(8)=abb111(17)
      acc111(9)=abb111(18)
      acc111(10)=abb111(19)
      acc111(11)=abb111(20)
      acc111(12)=abb111(21)
      acc111(13)=abb111(22)
      acc111(14)=abb111(23)
      acc111(15)=abb111(24)
      acc111(16)=abb111(26)
      acc111(17)=abb111(28)
      acc111(18)=abb111(30)
      acc111(19)=abb111(33)
      acc111(20)=abb111(43)
      acc111(21)=Qspk7*acc111(6)
      acc111(22)=Qspvak1k7*acc111(1)
      acc111(23)=Qspvak2k7*acc111(12)
      acc111(24)=Qspvak4k7*acc111(7)
      acc111(25)=QspQ*acc111(9)
      acc111(26)=Qspk2*acc111(4)
      acc111(21)=acc111(26)+acc111(25)+acc111(24)+acc111(23)+acc111(22)+acc111(&
      &3)+acc111(21)
      acc111(21)=Qspval5k2*acc111(21)
      acc111(22)=Qspk7*acc111(17)
      acc111(23)=Qspvak1k7*acc111(10)
      acc111(24)=Qspvak2k7*acc111(14)
      acc111(25)=Qspvak4k7*acc111(13)
      acc111(26)=QspQ*acc111(19)
      acc111(27)=Qspk2*acc111(18)
      acc111(22)=acc111(27)+acc111(26)+acc111(25)+acc111(24)+acc111(23)+acc111(&
      &15)+acc111(22)
      acc111(22)=Qspval6k2*acc111(22)
      acc111(23)=Qspl6+Qspl5
      acc111(24)=-acc111(20)*acc111(23)
      acc111(25)=Qspk2*acc111(11)
      acc111(24)=acc111(25)+acc111(16)+acc111(24)
      acc111(24)=Qspk2*acc111(24)
      acc111(25)=acc111(8)*Qspvak7k2
      acc111(23)=-acc111(5)*acc111(23)
      acc111(26)=QspQ*acc111(2)
      brack=acc111(21)+acc111(22)+acc111(23)+acc111(24)+acc111(25)+acc111(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d111
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d111 = 0.0_ki
      d111 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d111, ki), aimag(d111), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d111h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d111
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d111 = 0.0_ki
      d111 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d111, ki), aimag(d111), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d111h0l1
