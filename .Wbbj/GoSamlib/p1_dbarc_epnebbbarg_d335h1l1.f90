module     p1_dbarc_epnebbbarg_d335h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d335h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd335h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc335(39)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: QspQ
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      QspQ = dotproduct(Q,Q)
      acc335(1)=abb335(11)
      acc335(2)=abb335(12)
      acc335(3)=abb335(14)
      acc335(4)=abb335(15)
      acc335(5)=abb335(17)
      acc335(6)=abb335(18)
      acc335(7)=abb335(20)
      acc335(8)=abb335(21)
      acc335(9)=abb335(22)
      acc335(10)=abb335(23)
      acc335(11)=abb335(24)
      acc335(12)=abb335(25)
      acc335(13)=abb335(26)
      acc335(14)=abb335(27)
      acc335(15)=abb335(28)
      acc335(16)=abb335(30)
      acc335(17)=abb335(31)
      acc335(18)=abb335(33)
      acc335(19)=abb335(34)
      acc335(20)=abb335(36)
      acc335(21)=abb335(39)
      acc335(22)=abb335(43)
      acc335(23)=abb335(44)
      acc335(24)=abb335(46)
      acc335(25)=abb335(49)
      acc335(26)=abb335(51)
      acc335(27)=acc335(1)*Qspvak1k2
      acc335(28)=acc335(2)*Qspvak4k2
      acc335(29)=acc335(4)*Qspvak1k3
      acc335(30)=acc335(8)*Qspk2
      acc335(31)=acc335(20)*Qspval6k2
      acc335(32)=acc335(23)*Qspval6k3
      acc335(33)=acc335(24)*Qspl5
      acc335(34)=acc335(25)*Qspk7
      acc335(35)=Qspvak7l5*acc335(11)
      acc335(36)=Qspvak2k7*acc335(5)
      acc335(37)=Qspvak2l5*acc335(6)
      acc335(38)=Qspvak2k3*acc335(16)
      acc335(39)=Qspvak1l5*acc335(22)
      acc335(27)=acc335(39)+acc335(38)+acc335(37)+acc335(36)+acc335(35)+acc335(&
      &34)+acc335(33)+acc335(32)+acc335(31)+acc335(15)+acc335(30)+acc335(29)+ac&
      &c335(27)+acc335(28)
      acc335(27)=Qspe7*acc335(27)
      acc335(28)=acc335(3)*Qspk2
      acc335(29)=acc335(9)*Qspl5
      acc335(30)=acc335(12)*Qspvak1k2
      acc335(31)=acc335(13)*Qspvak1k3
      acc335(32)=acc335(17)*Qspval6k2
      acc335(33)=acc335(19)*Qspval6k3
      acc335(34)=acc335(21)*Qspk7
      acc335(35)=acc335(26)*Qspvak4k2
      acc335(36)=Qspvae7l5*acc335(18)
      acc335(37)=Qspvak2e7*acc335(14)
      acc335(38)=QspQ*acc335(10)
      brack=acc335(7)+acc335(27)+acc335(28)+acc335(29)+acc335(30)+acc335(31)+ac&
      &c335(32)+acc335(33)+acc335(34)+acc335(35)+acc335(36)+acc335(37)+acc335(3&
      &8)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram335_sign, shift => diagram335_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd335h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d335
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d335 = 0.0_ki
      d335 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d335, ki), aimag(d335), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd335h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d335
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d335 = 0.0_ki
      d335 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d335, ki), aimag(d335), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d335h1l1
