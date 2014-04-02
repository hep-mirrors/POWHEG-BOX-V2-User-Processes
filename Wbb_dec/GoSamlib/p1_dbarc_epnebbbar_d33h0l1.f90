module     p1_dbarc_epnebbbar_d33h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity0d33h0l1.f90
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
      use p1_dbarc_epnebbbar_abbrevd33h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc33(29)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc33(1)=abb33(11)
      acc33(2)=abb33(12)
      acc33(3)=abb33(13)
      acc33(4)=abb33(14)
      acc33(5)=abb33(15)
      acc33(6)=abb33(16)
      acc33(7)=abb33(17)
      acc33(8)=abb33(18)
      acc33(9)=abb33(19)
      acc33(10)=abb33(20)
      acc33(11)=abb33(21)
      acc33(12)=abb33(22)
      acc33(13)=abb33(23)
      acc33(14)=abb33(25)
      acc33(15)=abb33(27)
      acc33(16)=abb33(29)
      acc33(17)=abb33(32)
      acc33(18)=abb33(33)
      acc33(19)=acc33(3)*Qspvak4k2
      acc33(20)=acc33(8)*Qspvak1k2
      acc33(21)=acc33(15)*Qspvak1k3
      acc33(19)=acc33(21)+acc33(20)+acc33(6)+acc33(19)
      acc33(19)=Qspval6k2*acc33(19)
      acc33(20)=acc33(5)*Qspvak1k2
      acc33(21)=acc33(10)*Qspvak4k2
      acc33(22)=acc33(16)*Qspvak1k3
      acc33(20)=acc33(22)+acc33(21)+acc33(20)+acc33(1)
      acc33(20)=Qspval5k2*acc33(20)
      acc33(21)=Qspl5-Qspl6
      acc33(21)=acc33(13)*acc33(21)
      acc33(22)=acc33(4)*Qspvak1k2
      acc33(23)=acc33(7)*Qspvak1k3
      acc33(24)=acc33(12)*Qspvak4k2
      acc33(25)=Qspval6l5*acc33(9)
      acc33(26)=Qspval6k3*acc33(18)
      acc33(27)=Qspval5k3*acc33(17)
      acc33(28)=Qspk2*acc33(2)
      acc33(29)=QspQ*acc33(11)
      brack=acc33(14)+acc33(19)+acc33(20)+acc33(21)+acc33(22)+acc33(23)+acc33(2&
      &4)+acc33(25)+acc33(26)+acc33(27)+acc33(28)+acc33(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbar_groups, only: &
!           & sign => diagram33_sign, shift => diagram33_shift
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd33h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d33
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d33 = 0.0_ki
      d33 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d33, ki), aimag(d33), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd33h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d33
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d33 = 0.0_ki
      d33 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d33, ki), aimag(d33), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbar_d33h0l1
