module     p1_dbarc_epnebbbar_d2h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity1d2h1l1.f90
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
      use p1_dbarc_epnebbbar_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc2(44)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6l5
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      acc2(1)=abb2(6)
      acc2(2)=abb2(7)
      acc2(3)=abb2(8)
      acc2(4)=abb2(9)
      acc2(5)=abb2(10)
      acc2(6)=abb2(11)
      acc2(7)=abb2(12)
      acc2(8)=abb2(13)
      acc2(9)=abb2(14)
      acc2(10)=abb2(15)
      acc2(11)=abb2(16)
      acc2(12)=abb2(17)
      acc2(13)=abb2(18)
      acc2(14)=abb2(19)
      acc2(15)=abb2(20)
      acc2(16)=abb2(21)
      acc2(17)=abb2(22)
      acc2(18)=abb2(23)
      acc2(19)=abb2(24)
      acc2(20)=abb2(25)
      acc2(21)=abb2(26)
      acc2(22)=abb2(27)
      acc2(23)=abb2(28)
      acc2(24)=abb2(29)
      acc2(25)=abb2(30)
      acc2(26)=abb2(31)
      acc2(27)=abb2(33)
      acc2(28)=abb2(34)
      acc2(29)=abb2(35)
      acc2(30)=abb2(39)
      acc2(31)=abb2(40)
      acc2(32)=abb2(41)
      acc2(33)=abb2(42)
      acc2(34)=acc2(16)*Qspvak4k2
      acc2(35)=acc2(19)*Qspvak1k3
      acc2(36)=acc2(30)*QspQ
      acc2(37)=acc2(31)*Qspk1
      acc2(38)=acc2(32)*Qspval6k2
      acc2(39)=-Qspvak3k2*acc2(23)
      acc2(40)=Qspvak1k4*acc2(4)
      acc2(34)=acc2(40)+acc2(39)+acc2(38)+acc2(37)+acc2(36)+acc2(35)+acc2(34)+a&
      &cc2(6)
      acc2(34)=Qspvak4k3*acc2(34)
      acc2(35)=Qspk3+Qspk4
      acc2(36)=acc2(22)*acc2(35)
      acc2(37)=acc2(1)*Qspvak1k2
      acc2(38)=acc2(3)*Qspk1
      acc2(39)=acc2(10)*Qspvak1k3
      acc2(40)=acc2(13)*Qspvak4k3
      acc2(41)=Qspvak1k2*Qspvak4k3
      acc2(42)=-acc2(17)*acc2(41)
      acc2(36)=acc2(40)+acc2(37)+acc2(36)+acc2(18)+acc2(42)+acc2(39)+acc2(38)
      acc2(36)=Qspk2*acc2(36)
      acc2(37)=acc2(15)*Qspvak1k3
      acc2(38)=acc2(21)*Qspvak1k2
      acc2(39)=acc2(24)*acc2(41)
      acc2(40)=acc2(27)*Qspk1
      acc2(37)=acc2(38)+acc2(40)+acc2(26)+acc2(39)+acc2(37)
      acc2(37)=Qspval6l5*acc2(37)
      acc2(38)=-acc2(4)*Qspvak1k3
      acc2(39)=acc2(23)*Qspvak4k2
      acc2(40)=acc2(2)*Qspval6k2
      acc2(42)=acc2(20)*Qspk2
      acc2(38)=acc2(42)+acc2(9)+acc2(40)+acc2(39)+acc2(38)
      acc2(38)=QspQ*acc2(38)
      acc2(39)=acc2(11)*Qspvak4k2
      acc2(40)=-acc2(12)*Qspvak1k3
      acc2(42)=acc2(29)*Qspval6k2
      acc2(39)=acc2(42)+acc2(39)+acc2(40)
      acc2(40)=acc2(35)-Qspk1
      acc2(39)=acc2(40)*acc2(39)
      acc2(35)=acc2(14)*acc2(35)
      acc2(40)=acc2(5)*Qspvak1k2
      acc2(42)=acc2(8)*Qspk1
      acc2(41)=acc2(25)*acc2(41)
      acc2(43)=acc2(28)*Qspval6k2
      acc2(44)=acc2(33)*Qspvak4k2
      brack=acc2(7)+acc2(34)+acc2(35)+acc2(36)+acc2(37)+acc2(38)+acc2(39)+acc2(&
      &40)+acc2(41)+acc2(42)+acc2(43)+acc2(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbar_groups, only: &
!           & sign => diagram2_sign, shift => diagram2_shift
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd2h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d2
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d2 = 0.0_ki
      d2 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d2, ki), aimag(d2), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd2h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d2
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d2 = 0.0_ki
      d2 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d2, ki), aimag(d2), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbar_d2h1l1
