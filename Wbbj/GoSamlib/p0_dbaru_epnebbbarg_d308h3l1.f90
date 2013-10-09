module     p0_dbaru_epnebbbarg_d308h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d308h3l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc308(55)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7l6
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      acc308(1)=abb308(8)
      acc308(2)=abb308(9)
      acc308(3)=abb308(10)
      acc308(4)=abb308(11)
      acc308(5)=abb308(12)
      acc308(6)=abb308(13)
      acc308(7)=abb308(14)
      acc308(8)=abb308(15)
      acc308(9)=abb308(16)
      acc308(10)=abb308(17)
      acc308(11)=abb308(18)
      acc308(12)=abb308(19)
      acc308(13)=abb308(20)
      acc308(14)=abb308(21)
      acc308(15)=abb308(22)
      acc308(16)=abb308(23)
      acc308(17)=abb308(24)
      acc308(18)=abb308(25)
      acc308(19)=abb308(27)
      acc308(20)=abb308(28)
      acc308(21)=abb308(29)
      acc308(22)=abb308(30)
      acc308(23)=abb308(31)
      acc308(24)=abb308(32)
      acc308(25)=abb308(33)
      acc308(26)=abb308(34)
      acc308(27)=abb308(36)
      acc308(28)=abb308(39)
      acc308(29)=abb308(40)
      acc308(30)=abb308(41)
      acc308(31)=abb308(42)
      acc308(32)=abb308(43)
      acc308(33)=abb308(44)
      acc308(34)=abb308(45)
      acc308(35)=abb308(46)
      acc308(36)=abb308(47)
      acc308(37)=abb308(48)
      acc308(38)=abb308(50)
      acc308(39)=abb308(51)
      acc308(40)=abb308(54)
      acc308(41)=abb308(56)
      acc308(42)=abb308(57)
      acc308(43)=Qspvak2l5*acc308(9)
      acc308(43)=acc308(43)+acc308(16)
      acc308(43)=Qspvak1k2*acc308(43)
      acc308(44)=Qspvak2l5*acc308(13)
      acc308(44)=acc308(40)+acc308(44)
      acc308(44)=Qspvak4k2*acc308(44)
      acc308(45)=Qspvak7l6*acc308(23)
      acc308(46)=Qspl6*acc308(37)
      acc308(47)=Qspvak1l6*acc308(2)
      acc308(48)=Qspvak2l6*acc308(7)
      acc308(49)=Qspvak2k7*acc308(6)
      acc308(50)=Qspvak4l6*acc308(20)
      acc308(51)=QspQ*acc308(4)
      acc308(52)=Qspk2*acc308(1)
      acc308(53)=Qspk7*acc308(34)
      acc308(43)=acc308(53)+acc308(52)+acc308(51)+acc308(50)+acc308(49)+acc308(&
      &48)+acc308(47)+acc308(46)+acc308(45)+acc308(44)+acc308(3)+acc308(43)
      acc308(43)=Qspe7*acc308(43)
      acc308(44)=acc308(35)*Qspvak7l6
      acc308(45)=Qspl6*acc308(38)
      acc308(46)=Qspvak1l6*acc308(11)
      acc308(47)=Qspvak2l6*acc308(10)
      acc308(48)=Qspvak2k7*acc308(12)
      acc308(49)=Qspvak4l6*acc308(21)
      acc308(50)=QspQ*acc308(5)
      acc308(51)=Qspk2*acc308(31)
      acc308(52)=Qspk7*acc308(36)
      acc308(53)=Qspvak2e7*acc308(24)
      acc308(44)=acc308(53)+acc308(52)+acc308(51)+acc308(50)+acc308(49)+acc308(&
      &48)+acc308(47)+acc308(46)+acc308(45)+acc308(30)+acc308(44)
      acc308(44)=Qspvae7k2*acc308(44)
      acc308(45)=Qspk7+Qspk2
      acc308(46)=acc308(25)*acc308(45)
      acc308(47)=Qspvak7k2*acc308(35)
      acc308(48)=QspQ*acc308(26)
      acc308(46)=acc308(48)+acc308(27)+acc308(47)+acc308(46)
      acc308(46)=Qspvae7l6*acc308(46)
      acc308(45)=-acc308(42)*acc308(45)
      acc308(47)=Qspvak7k2*acc308(29)
      acc308(48)=QspQ*acc308(41)
      acc308(45)=acc308(48)+acc308(39)+acc308(47)+acc308(45)
      acc308(45)=Qspvak2e7*acc308(45)
      acc308(47)=Qspl6*acc308(28)
      acc308(48)=Qspvak1l6*acc308(19)
      acc308(49)=Qspvak2l6*acc308(14)
      acc308(50)=Qspvak2k7*acc308(15)
      acc308(51)=Qspvak4l6*acc308(22)
      acc308(52)=Qspvak7k2*acc308(17)
      acc308(53)=QspQ*acc308(8)
      acc308(54)=Qspk2*acc308(32)
      acc308(55)=Qspk7*acc308(33)
      brack=acc308(18)+acc308(43)+acc308(44)+acc308(45)+acc308(46)+acc308(47)+a&
      &cc308(48)+acc308(49)+acc308(50)+acc308(51)+acc308(52)+acc308(53)+acc308(&
      &54)+acc308(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram308_sign, shift => diagram308_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d308h3l1
