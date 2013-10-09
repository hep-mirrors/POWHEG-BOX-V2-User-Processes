module     p1_dbarc_epnebbbarg_d73h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d73h3l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd73h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc73(36)
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k2
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc73(1)=abb73(9)
      acc73(2)=abb73(10)
      acc73(3)=abb73(11)
      acc73(4)=abb73(12)
      acc73(5)=abb73(13)
      acc73(6)=abb73(14)
      acc73(7)=abb73(15)
      acc73(8)=abb73(16)
      acc73(9)=abb73(17)
      acc73(10)=abb73(18)
      acc73(11)=abb73(19)
      acc73(12)=abb73(20)
      acc73(13)=abb73(21)
      acc73(14)=abb73(22)
      acc73(15)=abb73(23)
      acc73(16)=abb73(24)
      acc73(17)=abb73(25)
      acc73(18)=abb73(26)
      acc73(19)=abb73(28)
      acc73(20)=abb73(32)
      acc73(21)=abb73(33)
      acc73(22)=abb73(35)
      acc73(23)=abb73(37)
      acc73(24)=abb73(51)
      acc73(25)=abb73(57)
      acc73(26)=abb73(60)
      acc73(27)=abb73(69)
      acc73(28)=acc73(16)*Qspvak2k7
      acc73(29)=acc73(13)*Qspvak2l5
      acc73(30)=acc73(12)*Qspvak2e7
      acc73(31)=Qspk2*acc73(9)
      acc73(28)=acc73(31)+acc73(7)+acc73(30)+acc73(28)+acc73(29)
      acc73(28)=Qspvak1k2*acc73(28)
      acc73(29)=QspQ-Qspl6
      acc73(29)=acc73(14)*acc73(29)
      acc73(30)=Qspvak1l6*acc73(10)
      acc73(31)=Qspvak2l6*acc73(15)
      acc73(32)=Qspk2*acc73(1)
      acc73(28)=acc73(28)+acc73(32)+acc73(31)+acc73(2)+acc73(30)+acc73(29)
      acc73(28)=Qspvak4k3*acc73(28)
      acc73(29)=Qspvak4k2*acc73(6)
      acc73(30)=Qspvak4l6*acc73(26)
      acc73(31)=QspQ*acc73(23)
      acc73(32)=Qspk2*acc73(27)
      acc73(29)=acc73(32)+acc73(31)+acc73(30)+acc73(22)+acc73(29)
      acc73(29)=Qspk2*acc73(29)
      acc73(30)=Qspvak4k2*acc73(4)
      acc73(31)=Qspvak4l6*acc73(25)
      acc73(30)=acc73(31)+acc73(20)+acc73(30)
      acc73(30)=QspQ*acc73(30)
      acc73(31)=Qspvak2k3*acc73(17)
      acc73(32)=Qspk2*acc73(11)
      acc73(31)=acc73(32)+acc73(5)+acc73(31)
      acc73(31)=Qspvak1k2*acc73(31)
      acc73(32)=acc73(24)*Qspval6k2
      acc73(33)=Qspl6*acc73(21)
      acc73(34)=Qspvak1l6*acc73(8)
      acc73(35)=Qspvak2k3*acc73(18)
      acc73(36)=Qspvak2l6*acc73(3)
      brack=acc73(19)+acc73(28)+acc73(29)+acc73(30)+acc73(31)+acc73(32)+acc73(3&
      &3)+acc73(34)+acc73(35)+acc73(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram73_sign, shift => diagram73_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd73h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd73h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d73h3l1
