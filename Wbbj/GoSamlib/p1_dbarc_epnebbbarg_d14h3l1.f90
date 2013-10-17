module     p1_dbarc_epnebbbarg_d14h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d14h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc14(54)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      acc14(1)=abb14(7)
      acc14(2)=abb14(8)
      acc14(3)=abb14(9)
      acc14(4)=abb14(10)
      acc14(5)=abb14(11)
      acc14(6)=abb14(12)
      acc14(7)=abb14(13)
      acc14(8)=abb14(14)
      acc14(9)=abb14(15)
      acc14(10)=abb14(16)
      acc14(11)=abb14(17)
      acc14(12)=abb14(18)
      acc14(13)=abb14(19)
      acc14(14)=abb14(20)
      acc14(15)=abb14(21)
      acc14(16)=abb14(22)
      acc14(17)=abb14(23)
      acc14(18)=abb14(24)
      acc14(19)=abb14(25)
      acc14(20)=abb14(27)
      acc14(21)=abb14(29)
      acc14(22)=abb14(30)
      acc14(23)=abb14(31)
      acc14(24)=abb14(32)
      acc14(25)=abb14(33)
      acc14(26)=abb14(34)
      acc14(27)=abb14(35)
      acc14(28)=abb14(36)
      acc14(29)=abb14(37)
      acc14(30)=abb14(38)
      acc14(31)=abb14(39)
      acc14(32)=abb14(40)
      acc14(33)=abb14(41)
      acc14(34)=abb14(42)
      acc14(35)=abb14(43)
      acc14(36)=abb14(44)
      acc14(37)=abb14(45)
      acc14(38)=abb14(46)
      acc14(39)=abb14(47)
      acc14(40)=abb14(48)
      acc14(41)=abb14(49)
      acc14(42)=abb14(52)
      acc14(43)=abb14(53)
      acc14(44)=abb14(54)
      acc14(45)=Qspk7-Qspk2
      acc14(46)=acc14(36)*acc14(45)
      acc14(47)=Qspvak1k7*acc14(3)
      acc14(48)=-Qspe7*acc14(26)
      acc14(49)=Qspvae7k2*acc14(37)
      acc14(46)=acc14(49)+acc14(48)+acc14(34)+acc14(47)+acc14(46)
      acc14(46)=Qspvak2l5*acc14(46)
      acc14(47)=acc14(42)*acc14(45)
      acc14(48)=Qspvak1k7*acc14(2)
      acc14(49)=-Qspe7*acc14(30)
      acc14(50)=Qspvae7k2*acc14(33)
      acc14(47)=acc14(50)+acc14(49)+acc14(38)+acc14(48)+acc14(47)
      acc14(47)=Qspvak2l6*acc14(47)
      acc14(48)=-acc14(21)*acc14(45)
      acc14(49)=acc14(40)*Qspvak1k4
      acc14(50)=QspQ*acc14(10)
      acc14(51)=Qspvak1k3*acc14(8)
      acc14(52)=Qspk1*acc14(27)
      acc14(53)=Qspe7*acc14(1)
      acc14(54)=Qspvae7k2*acc14(12)
      acc14(46)=acc14(47)+acc14(46)+acc14(54)+acc14(53)+acc14(52)+acc14(51)+acc&
      &14(50)+acc14(15)+acc14(49)+acc14(48)
      acc14(46)=Qspvak4k3*acc14(46)
      acc14(47)=-acc14(29)*acc14(45)
      acc14(48)=Qspvak1k3*acc14(14)
      acc14(49)=Qspk1*acc14(9)
      acc14(50)=Qspe7*acc14(28)
      acc14(51)=Qspvae7k2*acc14(22)
      acc14(47)=acc14(51)+acc14(50)+acc14(49)+acc14(7)+acc14(48)+acc14(47)
      acc14(47)=Qspvak2l5*acc14(47)
      acc14(48)=-acc14(41)*acc14(45)
      acc14(49)=Qspvak1k3*acc14(13)
      acc14(50)=Qspk1*acc14(24)
      acc14(51)=Qspe7*acc14(35)
      acc14(52)=Qspvae7k2*acc14(32)
      acc14(48)=acc14(52)+acc14(51)+acc14(50)+acc14(16)+acc14(49)+acc14(48)
      acc14(48)=Qspvak2l6*acc14(48)
      acc14(49)=Qspk4+Qspk3
      acc14(50)=acc14(49)-Qspk1
      acc14(51)=acc14(44)*acc14(50)
      acc14(52)=QspQ*acc14(25)
      acc14(51)=-acc14(31)+acc14(52)+acc14(51)
      acc14(45)=-acc14(51)*acc14(45)
      acc14(51)=-acc14(6)*acc14(49)
      acc14(52)=-QspQ*acc14(40)
      acc14(51)=acc14(52)+acc14(51)
      acc14(51)=Qspvak1k3*acc14(51)
      acc14(52)=acc14(43)*acc14(50)
      acc14(53)=QspQ*acc14(23)
      acc14(52)=acc14(53)+acc14(20)+acc14(52)
      acc14(52)=Qspe7*acc14(52)
      acc14(50)=acc14(19)*acc14(50)
      acc14(53)=QspQ*acc14(18)
      acc14(50)=acc14(53)+acc14(17)+acc14(50)
      acc14(50)=Qspvae7k2*acc14(50)
      acc14(49)=acc14(39)*acc14(49)
      acc14(53)=QspQ*acc14(5)
      acc14(54)=Qspvak1k3*acc14(6)
      acc14(54)=acc14(4)+acc14(54)
      acc14(54)=Qspk1*acc14(54)
      brack=acc14(11)+acc14(45)+acc14(46)+acc14(47)+acc14(48)+acc14(49)+acc14(5&
      &0)+acc14(51)+acc14(52)+acc14(53)+acc14(54)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram14_sign, shift => diagram14_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd14h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d14
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d14 = 0.0_ki
      d14 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d14, ki), aimag(d14), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd14h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d14
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d14 = 0.0_ki
      d14 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d14, ki), aimag(d14), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d14h3l1