module     p5_usbar_epnebbbarg_d103h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d103h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc103(46)
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k4
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k4 = dotproduct(Q,spval5k4)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      acc103(1)=abb103(7)
      acc103(2)=abb103(8)
      acc103(3)=abb103(9)
      acc103(4)=abb103(10)
      acc103(5)=abb103(11)
      acc103(6)=abb103(12)
      acc103(7)=abb103(13)
      acc103(8)=abb103(14)
      acc103(9)=abb103(15)
      acc103(10)=abb103(16)
      acc103(11)=abb103(17)
      acc103(12)=abb103(18)
      acc103(13)=abb103(19)
      acc103(14)=abb103(20)
      acc103(15)=abb103(21)
      acc103(16)=abb103(22)
      acc103(17)=abb103(23)
      acc103(18)=abb103(24)
      acc103(19)=abb103(25)
      acc103(20)=abb103(26)
      acc103(21)=abb103(27)
      acc103(22)=abb103(29)
      acc103(23)=abb103(30)
      acc103(24)=abb103(31)
      acc103(25)=abb103(33)
      acc103(26)=abb103(34)
      acc103(27)=abb103(35)
      acc103(28)=abb103(36)
      acc103(29)=abb103(37)
      acc103(30)=abb103(39)
      acc103(31)=abb103(40)
      acc103(32)=abb103(41)
      acc103(33)=abb103(43)
      acc103(34)=Qspval5k1*acc103(1)
      acc103(35)=Qspvak2k1*acc103(2)
      acc103(34)=acc103(35)+acc103(34)
      acc103(34)=acc103(34)*Qspe7
      acc103(35)=Qspvak3k1*acc103(28)
      acc103(36)=acc103(3)*Qspvak2k4
      acc103(37)=acc103(14)*Qspval5e7
      acc103(38)=acc103(15)*Qspvak2k3
      acc103(39)=acc103(16)*Qspvak2e7
      acc103(40)=acc103(26)*Qspvae7k1
      acc103(41)=acc103(29)*Qspvak4k1
      acc103(42)=acc103(30)*Qspval5k3
      acc103(43)=acc103(31)*Qspval5k7
      acc103(44)=acc103(32)*Qspval5k4
      acc103(45)=acc103(33)*Qspvak2k7
      acc103(46)=Qspvak7k1*acc103(27)
      acc103(34)=acc103(34)+acc103(46)+acc103(45)+acc103(44)+acc103(43)+acc103(&
      &42)+acc103(41)+acc103(40)+acc103(39)+acc103(38)+acc103(37)+acc103(36)+ac&
      &c103(35)
      acc103(34)=Qspvak4k3*acc103(34)
      acc103(35)=acc103(9)*Qspvak4k1
      acc103(36)=acc103(11)*Qspvae7k1
      acc103(37)=acc103(12)*Qspe7
      acc103(38)=acc103(17)*Qspval5e7
      acc103(39)=acc103(19)*Qspvak2e7
      acc103(35)=acc103(39)+acc103(38)+acc103(37)+acc103(36)+acc103(35)+acc103(&
      &5)
      acc103(35)=QspQ*acc103(35)
      acc103(36)=-acc103(28)*Qspvak4k1
      acc103(37)=-acc103(18)*Qspval5e7
      acc103(38)=-acc103(20)*Qspvak2e7
      acc103(39)=acc103(21)*Qspvae7k1
      acc103(36)=acc103(39)+acc103(38)+acc103(36)+acc103(37)
      acc103(37)=Qspk3+Qspk4
      acc103(36)=acc103(37)*acc103(36)
      acc103(37)=acc103(25)*Qspe7
      acc103(37)=acc103(37)+acc103(23)
      acc103(37)=Qspval5k3*acc103(37)
      acc103(38)=acc103(6)*Qspe7
      acc103(38)=acc103(7)+acc103(38)
      acc103(38)=Qspvak2k3*acc103(38)
      acc103(39)=acc103(4)*Qspvak2k4
      acc103(40)=acc103(8)*Qspvak4k1
      acc103(41)=acc103(10)*Qspvak3k1
      acc103(42)=acc103(13)*Qspvak2k7
      acc103(43)=acc103(22)*Qspval5k4
      acc103(44)=acc103(24)*Qspval5k7
      brack=acc103(34)+acc103(35)+acc103(36)+acc103(37)+acc103(38)+acc103(39)+a&
      &cc103(40)+acc103(41)+acc103(42)+acc103(43)+acc103(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram103_sign, shift => diagram103_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d103
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d103 = 0.0_ki
      d103 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d103, ki), aimag(d103), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d103
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d103 = 0.0_ki
      d103 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d103, ki), aimag(d103), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d103h2l1
