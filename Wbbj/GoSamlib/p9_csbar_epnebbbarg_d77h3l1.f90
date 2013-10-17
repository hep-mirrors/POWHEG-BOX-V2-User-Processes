module     p9_csbar_epnebbbarg_d77h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d77h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd77h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc77(61)
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      acc77(1)=abb77(9)
      acc77(2)=abb77(10)
      acc77(3)=abb77(11)
      acc77(4)=abb77(12)
      acc77(5)=abb77(13)
      acc77(6)=abb77(14)
      acc77(7)=abb77(15)
      acc77(8)=abb77(16)
      acc77(9)=abb77(17)
      acc77(10)=abb77(18)
      acc77(11)=abb77(19)
      acc77(12)=abb77(20)
      acc77(13)=abb77(21)
      acc77(14)=abb77(23)
      acc77(15)=abb77(24)
      acc77(16)=abb77(25)
      acc77(17)=abb77(26)
      acc77(18)=abb77(27)
      acc77(19)=abb77(28)
      acc77(20)=abb77(29)
      acc77(21)=abb77(30)
      acc77(22)=abb77(31)
      acc77(23)=abb77(32)
      acc77(24)=abb77(34)
      acc77(25)=abb77(35)
      acc77(26)=abb77(36)
      acc77(27)=abb77(37)
      acc77(28)=abb77(38)
      acc77(29)=abb77(40)
      acc77(30)=abb77(41)
      acc77(31)=abb77(42)
      acc77(32)=abb77(45)
      acc77(33)=abb77(46)
      acc77(34)=abb77(48)
      acc77(35)=abb77(49)
      acc77(36)=abb77(50)
      acc77(37)=abb77(51)
      acc77(38)=abb77(54)
      acc77(39)=abb77(55)
      acc77(40)=abb77(56)
      acc77(41)=abb77(70)
      acc77(42)=abb77(72)
      acc77(43)=abb77(73)
      acc77(44)=abb77(74)
      acc77(45)=abb77(75)
      acc77(46)=abb77(77)
      acc77(47)=abb77(82)
      acc77(48)=abb77(84)
      acc77(49)=abb77(87)
      acc77(50)=abb77(88)
      acc77(51)=Qspl6*acc77(39)
      acc77(52)=Qspvak1l6*acc77(28)
      acc77(53)=Qspvak4l6*acc77(19)
      acc77(54)=Qspval5l6*acc77(45)
      acc77(55)=Qspvak7l6*acc77(41)
      acc77(56)=Qspk2*acc77(38)
      acc77(57)=Qspvak2k3*acc77(10)
      acc77(51)=-acc77(54)-acc77(55)-acc77(56)+acc77(57)-acc77(23)-acc77(53)+ac&
      &c77(51)-acc77(52)
      acc77(52)=Qspk7-Qspk1
      acc77(51)=-acc77(51)*acc77(52)
      acc77(53)=Qspl6*acc77(37)
      acc77(54)=Qspvak1l6*acc77(11)
      acc77(55)=Qspvak4l6*acc77(46)
      acc77(56)=Qspval5l6*acc77(44)
      acc77(57)=Qspvak7l6*acc77(33)
      acc77(58)=Qspk2*acc77(36)
      acc77(59)=Qspvak2k3*acc77(8)
      acc77(53)=acc77(59)+acc77(58)+acc77(57)+acc77(56)+acc77(55)+acc77(54)+acc&
      &77(25)+acc77(53)
      acc77(53)=Qspe7*acc77(53)
      acc77(54)=Qspl6*acc77(30)
      acc77(55)=Qspvak1l6*acc77(7)
      acc77(56)=Qspvak4l6*acc77(16)
      acc77(57)=Qspval5l6*acc77(42)
      acc77(58)=Qspvak7l6*acc77(43)
      acc77(59)=Qspk2*acc77(26)
      acc77(60)=Qspvak2k3*acc77(2)
      acc77(54)=acc77(60)+acc77(59)+acc77(58)+acc77(57)+acc77(56)+acc77(55)+acc&
      &77(21)+acc77(54)
      acc77(54)=Qspvae7k1*acc77(54)
      acc77(55)=-acc77(31)*acc77(52)
      acc77(56)=Qspe7*acc77(22)
      acc77(57)=Qspvae7k1*acc77(35)
      acc77(55)=acc77(57)+acc77(56)+acc77(4)+acc77(55)
      acc77(55)=Qspvak2l6*acc77(55)
      acc77(56)=-acc77(48)*acc77(52)
      acc77(57)=acc77(50)*Qspvak2k7
      acc77(58)=acc77(3)*Qspvak2k1
      acc77(59)=Qspvak2l5*acc77(5)
      acc77(60)=Qspe7*acc77(49)
      acc77(61)=Qspvae7k1*acc77(20)
      acc77(55)=acc77(55)+acc77(61)+acc77(60)+acc77(59)+acc77(58)+acc77(57)+acc&
      &77(47)+acc77(56)
      acc77(55)=Qspvak4k3*acc77(55)
      acc77(52)=-acc77(18)*acc77(52)
      acc77(56)=QspQ*acc77(29)
      acc77(57)=Qspl5*acc77(32)
      acc77(58)=Qspk2*acc77(34)
      acc77(59)=Qspe7*acc77(14)
      acc77(60)=Qspvae7k1*acc77(6)
      acc77(52)=acc77(60)+acc77(59)+acc77(58)+acc77(57)+acc77(1)+acc77(56)+acc7&
      &7(52)
      acc77(52)=Qspvak2l6*acc77(52)
      acc77(56)=QspQ*acc77(17)
      acc77(57)=Qspl5*acc77(12)
      acc77(58)=Qspk2*acc77(24)
      acc77(56)=acc77(58)+acc77(56)+acc77(57)
      acc77(56)=Qspvak2k3*acc77(56)
      acc77(57)=Qspvak2l5*acc77(9)
      acc77(58)=QspQ*acc77(27)
      acc77(59)=Qspl5*acc77(40)
      acc77(60)=Qspk2*acc77(13)
      brack=acc77(15)+acc77(51)+acc77(52)+acc77(53)+acc77(54)+acc77(55)+acc77(5&
      &6)+acc77(57)+acc77(58)+acc77(59)+acc77(60)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram77_sign, shift => diagram77_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd77h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d77
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d77 = 0.0_ki
      d77 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d77, ki), aimag(d77), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd77h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d77
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d77 = 0.0_ki
      d77 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d77, ki), aimag(d77), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d77h3l1