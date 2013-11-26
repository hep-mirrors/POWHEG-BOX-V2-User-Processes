module     p1_dbarc_epnebbbarg_d98h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d98h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd98h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc98(65)
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7k7
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7k7 = dotproduct(Q,spvae7k7)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      acc98(1)=abb98(9)
      acc98(2)=abb98(10)
      acc98(3)=abb98(11)
      acc98(4)=abb98(12)
      acc98(5)=abb98(13)
      acc98(6)=abb98(14)
      acc98(7)=abb98(15)
      acc98(8)=abb98(16)
      acc98(9)=abb98(17)
      acc98(10)=abb98(18)
      acc98(11)=abb98(19)
      acc98(12)=abb98(20)
      acc98(13)=abb98(21)
      acc98(14)=abb98(22)
      acc98(15)=abb98(23)
      acc98(16)=abb98(24)
      acc98(17)=abb98(25)
      acc98(18)=abb98(26)
      acc98(19)=abb98(27)
      acc98(20)=abb98(28)
      acc98(21)=abb98(29)
      acc98(22)=abb98(30)
      acc98(23)=abb98(31)
      acc98(24)=abb98(32)
      acc98(25)=abb98(33)
      acc98(26)=abb98(34)
      acc98(27)=abb98(35)
      acc98(28)=abb98(36)
      acc98(29)=abb98(37)
      acc98(30)=abb98(38)
      acc98(31)=abb98(39)
      acc98(32)=abb98(41)
      acc98(33)=abb98(42)
      acc98(34)=abb98(43)
      acc98(35)=abb98(45)
      acc98(36)=abb98(46)
      acc98(37)=abb98(48)
      acc98(38)=abb98(50)
      acc98(39)=abb98(51)
      acc98(40)=abb98(54)
      acc98(41)=abb98(56)
      acc98(42)=abb98(57)
      acc98(43)=abb98(58)
      acc98(44)=acc98(7)*Qspvak2e7
      acc98(45)=acc98(17)*Qspval5l6
      acc98(46)=acc98(18)*Qspvak2l5
      acc98(47)=acc98(26)*Qspvak2l6
      acc98(48)=acc98(28)*Qspvae7l6
      acc98(49)=acc98(33)*Qspvak2k7
      acc98(50)=acc98(34)*Qspvak7l6
      acc98(44)=acc98(50)+acc98(49)+acc98(48)+acc98(47)+acc98(46)+acc98(45)+acc&
      &98(44)+acc98(3)
      acc98(44)=Qspvak4k2*acc98(44)
      acc98(45)=acc98(5)*Qspvak2l6
      acc98(46)=acc98(6)*Qspvak2e7
      acc98(47)=acc98(10)*Qspvak2l5
      acc98(48)=acc98(21)*Qspval5l6
      acc98(49)=acc98(23)*Qspvae7l6
      acc98(50)=acc98(25)*Qspvak7l6
      acc98(51)=acc98(30)*Qspvak2k7
      acc98(45)=acc98(51)+acc98(50)+acc98(49)+acc98(48)+acc98(47)+acc98(46)+acc&
      &98(45)+acc98(1)
      acc98(45)=Qspvak1k2*acc98(45)
      acc98(46)=acc98(19)*Qspvak1l5
      acc98(47)=acc98(24)*Qspvak4l5
      acc98(48)=acc98(37)*Qspvak1k7
      acc98(49)=acc98(38)*Qspvak4k7
      acc98(50)=acc98(40)*Qspvak4e7
      acc98(51)=acc98(43)*Qspvak1e7
      acc98(46)=acc98(51)+acc98(50)+acc98(49)+acc98(48)+acc98(47)+acc98(46)+acc&
      &98(2)
      acc98(46)=Qspk2*acc98(46)
      acc98(47)=acc98(9)*Qspvak2l5
      acc98(48)=acc98(13)*Qspvak4l5
      acc98(49)=acc98(15)*Qspvak1l5
      acc98(50)=acc98(31)*Qspvak1k7
      acc98(51)=acc98(35)*Qspvak4k7
      acc98(52)=acc98(36)*Qspvak2k7
      acc98(53)=acc98(39)*Qspvak4e7
      acc98(54)=acc98(42)*Qspvak1e7
      acc98(55)=Qspvae7k7*acc98(4)
      acc98(56)=Qspvak7e7*acc98(22)
      acc98(57)=Qspvae7l5*acc98(32)
      acc98(58)=Qspval5e7*acc98(20)
      acc98(59)=Qspvae7k2*acc98(41)
      acc98(60)=Qspvak7l5*acc98(16)
      acc98(61)=Qspvak7k2*acc98(11)
      acc98(62)=Qspval5k7*acc98(29)
      acc98(63)=Qspval5k2*acc98(27)
      acc98(64)=Qspk7*acc98(14)
      acc98(65)=Qspl5*acc98(12)
      brack=acc98(8)+acc98(44)+acc98(45)+acc98(46)+acc98(47)+acc98(48)+acc98(49&
      &)+acc98(50)+acc98(51)+acc98(52)+acc98(53)+acc98(54)+acc98(55)+acc98(56)+&
      &acc98(57)+acc98(58)+acc98(59)+acc98(60)+acc98(61)+acc98(62)+acc98(63)+ac&
      &c98(64)+acc98(65)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram98_sign, shift => diagram98_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd98h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d98
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d98 = 0.0_ki
      d98 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d98, ki), aimag(d98), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd98h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d98
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d98 = 0.0_ki
      d98 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d98, ki), aimag(d98), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d98h2l1
