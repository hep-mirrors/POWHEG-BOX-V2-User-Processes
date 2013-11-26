module     p1_dbarc_epnebbbarg_d304h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d304h0l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd304h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc304(34)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6e7
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      acc304(1)=abb304(9)
      acc304(2)=abb304(10)
      acc304(3)=abb304(11)
      acc304(4)=abb304(12)
      acc304(5)=abb304(13)
      acc304(6)=abb304(14)
      acc304(7)=abb304(15)
      acc304(8)=abb304(16)
      acc304(9)=abb304(17)
      acc304(10)=abb304(18)
      acc304(11)=abb304(19)
      acc304(12)=abb304(20)
      acc304(13)=abb304(21)
      acc304(14)=abb304(22)
      acc304(15)=abb304(23)
      acc304(16)=abb304(24)
      acc304(17)=abb304(25)
      acc304(18)=abb304(26)
      acc304(19)=abb304(27)
      acc304(20)=abb304(28)
      acc304(21)=abb304(29)
      acc304(22)=abb304(31)
      acc304(23)=abb304(32)
      acc304(24)=abb304(33)
      acc304(25)=abb304(39)
      acc304(26)=abb304(46)
      acc304(27)=abb304(48)
      acc304(28)=acc304(7)*Qspval6k2
      acc304(29)=acc304(8)*Qspvak4k2
      acc304(30)=acc304(20)*Qspvak1k2
      acc304(31)=acc304(24)*Qspvae7k2
      acc304(28)=acc304(31)+acc304(23)+acc304(30)+acc304(29)+acc304(28)
      acc304(28)=Qspl6*acc304(28)
      acc304(29)=acc304(19)*Qspvak4k2
      acc304(30)=acc304(21)*Qspvak1k2
      acc304(29)=acc304(30)+acc304(29)+acc304(5)
      acc304(29)=acc304(29)*Qspe7
      acc304(30)=acc304(2)*Qspvak1k2
      acc304(31)=acc304(17)*Qspvak4k2
      acc304(29)=acc304(31)+acc304(4)+acc304(30)+acc304(29)
      acc304(29)=Qspval6k2*acc304(29)
      acc304(30)=acc304(13)*Qspval6k2
      acc304(31)=acc304(26)*Qspval6k7
      acc304(32)=Qspval6l5*acc304(27)
      acc304(30)=acc304(32)+acc304(31)+acc304(30)
      acc304(30)=Qspvae7k2*acc304(30)
      acc304(31)=acc304(3)*Qspvak1k2
      acc304(32)=acc304(9)*Qspvak4k2
      acc304(33)=acc304(11)*Qspval6k2
      acc304(31)=acc304(33)+acc304(10)+acc304(32)+acc304(31)
      acc304(31)=Qspk2*acc304(31)
      acc304(32)=acc304(6)*Qspval6k2
      acc304(33)=acc304(14)*Qspvak1k2
      acc304(34)=acc304(16)*Qspvak4k2
      acc304(32)=acc304(34)+acc304(15)+acc304(33)+acc304(32)
      acc304(32)=QspQ*acc304(32)
      acc304(33)=Qspvak7k2*acc304(25)
      acc304(34)=Qspval5k2*acc304(1)
      acc304(33)=acc304(34)+acc304(33)+acc304(22)
      acc304(33)=Qspval6e7*acc304(33)
      acc304(34)=acc304(18)*Qspval6k7
      brack=acc304(12)+acc304(28)+acc304(29)+acc304(30)+acc304(31)+acc304(32)+a&
      &cc304(33)+acc304(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram304_sign, shift => diagram304_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd304h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd304h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d304h0l1
