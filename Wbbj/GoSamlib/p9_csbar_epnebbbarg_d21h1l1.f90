module     p9_csbar_epnebbbarg_d21h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d21h1l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(43)
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk1 = dotproduct(Q,k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      acc21(1)=abb21(11)
      acc21(2)=abb21(12)
      acc21(3)=abb21(13)
      acc21(4)=abb21(14)
      acc21(5)=abb21(15)
      acc21(6)=abb21(16)
      acc21(7)=abb21(17)
      acc21(8)=abb21(18)
      acc21(9)=abb21(19)
      acc21(10)=abb21(20)
      acc21(11)=abb21(21)
      acc21(12)=abb21(22)
      acc21(13)=abb21(23)
      acc21(14)=abb21(24)
      acc21(15)=abb21(25)
      acc21(16)=abb21(26)
      acc21(17)=abb21(27)
      acc21(18)=abb21(31)
      acc21(19)=abb21(32)
      acc21(20)=abb21(36)
      acc21(21)=abb21(42)
      acc21(22)=abb21(50)
      acc21(23)=abb21(56)
      acc21(24)=abb21(58)
      acc21(25)=abb21(60)
      acc21(26)=abb21(78)
      acc21(27)=acc21(2)*Qspval5k1
      acc21(28)=acc21(11)*Qspvak2k1
      acc21(29)=acc21(19)*Qspval6k1
      acc21(30)=acc21(22)*Qspk1
      acc21(27)=acc21(30)+acc21(29)+acc21(14)+acc21(28)+acc21(27)
      acc21(27)=Qspval6l5*acc21(27)
      acc21(28)=acc21(6)*Qspvak2k1
      acc21(29)=acc21(9)*Qspval6k1
      acc21(30)=acc21(10)*Qspval5k1
      acc21(31)=acc21(13)*Qspk1
      acc21(28)=acc21(31)+acc21(30)+acc21(29)+acc21(28)+acc21(5)
      acc21(28)=Qspk2*acc21(28)
      acc21(29)=acc21(1)*Qspval6k1
      acc21(30)=acc21(3)*Qspvak2k1
      acc21(31)=acc21(7)*Qspk1
      acc21(32)=acc21(24)*Qspval5k1
      acc21(33)=Qspval6k2*acc21(15)
      acc21(34)=Qspval5l6*acc21(20)
      acc21(35)=Qspval5k2*acc21(23)
      acc21(36)=Qspvak2l6*acc21(25)
      acc21(37)=Qspvak2l5*acc21(21)
      acc21(38)=Qspvak1l6*acc21(12)
      acc21(39)=Qspvak1l5*acc21(17)
      acc21(40)=Qspvak1k2*acc21(4)
      acc21(41)=Qspl6*acc21(26)
      acc21(42)=Qspl5*acc21(16)
      acc21(43)=QspQ*acc21(18)
      brack=acc21(8)+acc21(27)+acc21(28)+acc21(29)+acc21(30)+acc21(31)+acc21(32&
      &)+acc21(33)+acc21(34)+acc21(35)+acc21(36)+acc21(37)+acc21(38)+acc21(39)+&
      &acc21(40)+acc21(41)+acc21(42)+acc21(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram21_sign, shift => diagram21_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd21h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd21h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d21h1l1
