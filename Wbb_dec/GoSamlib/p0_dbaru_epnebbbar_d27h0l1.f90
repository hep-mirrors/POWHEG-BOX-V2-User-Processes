module     p0_dbaru_epnebbbar_d27h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity0d27h0l1.f90
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
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc27(34)
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc27(1)=abb27(8)
      acc27(2)=abb27(9)
      acc27(3)=abb27(10)
      acc27(4)=abb27(11)
      acc27(5)=abb27(12)
      acc27(6)=abb27(13)
      acc27(7)=abb27(14)
      acc27(8)=abb27(16)
      acc27(9)=abb27(17)
      acc27(10)=abb27(18)
      acc27(11)=abb27(19)
      acc27(12)=abb27(20)
      acc27(13)=abb27(21)
      acc27(14)=abb27(22)
      acc27(15)=abb27(23)
      acc27(16)=abb27(24)
      acc27(17)=abb27(25)
      acc27(18)=abb27(27)
      acc27(19)=abb27(28)
      acc27(20)=abb27(30)
      acc27(21)=abb27(31)
      acc27(22)=abb27(37)
      acc27(23)=abb27(38)
      acc27(24)=abb27(39)
      acc27(25)=QspQ*acc27(11)
      acc27(26)=Qspl5*acc27(5)
      acc27(27)=Qspval5k1*acc27(2)
      acc27(28)=Qspval5k3*acc27(15)
      acc27(29)=Qspval5l6*acc27(13)
      acc27(30)=Qspk2*acc27(9)
      acc27(31)=Qspvak4k3*acc27(1)
      acc27(31)=acc27(17)+acc27(31)
      acc27(31)=Qspval5k2*acc27(31)
      acc27(25)=acc27(31)+acc27(30)+acc27(29)+acc27(28)+acc27(27)+acc27(26)+acc&
      &27(4)+acc27(25)
      acc27(25)=Qspvak1k2*acc27(25)
      acc27(26)=Qspvak4k2*acc27(7)
      acc27(27)=Qspvak4k3*acc27(24)
      acc27(28)=Qspval6k2*acc27(12)
      acc27(29)=Qspk2*acc27(22)
      acc27(30)=Qspval5k2*acc27(3)
      acc27(26)=acc27(30)+acc27(29)+acc27(28)+acc27(27)+acc27(21)+acc27(26)
      acc27(26)=Qspval5k2*acc27(26)
      acc27(27)=QspQ*acc27(18)
      acc27(28)=Qspl5*acc27(16)
      acc27(29)=Qspvak4k2*acc27(6)
      acc27(30)=Qspval5k1*acc27(23)
      acc27(31)=Qspval5k3*acc27(8)
      acc27(32)=Qspval5l6*acc27(20)
      acc27(33)=Qspval6k2*acc27(19)
      acc27(34)=Qspk2*acc27(10)
      brack=acc27(14)+acc27(25)+acc27(26)+acc27(27)+acc27(28)+acc27(29)+acc27(3&
      &0)+acc27(31)+acc27(32)+acc27(33)+acc27(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbar_groups, only: &
!           & sign => diagram27_sign, shift => diagram27_shift
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbar_d27h0l1
