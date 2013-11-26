module     p9_csbar_epnebbbarg_d126h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d126h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd126h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc126(38)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      acc126(1)=abb126(7)
      acc126(2)=abb126(8)
      acc126(3)=abb126(9)
      acc126(4)=abb126(10)
      acc126(5)=abb126(11)
      acc126(6)=abb126(12)
      acc126(7)=abb126(13)
      acc126(8)=abb126(14)
      acc126(9)=abb126(15)
      acc126(10)=abb126(16)
      acc126(11)=abb126(17)
      acc126(12)=abb126(18)
      acc126(13)=abb126(19)
      acc126(14)=abb126(20)
      acc126(15)=abb126(21)
      acc126(16)=abb126(22)
      acc126(17)=abb126(24)
      acc126(18)=abb126(25)
      acc126(19)=abb126(26)
      acc126(20)=abb126(27)
      acc126(21)=abb126(28)
      acc126(22)=abb126(29)
      acc126(23)=abb126(30)
      acc126(24)=abb126(31)
      acc126(25)=abb126(32)
      acc126(26)=abb126(33)
      acc126(27)=abb126(34)
      acc126(28)=abb126(35)
      acc126(29)=acc126(1)*Qspvak4k1
      acc126(30)=acc126(3)*Qspvak7k1
      acc126(31)=acc126(5)*Qspval6k3
      acc126(32)=acc126(11)*Qspval5k3
      acc126(33)=acc126(17)*Qspval5k7
      acc126(34)=acc126(18)*Qspval6k7
      acc126(29)=acc126(34)+acc126(33)+acc126(32)+acc126(31)+acc126(30)+acc126(&
      &29)
      acc126(29)=Qspe7*acc126(29)
      acc126(30)=-Qspval6k1*acc126(22)
      acc126(31)=-Qspval5k1*acc126(21)
      acc126(30)=acc126(31)+acc126(30)
      acc126(30)=acc126(30)*Qspe7
      acc126(31)=acc126(4)*Qspval6k7
      acc126(32)=acc126(10)*Qspval5k7
      acc126(33)=acc126(26)*Qspvak7k1
      acc126(34)=acc126(28)*Qspvae7k1
      acc126(30)=acc126(30)+acc126(34)+acc126(33)+acc126(32)+acc126(31)
      acc126(30)=Qspvak4k3*acc126(30)
      acc126(31)=acc126(7)*Qspvae7k1
      acc126(32)=acc126(12)*Qspvak4k1
      acc126(33)=acc126(15)*Qspval5k3
      acc126(34)=acc126(25)*Qspval6k3
      acc126(35)=acc126(27)*Qspvak4k3
      acc126(31)=acc126(35)+acc126(34)+acc126(33)+acc126(32)+acc126(31)+acc126(&
      &6)
      acc126(31)=QspQ*acc126(31)
      acc126(32)=acc126(8)*Qspvak4k1
      acc126(33)=acc126(13)*Qspvae7k1
      acc126(34)=acc126(23)*Qspval5k3
      acc126(35)=acc126(24)*Qspval6k3
      acc126(32)=acc126(35)+acc126(34)+acc126(33)+acc126(32)
      acc126(32)=Qspk7*acc126(32)
      acc126(33)=acc126(2)*Qspvak7k1
      acc126(34)=acc126(9)*Qspval5k7
      acc126(35)=acc126(14)*Qspvae7k1
      acc126(36)=acc126(16)*Qspval6k7
      acc126(37)=acc126(19)*Qspval5k3
      acc126(38)=acc126(20)*Qspval6k3
      brack=acc126(29)+acc126(30)+acc126(31)+acc126(32)+acc126(33)+acc126(34)+a&
      &cc126(35)+acc126(36)+acc126(37)+acc126(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram126_sign, shift => diagram126_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd126h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d126
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d126 = 0.0_ki
      d126 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d126, ki), aimag(d126), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd126h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d126
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d126 = 0.0_ki
      d126 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d126, ki), aimag(d126), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d126h0l1
