module     p1_dbarc_epnebbbar_d26h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity0d26h0l1.f90
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
      use p1_dbarc_epnebbbar_abbrevd26h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc26(26)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc26(1)=abb26(8)
      acc26(2)=abb26(9)
      acc26(3)=abb26(10)
      acc26(4)=abb26(11)
      acc26(5)=abb26(12)
      acc26(6)=abb26(13)
      acc26(7)=abb26(14)
      acc26(8)=abb26(15)
      acc26(9)=abb26(16)
      acc26(10)=abb26(17)
      acc26(11)=abb26(18)
      acc26(12)=abb26(19)
      acc26(13)=abb26(20)
      acc26(14)=abb26(21)
      acc26(15)=abb26(23)
      acc26(16)=abb26(24)
      acc26(17)=abb26(25)
      acc26(18)=abb26(26)
      acc26(19)=abb26(27)
      acc26(20)=acc26(2)*Qspval6k2
      acc26(21)=acc26(8)*Qspvak1k2
      acc26(22)=acc26(10)*Qspvak4k2
      acc26(20)=acc26(19)+acc26(22)+acc26(21)+acc26(20)
      acc26(20)=Qspl6*acc26(20)
      acc26(21)=acc26(14)*Qspvak1k2
      acc26(21)=acc26(15)+acc26(21)
      acc26(21)=acc26(21)*Qspvak4k3
      acc26(22)=acc26(5)*Qspvak1k2
      acc26(21)=acc26(22)+acc26(1)+acc26(21)
      acc26(21)=Qspval6k2*acc26(21)
      acc26(22)=acc26(4)*Qspval6k2
      acc26(23)=acc26(12)*Qspvak4k2
      acc26(22)=acc26(13)+acc26(23)+acc26(22)
      acc26(22)=Qspk2*acc26(22)
      acc26(23)=acc26(6)*Qspval6k2
      acc26(24)=acc26(9)*Qspvak4k2
      acc26(23)=acc26(16)+acc26(24)+acc26(23)
      acc26(23)=QspQ*acc26(23)
      acc26(24)=acc26(3)*Qspvak1k2
      acc26(24)=acc26(18)+acc26(24)
      acc26(24)=Qspval6k3*acc26(24)
      acc26(25)=Qspval6l5*acc26(17)
      acc26(26)=Qspval6k1*acc26(7)
      brack=acc26(11)+acc26(20)+acc26(21)+acc26(22)+acc26(23)+acc26(24)+acc26(2&
      &5)+acc26(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbar_groups, only: &
!           & sign => diagram26_sign, shift => diagram26_shift
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd26h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d26
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d26 = 0.0_ki
      d26 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d26, ki), aimag(d26), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd26h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d26
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d26 = 0.0_ki
      d26 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d26, ki), aimag(d26), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbar_d26h0l1
