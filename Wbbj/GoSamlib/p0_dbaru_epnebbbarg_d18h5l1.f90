module     p0_dbaru_epnebbbarg_d18h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d18h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd18h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc18(23)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      acc18(1)=abb18(13)
      acc18(2)=abb18(14)
      acc18(3)=abb18(15)
      acc18(4)=abb18(16)
      acc18(5)=abb18(17)
      acc18(6)=abb18(18)
      acc18(7)=abb18(20)
      acc18(8)=abb18(22)
      acc18(9)=abb18(23)
      acc18(10)=abb18(25)
      acc18(11)=abb18(34)
      acc18(12)=abb18(41)
      acc18(13)=abb18(54)
      acc18(14)=abb18(65)
      acc18(15)=abb18(73)
      acc18(16)=Qspval5k2*acc18(3)
      acc18(17)=Qspval6k2*acc18(6)
      acc18(18)=Qspval6l5*acc18(9)
      acc18(19)=Qspk2*acc18(14)
      acc18(16)=acc18(19)+acc18(18)+acc18(17)+acc18(12)+acc18(16)
      acc18(16)=Qspk2*acc18(16)
      acc18(17)=Qspval5k2*acc18(4)
      acc18(18)=Qspval6k2*acc18(2)
      acc18(17)=acc18(18)+acc18(8)+acc18(17)
      acc18(17)=Qspval6l5*acc18(17)
      acc18(18)=acc18(15)*QspQ
      acc18(19)=acc18(13)*Qspl6
      acc18(20)=acc18(10)*Qspl5
      acc18(21)=acc18(5)*Qspvak2l5
      acc18(22)=Qspval5k2*acc18(1)
      acc18(23)=Qspval6k2*acc18(7)
      brack=acc18(11)+acc18(16)+acc18(17)+acc18(18)+acc18(19)+acc18(20)+acc18(2&
      &1)+acc18(22)+acc18(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd18h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d18
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d18 = 0.0_ki
      d18 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d18, ki), aimag(d18), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d18h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd18h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d18
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d18 = 0.0_ki
      d18 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d18, ki), aimag(d18), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d18h5l1
