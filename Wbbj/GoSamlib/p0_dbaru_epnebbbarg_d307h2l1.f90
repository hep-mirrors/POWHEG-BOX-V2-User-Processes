module     p0_dbaru_epnebbbarg_d307h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d307h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd307h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc307(22)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      acc307(1)=abb307(10)
      acc307(2)=abb307(11)
      acc307(3)=abb307(12)
      acc307(4)=abb307(13)
      acc307(5)=abb307(14)
      acc307(6)=abb307(15)
      acc307(7)=abb307(16)
      acc307(8)=abb307(17)
      acc307(9)=abb307(18)
      acc307(10)=abb307(19)
      acc307(11)=abb307(21)
      acc307(12)=abb307(22)
      acc307(13)=abb307(23)
      acc307(14)=abb307(24)
      acc307(15)=abb307(25)
      acc307(16)=abb307(28)
      acc307(17)=acc307(2)*Qspvak1k2
      acc307(18)=acc307(5)*Qspvak4k2
      acc307(17)=acc307(18)+acc307(17)+acc307(1)
      acc307(17)=acc307(17)*Qspk2
      acc307(18)=acc307(14)*Qspvak4k2
      acc307(19)=acc307(15)*Qspvak1k2
      acc307(17)=acc307(19)+acc307(18)+acc307(4)+acc307(17)
      acc307(17)=Qspvak2k7*acc307(17)
      acc307(18)=acc307(12)*Qspvak2k7
      acc307(19)=acc307(7)*Qspk2
      acc307(20)=acc307(16)*Qspvak2l6
      acc307(19)=acc307(20)+acc307(19)+acc307(6)-acc307(18)
      acc307(19)=QspQ*acc307(19)
      acc307(20)=acc307(11)*Qspvak2k7
      acc307(20)=acc307(20)+acc307(3)
      acc307(20)=Qspval6k2*acc307(20)
      acc307(18)=acc307(13)-acc307(18)
      acc307(18)=Qspl6*acc307(18)
      acc307(21)=acc307(9)*Qspvak2l6
      acc307(22)=acc307(10)*Qspk2
      brack=acc307(8)+acc307(17)+acc307(18)+acc307(19)+acc307(20)+acc307(21)+ac&
      &c307(22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd307h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d307h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd307h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d307h2l1
