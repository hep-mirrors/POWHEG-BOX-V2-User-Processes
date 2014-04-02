module     p3_usbar_epnebbbar_d3h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity0d3h0l1.f90
   ! generator: buildfortran.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc3(39)
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      acc3(1)=abb3(6)
      acc3(2)=abb3(8)
      acc3(3)=abb3(9)
      acc3(4)=abb3(10)
      acc3(5)=abb3(11)
      acc3(6)=abb3(12)
      acc3(7)=abb3(13)
      acc3(8)=abb3(14)
      acc3(9)=abb3(15)
      acc3(10)=abb3(16)
      acc3(11)=abb3(17)
      acc3(12)=abb3(18)
      acc3(13)=abb3(19)
      acc3(14)=abb3(20)
      acc3(15)=abb3(21)
      acc3(16)=abb3(22)
      acc3(17)=abb3(23)
      acc3(18)=abb3(24)
      acc3(19)=abb3(25)
      acc3(20)=abb3(26)
      acc3(21)=abb3(27)
      acc3(22)=abb3(28)
      acc3(23)=abb3(29)
      acc3(24)=abb3(30)
      acc3(25)=abb3(31)
      acc3(26)=abb3(32)
      acc3(27)=abb3(33)
      acc3(28)=abb3(34)
      acc3(29)=abb3(35)
      acc3(30)=acc3(1)*Qspvak2k3
      acc3(31)=acc3(9)*Qspvak4k1
      acc3(32)=acc3(10)*QspQ
      acc3(33)=acc3(25)*Qspk2
      acc3(34)=acc3(26)*Qspval5k1
      acc3(35)=acc3(27)*Qspval6k1
      acc3(36)=-Qspvak3k1*acc3(11)
      acc3(37)=-Qspvak2k4*acc3(29)
      acc3(30)=acc3(37)+acc3(36)+acc3(35)+acc3(34)+acc3(33)+acc3(32)+acc3(31)+a&
      &cc3(7)+acc3(30)
      acc3(30)=Qspvak4k3*acc3(30)
      acc3(31)=-acc3(21)*Qspval5k1
      acc3(32)=-acc3(22)*Qspval6k1
      acc3(33)=acc3(6)*Qspvak2k3
      acc3(34)=acc3(28)*Qspvak4k1
      acc3(31)=acc3(34)+acc3(33)+acc3(31)+acc3(32)
      acc3(32)=Qspk3+Qspk4
      acc3(33)=acc3(32)-Qspk2
      acc3(31)=acc3(33)*acc3(31)
      acc3(33)=acc3(11)*Qspvak4k1
      acc3(34)=acc3(29)*Qspvak2k3
      acc3(35)=acc3(2)*Qspval5k1
      acc3(36)=acc3(23)*Qspval6k1
      acc3(33)=acc3(36)+acc3(3)+acc3(35)+acc3(34)+acc3(33)
      acc3(33)=QspQ*acc3(33)
      acc3(34)=acc3(13)*Qspvak2k3
      acc3(35)=Qspvak2k1*Qspvak4k3
      acc3(36)=acc3(14)*acc3(35)
      acc3(37)=acc3(19)*Qspk2
      acc3(34)=acc3(37)+acc3(17)+acc3(36)+acc3(34)
      acc3(34)=Qspval6k2*acc3(34)
      acc3(36)=acc3(8)*Qspvak2k3
      acc3(37)=acc3(18)*Qspk2
      acc3(35)=acc3(24)*acc3(35)
      acc3(35)=acc3(35)+acc3(37)+acc3(16)+acc3(36)
      acc3(35)=Qspval5k2*acc3(35)
      acc3(36)=-acc3(21)*Qspval5k2
      acc3(37)=-acc3(22)*Qspval6k2
      acc3(36)=acc3(36)+acc3(37)
      acc3(36)=Qspvak2k1*acc3(36)
      acc3(32)=acc3(12)*acc3(32)
      acc3(37)=acc3(4)*Qspk2
      acc3(38)=acc3(15)*Qspval5k1
      acc3(39)=acc3(20)*Qspval6k1
      brack=acc3(5)+acc3(30)+acc3(31)+acc3(32)+acc3(33)+acc3(34)+acc3(35)+acc3(&
      &36)+acc3(37)+acc3(38)+acc3(39)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p3_usbar_epnebbbar_groups, only: &
!           & sign => diagram3_sign, shift => diagram3_shift
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd3h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d3
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d3 = 0.0_ki
      d3 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d3, ki), aimag(d3), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd3h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d3
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d3 = 0.0_ki
      d3 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d3, ki), aimag(d3), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p3_usbar_epnebbbar_d3h0l1
