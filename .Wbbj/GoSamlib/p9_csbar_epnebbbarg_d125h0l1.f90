module     p9_csbar_epnebbbarg_d125h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d125h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd125h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc125(39)
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspk7
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspk7 = dotproduct(Q,k7)
      acc125(1)=abb125(6)
      acc125(2)=abb125(7)
      acc125(3)=abb125(8)
      acc125(4)=abb125(9)
      acc125(5)=abb125(10)
      acc125(6)=abb125(11)
      acc125(7)=abb125(12)
      acc125(8)=abb125(14)
      acc125(9)=abb125(15)
      acc125(10)=abb125(16)
      acc125(11)=abb125(17)
      acc125(12)=abb125(18)
      acc125(13)=abb125(19)
      acc125(14)=abb125(20)
      acc125(15)=abb125(21)
      acc125(16)=abb125(22)
      acc125(17)=abb125(23)
      acc125(18)=abb125(24)
      acc125(19)=abb125(25)
      acc125(20)=abb125(27)
      acc125(21)=abb125(28)
      acc125(22)=abb125(30)
      acc125(23)=abb125(33)
      acc125(24)=abb125(34)
      acc125(25)=abb125(35)
      acc125(26)=abb125(36)
      acc125(27)=abb125(37)
      acc125(28)=abb125(38)
      acc125(29)=abb125(39)
      acc125(30)=acc125(4)*Qspval6k1
      acc125(31)=acc125(13)*Qspval5k1
      acc125(30)=acc125(22)+acc125(31)+acc125(30)
      acc125(30)=acc125(30)*Qspvak4k3
      acc125(31)=Qspk3+Qspk4
      acc125(32)=-acc125(21)*acc125(31)
      acc125(33)=acc125(5)*Qspvak4k1
      acc125(34)=acc125(14)*Qspval6k1
      acc125(35)=acc125(18)*Qspk1
      acc125(36)=acc125(20)*QspQ
      acc125(37)=acc125(26)*Qspval5k1
      acc125(38)=Qspval6k3*acc125(24)
      acc125(39)=Qspval5k3*acc125(27)
      acc125(30)=acc125(37)+acc125(34)+acc125(32)+acc125(30)+acc125(39)+acc125(&
      &38)+acc125(36)+acc125(35)+acc125(6)+acc125(33)
      acc125(30)=Qspe7*acc125(30)
      acc125(32)=acc125(1)*Qspvae7k1
      acc125(33)=acc125(2)*Qspvak7k1
      acc125(34)=acc125(25)*Qspk1
      acc125(35)=acc125(28)*QspQ
      acc125(36)=acc125(29)*Qspk7
      acc125(32)=acc125(36)+acc125(35)+acc125(34)+acc125(15)+acc125(33)+acc125(&
      &32)
      acc125(32)=Qspvak4k3*acc125(32)
      acc125(33)=acc125(11)*Qspvae7k1
      acc125(34)=-acc125(23)*Qspvak4k1
      acc125(33)=acc125(34)+acc125(33)+acc125(3)
      acc125(33)=QspQ*acc125(33)
      acc125(34)=Qspk1-acc125(31)
      acc125(34)=acc125(34)*acc125(17)
      acc125(34)=acc125(9)+acc125(34)
      acc125(34)=Qspvae7k1*acc125(34)
      acc125(35)=acc125(7)*Qspvak4k1
      acc125(35)=acc125(10)+acc125(35)
      acc125(35)=Qspk1*acc125(35)
      acc125(31)=acc125(19)*acc125(31)
      acc125(36)=acc125(8)*Qspvak7k1
      acc125(37)=acc125(16)*Qspk7
      brack=acc125(12)+acc125(30)+acc125(31)+acc125(32)+acc125(33)+acc125(34)+a&
      &cc125(35)+acc125(36)+acc125(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram125_sign, shift => diagram125_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd125h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d125
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d125 = 0.0_ki
      d125 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d125, ki), aimag(d125), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd125h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d125
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d125 = 0.0_ki
      d125 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d125, ki), aimag(d125), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d125h0l1
