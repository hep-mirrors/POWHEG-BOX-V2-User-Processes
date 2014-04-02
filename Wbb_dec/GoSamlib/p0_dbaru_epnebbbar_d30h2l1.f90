module     p0_dbaru_epnebbbar_d30h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2d30h2l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd30h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc30(36)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc30(1)=abb30(8)
      acc30(2)=abb30(9)
      acc30(3)=abb30(10)
      acc30(4)=abb30(11)
      acc30(5)=abb30(12)
      acc30(6)=abb30(13)
      acc30(7)=abb30(14)
      acc30(8)=abb30(15)
      acc30(9)=abb30(16)
      acc30(10)=abb30(17)
      acc30(11)=abb30(18)
      acc30(12)=abb30(19)
      acc30(13)=abb30(20)
      acc30(14)=abb30(21)
      acc30(15)=abb30(22)
      acc30(16)=abb30(23)
      acc30(17)=abb30(24)
      acc30(18)=abb30(25)
      acc30(19)=abb30(26)
      acc30(20)=abb30(27)
      acc30(21)=abb30(29)
      acc30(22)=abb30(41)
      acc30(23)=abb30(43)
      acc30(24)=abb30(47)
      acc30(25)=Qspk4+Qspk3
      acc30(26)=acc30(15)*acc30(25)
      acc30(27)=acc30(14)*Qspvak2l6
      acc30(28)=Qspvak4l6*acc30(5)
      acc30(29)=Qspvak4k3*acc30(10)
      acc30(30)=Qspk2*acc30(16)
      acc30(31)=Qspvak4k2*acc30(2)
      acc30(26)=acc30(31)+acc30(30)+acc30(29)+acc30(28)+acc30(9)+acc30(27)+acc3&
      &0(26)
      acc30(26)=Qspvak4k2*acc30(26)
      acc30(27)=acc30(11)*Qspvak3k2
      acc30(28)=-acc30(14)*Qspvak3l6
      acc30(29)=Qspvak4l6*acc30(13)
      acc30(27)=acc30(29)+acc30(28)+acc30(27)+acc30(1)
      acc30(27)=Qspvak4k3*acc30(27)
      acc30(28)=Qspvak4l6*acc30(24)
      acc30(29)=Qspk2-acc30(25)
      acc30(29)=acc30(22)*acc30(29)
      acc30(30)=Qspvak4k3*acc30(12)
      acc30(29)=acc30(30)-acc30(28)+acc30(7)+acc30(29)
      acc30(29)=Qspk2*acc30(29)
      acc30(28)=acc30(28)+acc30(20)
      acc30(25)=acc30(25)*acc30(28)
      acc30(28)=acc30(23)*Qspval5l6
      acc30(30)=acc30(18)*Qspvak1k3
      acc30(31)=acc30(17)*Qspvak2k3
      acc30(32)=acc30(8)*QspQ
      acc30(33)=acc30(6)*Qspvak1k2
      acc30(34)=acc30(4)*Qspvak2l5
      acc30(35)=acc30(3)*Qspvak1l6
      acc30(36)=Qspvak2l6*acc30(19)
      brack=acc30(21)+acc30(25)+acc30(26)+acc30(27)+acc30(28)+acc30(29)+acc30(3&
      &0)+acc30(31)+acc30(32)+acc30(33)+acc30(34)+acc30(35)+acc30(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram30_sign, shift => diagram30_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd30h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d30
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d30 = 0.0_ki
      d30 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d30, ki), aimag(d30), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd30h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d30
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d30 = 0.0_ki
      d30 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d30, ki), aimag(d30), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d30h2l1
