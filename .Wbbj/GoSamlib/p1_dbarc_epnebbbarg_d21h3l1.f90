module     p1_dbarc_epnebbbarg_d21h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d21h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(53)
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      acc21(1)=abb21(11)
      acc21(2)=abb21(12)
      acc21(3)=abb21(13)
      acc21(4)=abb21(14)
      acc21(5)=abb21(15)
      acc21(6)=abb21(16)
      acc21(7)=abb21(17)
      acc21(8)=abb21(18)
      acc21(9)=abb21(19)
      acc21(10)=abb21(20)
      acc21(11)=abb21(21)
      acc21(12)=abb21(22)
      acc21(13)=abb21(23)
      acc21(14)=abb21(24)
      acc21(15)=abb21(25)
      acc21(16)=abb21(26)
      acc21(17)=abb21(27)
      acc21(18)=abb21(29)
      acc21(19)=abb21(30)
      acc21(20)=abb21(31)
      acc21(21)=abb21(32)
      acc21(22)=abb21(33)
      acc21(23)=abb21(34)
      acc21(24)=abb21(35)
      acc21(25)=abb21(40)
      acc21(26)=abb21(42)
      acc21(27)=abb21(45)
      acc21(28)=abb21(47)
      acc21(29)=abb21(49)
      acc21(30)=abb21(54)
      acc21(31)=abb21(57)
      acc21(32)=abb21(64)
      acc21(33)=abb21(66)
      acc21(34)=abb21(69)
      acc21(35)=abb21(71)
      acc21(36)=abb21(122)
      acc21(37)=abb21(123)
      acc21(38)=abb21(156)
      acc21(39)=abb21(275)
      acc21(40)=acc21(3)*Qspk2
      acc21(41)=acc21(6)*Qspvak1l5
      acc21(42)=acc21(13)*Qspvak1k2
      acc21(43)=acc21(19)*Qspvak4k2
      acc21(44)=acc21(23)*Qspvak1l6
      acc21(45)=acc21(24)*Qspe7
      acc21(46)=acc21(27)*Qspk7
      acc21(47)=acc21(28)*Qspk1
      acc21(48)=acc21(31)*Qspvae7k2
      acc21(49)=acc21(34)*Qspvak4k3
      acc21(40)=acc21(49)+acc21(48)+acc21(47)+acc21(46)+acc21(45)+acc21(44)+acc&
      &21(43)+acc21(42)+acc21(41)+acc21(5)+acc21(40)
      acc21(40)=Qspvak2l6*acc21(40)
      acc21(41)=acc21(2)*Qspvak4k2
      acc21(42)=acc21(10)*Qspvak1l5
      acc21(43)=acc21(12)*Qspvae7k2
      acc21(44)=acc21(15)*Qspe7
      acc21(45)=acc21(20)*Qspvak4k3
      acc21(46)=acc21(21)*Qspvak1k2
      acc21(47)=acc21(22)*Qspk7
      acc21(48)=acc21(26)*Qspk2
      acc21(49)=acc21(29)*Qspk1
      acc21(50)=acc21(30)*Qspvak1l6
      acc21(41)=acc21(50)+acc21(49)+acc21(48)+acc21(47)+acc21(46)+acc21(45)+acc&
      &21(44)+acc21(43)+acc21(42)+acc21(9)+acc21(41)
      acc21(41)=Qspvak2l5*acc21(41)
      acc21(42)=-acc21(35)*Qspvak2l5
      acc21(43)=-acc21(37)*Qspvak2l6
      acc21(42)=acc21(43)+acc21(42)-acc21(25)
      acc21(43)=Qspk3+Qspk4
      acc21(42)=acc21(43)*acc21(42)
      acc21(43)=acc21(33)*Qspvak2l5
      acc21(44)=acc21(36)*Qspvak2l6
      acc21(43)=acc21(44)+acc21(43)+acc21(16)
      acc21(44)=Qspl5+Qspl6
      acc21(43)=acc21(44)*acc21(43)
      acc21(44)=acc21(1)*Qspk2
      acc21(45)=acc21(4)*Qspvak1l5
      acc21(46)=acc21(7)*Qspk1
      acc21(47)=acc21(11)*Qspvak4k2
      acc21(48)=acc21(14)*Qspvak4k3
      acc21(49)=acc21(17)*Qspvae7k2
      acc21(50)=acc21(18)*Qspvak1l6
      acc21(51)=acc21(38)*Qspe7
      acc21(52)=acc21(39)*Qspk7
      acc21(53)=QspQ*acc21(8)
      brack=acc21(32)+acc21(40)+acc21(41)+acc21(42)+acc21(43)+acc21(44)+acc21(4&
      &5)+acc21(46)+acc21(47)+acc21(48)+acc21(49)+acc21(50)+acc21(51)+acc21(52)&
      &+acc21(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram21_sign, shift => diagram21_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d21h3l1
