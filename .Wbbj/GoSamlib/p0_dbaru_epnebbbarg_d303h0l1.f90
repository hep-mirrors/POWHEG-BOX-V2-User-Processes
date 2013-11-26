module     p0_dbaru_epnebbbarg_d303h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d303h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd303h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc303(34)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      acc303(1)=abb303(9)
      acc303(2)=abb303(10)
      acc303(3)=abb303(11)
      acc303(4)=abb303(12)
      acc303(5)=abb303(13)
      acc303(6)=abb303(14)
      acc303(7)=abb303(15)
      acc303(8)=abb303(16)
      acc303(9)=abb303(17)
      acc303(10)=abb303(18)
      acc303(11)=abb303(19)
      acc303(12)=abb303(20)
      acc303(13)=abb303(21)
      acc303(14)=abb303(22)
      acc303(15)=abb303(23)
      acc303(16)=abb303(24)
      acc303(17)=abb303(25)
      acc303(18)=abb303(26)
      acc303(19)=abb303(34)
      acc303(20)=abb303(38)
      acc303(21)=abb303(41)
      acc303(22)=abb303(42)
      acc303(23)=abb303(51)
      acc303(24)=abb303(52)
      acc303(25)=abb303(55)
      acc303(26)=acc303(17)*Qspvak4k2
      acc303(27)=acc303(18)*Qspvak1k2
      acc303(26)=acc303(27)+acc303(26)+acc303(1)
      acc303(26)=acc303(26)*Qspe7
      acc303(27)=acc303(5)*Qspval6k2
      acc303(28)=acc303(7)*Qspvak7k2
      acc303(29)=acc303(13)*Qspvak1k2
      acc303(30)=acc303(15)*Qspvak4k2
      acc303(31)=Qspval6e7*acc303(3)
      acc303(26)=acc303(30)+acc303(29)+acc303(26)+acc303(31)+acc303(12)+acc303(&
      &28)+acc303(27)
      acc303(26)=Qspval5k2*acc303(26)
      acc303(27)=acc303(4)*Qspval5k2
      acc303(28)=acc303(10)*QspQ
      acc303(29)=acc303(23)*Qspl5
      acc303(30)=acc303(24)*Qspk2
      acc303(31)=acc303(25)*Qspval5e7
      acc303(27)=acc303(31)+acc303(30)+acc303(29)+acc303(28)+acc303(9)+acc303(2&
      &7)
      acc303(27)=Qspvae7k2*acc303(27)
      acc303(28)=Qspval5l6*acc303(11)
      acc303(28)=acc303(28)+acc303(2)
      acc303(28)=Qspval6k2*acc303(28)
      acc303(29)=acc303(8)*Qspvak7k2
      acc303(29)=acc303(29)+acc303(6)
      acc303(29)=Qspval5k7*acc303(29)
      acc303(30)=acc303(16)*Qspvak7k2
      acc303(31)=acc303(19)*Qspk2
      acc303(32)=acc303(20)*QspQ
      acc303(33)=acc303(21)*Qspl5
      acc303(34)=acc303(22)*Qspval5e7
      brack=acc303(14)+acc303(26)+acc303(27)+acc303(28)+acc303(29)+acc303(30)+a&
      &cc303(31)+acc303(32)+acc303(33)+acc303(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram303_sign, shift => diagram303_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
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
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d303h0l1
