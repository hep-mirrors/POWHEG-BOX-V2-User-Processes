module     p1_dbarc_epnebbbarg_d17h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d17h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd17h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(48)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc17(1)=abb17(8)
      acc17(2)=abb17(9)
      acc17(3)=abb17(10)
      acc17(4)=abb17(11)
      acc17(5)=abb17(12)
      acc17(6)=abb17(13)
      acc17(7)=abb17(14)
      acc17(8)=abb17(15)
      acc17(9)=abb17(16)
      acc17(10)=abb17(17)
      acc17(11)=abb17(18)
      acc17(12)=abb17(19)
      acc17(13)=abb17(20)
      acc17(14)=abb17(21)
      acc17(15)=abb17(22)
      acc17(16)=abb17(23)
      acc17(17)=abb17(24)
      acc17(18)=abb17(25)
      acc17(19)=abb17(26)
      acc17(20)=abb17(27)
      acc17(21)=abb17(28)
      acc17(22)=abb17(29)
      acc17(23)=abb17(30)
      acc17(24)=abb17(31)
      acc17(25)=abb17(32)
      acc17(26)=abb17(33)
      acc17(27)=abb17(34)
      acc17(28)=abb17(35)
      acc17(29)=abb17(36)
      acc17(30)=abb17(43)
      acc17(31)=abb17(50)
      acc17(32)=abb17(51)
      acc17(33)=abb17(53)
      acc17(34)=abb17(72)
      acc17(35)=abb17(75)
      acc17(36)=abb17(76)
      acc17(37)=abb17(77)
      acc17(38)=abb17(79)
      acc17(39)=Qspk2-Qspk7
      acc17(39)=acc17(21)*acc17(39)
      acc17(40)=-Qspvak1k7*acc17(14)
      acc17(41)=Qspe7*acc17(12)
      acc17(42)=Qspvae7k2*acc17(3)
      acc17(43)=Qspval5l6*acc17(11)
      acc17(39)=acc17(43)+acc17(42)+acc17(41)+acc17(20)+acc17(40)+acc17(39)
      acc17(39)=Qspk2*acc17(39)
      acc17(40)=Qspvak1k7*acc17(18)
      acc17(41)=-Qspk7*acc17(11)
      acc17(42)=Qspe7*acc17(9)
      acc17(43)=Qspvae7k2*acc17(2)
      acc17(40)=acc17(43)+acc17(42)+acc17(41)+acc17(6)+acc17(40)
      acc17(40)=Qspval5l6*acc17(40)
      acc17(41)=Qspvak1k7*acc17(5)
      acc17(42)=Qspk1+Qspl6+Qspl5
      acc17(43)=acc17(33)*acc17(42)
      acc17(44)=QspQ*acc17(22)
      acc17(45)=Qspk7*acc17(30)
      acc17(46)=Qspe7*acc17(17)
      acc17(47)=Qspvae7k2*acc17(1)
      acc17(39)=acc17(39)+acc17(40)+acc17(47)+acc17(46)+acc17(45)+acc17(44)+acc&
      &17(43)+acc17(15)+acc17(41)
      acc17(39)=Qspvak4k3*acc17(39)
      acc17(40)=Qspk4+Qspk3
      acc17(41)=-acc17(16)*acc17(40)
      acc17(43)=Qspvak1k3*acc17(27)
      acc17(44)=QspQ*acc17(24)
      acc17(41)=acc17(44)+acc17(13)+acc17(43)+acc17(41)
      acc17(41)=Qspval5l6*acc17(41)
      acc17(43)=-acc17(32)*acc17(40)
      acc17(44)=Qspvak1k3*acc17(26)
      acc17(45)=QspQ*acc17(36)
      acc17(43)=acc17(45)+acc17(7)+acc17(44)+acc17(43)
      acc17(43)=Qspk2*acc17(43)
      acc17(44)=acc17(37)*acc17(40)
      acc17(45)=QspQ*acc17(38)
      acc17(44)=acc17(45)+acc17(29)+acc17(44)
      acc17(44)=Qspk7*acc17(44)
      acc17(45)=acc17(35)*acc17(40)
      acc17(46)=QspQ*acc17(23)
      acc17(45)=acc17(46)+acc17(19)+acc17(45)
      acc17(45)=Qspe7*acc17(45)
      acc17(46)=-acc17(10)*acc17(40)
      acc17(47)=QspQ*acc17(8)
      acc17(46)=acc17(47)+acc17(4)+acc17(46)
      acc17(46)=Qspvae7k2*acc17(46)
      acc17(40)=-acc17(34)*acc17(40)
      acc17(47)=Qspvak1k3*acc17(25)
      acc17(42)=-acc17(31)*acc17(42)
      acc17(48)=QspQ*acc17(28)
      brack=acc17(39)+acc17(40)+acc17(41)+acc17(42)+acc17(43)+acc17(44)+acc17(4&
      &5)+acc17(46)+acc17(47)+acc17(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram17_sign, shift => diagram17_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd17h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd17h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d17h2l1
