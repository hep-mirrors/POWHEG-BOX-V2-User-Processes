module     p3_usbar_epnebbbar_d30h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity1d30h1l1.f90
   ! generator: buildfortran.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd30h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc30(19)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspl5
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspl5 = dotproduct(Q,l5)
      acc30(1)=abb30(8)
      acc30(2)=abb30(9)
      acc30(3)=abb30(10)
      acc30(4)=abb30(11)
      acc30(5)=abb30(12)
      acc30(6)=abb30(13)
      acc30(7)=abb30(16)
      acc30(8)=abb30(20)
      acc30(9)=abb30(21)
      acc30(10)=abb30(23)
      acc30(11)=abb30(24)
      acc30(12)=abb30(25)
      acc30(13)=acc30(12)*Qspval6l5
      acc30(14)=Qspk2*acc30(5)
      acc30(13)=acc30(14)+acc30(3)+acc30(13)
      acc30(13)=Qspvak2k1*acc30(13)
      acc30(14)=acc30(10)*Qspval6l5
      acc30(15)=Qspk2*acc30(8)
      acc30(14)=acc30(15)+acc30(4)+acc30(14)
      acc30(14)=Qspvak4k1*acc30(14)
      acc30(15)=-acc30(12)*Qspvak2l5
      acc30(16)=-acc30(10)*Qspvak4l5
      acc30(15)=acc30(16)+acc30(7)+acc30(15)
      acc30(15)=Qspval6k1*acc30(15)
      acc30(16)=acc30(6)*Qspl5
      acc30(17)=Qspvak2l5*acc30(11)
      acc30(18)=Qspvak4l5*acc30(9)
      acc30(19)=Qspk2*acc30(1)
      brack=acc30(2)+acc30(13)+acc30(14)+acc30(15)+acc30(16)+acc30(17)+acc30(18&
      &)+acc30(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p3_usbar_epnebbbar_groups, only: &
!           & sign => diagram30_sign, shift => diagram30_shift
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd30h1
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
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd30h1
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
end module p3_usbar_epnebbbar_d30h1l1
