module     p0_dbaru_epnebbbarg_d77h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d77h1l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd77h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc77(33)
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k1
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc77(1)=abb77(8)
      acc77(2)=abb77(9)
      acc77(3)=abb77(10)
      acc77(4)=abb77(11)
      acc77(5)=abb77(12)
      acc77(6)=abb77(13)
      acc77(7)=abb77(14)
      acc77(8)=abb77(15)
      acc77(9)=abb77(16)
      acc77(10)=abb77(17)
      acc77(11)=abb77(18)
      acc77(12)=abb77(19)
      acc77(13)=abb77(20)
      acc77(14)=abb77(21)
      acc77(15)=abb77(22)
      acc77(16)=abb77(23)
      acc77(17)=abb77(25)
      acc77(18)=abb77(26)
      acc77(19)=abb77(27)
      acc77(20)=abb77(29)
      acc77(21)=abb77(41)
      acc77(22)=abb77(43)
      acc77(23)=abb77(50)
      acc77(24)=abb77(53)
      acc77(25)=abb77(55)
      acc77(26)=acc77(7)*QspQ
      acc77(27)=acc77(8)*Qspl6
      acc77(28)=acc77(9)*Qspk2
      acc77(29)=acc77(14)*Qspvak4k3
      acc77(30)=acc77(15)*Qspvak1k2
      acc77(31)=acc77(17)*Qspvak7k2
      acc77(26)=acc77(31)+acc77(30)+acc77(29)+acc77(28)+acc77(27)+acc77(26)+acc&
      &77(2)
      acc77(26)=Qspval6k2*acc77(26)
      acc77(27)=acc77(3)*Qspvak1k2
      acc77(28)=acc77(16)*Qspvak4k2
      acc77(29)=acc77(21)*Qspvak7k2
      acc77(27)=acc77(29)+acc77(28)+acc77(5)+acc77(27)
      acc77(27)=Qspl6*acc77(27)
      acc77(28)=acc77(6)*Qspvak1k2
      acc77(29)=acc77(10)*Qspvak7k2
      acc77(28)=acc77(29)+acc77(28)
      acc77(28)=acc77(28)*Qspvak4k3
      acc77(28)=acc77(23)+acc77(28)
      acc77(28)=Qspval6l5*acc77(28)
      acc77(29)=acc77(18)*Qspvak4k2
      acc77(30)=acc77(19)*Qspvak4k3
      acc77(29)=acc77(30)+acc77(29)+acc77(11)
      acc77(29)=Qspk2*acc77(29)
      acc77(30)=acc77(4)*Qspvak1k2
      acc77(31)=acc77(25)*Qspvak7k2
      acc77(30)=acc77(31)+acc77(24)+acc77(30)
      acc77(30)=Qspval6k3*acc77(30)
      acc77(31)=acc77(13)*Qspvak4k2
      acc77(31)=acc77(20)+acc77(31)
      acc77(31)=QspQ*acc77(31)
      acc77(32)=Qspval6k7*acc77(22)
      acc77(33)=Qspval6k1*acc77(12)
      brack=acc77(1)+acc77(26)+acc77(27)+acc77(28)+acc77(29)+acc77(30)+acc77(31&
      &)+acc77(32)+acc77(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram77_sign, shift => diagram77_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd77h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d77
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d77 = 0.0_ki
      d77 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d77, ki), aimag(d77), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd77h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d77
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d77 = 0.0_ki
      d77 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d77, ki), aimag(d77), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d77h1l1