module     p9_csbar_epnebbbarg_d92h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d92h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd92h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(30)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      acc92(1)=abb92(11)
      acc92(2)=abb92(12)
      acc92(3)=abb92(13)
      acc92(4)=abb92(14)
      acc92(5)=abb92(15)
      acc92(6)=abb92(16)
      acc92(7)=abb92(17)
      acc92(8)=abb92(18)
      acc92(9)=abb92(19)
      acc92(10)=abb92(20)
      acc92(11)=abb92(21)
      acc92(12)=abb92(23)
      acc92(13)=abb92(24)
      acc92(14)=abb92(36)
      acc92(15)=abb92(44)
      acc92(16)=abb92(45)
      acc92(17)=abb92(51)
      acc92(18)=abb92(55)
      acc92(19)=abb92(59)
      acc92(20)=abb92(61)
      acc92(21)=acc92(1)*Qspval6k2
      acc92(22)=acc92(7)*Qspval5l6
      acc92(23)=acc92(8)*Qspval5k2
      acc92(24)=acc92(11)*Qspvak1k2
      acc92(21)=acc92(24)+acc92(23)+acc92(22)+acc92(3)+acc92(21)
      acc92(21)=Qspvak2k1*acc92(21)
      acc92(22)=acc92(9)*Qspval5k1
      acc92(23)=acc92(19)*Qspk1
      acc92(24)=acc92(20)*Qspval6k1
      acc92(22)=acc92(24)+acc92(23)+acc92(22)
      acc92(22)=Qspval5l6*acc92(22)
      acc92(23)=acc92(6)*Qspval5k1
      acc92(24)=acc92(13)*Qspval6k1
      acc92(25)=acc92(17)*Qspk1
      acc92(23)=acc92(25)+acc92(16)+acc92(24)+acc92(23)
      acc92(23)=Qspk2*acc92(23)
      acc92(24)=acc92(2)*Qspval5k1
      acc92(25)=acc92(4)*Qspval5k2
      acc92(26)=acc92(5)*Qspk1
      acc92(27)=acc92(10)*Qspvak1k2
      acc92(28)=acc92(12)*Qspval6k1
      acc92(29)=acc92(18)*Qspval6k2
      acc92(30)=Qspl5*acc92(15)
      brack=acc92(14)+acc92(21)+acc92(22)+acc92(23)+acc92(24)+acc92(25)+acc92(2&
      &6)+acc92(27)+acc92(28)+acc92(29)+acc92(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram92_sign, shift => diagram92_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd92h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd92h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d92h2l1
