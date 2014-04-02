module     p3_usbar_epnebbbar_d27h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity0d27h0l1.f90
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
      use p3_usbar_epnebbbar_abbrevd27h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc27(42)
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k2
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc27(1)=abb27(7)
      acc27(2)=abb27(8)
      acc27(3)=abb27(9)
      acc27(4)=abb27(10)
      acc27(5)=abb27(11)
      acc27(6)=abb27(12)
      acc27(7)=abb27(13)
      acc27(8)=abb27(14)
      acc27(9)=abb27(15)
      acc27(10)=abb27(16)
      acc27(11)=abb27(17)
      acc27(12)=abb27(18)
      acc27(13)=abb27(19)
      acc27(14)=abb27(20)
      acc27(15)=abb27(21)
      acc27(16)=abb27(22)
      acc27(17)=abb27(23)
      acc27(18)=abb27(24)
      acc27(19)=abb27(25)
      acc27(20)=abb27(26)
      acc27(21)=abb27(27)
      acc27(22)=abb27(28)
      acc27(23)=abb27(30)
      acc27(24)=abb27(34)
      acc27(25)=abb27(35)
      acc27(26)=abb27(36)
      acc27(27)=abb27(37)
      acc27(28)=abb27(39)
      acc27(29)=abb27(40)
      acc27(30)=abb27(41)
      acc27(31)=abb27(45)
      acc27(32)=Qspl6-Qspk1
      acc27(32)=acc27(9)*acc27(32)
      acc27(33)=QspQ*acc27(5)
      acc27(34)=Qspk2*acc27(21)
      acc27(35)=Qspvak2k1*acc27(12)
      acc27(36)=Qspvak4k3*acc27(16)
      acc27(32)=acc27(36)+acc27(35)+acc27(34)+acc27(1)+acc27(33)+acc27(32)
      acc27(32)=Qspval6k1*acc27(32)
      acc27(33)=Qspvak2k1*acc27(13)
      acc27(33)=acc27(33)+acc27(27)
      acc27(33)=Qspval6k2*acc27(33)
      acc27(34)=QspQ*acc27(26)
      acc27(35)=Qspk1*acc27(23)
      acc27(36)=Qspk2*acc27(25)
      acc27(33)=acc27(36)+acc27(35)+acc27(34)+acc27(8)+acc27(33)
      acc27(33)=Qspvak4k3*acc27(33)
      acc27(34)=Qspval6k3*acc27(10)
      acc27(35)=Qspval6k2*acc27(3)
      acc27(36)=Qspl6*acc27(6)
      acc27(34)=acc27(36)+acc27(35)+acc27(4)+acc27(34)
      acc27(34)=Qspvak2k1*acc27(34)
      acc27(35)=Qspvak4k1*acc27(7)
      acc27(36)=Qspvak4k2*acc27(22)
      acc27(35)=acc27(36)+acc27(2)+acc27(35)
      acc27(35)=QspQ*acc27(35)
      acc27(36)=Qspvak4k1*acc27(30)
      acc27(37)=Qspvak4k2*acc27(29)
      acc27(36)=acc27(36)+acc27(37)
      acc27(37)=acc27(17)+acc27(36)
      acc27(37)=Qspk1*acc27(37)
      acc27(38)=Qspvak4k1*acc27(18)
      acc27(39)=Qspvak4k2*acc27(19)
      acc27(38)=acc27(39)+acc27(20)+acc27(38)
      acc27(38)=Qspk2*acc27(38)
      acc27(36)=acc27(31)-acc27(36)
      acc27(36)=Qspl6*acc27(36)
      acc27(39)=acc27(24)*Qspval6l5
      acc27(40)=acc27(14)*Qspvak1k2
      acc27(41)=Qspval6k3*acc27(28)
      acc27(42)=Qspval6k2*acc27(15)
      brack=acc27(11)+acc27(32)+acc27(33)+acc27(34)+acc27(35)+acc27(36)+acc27(3&
      &7)+acc27(38)+acc27(39)+acc27(40)+acc27(41)+acc27(42)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p3_usbar_epnebbbar_groups, only: &
!           & sign => diagram27_sign, shift => diagram27_shift
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd27h0
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
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd27h0
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
end module p3_usbar_epnebbbar_d27h0l1
