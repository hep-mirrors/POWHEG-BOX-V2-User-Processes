module     p9_csbar_epnebbbarg_d12h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d12h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd12h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc12(57)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      acc12(1)=abb12(7)
      acc12(2)=abb12(8)
      acc12(3)=abb12(9)
      acc12(4)=abb12(10)
      acc12(5)=abb12(11)
      acc12(6)=abb12(12)
      acc12(7)=abb12(13)
      acc12(8)=abb12(14)
      acc12(9)=abb12(15)
      acc12(10)=abb12(16)
      acc12(11)=abb12(17)
      acc12(12)=abb12(18)
      acc12(13)=abb12(19)
      acc12(14)=abb12(20)
      acc12(15)=abb12(21)
      acc12(16)=abb12(22)
      acc12(17)=abb12(23)
      acc12(18)=abb12(24)
      acc12(19)=abb12(25)
      acc12(20)=abb12(26)
      acc12(21)=abb12(27)
      acc12(22)=abb12(28)
      acc12(23)=abb12(29)
      acc12(24)=abb12(30)
      acc12(25)=abb12(31)
      acc12(26)=abb12(32)
      acc12(27)=abb12(33)
      acc12(28)=abb12(34)
      acc12(29)=abb12(35)
      acc12(30)=abb12(36)
      acc12(31)=abb12(37)
      acc12(32)=abb12(38)
      acc12(33)=abb12(39)
      acc12(34)=abb12(41)
      acc12(35)=abb12(42)
      acc12(36)=abb12(43)
      acc12(37)=abb12(46)
      acc12(38)=abb12(48)
      acc12(39)=abb12(49)
      acc12(40)=abb12(52)
      acc12(41)=abb12(53)
      acc12(42)=abb12(57)
      acc12(43)=abb12(59)
      acc12(44)=abb12(61)
      acc12(45)=abb12(65)
      acc12(46)=abb12(69)
      acc12(47)=abb12(71)
      acc12(48)=Qspk7-Qspk1
      acc12(49)=-acc12(22)*acc12(48)
      acc12(50)=Qspvak2k1*acc12(15)
      acc12(51)=Qspvak2k7*acc12(19)
      acc12(52)=Qspe7*acc12(21)
      acc12(53)=Qspvae7k1*acc12(5)
      acc12(49)=acc12(53)+acc12(52)+acc12(51)+acc12(9)+acc12(50)+acc12(49)
      acc12(49)=Qspval5k2*acc12(49)
      acc12(50)=-acc12(20)*acc12(48)
      acc12(51)=Qspvak2k1*acc12(7)
      acc12(52)=Qspvak2k7*acc12(12)
      acc12(53)=Qspe7*acc12(13)
      acc12(54)=Qspvae7k1*acc12(6)
      acc12(50)=acc12(54)+acc12(53)+acc12(52)+acc12(4)+acc12(51)+acc12(50)
      acc12(50)=Qspval6k2*acc12(50)
      acc12(51)=acc12(3)*acc12(48)
      acc12(52)=-acc12(28)*Qspvak2k4
      acc12(53)=QspQ*acc12(30)
      acc12(54)=Qspvak2k3*acc12(31)
      acc12(55)=Qspk2*acc12(36)
      acc12(56)=Qspe7*acc12(1)
      acc12(57)=Qspvae7k1*acc12(2)
      acc12(49)=acc12(50)+acc12(49)+acc12(57)+acc12(56)+acc12(55)+acc12(54)+acc&
      &12(53)+acc12(8)+acc12(52)+acc12(51)
      acc12(49)=Qspvak4k3*acc12(49)
      acc12(50)=acc12(45)*acc12(48)
      acc12(51)=Qspvak2k3*acc12(27)
      acc12(52)=Qspk2*acc12(40)
      acc12(53)=Qspe7*acc12(39)
      acc12(54)=Qspvae7k1*acc12(14)
      acc12(50)=acc12(54)+acc12(53)+acc12(52)+acc12(17)+acc12(51)+acc12(50)
      acc12(50)=Qspval5k2*acc12(50)
      acc12(51)=acc12(47)*acc12(48)
      acc12(52)=Qspvak2k3*acc12(25)
      acc12(53)=Qspk2*acc12(44)
      acc12(54)=Qspe7*acc12(46)
      acc12(55)=Qspvae7k1*acc12(32)
      acc12(51)=acc12(55)+acc12(54)+acc12(53)+acc12(10)+acc12(52)+acc12(51)
      acc12(51)=Qspval6k2*acc12(51)
      acc12(52)=Qspk4+Qspk3
      acc12(53)=acc12(52)-Qspk2
      acc12(54)=acc12(42)*acc12(53)
      acc12(55)=QspQ*acc12(37)
      acc12(54)=acc12(35)+acc12(55)+acc12(54)
      acc12(48)=acc12(54)*acc12(48)
      acc12(54)=acc12(24)*acc12(52)
      acc12(55)=QspQ*acc12(28)
      acc12(54)=acc12(55)+acc12(16)+acc12(54)
      acc12(54)=Qspvak2k3*acc12(54)
      acc12(55)=acc12(41)*acc12(53)
      acc12(56)=QspQ*acc12(34)
      acc12(55)=acc12(56)+acc12(29)+acc12(55)
      acc12(55)=Qspe7*acc12(55)
      acc12(53)=-acc12(26)*acc12(53)
      acc12(56)=QspQ*acc12(23)
      acc12(53)=acc12(56)+acc12(18)+acc12(53)
      acc12(53)=Qspvae7k1*acc12(53)
      acc12(52)=-acc12(38)*acc12(52)
      acc12(56)=QspQ*acc12(33)
      acc12(57)=-Qspvak2k3*acc12(24)
      acc12(57)=acc12(43)+acc12(57)
      acc12(57)=Qspk2*acc12(57)
      brack=acc12(11)+acc12(48)+acc12(49)+acc12(50)+acc12(51)+acc12(52)+acc12(5&
      &3)+acc12(54)+acc12(55)+acc12(56)+acc12(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram12_sign, shift => diagram12_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd12h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd12h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d12h0l1
