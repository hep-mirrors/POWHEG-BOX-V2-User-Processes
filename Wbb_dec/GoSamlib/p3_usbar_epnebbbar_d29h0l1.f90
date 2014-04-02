module     p3_usbar_epnebbbar_d29h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity0d29h0l1.f90
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
      use p3_usbar_epnebbbar_abbrevd29h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc29(32)
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      acc29(1)=abb29(7)
      acc29(2)=abb29(8)
      acc29(3)=abb29(9)
      acc29(4)=abb29(10)
      acc29(5)=abb29(11)
      acc29(6)=abb29(12)
      acc29(7)=abb29(13)
      acc29(8)=abb29(14)
      acc29(9)=abb29(15)
      acc29(10)=abb29(16)
      acc29(11)=abb29(17)
      acc29(12)=abb29(18)
      acc29(13)=abb29(19)
      acc29(14)=abb29(21)
      acc29(15)=abb29(22)
      acc29(16)=abb29(24)
      acc29(17)=abb29(29)
      acc29(18)=abb29(30)
      acc29(19)=abb29(31)
      acc29(20)=abb29(32)
      acc29(21)=abb29(34)
      acc29(22)=abb29(35)
      acc29(23)=abb29(36)
      acc29(24)=acc29(19)*Qspval6k3
      acc29(25)=acc29(18)*Qspval6k1
      acc29(26)=Qspval5k1*acc29(22)
      acc29(27)=Qspval5k3*acc29(23)
      acc29(28)=Qspvak4k1*acc29(1)
      acc29(29)=Qspvak4k3*acc29(3)
      acc29(30)=-Qspk1+Qspk4+Qspk3
      acc29(31)=-acc29(5)*acc29(30)
      acc29(24)=acc29(31)+acc29(29)+acc29(28)+acc29(27)+acc29(26)+acc29(17)+acc&
      &29(24)+acc29(25)
      acc29(24)=Qspk2*acc29(24)
      acc29(25)=Qspvak2k1*acc29(10)
      acc29(26)=Qspvak2k3*acc29(9)
      acc29(27)=Qspvak4k1*acc29(2)
      acc29(28)=Qspvak4k3*acc29(7)
      acc29(29)=-acc29(20)*acc29(30)
      acc29(25)=acc29(29)+acc29(28)+acc29(27)+acc29(26)+acc29(6)+acc29(25)
      acc29(25)=Qspval6k2*acc29(25)
      acc29(26)=Qspvak2k1*acc29(4)
      acc29(27)=Qspvak2k3*acc29(13)
      acc29(26)=acc29(26)+acc29(27)
      acc29(26)=Qspval5k2*acc29(26)
      acc29(27)=acc29(15)*Qspval5l6
      acc29(28)=Qspval5k1*acc29(14)
      acc29(29)=Qspval5k3*acc29(21)
      acc29(31)=Qspvak4k1*acc29(8)
      acc29(32)=Qspvak4k3*acc29(12)
      acc29(30)=acc29(16)*acc29(30)
      brack=acc29(11)+acc29(24)+acc29(25)+acc29(26)+acc29(27)+acc29(28)+acc29(2&
      &9)+acc29(30)+acc29(31)+acc29(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p3_usbar_epnebbbar_groups, only: &
!           & sign => diagram29_sign, shift => diagram29_shift
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd29h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d29
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d29 = 0.0_ki
      d29 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d29, ki), aimag(d29), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd29h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d29
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d29 = 0.0_ki
      d29 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d29, ki), aimag(d29), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p3_usbar_epnebbbar_d29h0l1
