module     p9_csbar_epnebbbarg_d309h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d309h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd309h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc309(65)
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      acc309(1)=abb309(8)
      acc309(2)=abb309(9)
      acc309(3)=abb309(10)
      acc309(4)=abb309(11)
      acc309(5)=abb309(12)
      acc309(6)=abb309(13)
      acc309(7)=abb309(14)
      acc309(8)=abb309(15)
      acc309(9)=abb309(16)
      acc309(10)=abb309(17)
      acc309(11)=abb309(18)
      acc309(12)=abb309(19)
      acc309(13)=abb309(20)
      acc309(14)=abb309(21)
      acc309(15)=abb309(22)
      acc309(16)=abb309(23)
      acc309(17)=abb309(24)
      acc309(18)=abb309(25)
      acc309(19)=abb309(26)
      acc309(20)=abb309(27)
      acc309(21)=abb309(28)
      acc309(22)=abb309(29)
      acc309(23)=abb309(30)
      acc309(24)=abb309(31)
      acc309(25)=abb309(32)
      acc309(26)=abb309(33)
      acc309(27)=abb309(34)
      acc309(28)=abb309(35)
      acc309(29)=abb309(37)
      acc309(30)=abb309(41)
      acc309(31)=abb309(45)
      acc309(32)=abb309(47)
      acc309(33)=abb309(50)
      acc309(34)=abb309(51)
      acc309(35)=abb309(52)
      acc309(36)=abb309(53)
      acc309(37)=abb309(54)
      acc309(38)=abb309(57)
      acc309(39)=abb309(59)
      acc309(40)=abb309(60)
      acc309(41)=abb309(61)
      acc309(42)=abb309(62)
      acc309(43)=abb309(63)
      acc309(44)=abb309(64)
      acc309(45)=abb309(69)
      acc309(46)=abb309(71)
      acc309(47)=abb309(72)
      acc309(48)=abb309(74)
      acc309(49)=abb309(75)
      acc309(50)=-Qspvak4l5*acc309(27)
      acc309(51)=Qspvak2l6*acc309(26)
      acc309(50)=acc309(51)+acc309(4)+acc309(50)
      acc309(50)=Qspe7*acc309(50)
      acc309(51)=acc309(25)*Qspvak1l6
      acc309(52)=acc309(14)*Qspvak7l6
      acc309(53)=acc309(7)*Qspvae7l6
      acc309(54)=Qspvak4e7*acc309(10)
      acc309(55)=Qspvak4k7*acc309(16)
      acc309(56)=Qspvak2e7*acc309(12)
      acc309(57)=Qspvak2k7*acc309(20)
      acc309(58)=-Qspvak4l5*acc309(28)
      acc309(59)=Qspvak4l6*acc309(48)
      acc309(60)=Qspvak4k1*acc309(18)
      acc309(61)=Qspvak2k1*acc309(19)
      acc309(50)=acc309(61)+acc309(50)+acc309(60)+acc309(59)+acc309(58)+acc309(&
      &57)+acc309(56)+acc309(55)+acc309(54)+acc309(3)+acc309(53)+acc309(51)+acc&
      &309(52)
      acc309(50)=Qspvak2k1*acc309(50)
      acc309(51)=Qspvak2l5*acc309(27)
      acc309(52)=Qspvak2l6*acc309(49)
      acc309(51)=acc309(52)+acc309(1)+acc309(51)
      acc309(51)=Qspvak4k1*acc309(51)
      acc309(52)=Qspk2*acc309(30)
      acc309(53)=Qspl5*acc309(22)
      acc309(54)=Qspvak2l5*acc309(15)
      acc309(55)=Qspvak4l5*acc309(44)
      acc309(51)=acc309(51)+acc309(55)+acc309(54)+acc309(53)+acc309(9)+acc309(5&
      &2)
      acc309(51)=Qspe7*acc309(51)
      acc309(52)=Qspvak2e7*acc309(31)
      acc309(53)=Qspvak2l5*acc309(28)
      acc309(54)=Qspvak2k7*acc309(46)
      acc309(55)=-Qspvak2l6*acc309(48)
      acc309(52)=acc309(55)+acc309(54)+acc309(53)+acc309(6)+acc309(52)
      acc309(52)=Qspvak4k1*acc309(52)
      acc309(53)=QspQ*acc309(43)
      acc309(54)=Qspk1*acc309(42)
      acc309(55)=Qspvak2k7*acc309(40)
      acc309(53)=acc309(55)+acc309(54)+acc309(41)+acc309(53)
      acc309(53)=Qspvak4l6*acc309(53)
      acc309(54)=-Qspvak4k7*acc309(40)
      acc309(55)=QspQ*acc309(35)
      acc309(56)=Qspk1*acc309(33)
      acc309(54)=acc309(56)+acc309(55)+acc309(47)+acc309(54)
      acc309(54)=Qspvak2l6*acc309(54)
      acc309(55)=Qspvak4e7*acc309(36)
      acc309(56)=Qspvak2e7*acc309(37)
      acc309(55)=acc309(56)+acc309(11)+acc309(55)
      acc309(55)=QspQ*acc309(55)
      acc309(56)=Qspvak4e7*acc309(34)
      acc309(57)=Qspvak2e7*acc309(38)
      acc309(56)=acc309(57)+acc309(32)+acc309(56)
      acc309(56)=Qspk1*acc309(56)
      acc309(57)=acc309(29)*Qspvae7k1
      acc309(58)=acc309(23)*Qspval5k1
      acc309(59)=acc309(17)*Qspvak7k1
      acc309(60)=Qspk2*acc309(24)
      acc309(61)=Qspl5*acc309(21)
      acc309(62)=Qspvak4k7*acc309(39)
      acc309(63)=Qspvak4k7*acc309(45)
      acc309(63)=acc309(5)+acc309(63)
      acc309(63)=Qspvak2l5*acc309(63)
      acc309(64)=Qspvak2k7*acc309(13)
      acc309(65)=-Qspvak2k7*acc309(45)
      acc309(65)=acc309(2)+acc309(65)
      acc309(65)=Qspvak4l5*acc309(65)
      brack=acc309(8)+acc309(50)+acc309(51)+acc309(52)+acc309(53)+acc309(54)+ac&
      &c309(55)+acc309(56)+acc309(57)+acc309(58)+acc309(59)+acc309(60)+acc309(6&
      &1)+acc309(62)+acc309(63)+acc309(64)+acc309(65)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram309_sign, shift => diagram309_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd309h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd309h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d309h3l1
