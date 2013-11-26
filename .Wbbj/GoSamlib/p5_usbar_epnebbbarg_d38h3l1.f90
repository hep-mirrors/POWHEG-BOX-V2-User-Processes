module     p5_usbar_epnebbbarg_d38h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d38h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd38h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc38(35)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc38(1)=abb38(10)
      acc38(2)=abb38(11)
      acc38(3)=abb38(12)
      acc38(4)=abb38(13)
      acc38(5)=abb38(14)
      acc38(6)=abb38(15)
      acc38(7)=abb38(16)
      acc38(8)=abb38(17)
      acc38(9)=abb38(18)
      acc38(10)=abb38(19)
      acc38(11)=abb38(20)
      acc38(12)=abb38(21)
      acc38(13)=abb38(22)
      acc38(14)=abb38(23)
      acc38(15)=abb38(24)
      acc38(16)=abb38(25)
      acc38(17)=abb38(26)
      acc38(18)=abb38(27)
      acc38(19)=abb38(28)
      acc38(20)=abb38(31)
      acc38(21)=abb38(32)
      acc38(22)=abb38(34)
      acc38(23)=abb38(37)
      acc38(24)=abb38(42)
      acc38(25)=abb38(43)
      acc38(26)=acc38(3)*Qspvak4k1
      acc38(27)=acc38(6)*Qspvak4k7
      acc38(28)=acc38(15)*Qspvak2k1
      acc38(29)=acc38(17)*Qspvak2k7
      acc38(30)=acc38(20)*Qspvae7k1
      acc38(31)=acc38(24)*Qspe7
      acc38(26)=acc38(31)+acc38(30)+acc38(29)+acc38(28)+acc38(8)+acc38(27)+acc3&
      &8(26)
      acc38(26)=Qspvak2l6*acc38(26)
      acc38(27)=acc38(4)*Qspvae7k1
      acc38(28)=acc38(9)*Qspvak4k1
      acc38(29)=acc38(10)*Qspvak2k7
      acc38(30)=acc38(13)*Qspvak4k7
      acc38(31)=acc38(19)*Qspvak2k1
      acc38(32)=acc38(22)*Qspe7
      acc38(27)=acc38(32)+acc38(21)+acc38(31)+acc38(30)+acc38(29)+acc38(28)+acc&
      &38(27)
      acc38(27)=Qspvak2l5*acc38(27)
      acc38(28)=acc38(23)*Qspvak2l5
      acc38(29)=acc38(25)*Qspvak2l6
      acc38(28)=acc38(29)+acc38(12)+acc38(28)
      acc38(29)=Qspk1-Qspk7
      acc38(28)=acc38(29)*acc38(28)
      acc38(29)=-Qspl5-Qspl6
      acc38(29)=acc38(14)*acc38(29)
      acc38(30)=acc38(1)*Qspe7
      acc38(31)=acc38(2)*Qspvae7k1
      acc38(32)=Qspvak4l6*acc38(5)
      acc38(33)=Qspvak4l5*acc38(7)
      acc38(34)=Qspk2*acc38(16)
      acc38(35)=QspQ*acc38(11)
      brack=acc38(18)+acc38(26)+acc38(27)+acc38(28)+acc38(29)+acc38(30)+acc38(3&
      &1)+acc38(32)+acc38(33)+acc38(34)+acc38(35)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram38_sign, shift => diagram38_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd38h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d38
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d38 = 0.0_ki
      d38 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d38, ki), aimag(d38), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd38h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d38
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d38 = 0.0_ki
      d38 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d38, ki), aimag(d38), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d38h3l1
