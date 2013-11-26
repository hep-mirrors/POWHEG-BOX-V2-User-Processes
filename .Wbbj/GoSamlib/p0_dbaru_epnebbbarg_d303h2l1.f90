module     p0_dbaru_epnebbbarg_d303h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d303h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd303h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc303(50)
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5k7
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      acc303(1)=abb303(9)
      acc303(2)=abb303(10)
      acc303(3)=abb303(11)
      acc303(4)=abb303(12)
      acc303(5)=abb303(13)
      acc303(6)=abb303(14)
      acc303(7)=abb303(15)
      acc303(8)=abb303(16)
      acc303(9)=abb303(17)
      acc303(10)=abb303(18)
      acc303(11)=abb303(19)
      acc303(12)=abb303(20)
      acc303(13)=abb303(21)
      acc303(14)=abb303(22)
      acc303(15)=abb303(23)
      acc303(16)=abb303(24)
      acc303(17)=abb303(25)
      acc303(18)=abb303(26)
      acc303(19)=abb303(27)
      acc303(20)=abb303(28)
      acc303(21)=abb303(29)
      acc303(22)=abb303(30)
      acc303(23)=abb303(31)
      acc303(24)=abb303(32)
      acc303(25)=abb303(33)
      acc303(26)=abb303(34)
      acc303(27)=abb303(37)
      acc303(28)=abb303(38)
      acc303(29)=abb303(39)
      acc303(30)=abb303(40)
      acc303(31)=abb303(41)
      acc303(32)=abb303(42)
      acc303(33)=abb303(44)
      acc303(34)=abb303(45)
      acc303(35)=abb303(46)
      acc303(36)=abb303(52)
      acc303(37)=abb303(54)
      acc303(38)=abb303(55)
      acc303(39)=acc303(3)*Qspvae7l6
      acc303(40)=acc303(7)*Qspvak7l6
      acc303(41)=acc303(10)*Qspe7
      acc303(42)=acc303(18)*Qspk2
      acc303(43)=acc303(20)*QspQ
      acc303(44)=acc303(26)*Qspk7
      acc303(45)=-Qspvak2e7*acc303(8)
      acc303(39)=acc303(45)+acc303(44)+acc303(43)+acc303(42)+acc303(12)+acc303(&
      &41)+acc303(40)+acc303(39)
      acc303(39)=Qspval5k2*acc303(39)
      acc303(40)=acc303(1)*Qspvak1k2
      acc303(41)=acc303(2)*Qspvak4k2
      acc303(40)=acc303(24)+acc303(40)+acc303(41)
      acc303(40)=acc303(40)*Qspe7
      acc303(41)=acc303(13)*Qspvak1k2
      acc303(42)=acc303(22)*Qspvak4k2
      acc303(43)=acc303(28)*Qspk2
      acc303(44)=acc303(30)*QspQ
      acc303(45)=acc303(38)*Qspk7
      acc303(40)=acc303(42)+acc303(41)+acc303(40)+acc303(45)+acc303(44)+acc303(&
      &43)+acc303(17)
      acc303(40)=Qspval5l6*acc303(40)
      acc303(41)=acc303(9)*Qspk2
      acc303(42)=acc303(14)*QspQ
      acc303(43)=acc303(21)*Qspvak4k2
      acc303(44)=acc303(25)*Qspvak1k2
      acc303(45)=acc303(33)*Qspl5
      acc303(41)=acc303(44)+acc303(43)+acc303(45)+acc303(19)+acc303(42)+acc303(&
      &41)
      acc303(41)=Qspe7*acc303(41)
      acc303(42)=acc303(27)*Qspval5e7
      acc303(43)=acc303(29)*QspQ
      acc303(44)=acc303(34)*Qspl5
      acc303(45)=acc303(35)*Qspk2
      acc303(42)=acc303(45)+acc303(44)+acc303(43)+acc303(42)+acc303(16)
      acc303(42)=Qspvae7l6*acc303(42)
      acc303(43)=acc303(37)*Qspvak7l6
      acc303(43)=acc303(43)+acc303(6)
      acc303(43)=Qspval5k7*acc303(43)
      acc303(44)=acc303(4)*Qspk2
      acc303(45)=acc303(5)*QspQ
      acc303(46)=acc303(15)*Qspvak4k2
      acc303(47)=acc303(23)*Qspvak1k2
      acc303(48)=acc303(31)*Qspvak7l6
      acc303(49)=acc303(32)*Qspk7
      acc303(50)=acc303(36)*Qspval5e7
      brack=acc303(11)+acc303(39)+acc303(40)+acc303(41)+acc303(42)+acc303(43)+a&
      &cc303(44)+acc303(45)+acc303(46)+acc303(47)+acc303(48)+acc303(49)+acc303(&
      &50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram303_sign, shift => diagram303_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d303h2l1
