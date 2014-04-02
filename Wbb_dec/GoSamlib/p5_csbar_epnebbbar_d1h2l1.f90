module     p5_csbar_epnebbbar_d1h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity2d1h2l1.f90
   ! generator: buildfortran.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc1(40)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k1
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      QspQ = dotproduct(Q,Q)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc1(1)=abb1(6)
      acc1(2)=abb1(7)
      acc1(3)=abb1(8)
      acc1(4)=abb1(9)
      acc1(5)=abb1(10)
      acc1(6)=abb1(11)
      acc1(7)=abb1(12)
      acc1(8)=abb1(13)
      acc1(9)=abb1(14)
      acc1(10)=abb1(15)
      acc1(11)=abb1(17)
      acc1(12)=abb1(18)
      acc1(13)=abb1(22)
      acc1(14)=abb1(23)
      acc1(15)=abb1(24)
      acc1(16)=abb1(27)
      acc1(17)=abb1(28)
      acc1(18)=abb1(33)
      acc1(19)=abb1(34)
      acc1(20)=abb1(35)
      acc1(21)=abb1(36)
      acc1(22)=abb1(37)
      acc1(23)=abb1(40)
      acc1(24)=abb1(42)
      acc1(25)=abb1(43)
      acc1(26)=abb1(44)
      acc1(27)=abb1(45)
      acc1(28)=abb1(46)
      acc1(29)=abb1(47)
      acc1(30)=-acc1(28)*Qspvak4k1
      acc1(31)=acc1(7)*Qspvak2k1
      acc1(32)=acc1(13)*Qspval5l6
      acc1(33)=acc1(14)*Qspk2
      acc1(34)=acc1(16)*Qspvak4k3
      acc1(35)=acc1(24)*Qspval5k1
      acc1(30)=acc1(35)+acc1(34)+acc1(33)+acc1(32)+acc1(31)+acc1(3)+acc1(30)
      acc1(30)=QspQ*acc1(30)
      acc1(31)=acc1(6)*Qspk2
      acc1(32)=acc1(11)*Qspval5l6
      acc1(31)=acc1(32)+acc1(10)+acc1(31)
      acc1(31)=acc1(31)*Qspvak2k1
      acc1(32)=acc1(18)*Qspk2
      acc1(33)=acc1(26)*Qspval5l6
      acc1(34)=Qspvak3k1*acc1(28)
      acc1(31)=acc1(34)+acc1(33)+acc1(32)+acc1(31)
      acc1(31)=Qspvak4k3*acc1(31)
      acc1(32)=acc1(25)*Qspvak4k3
      acc1(32)=acc1(32)-acc1(4)
      acc1(33)=-acc1(5)*Qspvak2k1
      acc1(34)=acc1(15)*Qspk2
      acc1(35)=-acc1(22)*Qspval5l6
      acc1(33)=acc1(35)+acc1(34)+acc1(33)-acc1(32)
      acc1(34)=Qspk3+Qspk4
      acc1(33)=acc1(34)*acc1(33)
      acc1(35)=Qspl5+Qspl6
      acc1(32)=acc1(32)*acc1(35)
      acc1(34)=-acc1(23)*acc1(34)
      acc1(35)=acc1(27)*Qspvak4k3
      acc1(34)=acc1(35)+acc1(20)+acc1(34)
      acc1(34)=Qspval5k1*acc1(34)
      acc1(35)=acc1(2)*Qspval5l6
      acc1(36)=acc1(17)*Qspk2
      acc1(35)=acc1(36)+acc1(9)+acc1(35)
      acc1(35)=Qspvak2k3*acc1(35)
      acc1(36)=acc1(19)*Qspvak4k3
      acc1(36)=acc1(29)+acc1(36)
      acc1(36)=Qspvak4k1*acc1(36)
      acc1(37)=acc1(1)*Qspvak2k1
      acc1(38)=acc1(8)*Qspk2
      acc1(39)=acc1(12)*Qspval5l6
      acc1(40)=Qspval6k1*acc1(21)
      brack=acc1(30)+acc1(31)+acc1(32)+acc1(33)+acc1(34)+acc1(35)+acc1(36)+acc1&
      &(37)+acc1(38)+acc1(39)+acc1(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_csbar_epnebbbar_groups, only: &
!           & sign => diagram1_sign, shift => diagram1_shift
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd1h2
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
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd1h2
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
end module p5_csbar_epnebbbar_d1h2l1
