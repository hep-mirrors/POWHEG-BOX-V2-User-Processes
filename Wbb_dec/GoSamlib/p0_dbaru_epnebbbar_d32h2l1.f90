module     p0_dbaru_epnebbbar_d32h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2d32h2l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd32h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc32(39)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc32(1)=abb32(10)
      acc32(2)=abb32(11)
      acc32(3)=abb32(12)
      acc32(4)=abb32(13)
      acc32(5)=abb32(14)
      acc32(6)=abb32(15)
      acc32(7)=abb32(16)
      acc32(8)=abb32(17)
      acc32(9)=abb32(18)
      acc32(10)=abb32(19)
      acc32(11)=abb32(22)
      acc32(12)=abb32(23)
      acc32(13)=abb32(24)
      acc32(14)=abb32(25)
      acc32(15)=abb32(27)
      acc32(16)=abb32(29)
      acc32(17)=abb32(34)
      acc32(18)=abb32(39)
      acc32(19)=abb32(44)
      acc32(20)=abb32(47)
      acc32(21)=abb32(48)
      acc32(22)=abb32(49)
      acc32(23)=abb32(50)
      acc32(24)=abb32(51)
      acc32(25)=Qspk4+Qspk3
      acc32(26)=Qspk2-acc32(25)
      acc32(26)=acc32(17)*acc32(26)
      acc32(27)=Qspvak1k2*acc32(9)
      acc32(28)=Qspvak4k2*acc32(11)
      acc32(29)=Qspvak4k3*acc32(24)
      acc32(30)=Qspval5l6*acc32(6)
      acc32(26)=acc32(30)+acc32(29)+acc32(28)+acc32(1)+acc32(27)+acc32(26)
      acc32(26)=Qspk2*acc32(26)
      acc32(27)=Qspvak1k2*acc32(3)
      acc32(28)=Qspvak4k2*acc32(13)
      acc32(29)=Qspvak4k3*acc32(18)
      acc32(30)=-acc32(6)*acc32(25)
      acc32(27)=acc32(30)+acc32(29)+acc32(28)+acc32(4)+acc32(27)
      acc32(27)=Qspval5l6*acc32(27)
      acc32(25)=-acc32(20)*acc32(25)
      acc32(28)=acc32(21)*Qspvak4l6
      acc32(29)=acc32(19)*Qspl5
      acc32(30)=acc32(15)*Qspvak2l6
      acc32(31)=acc32(14)*Qspl6
      acc32(32)=acc32(12)*Qspvak2l5
      acc32(33)=acc32(10)*Qspvak2k3
      acc32(34)=acc32(8)*Qspvak1l6
      acc32(35)=acc32(5)*QspQ
      acc32(36)=acc32(2)*Qspvak1k3
      acc32(37)=Qspvak1k2*acc32(7)
      acc32(38)=Qspvak4k2*acc32(23)
      acc32(39)=Qspvak4k3*acc32(22)
      brack=acc32(16)+acc32(25)+acc32(26)+acc32(27)+acc32(28)+acc32(29)+acc32(3&
      &0)+acc32(31)+acc32(32)+acc32(33)+acc32(34)+acc32(35)+acc32(36)+acc32(37)&
      &+acc32(38)+acc32(39)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram32_sign, shift => diagram32_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd32h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d32
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d32 = 0.0_ki
      d32 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d32, ki), aimag(d32), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd32h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d32
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d32 = 0.0_ki
      d32 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d32, ki), aimag(d32), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d32h2l1
