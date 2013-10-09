module     p9_csbar_epnebbbarg_d305h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d305h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd305h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc305(39)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspe7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l6
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspe7 = dotproduct(Q,e7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      acc305(1)=abb305(7)
      acc305(2)=abb305(8)
      acc305(3)=abb305(9)
      acc305(4)=abb305(10)
      acc305(5)=abb305(11)
      acc305(6)=abb305(13)
      acc305(7)=abb305(14)
      acc305(8)=abb305(15)
      acc305(9)=abb305(16)
      acc305(10)=abb305(17)
      acc305(11)=abb305(18)
      acc305(12)=abb305(20)
      acc305(13)=abb305(21)
      acc305(14)=abb305(22)
      acc305(15)=abb305(24)
      acc305(16)=abb305(25)
      acc305(17)=abb305(26)
      acc305(18)=abb305(27)
      acc305(19)=abb305(29)
      acc305(20)=abb305(30)
      acc305(21)=abb305(31)
      acc305(22)=abb305(32)
      acc305(23)=abb305(33)
      acc305(24)=abb305(38)
      acc305(25)=abb305(39)
      acc305(26)=abb305(40)
      acc305(27)=abb305(41)
      acc305(28)=abb305(45)
      acc305(29)=abb305(46)
      acc305(30)=abb305(47)
      acc305(31)=acc305(9)*Qspvak2l5
      acc305(32)=acc305(10)*Qspvak4l5
      acc305(33)=Qspvak2l5*Qspe7
      acc305(34)=acc305(11)*acc305(33)
      acc305(35)=acc305(18)*Qspe7
      acc305(36)=acc305(29)*QspQ
      acc305(37)=acc305(30)*Qspk7
      acc305(38)=Qspvak3l5*acc305(16)
      acc305(31)=acc305(38)+acc305(37)+acc305(36)+acc305(28)+acc305(35)+acc305(&
      &34)+acc305(32)+acc305(31)
      acc305(31)=Qspvak4k3*acc305(31)
      acc305(32)=acc305(2)*acc305(33)
      acc305(34)=acc305(3)*Qspe7
      acc305(35)=acc305(6)*Qspvak4l5
      acc305(36)=acc305(8)*Qspvak2l5
      acc305(37)=acc305(13)*QspQ
      acc305(38)=acc305(15)*Qspk7
      acc305(39)=-Qspvak1l5*acc305(16)
      acc305(32)=acc305(39)+acc305(38)+acc305(37)+acc305(36)+acc305(35)+acc305(&
      &5)+acc305(34)+acc305(32)
      acc305(32)=Qspvak4k1*acc305(32)
      acc305(34)=acc305(19)*Qspe7
      acc305(35)=-acc305(20)*Qspvak2l5
      acc305(33)=acc305(21)*acc305(33)
      acc305(36)=-acc305(23)*Qspk7
      acc305(37)=acc305(24)*Qspvak4l5
      acc305(33)=acc305(33)+acc305(35)+acc305(34)+acc305(37)+acc305(36)-acc305(&
      &17)
      acc305(34)=-Qspk4+Qspk1-Qspk3
      acc305(33)=acc305(34)*acc305(33)
      acc305(35)=Qspvak2k7*acc305(22)
      acc305(36)=Qspvak2l6*acc305(1)
      acc305(35)=acc305(36)+acc305(35)
      acc305(35)=Qspe7*acc305(35)
      acc305(36)=acc305(12)*QspQ
      acc305(37)=acc305(27)*Qspk7
      acc305(36)=acc305(37)+acc305(26)+acc305(36)
      acc305(36)=Qspvak2e7*acc305(36)
      acc305(34)=acc305(14)*acc305(34)
      acc305(34)=acc305(25)+acc305(34)
      acc305(34)=QspQ*acc305(34)
      acc305(37)=Qspvak7l6*acc305(4)
      brack=acc305(7)+acc305(31)+acc305(32)+acc305(33)+acc305(34)+acc305(35)+ac&
      &c305(36)+acc305(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram305_sign, shift => diagram305_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd305h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd305h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d305h3l1
