module     p5_usbar_epnebbbarg_d62h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d62h3l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd62h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc62(53)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      acc62(1)=abb62(15)
      acc62(2)=abb62(16)
      acc62(3)=abb62(17)
      acc62(4)=abb62(18)
      acc62(5)=abb62(19)
      acc62(6)=abb62(20)
      acc62(7)=abb62(21)
      acc62(8)=abb62(24)
      acc62(9)=abb62(25)
      acc62(10)=abb62(27)
      acc62(11)=abb62(28)
      acc62(12)=abb62(29)
      acc62(13)=abb62(31)
      acc62(14)=abb62(32)
      acc62(15)=abb62(43)
      acc62(16)=abb62(48)
      acc62(17)=abb62(50)
      acc62(18)=abb62(61)
      acc62(19)=abb62(63)
      acc62(20)=abb62(84)
      acc62(21)=abb62(89)
      acc62(22)=abb62(98)
      acc62(23)=abb62(112)
      acc62(24)=abb62(114)
      acc62(25)=abb62(130)
      acc62(26)=abb62(141)
      acc62(27)=abb62(146)
      acc62(28)=-Qspl5-Qspl6
      acc62(28)=acc62(12)*acc62(28)
      acc62(29)=Qspvae7l6*acc62(16)
      acc62(30)=Qspvae7l5*acc62(10)
      acc62(31)=Qspvak2e7*acc62(20)
      acc62(32)=Qspvae7k1*acc62(1)
      acc62(33)=Qspvak7l6*acc62(26)
      acc62(34)=Qspvak7l5*acc62(25)
      acc62(35)=Qspvak7k1*acc62(21)
      acc62(36)=Qspval6l5*acc62(23)
      acc62(37)=Qspval6k1*acc62(22)
      acc62(38)=Qspval5l6*acc62(27)
      acc62(39)=Qspval5k1*acc62(2)
      acc62(40)=Qspvak4k3*acc62(4)
      acc62(41)=Qspvak4k2*acc62(5)
      acc62(42)=Qspvak2k7*acc62(8)
      acc62(43)=Qspvak2l6*acc62(15)
      acc62(44)=Qspvak2l5*acc62(17)
      acc62(45)=Qspvak2k4*acc62(13)
      acc62(46)=Qspvak2k3*acc62(6)
      acc62(47)=Qspvak2k1*acc62(3)
      acc62(48)=Qspe7*acc62(14)
      acc62(49)=Qspk7*acc62(11)
      acc62(50)=Qspk4*acc62(24)
      acc62(51)=Qspk3*acc62(19)
      acc62(52)=Qspk2*acc62(18)
      acc62(53)=Qspk1*acc62(7)
      brack=acc62(9)+acc62(28)+acc62(29)+acc62(30)+acc62(31)+acc62(32)+acc62(33&
      &)+acc62(34)+acc62(35)+acc62(36)+acc62(37)+acc62(38)+acc62(39)+acc62(40)+&
      &acc62(41)+acc62(42)+acc62(43)+acc62(44)+acc62(45)+acc62(46)+acc62(47)+ac&
      &c62(48)+acc62(49)+acc62(50)+acc62(51)+acc62(52)+acc62(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram62_sign, shift => diagram62_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd62h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d62
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d62 = 0.0_ki
      d62 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d62, ki), aimag(d62), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd62h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d62
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d62 = 0.0_ki
      d62 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d62, ki), aimag(d62), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d62h3l1
