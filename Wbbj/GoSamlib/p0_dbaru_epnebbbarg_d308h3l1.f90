module     p0_dbaru_epnebbbarg_d308h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d308h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc308(45)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc308(1)=abb308(10)
      acc308(2)=abb308(11)
      acc308(3)=abb308(12)
      acc308(4)=abb308(13)
      acc308(5)=abb308(14)
      acc308(6)=abb308(15)
      acc308(7)=abb308(16)
      acc308(8)=abb308(17)
      acc308(9)=abb308(18)
      acc308(10)=abb308(19)
      acc308(11)=abb308(20)
      acc308(12)=abb308(21)
      acc308(13)=abb308(22)
      acc308(14)=abb308(23)
      acc308(15)=abb308(24)
      acc308(16)=abb308(25)
      acc308(17)=abb308(26)
      acc308(18)=abb308(27)
      acc308(19)=abb308(28)
      acc308(20)=abb308(29)
      acc308(21)=abb308(30)
      acc308(22)=abb308(31)
      acc308(23)=abb308(33)
      acc308(24)=abb308(34)
      acc308(25)=abb308(35)
      acc308(26)=abb308(36)
      acc308(27)=abb308(41)
      acc308(28)=abb308(42)
      acc308(29)=abb308(44)
      acc308(30)=abb308(48)
      acc308(31)=abb308(52)
      acc308(32)=abb308(55)
      acc308(33)=abb308(64)
      acc308(34)=Qspvak2l5*acc308(15)
      acc308(34)=acc308(34)+acc308(21)
      acc308(34)=Qspvak1k2*acc308(34)
      acc308(35)=acc308(20)*Qspvak7l6
      acc308(36)=Qspvak2l5*acc308(16)
      acc308(36)=acc308(8)+acc308(36)
      acc308(36)=Qspvak4k2*acc308(36)
      acc308(37)=Qspvak7k2*acc308(6)
      acc308(38)=Qspl6*acc308(14)
      acc308(39)=Qspvak1l6*acc308(18)
      acc308(40)=Qspvak4l6*acc308(22)
      acc308(41)=QspQ*acc308(4)
      acc308(42)=Qspk7*acc308(12)
      acc308(43)=Qspvak2l6*acc308(9)
      acc308(44)=Qspk2*acc308(19)
      acc308(45)=Qspvak2k7*acc308(25)
      acc308(34)=acc308(45)+acc308(44)+acc308(43)+acc308(42)+acc308(41)+acc308(&
      &40)+acc308(39)+acc308(38)+acc308(37)+acc308(36)+acc308(35)+acc308(2)+acc&
      &308(34)
      acc308(34)=Qspvak2k7*acc308(34)
      acc308(35)=Qspl6*acc308(28)
      acc308(36)=Qspvak1l6*acc308(17)
      acc308(37)=Qspvak4l6*acc308(31)
      acc308(38)=QspQ*acc308(1)
      acc308(39)=Qspk7*acc308(27)
      acc308(40)=Qspvak2l6*acc308(3)
      acc308(41)=Qspk2*acc308(29)
      acc308(35)=acc308(41)+acc308(40)+acc308(39)+acc308(38)+acc308(37)+acc308(&
      &36)+acc308(10)+acc308(35)
      acc308(35)=Qspk2*acc308(35)
      acc308(36)=QspQ*acc308(5)
      acc308(37)=Qspk7*acc308(26)
      acc308(36)=acc308(37)+acc308(13)+acc308(36)
      acc308(36)=Qspvak2l6*acc308(36)
      acc308(37)=Qspvak7k2*acc308(7)
      acc308(38)=Qspl6*acc308(32)
      acc308(39)=Qspvak1l6*acc308(11)
      acc308(40)=Qspvak4l6*acc308(30)
      acc308(41)=QspQ*acc308(23)
      acc308(42)=Qspk7*acc308(33)
      brack=acc308(24)+acc308(34)+acc308(35)+acc308(36)+acc308(37)+acc308(38)+a&
      &cc308(39)+acc308(40)+acc308(41)+acc308(42)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d308h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d308h3l1
