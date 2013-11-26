module     p5_usbar_epnebbbarg_d336h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d336h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc336(39)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspe7
      complex(ki) :: QspQ
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspe7 = dotproduct(Q,e7)
      QspQ = dotproduct(Q,Q)
      acc336(1)=abb336(10)
      acc336(2)=abb336(11)
      acc336(3)=abb336(12)
      acc336(4)=abb336(13)
      acc336(5)=abb336(14)
      acc336(6)=abb336(15)
      acc336(7)=abb336(16)
      acc336(8)=abb336(19)
      acc336(9)=abb336(20)
      acc336(10)=abb336(21)
      acc336(11)=abb336(22)
      acc336(12)=abb336(24)
      acc336(13)=abb336(27)
      acc336(14)=abb336(28)
      acc336(15)=abb336(29)
      acc336(16)=abb336(31)
      acc336(17)=abb336(33)
      acc336(18)=abb336(34)
      acc336(19)=abb336(36)
      acc336(20)=abb336(38)
      acc336(21)=abb336(42)
      acc336(22)=abb336(46)
      acc336(23)=abb336(52)
      acc336(24)=abb336(55)
      acc336(25)=abb336(62)
      acc336(26)=acc336(3)*Qspvak2k1
      acc336(27)=acc336(5)*Qspk2
      acc336(28)=acc336(9)*Qspl5
      acc336(29)=acc336(11)*Qspvak2k3
      acc336(30)=acc336(13)*Qspvak4k1
      acc336(31)=acc336(14)*Qspval6k1
      acc336(32)=acc336(19)*Qspvak4k2
      acc336(33)=acc336(24)*Qspval6k3
      acc336(34)=acc336(25)*Qspk7
      acc336(35)=Qspvak7k2*acc336(21)
      acc336(36)=Qspval5k7*acc336(18)
      acc336(37)=Qspval5k3*acc336(22)
      acc336(38)=Qspval5k2*acc336(20)
      acc336(39)=Qspval5k1*acc336(16)
      acc336(26)=acc336(39)+acc336(38)+acc336(37)+acc336(36)+acc336(35)+acc336(&
      &34)+acc336(33)+acc336(32)+acc336(31)+acc336(30)+acc336(29)+acc336(28)+ac&
      &c336(6)+acc336(27)+acc336(26)
      acc336(26)=Qspe7*acc336(26)
      acc336(27)=-Qspk7-Qspl5
      acc336(27)=acc336(17)*acc336(27)
      acc336(28)=acc336(1)*Qspvak2k1
      acc336(29)=acc336(2)*Qspk2
      acc336(30)=acc336(7)*Qspvak4k1
      acc336(31)=acc336(8)*Qspvak2k3
      acc336(32)=acc336(12)*Qspval6k1
      acc336(33)=acc336(15)*Qspvak4k2
      acc336(34)=acc336(23)*Qspval6k3
      acc336(35)=QspQ*acc336(10)
      brack=acc336(4)+acc336(26)+acc336(27)+acc336(28)+acc336(29)+acc336(30)+ac&
      &c336(31)+acc336(32)+acc336(33)+acc336(34)+acc336(35)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram336_sign, shift => diagram336_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd336h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d336
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d336 = 0.0_ki
      d336 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d336, ki), aimag(d336), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd336h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d336
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d336 = 0.0_ki
      d336 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d336, ki), aimag(d336), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d336h0l1
