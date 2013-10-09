module     p1_dbarc_epnebbbarg_d124h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d124h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd124h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc124(58)
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      acc124(1)=abb124(9)
      acc124(2)=abb124(10)
      acc124(3)=abb124(11)
      acc124(4)=abb124(12)
      acc124(5)=abb124(13)
      acc124(6)=abb124(14)
      acc124(7)=abb124(15)
      acc124(8)=abb124(16)
      acc124(9)=abb124(17)
      acc124(10)=abb124(18)
      acc124(11)=abb124(19)
      acc124(12)=abb124(20)
      acc124(13)=abb124(21)
      acc124(14)=abb124(22)
      acc124(15)=abb124(23)
      acc124(16)=abb124(24)
      acc124(17)=abb124(25)
      acc124(18)=abb124(26)
      acc124(19)=abb124(27)
      acc124(20)=abb124(28)
      acc124(21)=abb124(29)
      acc124(22)=abb124(30)
      acc124(23)=abb124(31)
      acc124(24)=abb124(32)
      acc124(25)=abb124(33)
      acc124(26)=abb124(34)
      acc124(27)=abb124(35)
      acc124(28)=abb124(36)
      acc124(29)=abb124(37)
      acc124(30)=abb124(38)
      acc124(31)=abb124(39)
      acc124(32)=abb124(40)
      acc124(33)=abb124(41)
      acc124(34)=abb124(42)
      acc124(35)=abb124(43)
      acc124(36)=abb124(44)
      acc124(37)=abb124(45)
      acc124(38)=abb124(46)
      acc124(39)=abb124(47)
      acc124(40)=abb124(48)
      acc124(41)=abb124(49)
      acc124(42)=abb124(50)
      acc124(43)=abb124(51)
      acc124(44)=abb124(52)
      acc124(45)=acc124(2)*Qspvak2k3
      acc124(46)=acc124(11)*Qspvak4k2
      acc124(47)=acc124(14)*Qspvak1k3
      acc124(48)=acc124(16)*Qspvak7k2
      acc124(49)=acc124(19)*Qspvak2k7
      acc124(50)=acc124(22)*Qspvak1k7
      acc124(51)=acc124(23)*Qspval6k7
      acc124(52)=acc124(26)*Qspval6k3
      acc124(53)=acc124(33)*Qspval5k7
      acc124(54)=acc124(36)*Qspval5k3
      acc124(45)=acc124(54)+acc124(53)+acc124(52)+acc124(51)+acc124(50)+acc124(&
      &49)+acc124(48)+acc124(47)+acc124(46)+acc124(45)
      acc124(45)=Qspe7*acc124(45)
      acc124(46)=-Qspval6k2*acc124(25)
      acc124(47)=Qspval5k2*acc124(35)
      acc124(48)=Qspvak1k2*acc124(7)
      acc124(49)=Qspk2*acc124(37)
      acc124(46)=acc124(49)+acc124(48)+acc124(47)+acc124(46)
      acc124(46)=acc124(46)*Qspe7
      acc124(47)=acc124(1)*Qspval6k7
      acc124(48)=acc124(6)*Qspval5k7
      acc124(49)=acc124(8)*Qspvak7k2
      acc124(50)=acc124(18)*Qspvak1k7
      acc124(51)=acc124(41)*Qspvae7k2
      acc124(52)=acc124(42)*Qspvak2k7
      acc124(46)=acc124(46)+acc124(52)+acc124(51)+acc124(50)+acc124(49)+acc124(&
      &48)+acc124(47)
      acc124(46)=Qspvak4k3*acc124(46)
      acc124(47)=acc124(9)*Qspvak4k2
      acc124(48)=acc124(10)*Qspvae7k2
      acc124(49)=acc124(30)*Qspval5k3
      acc124(50)=acc124(31)*Qspval6k3
      acc124(51)=acc124(38)*Qspvak2k3
      acc124(52)=acc124(39)*Qspvak4k3
      acc124(53)=acc124(40)*Qspvak1k3
      acc124(47)=acc124(53)+acc124(52)+acc124(51)+acc124(50)+acc124(49)+acc124(&
      &48)+acc124(47)+acc124(4)
      acc124(47)=QspQ*acc124(47)
      acc124(48)=acc124(13)*Qspvak4k2
      acc124(49)=acc124(17)*Qspvae7k2
      acc124(50)=acc124(27)*Qspvak1k3
      acc124(51)=acc124(28)*Qspval5k3
      acc124(52)=acc124(29)*Qspval6k3
      acc124(53)=acc124(44)*Qspvak2k3
      acc124(48)=acc124(53)+acc124(52)+acc124(51)+acc124(50)+acc124(49)+acc124(&
      &48)
      acc124(48)=Qspk7*acc124(48)
      acc124(49)=acc124(3)*Qspvak7k2
      acc124(50)=acc124(5)*Qspvak1k3
      acc124(51)=acc124(12)*Qspvae7k2
      acc124(52)=acc124(15)*Qspvak2k7
      acc124(53)=acc124(20)*Qspvak1k7
      acc124(54)=acc124(21)*Qspval6k7
      acc124(55)=acc124(24)*Qspval6k3
      acc124(56)=acc124(32)*Qspval5k7
      acc124(57)=acc124(34)*Qspval5k3
      acc124(58)=acc124(43)*Qspvak2k3
      brack=acc124(45)+acc124(46)+acc124(47)+acc124(48)+acc124(49)+acc124(50)+a&
      &cc124(51)+acc124(52)+acc124(53)+acc124(54)+acc124(55)+acc124(56)+acc124(&
      &57)+acc124(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram124_sign, shift => diagram124_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd124h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd124h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d124
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d124 = 0.0_ki
      d124 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d124, ki), aimag(d124), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d124h3l1
