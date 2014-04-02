module     p0_dbaru_epnebbbar_d6h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity3d6h3l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc6(33)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
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
      acc6(16)=abb6(25)
      acc6(17)=abb6(27)
      acc6(18)=abb6(31)
      acc6(19)=abb6(32)
      acc6(20)=abb6(35)
      acc6(21)=abb6(39)
      acc6(22)=abb6(44)
      acc6(23)=Qspvak1k2*acc6(10)
      acc6(24)=Qspvak1k3*acc6(11)
      acc6(25)=Qspvak4k2*acc6(9)
      acc6(26)=Qspvak4k3*acc6(16)
      acc6(27)=Qspk4+Qspk3
      acc6(28)=acc6(27)-Qspk2
      acc6(29)=acc6(5)*acc6(28)
      acc6(23)=acc6(29)+acc6(26)+acc6(25)+acc6(24)+acc6(2)+acc6(23)
      acc6(23)=Qspvak2l5*acc6(23)
      acc6(24)=Qspvak1k2*acc6(12)
      acc6(25)=Qspvak1k3*acc6(15)
      acc6(26)=Qspvak4k2*acc6(17)
      acc6(29)=Qspvak4k3*acc6(21)
      acc6(28)=acc6(20)*acc6(28)
      acc6(24)=acc6(28)+acc6(29)+acc6(26)+acc6(25)+acc6(7)+acc6(24)
      acc6(24)=Qspvak2l6*acc6(24)
      acc6(25)=-acc6(22)*acc6(27)
      acc6(26)=acc6(19)*Qspk1
      acc6(27)=acc6(14)*QspQ
      acc6(28)=acc6(13)*Qspvak1l6
      acc6(29)=acc6(3)*Qspvak1l5
      acc6(30)=Qspl5+Qspl6
      acc6(30)=acc6(4)*acc6(30)
      acc6(31)=Qspk2*acc6(8)
      acc6(32)=Qspvak4k2*acc6(1)
      acc6(33)=Qspvak4k3*acc6(6)
      brack=acc6(18)+acc6(23)+acc6(24)+acc6(25)+acc6(26)+acc6(27)+acc6(28)+acc6&
      &(29)+acc6(30)+acc6(31)+acc6(32)+acc6(33)
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
      use p0_dbaru_epnebbbar_abbrevd6h3
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
      use p0_dbaru_epnebbbar_abbrevd6h3
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
end module p0_dbaru_epnebbbar_d6h3l1
