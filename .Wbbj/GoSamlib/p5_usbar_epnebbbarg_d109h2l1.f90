module     p5_usbar_epnebbbarg_d109h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d109h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd109h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc109(38)
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      acc109(1)=abb109(9)
      acc109(2)=abb109(10)
      acc109(3)=abb109(11)
      acc109(4)=abb109(12)
      acc109(5)=abb109(13)
      acc109(6)=abb109(14)
      acc109(7)=abb109(16)
      acc109(8)=abb109(18)
      acc109(9)=abb109(19)
      acc109(10)=abb109(21)
      acc109(11)=abb109(22)
      acc109(12)=abb109(23)
      acc109(13)=abb109(24)
      acc109(14)=abb109(25)
      acc109(15)=abb109(26)
      acc109(16)=abb109(27)
      acc109(17)=abb109(32)
      acc109(18)=abb109(34)
      acc109(19)=abb109(35)
      acc109(20)=abb109(36)
      acc109(21)=abb109(38)
      acc109(22)=abb109(39)
      acc109(23)=abb109(40)
      acc109(24)=abb109(41)
      acc109(25)=abb109(42)
      acc109(26)=acc109(8)*Qspk2
      acc109(27)=acc109(14)*Qspvak4l6
      acc109(28)=acc109(16)*Qspvak4k2
      acc109(29)=Qspvak3l6*acc109(5)
      acc109(30)=-Qspvak3k2*acc109(11)
      acc109(26)=acc109(30)+acc109(29)+acc109(28)+acc109(27)+acc109(9)+acc109(2&
      &6)
      acc109(26)=Qspvak4k3*acc109(26)
      acc109(27)=acc109(2)*Qspvak4k2
      acc109(28)=acc109(3)*Qspk2
      acc109(29)=acc109(10)*Qspvak4l6
      acc109(30)=-Qspvak1l6*acc109(5)
      acc109(31)=Qspvak1k2*acc109(11)
      acc109(27)=acc109(31)+acc109(30)+acc109(29)+acc109(6)+acc109(28)+acc109(2&
      &7)
      acc109(27)=Qspvak4k1*acc109(27)
      acc109(28)=-acc109(15)*Qspvak4k2
      acc109(29)=acc109(17)*Qspk2
      acc109(30)=acc109(25)*Qspvak4l6
      acc109(28)=acc109(30)+acc109(29)+acc109(13)+acc109(28)
      acc109(29)=-Qspk4+Qspk1-Qspk3
      acc109(28)=acc109(29)*acc109(28)
      acc109(29)=Qspvak7l6*acc109(18)
      acc109(30)=Qspvak7k3*acc109(21)
      acc109(31)=Qspvak7k1*acc109(20)
      acc109(32)=Qspval5l6*acc109(22)
      acc109(33)=Qspval5k3*acc109(24)
      acc109(34)=Qspval5k1*acc109(23)
      acc109(35)=Qspvak2l6*acc109(12)
      acc109(36)=Qspvak2k3*acc109(7)
      acc109(37)=Qspvak2k1*acc109(4)
      acc109(38)=QspQ*acc109(19)
      brack=acc109(1)+acc109(26)+acc109(27)+acc109(28)+acc109(29)+acc109(30)+ac&
      &c109(31)+acc109(32)+acc109(33)+acc109(34)+acc109(35)+acc109(36)+acc109(3&
      &7)+acc109(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram109_sign, shift => diagram109_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd109h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d109
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d109 = 0.0_ki
      d109 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d109, ki), aimag(d109), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd109h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d109
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d109 = 0.0_ki
      d109 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d109, ki), aimag(d109), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d109h2l1
