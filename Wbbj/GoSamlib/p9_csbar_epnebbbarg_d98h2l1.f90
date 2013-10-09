module     p9_csbar_epnebbbarg_d98h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d98h2l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd98h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc98(36)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      acc98(1)=abb98(9)
      acc98(2)=abb98(10)
      acc98(3)=abb98(11)
      acc98(4)=abb98(12)
      acc98(5)=abb98(13)
      acc98(6)=abb98(14)
      acc98(7)=abb98(15)
      acc98(8)=abb98(16)
      acc98(9)=abb98(17)
      acc98(10)=abb98(18)
      acc98(11)=abb98(19)
      acc98(12)=abb98(20)
      acc98(13)=abb98(21)
      acc98(14)=abb98(22)
      acc98(15)=abb98(24)
      acc98(16)=abb98(26)
      acc98(17)=abb98(29)
      acc98(18)=abb98(31)
      acc98(19)=abb98(41)
      acc98(20)=abb98(46)
      acc98(21)=abb98(48)
      acc98(22)=abb98(49)
      acc98(23)=abb98(51)
      acc98(24)=abb98(55)
      acc98(25)=abb98(59)
      acc98(26)=acc98(13)*Qspvak2l5
      acc98(27)=acc98(19)*Qspvak2k7
      acc98(28)=acc98(20)*Qspvak2e7
      acc98(29)=acc98(22)*Qspvak4l6
      acc98(30)=-Qspvak3l6*acc98(11)
      acc98(26)=acc98(30)+acc98(29)+acc98(28)+acc98(27)+acc98(26)+acc98(2)
      acc98(26)=Qspvak4k3*acc98(26)
      acc98(27)=acc98(3)*Qspvak2l5
      acc98(28)=acc98(5)*Qspvak2e7
      acc98(29)=acc98(8)*Qspvak2k7
      acc98(30)=acc98(9)*Qspvak4l6
      acc98(31)=Qspvak1l6*acc98(11)
      acc98(27)=acc98(31)+acc98(30)+acc98(29)+acc98(28)+acc98(27)+acc98(1)
      acc98(27)=Qspvak4k1*acc98(27)
      acc98(28)=-acc98(12)*Qspvak2l5
      acc98(29)=-acc98(17)*Qspvak2k7
      acc98(30)=acc98(21)*Qspvak2e7
      acc98(31)=-acc98(25)*Qspvak4l6
      acc98(28)=acc98(31)+acc98(30)+acc98(18)+acc98(28)+acc98(29)
      acc98(29)=-Qspk4+Qspk1-Qspk3
      acc98(28)=acc98(29)*acc98(28)
      acc98(29)=acc98(6)*Qspvak2l5
      acc98(30)=acc98(7)*Qspvak2k7
      acc98(31)=Qspvak7l6*acc98(23)
      acc98(32)=Qspval5l6*acc98(24)
      acc98(33)=Qspvak2l6*acc98(4)
      acc98(34)=Qspvak2k3*acc98(10)
      acc98(35)=Qspvak2k1*acc98(14)
      acc98(36)=QspQ*acc98(15)
      brack=acc98(16)+acc98(26)+acc98(27)+acc98(28)+acc98(29)+acc98(30)+acc98(3&
      &1)+acc98(32)+acc98(33)+acc98(34)+acc98(35)+acc98(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram98_sign, shift => diagram98_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd98h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d98
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d98 = 0.0_ki
      d98 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d98, ki), aimag(d98), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd98h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d98
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d98 = 0.0_ki
      d98 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d98, ki), aimag(d98), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d98h2l1
