module     p0_dbaru_epnebbbar_d6h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity0d6h0l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc6(31)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc6(1)=abb6(9)
      acc6(2)=abb6(10)
      acc6(3)=abb6(11)
      acc6(4)=abb6(12)
      acc6(5)=abb6(13)
      acc6(6)=abb6(14)
      acc6(7)=abb6(15)
      acc6(8)=abb6(16)
      acc6(9)=abb6(17)
      acc6(10)=abb6(18)
      acc6(11)=abb6(19)
      acc6(12)=abb6(20)
      acc6(13)=abb6(21)
      acc6(14)=abb6(22)
      acc6(15)=abb6(23)
      acc6(16)=abb6(26)
      acc6(17)=abb6(28)
      acc6(18)=abb6(30)
      acc6(19)=abb6(32)
      acc6(20)=abb6(33)
      acc6(21)=abb6(55)
      acc6(22)=Qspvak1k3*acc6(4)
      acc6(23)=Qspvak1k2*acc6(6)
      acc6(24)=Qspvak4k2*acc6(7)
      acc6(25)=Qspvak4k3*acc6(17)
      acc6(26)=Qspk4+Qspk3
      acc6(27)=acc6(26)-Qspk2
      acc6(28)=acc6(18)*acc6(27)
      acc6(22)=acc6(28)+acc6(25)+acc6(24)+acc6(23)+acc6(2)+acc6(22)
      acc6(22)=Qspval5k2*acc6(22)
      acc6(23)=Qspvak1k3*acc6(16)
      acc6(24)=Qspvak1k2*acc6(14)
      acc6(25)=Qspvak4k2*acc6(13)
      acc6(28)=Qspvak4k3*acc6(19)
      acc6(27)=acc6(20)*acc6(27)
      acc6(23)=acc6(27)+acc6(28)+acc6(25)+acc6(24)+acc6(5)+acc6(23)
      acc6(23)=Qspval6k2*acc6(23)
      acc6(24)=-acc6(21)*acc6(26)
      acc6(25)=acc6(12)*QspQ
      acc6(26)=acc6(10)*Qspk1
      acc6(27)=Qspl5+Qspl6
      acc6(27)=acc6(8)*acc6(27)
      acc6(28)=Qspk2*acc6(3)
      acc6(29)=Qspvak1k2*acc6(15)
      acc6(30)=Qspvak4k2*acc6(1)
      acc6(31)=Qspvak4k3*acc6(9)
      brack=acc6(11)+acc6(22)+acc6(23)+acc6(24)+acc6(25)+acc6(26)+acc6(27)+acc6&
      &(28)+acc6(29)+acc6(30)+acc6(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram6_sign, shift => diagram6_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd6h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd6h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d6h0l1
