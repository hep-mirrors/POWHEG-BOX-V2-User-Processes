module     p5_usbar_epnebbbarg_d315h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d315h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd315h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc315(36)
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6e7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6e7 = dotproduct(Q,spval6e7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc315(1)=abb315(8)
      acc315(2)=abb315(9)
      acc315(3)=abb315(10)
      acc315(4)=abb315(11)
      acc315(5)=abb315(12)
      acc315(6)=abb315(13)
      acc315(7)=abb315(14)
      acc315(8)=abb315(15)
      acc315(9)=abb315(16)
      acc315(10)=abb315(17)
      acc315(11)=abb315(18)
      acc315(12)=abb315(19)
      acc315(13)=abb315(20)
      acc315(14)=abb315(21)
      acc315(15)=abb315(22)
      acc315(16)=abb315(23)
      acc315(17)=abb315(24)
      acc315(18)=abb315(25)
      acc315(19)=abb315(26)
      acc315(20)=abb315(31)
      acc315(21)=abb315(35)
      acc315(22)=abb315(36)
      acc315(23)=abb315(42)
      acc315(24)=abb315(48)
      acc315(25)=abb315(55)
      acc315(26)=acc315(5)*Qspval6k1
      acc315(27)=-acc315(7)*Qspvae7k2
      acc315(28)=acc315(12)*Qspe7
      acc315(29)=acc315(15)*Qspvae7k1
      acc315(30)=acc315(21)*Qspval6e7
      acc315(26)=acc315(30)+acc315(29)+acc315(28)+acc315(27)+acc315(6)+acc315(2&
      &6)
      acc315(26)=QspQ*acc315(26)
      acc315(27)=acc315(3)*Qspk2
      acc315(28)=acc315(4)*Qspval6k1
      acc315(29)=acc315(25)*Qspk1
      acc315(30)=Qspvak4k2*acc315(1)
      acc315(27)=acc315(30)+acc315(29)+acc315(10)+acc315(28)+acc315(27)
      acc315(27)=Qspe7*acc315(27)
      acc315(28)=acc315(13)*Qspvak2k1
      acc315(29)=Qspvak4k1*acc315(16)
      acc315(28)=acc315(29)+acc315(22)+acc315(28)
      acc315(28)=acc315(28)*Qspe7
      acc315(28)=acc315(20)+acc315(28)
      acc315(28)=Qspval6k2*acc315(28)
      acc315(29)=acc315(24)*Qspval6k2
      acc315(29)=acc315(29)+acc315(8)
      acc315(29)=Qspvae7k1*acc315(29)
      acc315(30)=acc315(2)*Qspval6k1
      acc315(31)=acc315(11)*Qspvak2k1
      acc315(32)=acc315(14)*Qspvae7k2
      acc315(33)=acc315(17)*Qspk2
      acc315(34)=acc315(18)*Qspval6e7
      acc315(35)=acc315(23)*Qspk1
      acc315(36)=Qspvak1k2*acc315(19)
      brack=acc315(9)+acc315(26)+acc315(27)+acc315(28)+acc315(29)+acc315(30)+ac&
      &c315(31)+acc315(32)+acc315(33)+acc315(34)+acc315(35)+acc315(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram315_sign, shift => diagram315_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd315h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d315
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d315 = 0.0_ki
      d315 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d315, ki), aimag(d315), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd315h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d315
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d315 = 0.0_ki
      d315 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d315, ki), aimag(d315), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d315h0l1