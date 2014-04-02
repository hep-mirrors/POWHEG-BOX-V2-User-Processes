module     p0_dbaru_epnebbbar_d10h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity3d10h3l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd10h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc10(39)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval5k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc10(1)=abb10(10)
      acc10(2)=abb10(11)
      acc10(3)=abb10(12)
      acc10(4)=abb10(13)
      acc10(5)=abb10(14)
      acc10(6)=abb10(15)
      acc10(7)=abb10(16)
      acc10(8)=abb10(17)
      acc10(9)=abb10(18)
      acc10(10)=abb10(19)
      acc10(11)=abb10(20)
      acc10(12)=abb10(22)
      acc10(13)=abb10(23)
      acc10(14)=abb10(24)
      acc10(15)=abb10(29)
      acc10(16)=abb10(30)
      acc10(17)=abb10(31)
      acc10(18)=abb10(33)
      acc10(19)=abb10(39)
      acc10(20)=abb10(41)
      acc10(21)=abb10(46)
      acc10(22)=abb10(48)
      acc10(23)=abb10(50)
      acc10(24)=abb10(51)
      acc10(25)=abb10(59)
      acc10(26)=Qspvak1k2*acc10(2)
      acc10(27)=Qspvak1k3*acc10(3)
      acc10(28)=Qspvak4k2*acc10(17)
      acc10(29)=Qspvak4k3*acc10(15)
      acc10(30)=-Qspk3+Qspk2-Qspk4
      acc10(31)=acc10(12)*acc10(30)
      acc10(26)=acc10(31)+acc10(29)+acc10(28)+acc10(27)+acc10(6)+acc10(26)
      acc10(26)=Qspvak2l5*acc10(26)
      acc10(27)=Qspvak1k2*acc10(13)
      acc10(28)=Qspvak1k3*acc10(8)
      acc10(29)=Qspvak4k2*acc10(24)
      acc10(31)=Qspvak4k3*acc10(25)
      acc10(30)=acc10(21)*acc10(30)
      acc10(27)=acc10(30)+acc10(31)+acc10(29)+acc10(28)+acc10(14)+acc10(27)
      acc10(27)=Qspvak2l6*acc10(27)
      acc10(28)=acc10(23)*Qspvak4l6
      acc10(29)=acc10(20)*Qspval6k2
      acc10(30)=acc10(19)*Qspval6k3
      acc10(31)=acc10(18)*Qspvak4l5
      acc10(32)=acc10(16)*Qspval5k3
      acc10(33)=acc10(11)*QspQ
      acc10(34)=acc10(10)*Qspval5k2
      acc10(35)=acc10(9)*Qspvak1l6
      acc10(36)=acc10(5)*Qspvak1l5
      acc10(37)=acc10(4)*Qspvak2k3
      acc10(38)=-Qspl5-Qspl6
      acc10(38)=acc10(7)*acc10(38)
      acc10(39)=Qspk2*acc10(1)
      brack=acc10(22)+acc10(26)+acc10(27)+acc10(28)+acc10(29)+acc10(30)+acc10(3&
      &1)+acc10(32)+acc10(33)+acc10(34)+acc10(35)+acc10(36)+acc10(37)+acc10(38)&
      &+acc10(39)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram10_sign, shift => diagram10_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd10h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d10
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d10 = 0.0_ki
      d10 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d10, ki), aimag(d10), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd10h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d10
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d10 = 0.0_ki
      d10 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d10, ki), aimag(d10), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d10h3l1
