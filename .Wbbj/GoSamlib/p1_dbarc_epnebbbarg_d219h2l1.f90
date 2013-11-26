module     p1_dbarc_epnebbbarg_d219h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d219h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd219h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc219(61)
      complex(ki) :: Qspvae7k7
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      Qspvae7k7 = dotproduct(Q,spvae7k7)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      acc219(1)=abb219(13)
      acc219(2)=abb219(14)
      acc219(3)=abb219(15)
      acc219(4)=abb219(16)
      acc219(5)=abb219(18)
      acc219(6)=abb219(19)
      acc219(7)=abb219(21)
      acc219(8)=abb219(22)
      acc219(9)=abb219(23)
      acc219(10)=abb219(24)
      acc219(11)=abb219(27)
      acc219(12)=abb219(28)
      acc219(13)=abb219(30)
      acc219(14)=abb219(33)
      acc219(15)=abb219(35)
      acc219(16)=abb219(37)
      acc219(17)=abb219(38)
      acc219(18)=abb219(39)
      acc219(19)=abb219(40)
      acc219(20)=abb219(41)
      acc219(21)=abb219(48)
      acc219(22)=abb219(53)
      acc219(23)=abb219(58)
      acc219(24)=abb219(61)
      acc219(25)=abb219(66)
      acc219(26)=abb219(70)
      acc219(27)=abb219(82)
      acc219(28)=abb219(85)
      acc219(29)=abb219(96)
      acc219(30)=abb219(97)
      acc219(31)=abb219(102)
      acc219(32)=Qspvae7k7*acc219(9)
      acc219(33)=Qspvak7e7*acc219(24)
      acc219(34)=Qspvae7l5*acc219(25)
      acc219(35)=Qspval5e7*acc219(26)
      acc219(36)=Qspvak4e7*acc219(28)
      acc219(37)=Qspvae7k3*acc219(30)
      acc219(38)=Qspvae7k2*acc219(19)
      acc219(39)=Qspvak2e7*acc219(29)
      acc219(40)=Qspvak1e7*acc219(27)
      acc219(41)=Qspvak7l5*acc219(23)
      acc219(42)=Qspvak7k3*acc219(7)
      acc219(43)=Qspvak7k2*acc219(31)
      acc219(44)=Qspval5k7*acc219(5)
      acc219(45)=Qspval5k3*acc219(13)
      acc219(46)=Qspval5k2*acc219(14)
      acc219(47)=Qspvak4k7*acc219(16)
      acc219(48)=Qspvak4l6*acc219(15)
      acc219(49)=Qspvak4l5*acc219(21)
      acc219(50)=Qspvak4k2*acc219(22)
      acc219(51)=Qspvak2k7*acc219(18)
      acc219(52)=Qspvak2l5*acc219(17)
      acc219(53)=Qspvak2k3*acc219(4)
      acc219(54)=Qspvak1k7*acc219(10)
      acc219(55)=Qspvak1l6*acc219(8)
      acc219(56)=Qspvak1l5*acc219(11)
      acc219(57)=Qspvak1k3*acc219(2)
      acc219(58)=Qspvak1k2*acc219(3)
      acc219(59)=Qspk7*acc219(20)
      acc219(60)=Qspl5*acc219(12)
      acc219(61)=Qspk2*acc219(1)
      brack=acc219(6)+acc219(32)+acc219(33)+acc219(34)+acc219(35)+acc219(36)+ac&
      &c219(37)+acc219(38)+acc219(39)+acc219(40)+acc219(41)+acc219(42)+acc219(4&
      &3)+acc219(44)+acc219(45)+acc219(46)+acc219(47)+acc219(48)+acc219(49)+acc&
      &219(50)+acc219(51)+acc219(52)+acc219(53)+acc219(54)+acc219(55)+acc219(56&
      &)+acc219(57)+acc219(58)+acc219(59)+acc219(60)+acc219(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram219_sign, shift => diagram219_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd219h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d219
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d219 = 0.0_ki
      d219 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d219, ki), aimag(d219), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd219h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d219
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d219 = 0.0_ki
      d219 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d219, ki), aimag(d219), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d219h2l1
