module     p5_usbar_epnebbbarg_d102h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d102h3l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd102h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc102(39)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k4
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc102(1)=abb102(7)
      acc102(2)=abb102(8)
      acc102(3)=abb102(9)
      acc102(4)=abb102(10)
      acc102(5)=abb102(11)
      acc102(6)=abb102(12)
      acc102(7)=abb102(13)
      acc102(8)=abb102(14)
      acc102(9)=abb102(15)
      acc102(10)=abb102(16)
      acc102(11)=abb102(17)
      acc102(12)=abb102(19)
      acc102(13)=abb102(20)
      acc102(14)=abb102(21)
      acc102(15)=abb102(22)
      acc102(16)=abb102(23)
      acc102(17)=abb102(24)
      acc102(18)=abb102(25)
      acc102(19)=abb102(26)
      acc102(20)=abb102(27)
      acc102(21)=abb102(28)
      acc102(22)=abb102(33)
      acc102(23)=abb102(41)
      acc102(24)=abb102(43)
      acc102(25)=abb102(46)
      acc102(26)=abb102(48)
      acc102(27)=abb102(53)
      acc102(28)=abb102(55)
      acc102(29)=abb102(58)
      acc102(30)=Qspk4+Qspk3
      acc102(31)=Qspk7+acc102(30)
      acc102(31)=acc102(28)*acc102(31)
      acc102(32)=acc102(12)*Qspvak2e7
      acc102(33)=acc102(21)*Qspvak2k4
      acc102(34)=QspQ*acc102(27)
      acc102(35)=Qspe7*acc102(26)
      acc102(36)=Qspe7*acc102(11)
      acc102(36)=acc102(6)+acc102(36)
      acc102(36)=Qspvak2k1*acc102(36)
      acc102(37)=Qspvak2k3*acc102(17)
      acc102(38)=Qspe7*acc102(9)
      acc102(38)=acc102(1)+acc102(38)
      acc102(38)=Qspvak2l5*acc102(38)
      acc102(39)=Qspe7*acc102(10)
      acc102(39)=acc102(4)+acc102(39)
      acc102(39)=Qspvak2l6*acc102(39)
      acc102(31)=acc102(39)+acc102(38)+acc102(37)+acc102(36)+acc102(35)+acc102(&
      &34)+acc102(33)+acc102(13)+acc102(32)+acc102(31)
      acc102(31)=Qspvak4k3*acc102(31)
      acc102(32)=-acc102(16)*acc102(30)
      acc102(33)=QspQ*acc102(21)
      acc102(34)=Qspe7*acc102(5)
      acc102(32)=acc102(34)+acc102(2)+acc102(33)+acc102(32)
      acc102(32)=Qspvak2k3*acc102(32)
      acc102(33)=acc102(20)*acc102(30)
      acc102(34)=QspQ*acc102(7)
      acc102(33)=acc102(19)+acc102(34)+acc102(33)
      acc102(33)=Qspvak2k1*acc102(33)
      acc102(34)=acc102(25)*acc102(30)
      acc102(35)=QspQ*acc102(14)
      acc102(34)=acc102(18)+acc102(35)+acc102(34)
      acc102(34)=Qspvak2l5*acc102(34)
      acc102(35)=acc102(29)*acc102(30)
      acc102(36)=QspQ*acc102(15)
      acc102(35)=acc102(24)+acc102(36)+acc102(35)
      acc102(35)=Qspvak2l6*acc102(35)
      acc102(30)=acc102(23)*acc102(30)
      acc102(36)=Qspk7*acc102(3)
      acc102(37)=QspQ*acc102(22)
      acc102(38)=Qspe7*acc102(8)
      brack=acc102(30)+acc102(31)+acc102(32)+acc102(33)+acc102(34)+acc102(35)+a&
      &cc102(36)+acc102(37)+acc102(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram102_sign, shift => diagram102_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd102h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d102
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d102 = 0.0_ki
      d102 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d102, ki), aimag(d102), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd102h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d102
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d102 = 0.0_ki
      d102 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d102, ki), aimag(d102), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d102h3l1