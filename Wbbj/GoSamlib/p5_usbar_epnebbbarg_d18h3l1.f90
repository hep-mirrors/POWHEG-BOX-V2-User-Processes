module     p5_usbar_epnebbbarg_d18h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d18h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd18h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc18(36)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc18(1)=abb18(11)
      acc18(2)=abb18(12)
      acc18(3)=abb18(13)
      acc18(4)=abb18(14)
      acc18(5)=abb18(15)
      acc18(6)=abb18(16)
      acc18(7)=abb18(17)
      acc18(8)=abb18(18)
      acc18(9)=abb18(19)
      acc18(10)=abb18(20)
      acc18(11)=abb18(22)
      acc18(12)=abb18(26)
      acc18(13)=abb18(29)
      acc18(14)=abb18(30)
      acc18(15)=abb18(43)
      acc18(16)=abb18(44)
      acc18(17)=abb18(47)
      acc18(18)=abb18(50)
      acc18(19)=abb18(54)
      acc18(20)=abb18(66)
      acc18(21)=abb18(72)
      acc18(22)=abb18(74)
      acc18(23)=abb18(78)
      acc18(24)=Qspk1*acc18(8)
      acc18(25)=Qspk2*acc18(1)
      acc18(26)=Qspk7*acc18(21)
      acc18(27)=Qspe7*acc18(19)
      acc18(28)=Qspvak4k1*acc18(18)
      acc18(29)=Qspvak4k3*acc18(20)
      acc18(30)=Qspvae7k1*acc18(12)
      acc18(31)=Qspk4+Qspk3
      acc18(32)=-acc18(23)*acc18(31)
      acc18(33)=Qspl6+Qspl5
      acc18(34)=-acc18(22)*acc18(33)
      acc18(35)=Qspvak2l5*acc18(9)
      acc18(36)=Qspvak2l6*acc18(17)
      acc18(24)=acc18(36)+acc18(35)+acc18(34)+acc18(32)+acc18(30)+acc18(29)+acc&
      &18(28)+acc18(27)+acc18(26)+acc18(25)+acc18(11)+acc18(24)
      acc18(24)=Qspvak2l6*acc18(24)
      acc18(25)=Qspk1*acc18(3)
      acc18(26)=Qspk2*acc18(2)
      acc18(27)=Qspk7*acc18(15)
      acc18(28)=Qspe7*acc18(14)
      acc18(29)=Qspvak4k1*acc18(4)
      acc18(30)=Qspvak4k3*acc18(10)
      acc18(32)=Qspvae7k1*acc18(5)
      acc18(31)=-acc18(16)*acc18(31)
      acc18(33)=-acc18(13)*acc18(33)
      acc18(34)=Qspvak2l5*acc18(7)
      acc18(25)=acc18(34)+acc18(33)+acc18(31)+acc18(32)+acc18(30)+acc18(29)+acc&
      &18(28)+acc18(27)+acc18(26)+acc18(6)+acc18(25)
      acc18(25)=Qspvak2l5*acc18(25)
      brack=acc18(24)+acc18(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram18_sign, shift => diagram18_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd18h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d18
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d18 = 0.0_ki
      d18 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d18, ki), aimag(d18), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd18h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d18
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d18 = 0.0_ki
      d18 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d18, ki), aimag(d18), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d18h3l1
