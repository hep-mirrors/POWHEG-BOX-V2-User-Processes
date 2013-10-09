module     p5_usbar_epnebbbarg_d110h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d110h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd110h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc110(32)
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      acc110(1)=abb110(9)
      acc110(2)=abb110(10)
      acc110(3)=abb110(11)
      acc110(4)=abb110(12)
      acc110(5)=abb110(13)
      acc110(6)=abb110(14)
      acc110(7)=abb110(16)
      acc110(8)=abb110(17)
      acc110(9)=abb110(18)
      acc110(10)=abb110(19)
      acc110(11)=abb110(20)
      acc110(12)=abb110(22)
      acc110(13)=abb110(23)
      acc110(14)=abb110(24)
      acc110(15)=abb110(25)
      acc110(16)=abb110(28)
      acc110(17)=abb110(30)
      acc110(18)=abb110(32)
      acc110(19)=abb110(33)
      acc110(20)=abb110(34)
      acc110(21)=abb110(35)
      acc110(22)=Qspval5k3*acc110(8)
      acc110(23)=-Qspval5k1*acc110(18)
      acc110(24)=acc110(1)*Qspvak4k1
      acc110(25)=acc110(10)*Qspvak4k3
      acc110(26)=Qspval6k3*acc110(9)
      acc110(27)=-Qspval6k1*acc110(14)
      acc110(22)=acc110(27)+acc110(26)+acc110(25)+acc110(3)+acc110(24)+acc110(2&
      &3)+acc110(22)
      acc110(22)=Qspvak7k2*acc110(22)
      acc110(23)=-Qspvak7k3*acc110(9)
      acc110(24)=Qspvak7k1*acc110(14)
      acc110(25)=acc110(2)*Qspvak4k1
      acc110(26)=acc110(11)*Qspvak4k3
      acc110(23)=acc110(26)+acc110(4)+acc110(25)+acc110(24)+acc110(23)
      acc110(23)=Qspval6k2*acc110(23)
      acc110(24)=acc110(5)*Qspvak7k2
      acc110(25)=acc110(12)*Qspval6k2
      acc110(24)=-acc110(21)+acc110(24)-acc110(25)
      acc110(25)=Qspk1-Qspk4-Qspk3
      acc110(24)=acc110(24)*acc110(25)
      acc110(25)=-Qspvak7k3*acc110(8)
      acc110(26)=Qspvak7k1*acc110(18)
      acc110(25)=acc110(25)+acc110(26)
      acc110(25)=Qspval5k2*acc110(25)
      acc110(26)=acc110(7)*Qspvak4k1
      acc110(27)=acc110(13)*Qspval5k1
      acc110(28)=acc110(15)*Qspvak4k3
      acc110(29)=acc110(17)*Qspval5k3
      acc110(30)=Qspvak7l6*acc110(16)
      acc110(31)=Qspk7*acc110(20)
      acc110(32)=Qspl6*acc110(19)
      brack=acc110(6)+acc110(22)+acc110(23)+acc110(24)+acc110(25)+acc110(26)+ac&
      &c110(27)+acc110(28)+acc110(29)+acc110(30)+acc110(31)+acc110(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram110_sign, shift => diagram110_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd110h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d110
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d110 = 0.0_ki
      d110 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d110, ki), aimag(d110), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd110h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d110
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d110 = 0.0_ki
      d110 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d110, ki), aimag(d110), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d110h0l1
