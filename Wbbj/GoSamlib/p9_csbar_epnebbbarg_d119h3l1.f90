module     p9_csbar_epnebbbarg_d119h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d119h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd119h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc119(32)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc119(1)=abb119(8)
      acc119(2)=abb119(9)
      acc119(3)=abb119(10)
      acc119(4)=abb119(11)
      acc119(5)=abb119(13)
      acc119(6)=abb119(14)
      acc119(7)=abb119(15)
      acc119(8)=abb119(16)
      acc119(9)=abb119(17)
      acc119(10)=abb119(20)
      acc119(11)=abb119(23)
      acc119(12)=abb119(24)
      acc119(13)=abb119(25)
      acc119(14)=abb119(26)
      acc119(15)=abb119(27)
      acc119(16)=abb119(28)
      acc119(17)=abb119(29)
      acc119(18)=abb119(30)
      acc119(19)=abb119(31)
      acc119(20)=abb119(33)
      acc119(21)=abb119(34)
      acc119(22)=Qspvak4k1*acc119(1)
      acc119(23)=Qspvak4k3*acc119(2)
      acc119(24)=acc119(19)*Qspvak7k1
      acc119(25)=-acc119(18)*Qspvak7k3
      acc119(26)=acc119(17)*Qspvae7k1
      acc119(27)=-acc119(16)*Qspval5k1
      acc119(28)=-acc119(15)*Qspvae7k3
      acc119(29)=acc119(13)*Qspval5k3
      acc119(30)=-Qspk1+Qspk4+Qspk3
      acc119(31)=-acc119(12)*acc119(30)
      acc119(22)=acc119(31)+acc119(29)+acc119(28)+acc119(27)+acc119(26)+acc119(&
      &25)+acc119(24)+acc119(23)+acc119(6)+acc119(22)
      acc119(22)=Qspvak2l6*acc119(22)
      acc119(23)=Qspvak2k1*acc119(16)
      acc119(24)=-Qspvak2k3*acc119(13)
      acc119(23)=acc119(24)+acc119(7)+acc119(23)
      acc119(23)=Qspval5l6*acc119(23)
      acc119(24)=-Qspvak2k1*acc119(19)
      acc119(25)=Qspvak2k3*acc119(18)
      acc119(24)=acc119(25)+acc119(11)+acc119(24)
      acc119(24)=Qspvak7l6*acc119(24)
      acc119(25)=-Qspvak2k1*acc119(17)
      acc119(26)=Qspvak2k3*acc119(15)
      acc119(25)=acc119(26)+acc119(21)+acc119(25)
      acc119(25)=Qspvae7l6*acc119(25)
      acc119(26)=acc119(10)*Qspvak2k7
      acc119(27)=acc119(9)*Qspk2
      acc119(28)=acc119(4)*Qspvak2l5
      acc119(29)=acc119(3)*Qspvak2e7
      acc119(31)=Qspvak4k1*acc119(5)
      acc119(32)=Qspvak4k3*acc119(8)
      acc119(30)=acc119(20)*acc119(30)
      brack=acc119(14)+acc119(22)+acc119(23)+acc119(24)+acc119(25)+acc119(26)+a&
      &cc119(27)+acc119(28)+acc119(29)+acc119(30)+acc119(31)+acc119(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram119_sign, shift => diagram119_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd119h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd119h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d119h3l1
