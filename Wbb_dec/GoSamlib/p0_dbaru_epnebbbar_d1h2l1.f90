module     p0_dbaru_epnebbbar_d1h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2d1h2l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc1(37)
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc1(1)=abb1(7)
      acc1(2)=abb1(8)
      acc1(3)=abb1(9)
      acc1(4)=abb1(10)
      acc1(5)=abb1(11)
      acc1(6)=abb1(12)
      acc1(7)=abb1(13)
      acc1(8)=abb1(14)
      acc1(9)=abb1(15)
      acc1(10)=abb1(16)
      acc1(11)=abb1(17)
      acc1(12)=abb1(18)
      acc1(13)=abb1(19)
      acc1(14)=abb1(20)
      acc1(15)=abb1(21)
      acc1(16)=abb1(22)
      acc1(17)=abb1(23)
      acc1(18)=abb1(24)
      acc1(19)=abb1(25)
      acc1(20)=abb1(26)
      acc1(21)=abb1(27)
      acc1(22)=abb1(28)
      acc1(23)=abb1(29)
      acc1(24)=abb1(30)
      acc1(25)=abb1(31)
      acc1(26)=abb1(32)
      acc1(27)=abb1(33)
      acc1(28)=abb1(36)
      acc1(29)=acc1(1)*Qspval5l6
      acc1(30)=acc1(8)*Qspk2
      acc1(29)=acc1(13)+acc1(30)+acc1(29)
      acc1(29)=acc1(29)*Qspvak1k2
      acc1(30)=acc1(2)*Qspval5l6
      acc1(31)=acc1(6)*Qspval5k2
      acc1(32)=acc1(9)*Qspvak4k2
      acc1(33)=acc1(14)*Qspk2
      acc1(34)=acc1(20)*Qspval6k2
      acc1(35)=Qspvak3k2*acc1(18)
      acc1(29)=acc1(33)+acc1(30)+acc1(29)+acc1(35)+acc1(34)+acc1(11)+acc1(32)+a&
      &cc1(31)
      acc1(29)=Qspvak4k3*acc1(29)
      acc1(30)=acc1(18)*Qspvak4k2
      acc1(31)=acc1(4)*Qspk2
      acc1(32)=acc1(16)*Qspval5l6
      acc1(33)=acc1(19)*Qspvak4k3
      acc1(34)=acc1(26)*Qspval5k2
      acc1(30)=acc1(34)+acc1(33)+acc1(32)+acc1(31)+acc1(3)+acc1(30)
      acc1(30)=QspQ*acc1(30)
      acc1(31)=-acc1(22)*Qspvak4k2
      acc1(32)=acc1(25)*Qspk2
      acc1(33)=-acc1(28)*Qspval5l6
      acc1(31)=acc1(33)+acc1(32)+acc1(31)+acc1(21)
      acc1(32)=Qspk3+Qspk4
      acc1(31)=acc1(32)*acc1(31)
      acc1(32)=-Qspk1-Qspl5-Qspl6
      acc1(33)=acc1(12)*Qspvak4k3
      acc1(33)=acc1(33)-acc1(10)
      acc1(32)=acc1(33)*acc1(32)
      acc1(33)=acc1(17)*Qspk2
      acc1(34)=acc1(23)*Qspval5l6
      acc1(33)=acc1(34)+acc1(33)+acc1(15)
      acc1(33)=Qspvak1k3*acc1(33)
      acc1(34)=acc1(5)*Qspval5l6
      acc1(35)=acc1(7)*Qspval5k2
      acc1(36)=acc1(24)*Qspvak1k2
      acc1(37)=acc1(27)*Qspval6k2
      brack=acc1(29)+acc1(30)+acc1(31)+acc1(32)+acc1(33)+acc1(34)+acc1(35)+acc1&
      &(36)+acc1(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram1_sign, shift => diagram1_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d1
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d1 = 0.0_ki
      d1 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d1, ki), aimag(d1), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d1
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d1 = 0.0_ki
      d1 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d1, ki), aimag(d1), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d1h2l1
