module     p0_dbaru_epnebbbarg_d308h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d308h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd308h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc308(38)
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspe7
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspe7 = dotproduct(Q,e7)
      acc308(1)=abb308(8)
      acc308(2)=abb308(9)
      acc308(3)=abb308(10)
      acc308(4)=abb308(11)
      acc308(5)=abb308(12)
      acc308(6)=abb308(13)
      acc308(7)=abb308(14)
      acc308(8)=abb308(15)
      acc308(9)=abb308(16)
      acc308(10)=abb308(17)
      acc308(11)=abb308(18)
      acc308(12)=abb308(19)
      acc308(13)=abb308(20)
      acc308(14)=abb308(22)
      acc308(15)=abb308(23)
      acc308(16)=abb308(25)
      acc308(17)=abb308(29)
      acc308(18)=abb308(31)
      acc308(19)=abb308(32)
      acc308(20)=abb308(34)
      acc308(21)=abb308(35)
      acc308(22)=abb308(39)
      acc308(23)=abb308(42)
      acc308(24)=abb308(43)
      acc308(25)=abb308(44)
      acc308(26)=abb308(57)
      acc308(27)=abb308(59)
      acc308(28)=acc308(3)*Qspval6k7
      acc308(29)=acc308(5)*Qspval6k2
      acc308(30)=acc308(8)*Qspk2
      acc308(31)=acc308(12)*Qspvak1k2
      acc308(32)=acc308(15)*Qspvak4k2
      acc308(33)=acc308(17)*Qspl6
      acc308(34)=acc308(20)*QspQ
      acc308(35)=acc308(23)*Qspk7
      acc308(36)=acc308(24)*Qspval6e7
      acc308(37)=acc308(25)*Qspvak7k2
      acc308(28)=acc308(37)+acc308(36)+acc308(35)+acc308(34)+acc308(33)+acc308(&
      &16)+acc308(32)+acc308(31)+acc308(30)+acc308(29)+acc308(28)
      acc308(28)=Qspvae7k2*acc308(28)
      acc308(29)=acc308(1)*Qspvak1k2
      acc308(30)=acc308(13)*Qspvak4k2
      acc308(29)=acc308(30)+acc308(29)+acc308(2)
      acc308(29)=acc308(29)*Qspval6k2
      acc308(29)=acc308(26)+acc308(29)
      acc308(29)=Qspe7*acc308(29)
      acc308(30)=acc308(14)*Qspe7
      acc308(31)=acc308(18)*Qspval6e7
      acc308(30)=acc308(31)+acc308(30)+acc308(11)
      acc308(30)=Qspvak7k2*acc308(30)
      acc308(31)=acc308(4)*Qspvak4k2
      acc308(32)=acc308(6)*Qspval6k7
      acc308(33)=acc308(7)*Qspvak1k2
      acc308(34)=acc308(9)*Qspval6k2
      acc308(35)=acc308(10)*QspQ
      acc308(36)=acc308(19)*Qspk2
      acc308(37)=acc308(22)*Qspl6
      acc308(38)=acc308(27)*Qspk7
      brack=acc308(21)+acc308(28)+acc308(29)+acc308(30)+acc308(31)+acc308(32)+a&
      &cc308(33)+acc308(34)+acc308(35)+acc308(36)+acc308(37)+acc308(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram308_sign, shift => diagram308_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h0
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
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d308h0l1
