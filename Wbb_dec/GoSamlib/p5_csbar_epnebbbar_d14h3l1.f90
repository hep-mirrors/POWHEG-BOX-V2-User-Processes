module     p5_csbar_epnebbbar_d14h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity3d14h3l1.f90
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
      use p5_csbar_epnebbbar_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc14(27)
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc14(1)=abb14(11)
      acc14(2)=abb14(12)
      acc14(3)=abb14(13)
      acc14(4)=abb14(14)
      acc14(5)=abb14(16)
      acc14(6)=abb14(17)
      acc14(7)=abb14(18)
      acc14(8)=abb14(19)
      acc14(9)=abb14(20)
      acc14(10)=abb14(21)
      acc14(11)=abb14(23)
      acc14(12)=abb14(24)
      acc14(13)=abb14(25)
      acc14(14)=abb14(26)
      acc14(15)=abb14(28)
      acc14(16)=abb14(32)
      acc14(17)=abb14(34)
      acc14(18)=acc14(9)*Qspvak2k3
      acc14(19)=acc14(10)*Qspvak2k1
      acc14(20)=acc14(13)*Qspvak4k1
      acc14(18)=acc14(20)+acc14(19)+acc14(18)+acc14(6)
      acc14(18)=Qspvak2l6*acc14(18)
      acc14(19)=acc14(1)*Qspvak4k1
      acc14(20)=acc14(2)*Qspvak2k3
      acc14(21)=acc14(5)*Qspvak2k1
      acc14(19)=acc14(7)+acc14(21)+acc14(19)+acc14(20)
      acc14(19)=Qspvak2l5*acc14(19)
      acc14(20)=Qspl5+Qspl6
      acc14(20)=acc14(8)*acc14(20)
      acc14(21)=acc14(4)*Qspvak2k1
      acc14(22)=Qspval6k1*acc14(15)
      acc14(23)=Qspval5k1*acc14(3)
      acc14(24)=Qspvak4l6*acc14(17)
      acc14(25)=Qspvak4l5*acc14(16)
      acc14(26)=Qspk2*acc14(14)
      acc14(27)=QspQ*acc14(11)
      brack=acc14(12)+acc14(18)+acc14(19)+acc14(20)+acc14(21)+acc14(22)+acc14(2&
      &3)+acc14(24)+acc14(25)+acc14(26)+acc14(27)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_csbar_epnebbbar_groups, only: &
!           & sign => diagram14_sign, shift => diagram14_shift
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd14h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d14
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d14 = 0.0_ki
      d14 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d14, ki), aimag(d14), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd14h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d14
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d14 = 0.0_ki
      d14 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d14, ki), aimag(d14), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_csbar_epnebbbar_d14h3l1
