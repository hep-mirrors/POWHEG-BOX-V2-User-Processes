module     p1_dbarc_epnebbbar_d4h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity2d4h2l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd4h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc4(25)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      acc4(1)=abb4(8)
      acc4(2)=abb4(9)
      acc4(3)=abb4(10)
      acc4(4)=abb4(11)
      acc4(5)=abb4(12)
      acc4(6)=abb4(13)
      acc4(7)=abb4(14)
      acc4(8)=abb4(15)
      acc4(9)=abb4(16)
      acc4(10)=abb4(17)
      acc4(11)=abb4(19)
      acc4(12)=abb4(20)
      acc4(13)=abb4(25)
      acc4(14)=abb4(26)
      acc4(15)=abb4(28)
      acc4(16)=Qspvak1k2*acc4(1)
      acc4(17)=Qspvak4k2*acc4(10)
      acc4(16)=acc4(17)+acc4(15)+acc4(16)
      acc4(16)=Qspval5l6*acc4(16)
      acc4(17)=acc4(9)*QspQ
      acc4(18)=acc4(8)*Qspval6k2
      acc4(19)=acc4(5)*Qspvak1l6
      acc4(20)=acc4(4)*Qspval5k2
      acc4(21)=acc4(3)*Qspvak4l6
      acc4(22)=Qspl5+Qspl6
      acc4(22)=acc4(13)*acc4(22)
      acc4(23)=Qspk2*acc4(11)
      acc4(24)=Qspk2*acc4(7)
      acc4(24)=acc4(6)+acc4(24)
      acc4(24)=Qspvak1k2*acc4(24)
      acc4(25)=Qspk2*acc4(14)
      acc4(25)=acc4(2)+acc4(25)
      acc4(25)=Qspvak4k2*acc4(25)
      brack=acc4(12)+acc4(16)+acc4(17)+acc4(18)+acc4(19)+acc4(20)+acc4(21)+acc4&
      &(22)+acc4(23)+acc4(24)+acc4(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbar_groups, only: &
!           & sign => diagram4_sign, shift => diagram4_shift
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd4h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d4
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d4 = 0.0_ki
      d4 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d4, ki), aimag(d4), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd4h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d4
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d4 = 0.0_ki
      d4 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d4, ki), aimag(d4), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbar_d4h2l1
