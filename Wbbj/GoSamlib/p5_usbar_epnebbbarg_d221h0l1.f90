module     p5_usbar_epnebbbarg_d221h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d221h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd221h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc221(55)
      complex(ki) :: Qspvae7k7
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      Qspvae7k7 = dotproduct(Q,spvae7k7)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      acc221(1)=abb221(13)
      acc221(2)=abb221(14)
      acc221(3)=abb221(15)
      acc221(4)=abb221(16)
      acc221(5)=abb221(17)
      acc221(6)=abb221(18)
      acc221(7)=abb221(21)
      acc221(8)=abb221(24)
      acc221(9)=abb221(25)
      acc221(10)=abb221(26)
      acc221(11)=abb221(27)
      acc221(12)=abb221(28)
      acc221(13)=abb221(30)
      acc221(14)=abb221(31)
      acc221(15)=abb221(33)
      acc221(16)=abb221(34)
      acc221(17)=abb221(37)
      acc221(18)=abb221(40)
      acc221(19)=abb221(41)
      acc221(20)=abb221(43)
      acc221(21)=abb221(45)
      acc221(22)=abb221(46)
      acc221(23)=abb221(47)
      acc221(24)=abb221(49)
      acc221(25)=abb221(51)
      acc221(26)=abb221(53)
      acc221(27)=abb221(54)
      acc221(28)=abb221(72)
      acc221(29)=Qspvae7k7*acc221(10)
      acc221(30)=Qspvak7e7*acc221(19)
      acc221(31)=Qspvae7l6*acc221(23)
      acc221(32)=Qspval6e7*acc221(1)
      acc221(33)=Qspvak4e7*acc221(21)
      acc221(34)=Qspvae7k3*acc221(25)
      acc221(35)=Qspvae7k2*acc221(7)
      acc221(36)=Qspvak2e7*acc221(17)
      acc221(37)=Qspvae7k1*acc221(24)
      acc221(38)=Qspvak7l6*acc221(20)
      acc221(39)=Qspvak7k3*acc221(22)
      acc221(40)=Qspvak7k2*acc221(26)
      acc221(41)=Qspvak7k1*acc221(27)
      acc221(42)=Qspval6k7*acc221(8)
      acc221(43)=Qspval6k3*acc221(9)
      acc221(44)=Qspval6k2*acc221(12)
      acc221(45)=Qspval6k1*acc221(4)
      acc221(46)=Qspvak4k7*acc221(15)
      acc221(47)=Qspvak4l6*acc221(13)
      acc221(48)=Qspvak2k7*acc221(16)
      acc221(49)=Qspvak2l6*acc221(3)
      acc221(50)=Qspvak2k3*acc221(6)
      acc221(51)=Qspvak2k1*acc221(5)
      acc221(52)=Qspe7*acc221(18)
      acc221(53)=Qspk7*acc221(28)
      acc221(54)=Qspl6*acc221(14)
      acc221(55)=Qspk2*acc221(2)
      brack=acc221(11)+acc221(29)+acc221(30)+acc221(31)+acc221(32)+acc221(33)+a&
      &cc221(34)+acc221(35)+acc221(36)+acc221(37)+acc221(38)+acc221(39)+acc221(&
      &40)+acc221(41)+acc221(42)+acc221(43)+acc221(44)+acc221(45)+acc221(46)+ac&
      &c221(47)+acc221(48)+acc221(49)+acc221(50)+acc221(51)+acc221(52)+acc221(5&
      &3)+acc221(54)+acc221(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram221_sign, shift => diagram221_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd221h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d221
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d221 = 0.0_ki
      d221 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d221, ki), aimag(d221), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd221h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d221
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d221 = 0.0_ki
      d221 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d221, ki), aimag(d221), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d221h0l1
