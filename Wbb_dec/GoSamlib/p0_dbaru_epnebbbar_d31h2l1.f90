module     p0_dbaru_epnebbbar_d31h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2d31h2l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd31h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc31(36)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk1 = dotproduct(Q,k1)
      acc31(1)=abb31(8)
      acc31(2)=abb31(9)
      acc31(3)=abb31(10)
      acc31(4)=abb31(11)
      acc31(5)=abb31(12)
      acc31(6)=abb31(14)
      acc31(7)=abb31(15)
      acc31(8)=abb31(16)
      acc31(9)=abb31(17)
      acc31(10)=abb31(18)
      acc31(11)=abb31(19)
      acc31(12)=abb31(20)
      acc31(13)=abb31(22)
      acc31(14)=abb31(23)
      acc31(15)=abb31(24)
      acc31(16)=abb31(26)
      acc31(17)=abb31(27)
      acc31(18)=abb31(28)
      acc31(19)=abb31(29)
      acc31(20)=abb31(30)
      acc31(21)=abb31(31)
      acc31(22)=abb31(36)
      acc31(23)=abb31(38)
      acc31(24)=abb31(44)
      acc31(25)=abb31(46)
      acc31(26)=Qspk4+Qspk3
      acc31(27)=-Qspk2+acc31(26)
      acc31(27)=acc31(16)*acc31(27)
      acc31(28)=Qspvak1k3*acc31(21)
      acc31(29)=Qspvak4k2*acc31(6)
      acc31(30)=Qspvak4k3*acc31(19)
      acc31(31)=Qspvak1k2*acc31(7)
      acc31(32)=-Qspvak1l6*acc31(11)
      acc31(27)=acc31(32)+acc31(31)+acc31(30)+acc31(29)+acc31(14)+acc31(28)+acc&
      &31(27)
      acc31(27)=Qspk2*acc31(27)
      acc31(28)=-acc31(7)*acc31(26)
      acc31(29)=acc31(1)*Qspvak2k3
      acc31(30)=Qspval5l6*acc31(15)
      acc31(31)=Qspvak4k2*acc31(3)
      acc31(32)=Qspvak4k3*acc31(2)
      acc31(28)=acc31(32)+acc31(31)+acc31(30)+acc31(9)+acc31(29)+acc31(28)
      acc31(28)=Qspvak1k2*acc31(28)
      acc31(29)=acc31(11)*acc31(26)
      acc31(30)=-acc31(15)*Qspval5k2
      acc31(31)=acc31(13)*Qspval5k3
      acc31(32)=Qspvak4k2*acc31(4)
      acc31(33)=Qspvak4k3*acc31(20)
      acc31(29)=acc31(33)+acc31(32)+acc31(31)+acc31(8)+acc31(30)+acc31(29)
      acc31(29)=Qspvak1l6*acc31(29)
      acc31(26)=acc31(23)*acc31(26)
      acc31(30)=acc31(22)*Qspval6k2
      acc31(31)=acc31(10)*Qspk1
      acc31(32)=Qspval5k2*acc31(17)
      acc31(33)=Qspval5k3*acc31(25)
      acc31(34)=-acc31(13)*Qspvak1k3
      acc31(34)=acc31(24)+acc31(34)
      acc31(34)=Qspval5l6*acc31(34)
      acc31(35)=Qspvak4k2*acc31(5)
      acc31(36)=Qspvak4k3*acc31(18)
      brack=acc31(12)+acc31(26)+acc31(27)+acc31(28)+acc31(29)+acc31(30)+acc31(3&
      &1)+acc31(32)+acc31(33)+acc31(34)+acc31(35)+acc31(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram31_sign, shift => diagram31_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd31h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d31
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d31 = 0.0_ki
      d31 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d31, ki), aimag(d31), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd31h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d31
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d31 = 0.0_ki
      d31 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d31, ki), aimag(d31), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d31h2l1
