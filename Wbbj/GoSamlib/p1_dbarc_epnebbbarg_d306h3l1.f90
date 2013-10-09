module     p1_dbarc_epnebbbarg_d306h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d306h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc306(64)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      acc306(1)=abb306(8)
      acc306(2)=abb306(9)
      acc306(3)=abb306(10)
      acc306(4)=abb306(11)
      acc306(5)=abb306(12)
      acc306(6)=abb306(13)
      acc306(7)=abb306(14)
      acc306(8)=abb306(15)
      acc306(9)=abb306(16)
      acc306(10)=abb306(17)
      acc306(11)=abb306(18)
      acc306(12)=abb306(19)
      acc306(13)=abb306(20)
      acc306(14)=abb306(21)
      acc306(15)=abb306(22)
      acc306(16)=abb306(23)
      acc306(17)=abb306(24)
      acc306(18)=abb306(25)
      acc306(19)=abb306(26)
      acc306(20)=abb306(27)
      acc306(21)=abb306(28)
      acc306(22)=abb306(29)
      acc306(23)=abb306(30)
      acc306(24)=abb306(31)
      acc306(25)=abb306(32)
      acc306(26)=abb306(33)
      acc306(27)=abb306(34)
      acc306(28)=abb306(35)
      acc306(29)=abb306(36)
      acc306(30)=abb306(37)
      acc306(31)=abb306(38)
      acc306(32)=abb306(39)
      acc306(33)=abb306(40)
      acc306(34)=abb306(41)
      acc306(35)=abb306(42)
      acc306(36)=abb306(43)
      acc306(37)=abb306(44)
      acc306(38)=abb306(45)
      acc306(39)=abb306(46)
      acc306(40)=abb306(48)
      acc306(41)=abb306(49)
      acc306(42)=abb306(50)
      acc306(43)=abb306(51)
      acc306(44)=abb306(53)
      acc306(45)=abb306(56)
      acc306(46)=abb306(61)
      acc306(47)=abb306(62)
      acc306(48)=abb306(63)
      acc306(49)=abb306(64)
      acc306(50)=abb306(67)
      acc306(51)=Qspvak2l6*acc306(36)
      acc306(52)=Qspvak2l5*acc306(29)
      acc306(51)=acc306(52)+acc306(5)+acc306(51)
      acc306(51)=Qspvak1k2*acc306(51)
      acc306(52)=Qspvak2l6*acc306(34)
      acc306(53)=Qspvak2l5*acc306(26)
      acc306(52)=acc306(53)+acc306(27)+acc306(52)
      acc306(52)=Qspvak4k2*acc306(52)
      acc306(53)=Qspvak1l5*acc306(41)
      acc306(54)=Qspvak4l5*acc306(49)
      acc306(53)=acc306(54)+acc306(6)+acc306(53)
      acc306(53)=Qspk2*acc306(53)
      acc306(54)=Qspvak1l5*acc306(15)
      acc306(55)=Qspvak4l5*acc306(12)
      acc306(56)=Qspl5*acc306(31)
      acc306(57)=Qspvak1k7*acc306(11)
      acc306(58)=Qspvak2l5*acc306(39)
      acc306(59)=Qspvak2k7*acc306(23)
      acc306(60)=Qspvak4k7*acc306(35)
      acc306(61)=Qspvak1l6*acc306(7)
      acc306(62)=Qspvak4l6*acc306(42)
      acc306(63)=QspQ*acc306(16)
      acc306(51)=acc306(53)+acc306(52)+acc306(51)+acc306(63)+acc306(62)+acc306(&
      &61)+acc306(60)+acc306(59)+acc306(58)+acc306(57)+acc306(56)+acc306(55)+ac&
      &c306(8)+acc306(54)
      acc306(51)=Qspe7*acc306(51)
      acc306(52)=acc306(45)*Qspvak1e7
      acc306(53)=acc306(44)*Qspvak4e7
      acc306(54)=acc306(24)*Qspvak2e7
      acc306(55)=Qspl5*acc306(28)
      acc306(56)=Qspvak1l6*acc306(18)
      acc306(57)=Qspvak4l6*acc306(20)
      acc306(58)=QspQ*acc306(19)
      acc306(52)=acc306(58)+acc306(57)+acc306(56)+acc306(55)+acc306(54)+acc306(&
      &25)+acc306(52)+acc306(53)
      acc306(52)=Qspvae7k2*acc306(52)
      acc306(53)=Qspvak2k7*acc306(17)
      acc306(54)=-acc306(46)*Qspvak4k7
      acc306(55)=-acc306(40)*Qspvak1k7
      acc306(56)=Qspvak1l6*acc306(33)
      acc306(57)=Qspvak4l6*acc306(48)
      acc306(53)=acc306(57)+acc306(56)+acc306(55)+acc306(54)+acc306(3)+acc306(5&
      &3)
      acc306(53)=Qspvak7k2*acc306(53)
      acc306(54)=-Qspk2-Qspk7
      acc306(54)=acc306(38)*acc306(54)
      acc306(55)=-QspQ*acc306(17)
      acc306(56)=Qspvak1k2*acc306(40)
      acc306(57)=Qspvak4k2*acc306(46)
      acc306(58)=Qspvae7k2*acc306(1)
      acc306(54)=acc306(58)+acc306(57)+acc306(56)+acc306(55)+acc306(10)+acc306(&
      &54)
      acc306(54)=Qspk2*acc306(54)
      acc306(55)=Qspk7*acc306(40)
      acc306(56)=QspQ*acc306(21)
      acc306(55)=acc306(56)+acc306(43)+acc306(55)
      acc306(55)=Qspvak1k2*acc306(55)
      acc306(56)=Qspk7*acc306(46)
      acc306(57)=QspQ*acc306(30)
      acc306(56)=acc306(57)+acc306(50)+acc306(56)
      acc306(56)=Qspvak4k2*acc306(56)
      acc306(57)=Qspl5*acc306(22)
      acc306(58)=Qspvak1k7*acc306(9)
      acc306(59)=Qspvak2k7*acc306(2)
      acc306(60)=Qspvak4k7*acc306(4)
      acc306(61)=Qspk7*acc306(14)
      acc306(62)=Qspvak1l6*acc306(37)
      acc306(63)=Qspvak4l6*acc306(47)
      acc306(64)=QspQ*acc306(13)
      brack=acc306(32)+acc306(51)+acc306(52)+acc306(53)+acc306(54)+acc306(55)+a&
      &cc306(56)+acc306(57)+acc306(58)+acc306(59)+acc306(60)+acc306(61)+acc306(&
      &62)+acc306(63)+acc306(64)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram306_sign, shift => diagram306_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd306h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd306h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d306h3l1
