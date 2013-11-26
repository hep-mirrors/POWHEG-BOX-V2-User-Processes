module     p5_usbar_epnebbbarg_d91h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d91h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd91h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc91(31)
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2l5
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspe7 = dotproduct(Q,e7)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      acc91(1)=abb91(11)
      acc91(2)=abb91(12)
      acc91(3)=abb91(13)
      acc91(4)=abb91(14)
      acc91(5)=abb91(15)
      acc91(6)=abb91(17)
      acc91(7)=abb91(20)
      acc91(8)=abb91(22)
      acc91(9)=abb91(24)
      acc91(10)=abb91(27)
      acc91(11)=abb91(28)
      acc91(12)=abb91(29)
      acc91(13)=abb91(31)
      acc91(14)=abb91(32)
      acc91(15)=abb91(36)
      acc91(16)=abb91(37)
      acc91(17)=abb91(38)
      acc91(18)=abb91(41)
      acc91(19)=abb91(44)
      acc91(20)=abb91(51)
      acc91(21)=acc91(1)*Qspvae7k1
      acc91(22)=acc91(2)*Qspvak4k1
      acc91(23)=acc91(3)*Qspvak4k3
      acc91(24)=acc91(7)*Qspe7
      acc91(25)=acc91(9)*Qspk1
      acc91(26)=acc91(13)*Qspk2
      acc91(27)=acc91(14)*Qspk7
      acc91(21)=acc91(27)+acc91(26)+acc91(25)+acc91(24)+acc91(6)+acc91(23)+acc9&
      &1(22)+acc91(21)
      acc91(21)=Qspvak2l6*acc91(21)
      acc91(22)=-Qspl6-Qspl5
      acc91(23)=acc91(11)*Qspvak2l6
      acc91(23)=acc91(23)-acc91(19)
      acc91(22)=acc91(23)*acc91(22)
      acc91(23)=-Qspk3-Qspk4
      acc91(24)=acc91(16)*Qspvak2l6
      acc91(24)=acc91(24)-acc91(20)
      acc91(23)=acc91(24)*acc91(23)
      acc91(24)=acc91(5)*Qspvak4k1
      acc91(25)=acc91(8)*Qspe7
      acc91(26)=acc91(10)*Qspvae7k1
      acc91(27)=acc91(12)*Qspvak4k3
      acc91(28)=acc91(15)*Qspk1
      acc91(29)=acc91(17)*Qspk7
      acc91(30)=acc91(18)*Qspk2
      acc91(31)=Qspvak2l5*acc91(4)
      brack=acc91(21)+acc91(22)+acc91(23)+acc91(24)+acc91(25)+acc91(26)+acc91(2&
      &7)+acc91(28)+acc91(29)+acc91(30)+acc91(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram91_sign, shift => diagram91_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd91h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d91
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d91 = 0.0_ki
      d91 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d91, ki), aimag(d91), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd91h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d91
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d91 = 0.0_ki
      d91 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d91, ki), aimag(d91), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d91h3l1
