module     p1_dbarc_epnebbbarg_d109h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d109h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd109h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc109(40)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval5k2
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      acc109(1)=abb109(9)
      acc109(2)=abb109(10)
      acc109(3)=abb109(11)
      acc109(4)=abb109(12)
      acc109(5)=abb109(15)
      acc109(6)=abb109(16)
      acc109(7)=abb109(17)
      acc109(8)=abb109(18)
      acc109(9)=abb109(20)
      acc109(10)=abb109(21)
      acc109(11)=abb109(22)
      acc109(12)=abb109(23)
      acc109(13)=abb109(25)
      acc109(14)=abb109(26)
      acc109(15)=abb109(27)
      acc109(16)=abb109(28)
      acc109(17)=abb109(31)
      acc109(18)=abb109(33)
      acc109(19)=abb109(36)
      acc109(20)=abb109(38)
      acc109(21)=abb109(39)
      acc109(22)=abb109(40)
      acc109(23)=abb109(41)
      acc109(24)=abb109(42)
      acc109(25)=abb109(43)
      acc109(26)=abb109(47)
      acc109(27)=abb109(50)
      acc109(28)=Qspk7-Qspk2
      acc109(29)=acc109(8)*acc109(28)
      acc109(30)=Qspval5k7*acc109(5)
      acc109(31)=Qspval6k7*acc109(15)
      acc109(32)=Qspe7*acc109(4)
      acc109(33)=Qspvae7k2*acc109(2)
      acc109(29)=acc109(33)+acc109(32)+acc109(31)+acc109(3)+acc109(30)+acc109(2&
      &9)
      acc109(29)=Qspvak1k2*acc109(29)
      acc109(30)=acc109(24)*acc109(28)
      acc109(31)=Qspval5k7*acc109(10)
      acc109(32)=Qspval6k7*acc109(17)
      acc109(33)=Qspe7*acc109(22)
      acc109(34)=Qspvae7k2*acc109(13)
      acc109(30)=acc109(34)+acc109(33)+acc109(32)+acc109(14)+acc109(31)+acc109(&
      &30)
      acc109(30)=Qspvak4k2*acc109(30)
      acc109(31)=-acc109(26)*acc109(28)
      acc109(32)=-Qspvak1k7*acc109(15)
      acc109(33)=-Qspvak4k7*acc109(17)
      acc109(34)=Qspe7*acc109(25)
      acc109(35)=Qspvae7k2*acc109(27)
      acc109(31)=acc109(35)+acc109(34)+acc109(33)+acc109(23)+acc109(32)+acc109(&
      &31)
      acc109(31)=Qspval6k2*acc109(31)
      acc109(28)=-acc109(18)*acc109(28)
      acc109(32)=acc109(21)*Qspval6l5
      acc109(33)=acc109(19)*Qspvak4l5
      acc109(34)=acc109(11)*Qspvak1l5
      acc109(35)=-acc109(5)*Qspval5k2
      acc109(35)=acc109(12)+acc109(35)
      acc109(35)=Qspvak1k7*acc109(35)
      acc109(36)=-acc109(10)*Qspval5k2
      acc109(36)=acc109(16)+acc109(36)
      acc109(36)=Qspvak4k7*acc109(36)
      acc109(37)=Qspval5k7*acc109(6)
      acc109(38)=Qspval6k7*acc109(20)
      acc109(39)=Qspe7*acc109(9)
      acc109(40)=Qspvae7k2*acc109(7)
      brack=acc109(1)+acc109(28)+acc109(29)+acc109(30)+acc109(31)+acc109(32)+ac&
      &c109(33)+acc109(34)+acc109(35)+acc109(36)+acc109(37)+acc109(38)+acc109(3&
      &9)+acc109(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram109_sign, shift => diagram109_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd109h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d109
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d109 = 0.0_ki
      d109 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d109, ki), aimag(d109), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd109h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d109
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d109 = 0.0_ki
      d109 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d109, ki), aimag(d109), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d109h0l1
