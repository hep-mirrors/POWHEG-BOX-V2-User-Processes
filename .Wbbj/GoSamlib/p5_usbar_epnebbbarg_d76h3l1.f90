module     p5_usbar_epnebbbarg_d76h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d76h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd76h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc76(51)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k3
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc76(1)=abb76(8)
      acc76(2)=abb76(9)
      acc76(3)=abb76(10)
      acc76(4)=abb76(11)
      acc76(5)=abb76(12)
      acc76(6)=abb76(13)
      acc76(7)=abb76(15)
      acc76(8)=abb76(16)
      acc76(9)=abb76(17)
      acc76(10)=abb76(18)
      acc76(11)=abb76(19)
      acc76(12)=abb76(20)
      acc76(13)=abb76(21)
      acc76(14)=abb76(22)
      acc76(15)=abb76(23)
      acc76(16)=abb76(24)
      acc76(17)=abb76(26)
      acc76(18)=abb76(27)
      acc76(19)=abb76(28)
      acc76(20)=abb76(30)
      acc76(21)=abb76(31)
      acc76(22)=abb76(32)
      acc76(23)=abb76(33)
      acc76(24)=abb76(34)
      acc76(25)=abb76(35)
      acc76(26)=abb76(36)
      acc76(27)=abb76(37)
      acc76(28)=abb76(38)
      acc76(29)=abb76(39)
      acc76(30)=abb76(40)
      acc76(31)=abb76(41)
      acc76(32)=abb76(42)
      acc76(33)=abb76(43)
      acc76(34)=abb76(44)
      acc76(35)=abb76(45)
      acc76(36)=abb76(47)
      acc76(37)=abb76(49)
      acc76(38)=abb76(54)
      acc76(39)=abb76(56)
      acc76(40)=abb76(57)
      acc76(41)=abb76(59)
      acc76(42)=Qspk7-Qspk1
      acc76(43)=acc76(26)*acc76(42)
      acc76(44)=QspQ*acc76(17)
      acc76(45)=Qspl6*acc76(27)
      acc76(46)=Qspk2*acc76(30)
      acc76(47)=Qspe7*acc76(25)
      acc76(48)=Qspvae7k1*acc76(34)
      acc76(43)=acc76(48)+acc76(47)+acc76(46)+acc76(45)+acc76(23)+acc76(44)+acc&
      &76(43)
      acc76(43)=Qspvak2k1*acc76(43)
      acc76(44)=acc76(31)*acc76(42)
      acc76(45)=QspQ*acc76(29)
      acc76(46)=Qspl6*acc76(38)
      acc76(47)=Qspk2*acc76(41)
      acc76(48)=Qspe7*acc76(39)
      acc76(49)=Qspvae7k1*acc76(40)
      acc76(44)=acc76(49)+acc76(48)+acc76(47)+acc76(46)+acc76(37)+acc76(45)+acc&
      &76(44)
      acc76(44)=Qspvak2k7*acc76(44)
      acc76(45)=Qspvak2l5*acc76(16)
      acc76(45)=acc76(45)+acc76(36)
      acc76(45)=-acc76(45)*acc76(42)
      acc76(46)=Qspvak2l6*acc76(4)
      acc76(47)=Qspvak2l5*acc76(9)
      acc76(47)=acc76(35)+acc76(47)
      acc76(47)=Qspe7*acc76(47)
      acc76(48)=Qspvak2l5*acc76(20)
      acc76(48)=acc76(33)+acc76(48)
      acc76(48)=Qspvae7k1*acc76(48)
      acc76(49)=Qspvak2k1*acc76(3)
      acc76(50)=Qspvak2k7*acc76(15)
      acc76(45)=acc76(50)+acc76(49)+acc76(48)+acc76(47)+acc76(19)+acc76(46)+acc&
      &76(45)
      acc76(45)=Qspvak4k3*acc76(45)
      acc76(46)=Qspvak2k3*acc76(14)
      acc76(47)=Qspvak2l6*acc76(11)
      acc76(48)=Qspk2*acc76(32)
      acc76(46)=acc76(46)+acc76(47)+acc76(48)-acc76(21)
      acc76(42)=acc76(46)*acc76(42)
      acc76(46)=Qspvak2k3*acc76(7)
      acc76(47)=Qspvak2l6*acc76(10)
      acc76(48)=Qspk2*acc76(28)
      acc76(46)=acc76(48)+acc76(47)+acc76(18)+acc76(46)
      acc76(46)=Qspe7*acc76(46)
      acc76(47)=Qspvak2k3*acc76(1)
      acc76(48)=Qspvak2l6*acc76(13)
      acc76(49)=Qspk2*acc76(6)
      acc76(47)=acc76(49)+acc76(48)+acc76(2)+acc76(47)
      acc76(47)=Qspvae7k1*acc76(47)
      acc76(48)=QspQ*acc76(5)
      acc76(49)=Qspl6*acc76(22)
      acc76(50)=Qspvak2l6*acc76(8)
      acc76(51)=Qspk2*acc76(24)
      brack=acc76(12)+acc76(42)+acc76(43)+acc76(44)+acc76(45)+acc76(46)+acc76(4&
      &7)+acc76(48)+acc76(49)+acc76(50)+acc76(51)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram76_sign, shift => diagram76_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd76h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d76
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d76 = 0.0_ki
      d76 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d76, ki), aimag(d76), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd76h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d76
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d76 = 0.0_ki
      d76 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d76, ki), aimag(d76), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d76h3l1
