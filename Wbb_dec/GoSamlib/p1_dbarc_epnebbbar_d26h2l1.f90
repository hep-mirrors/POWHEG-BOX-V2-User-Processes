module     p1_dbarc_epnebbbar_d26h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity2d26h2l1.f90
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
      use p1_dbarc_epnebbbar_abbrevd26h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc26(40)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1l6
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
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
      acc26(15)=abb26(22)
      acc26(16)=abb26(23)
      acc26(17)=abb26(24)
      acc26(18)=abb26(25)
      acc26(19)=abb26(27)
      acc26(20)=abb26(28)
      acc26(21)=abb26(30)
      acc26(22)=abb26(31)
      acc26(23)=abb26(32)
      acc26(24)=abb26(33)
      acc26(25)=abb26(34)
      acc26(26)=abb26(35)
      acc26(27)=abb26(37)
      acc26(28)=abb26(38)
      acc26(29)=abb26(49)
      acc26(30)=Qspvak4k2*acc26(14)
      acc26(31)=Qspvak4l6*acc26(10)
      acc26(32)=QspQ*acc26(2)
      acc26(33)=Qspl6*acc26(28)
      acc26(34)=Qspvak1k2*acc26(17)
      acc26(35)=Qspvak1k2*acc26(8)
      acc26(35)=acc26(3)+acc26(35)
      acc26(35)=Qspvak4k3*acc26(35)
      acc26(36)=Qspk2*acc26(29)
      acc26(30)=acc26(36)+acc26(35)+acc26(34)+acc26(33)+acc26(32)+acc26(31)+acc&
      &26(5)+acc26(30)
      acc26(30)=Qspk2*acc26(30)
      acc26(31)=Qspl6-QspQ
      acc26(31)=acc26(19)*acc26(31)
      acc26(32)=Qspval6k2*acc26(25)
      acc26(33)=Qspvak1k2*acc26(15)
      acc26(31)=acc26(33)+acc26(13)+acc26(32)+acc26(31)
      acc26(31)=Qspvak4k3*acc26(31)
      acc26(32)=Qspvak4k2*acc26(21)
      acc26(33)=Qspvak4l6*acc26(11)
      acc26(32)=acc26(33)+acc26(1)+acc26(32)
      acc26(32)=QspQ*acc26(32)
      acc26(33)=Qspvak4k2*acc26(26)
      acc26(34)=Qspvak4l6*acc26(9)
      acc26(33)=acc26(34)+acc26(27)+acc26(33)
      acc26(33)=Qspl6*acc26(33)
      acc26(34)=Qspvak2k3*acc26(4)
      acc26(35)=Qspvak2l6*acc26(16)
      acc26(34)=acc26(35)+acc26(12)+acc26(34)
      acc26(34)=Qspvak1k2*acc26(34)
      acc26(35)=acc26(24)*Qspvak2l5
      acc26(36)=acc26(20)*Qspvak2k1
      acc26(37)=acc26(7)*Qspvak1l6
      acc26(38)=Qspvak2k3*acc26(23)
      acc26(39)=Qspvak2l6*acc26(22)
      acc26(40)=Qspval6k2*acc26(6)
      brack=acc26(18)+acc26(30)+acc26(31)+acc26(32)+acc26(33)+acc26(34)+acc26(3&
      &5)+acc26(36)+acc26(37)+acc26(38)+acc26(39)+acc26(40)
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
      use p1_dbarc_epnebbbar_abbrevd26h2
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
      use p1_dbarc_epnebbbar_abbrevd26h2
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
end module p1_dbarc_epnebbbar_d26h2l1
