module     p9_csbar_epnebbbarg_d123h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d123h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd123h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc123(50)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      acc123(1)=abb123(8)
      acc123(2)=abb123(9)
      acc123(3)=abb123(10)
      acc123(4)=abb123(11)
      acc123(5)=abb123(12)
      acc123(6)=abb123(13)
      acc123(7)=abb123(14)
      acc123(8)=abb123(16)
      acc123(9)=abb123(17)
      acc123(10)=abb123(18)
      acc123(11)=abb123(19)
      acc123(12)=abb123(21)
      acc123(13)=abb123(22)
      acc123(14)=abb123(24)
      acc123(15)=abb123(25)
      acc123(16)=abb123(28)
      acc123(17)=abb123(29)
      acc123(18)=abb123(30)
      acc123(19)=abb123(33)
      acc123(20)=abb123(34)
      acc123(21)=abb123(35)
      acc123(22)=abb123(36)
      acc123(23)=abb123(37)
      acc123(24)=abb123(38)
      acc123(25)=abb123(42)
      acc123(26)=abb123(45)
      acc123(27)=abb123(49)
      acc123(28)=abb123(50)
      acc123(29)=abb123(54)
      acc123(30)=abb123(57)
      acc123(31)=abb123(58)
      acc123(32)=abb123(59)
      acc123(33)=abb123(66)
      acc123(34)=abb123(69)
      acc123(35)=abb123(72)
      acc123(36)=abb123(73)
      acc123(37)=abb123(74)
      acc123(38)=abb123(76)
      acc123(39)=abb123(82)
      acc123(40)=abb123(92)
      acc123(41)=acc123(3)*Qspvak2k1
      acc123(42)=acc123(22)*Qspvak2l6
      acc123(43)=acc123(24)*Qspvak2l5
      acc123(41)=acc123(26)+acc123(43)+acc123(42)+acc123(41)
      acc123(41)=acc123(41)*Qspvak4k3
      acc123(42)=Qspk3+Qspk4
      acc123(43)=-acc123(36)*acc123(42)
      acc123(44)=acc123(10)*Qspvak2k1
      acc123(45)=acc123(15)*Qspvak2l5
      acc123(46)=acc123(19)*Qspvak2l6
      acc123(47)=Qspvak2k3*acc123(23)
      acc123(41)=acc123(46)+acc123(45)+acc123(44)+acc123(43)+acc123(41)+acc123(&
      &47)+acc123(21)
      acc123(41)=Qspe7*acc123(41)
      acc123(43)=acc123(2)*Qspvak4k3
      acc123(44)=acc123(11)*Qspvak2k1
      acc123(45)=acc123(33)*Qspvak2l5
      acc123(46)=acc123(39)*Qspe7
      acc123(47)=acc123(40)*Qspvak2l6
      acc123(43)=acc123(47)+acc123(46)+acc123(38)+acc123(45)+acc123(44)+acc123(&
      &43)
      acc123(43)=Qspk2*acc123(43)
      acc123(44)=acc123(5)*Qspvak2k1
      acc123(45)=acc123(25)*Qspvak2l5
      acc123(46)=acc123(27)*Qspe7
      acc123(47)=acc123(28)*Qspvak4k3
      acc123(48)=acc123(35)*Qspvak2l6
      acc123(44)=acc123(48)+acc123(47)+acc123(46)+acc123(45)+acc123(7)+acc123(4&
      &4)
      acc123(44)=QspQ*acc123(44)
      acc123(45)=-Qspl6+Qspk1-Qspl5
      acc123(46)=acc123(37)*acc123(45)
      acc123(47)=-acc123(13)*Qspvak2k1
      acc123(48)=acc123(16)*Qspk2
      acc123(49)=-acc123(20)*Qspvak2l5
      acc123(50)=-acc123(31)*Qspvak2l6
      acc123(46)=-acc123(34)+acc123(50)+acc123(49)+acc123(48)+acc123(47)+acc123&
      &(46)
      acc123(42)=acc123(42)*acc123(46)
      acc123(46)=acc123(18)*acc123(45)
      acc123(47)=acc123(1)*Qspvak2k1
      acc123(48)=acc123(9)*Qspvak2l6
      acc123(49)=acc123(14)*Qspvak2l5
      acc123(46)=acc123(17)+acc123(49)+acc123(48)+acc123(47)+acc123(46)
      acc123(46)=Qspvak4k3*acc123(46)
      acc123(47)=acc123(29)*Qspvak4k3
      acc123(47)=acc123(30)+acc123(47)
      acc123(47)=Qspk7*acc123(47)
      acc123(45)=acc123(32)*acc123(45)
      acc123(48)=acc123(4)*Qspvak2k1
      acc123(49)=acc123(6)*Qspvak2l6
      acc123(50)=acc123(12)*Qspvak2l5
      brack=acc123(8)+acc123(41)+acc123(42)+acc123(43)+acc123(44)+acc123(45)+ac&
      &c123(46)+acc123(47)+acc123(48)+acc123(49)+acc123(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram123_sign, shift => diagram123_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd123h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd123h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d123h3l1