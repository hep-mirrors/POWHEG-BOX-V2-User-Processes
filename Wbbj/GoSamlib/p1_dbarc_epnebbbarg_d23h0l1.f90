module     p1_dbarc_epnebbbarg_d23h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d23h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(39)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc23(1)=abb23(12)
      acc23(2)=abb23(13)
      acc23(3)=abb23(14)
      acc23(4)=abb23(15)
      acc23(5)=abb23(16)
      acc23(6)=abb23(17)
      acc23(7)=abb23(18)
      acc23(8)=abb23(20)
      acc23(9)=abb23(21)
      acc23(10)=abb23(23)
      acc23(11)=abb23(26)
      acc23(12)=abb23(29)
      acc23(13)=abb23(33)
      acc23(14)=abb23(34)
      acc23(15)=abb23(35)
      acc23(16)=abb23(39)
      acc23(17)=abb23(52)
      acc23(18)=abb23(56)
      acc23(19)=abb23(59)
      acc23(20)=abb23(60)
      acc23(21)=abb23(63)
      acc23(22)=abb23(71)
      acc23(23)=-Qspl5-Qspl6
      acc23(23)=acc23(23)*acc23(21)
      acc23(24)=acc23(5)*Qspvak1k3
      acc23(25)=Qspval6e7*acc23(18)
      acc23(26)=Qspval5e7*acc23(20)
      acc23(27)=Qspvae7k2*acc23(1)
      acc23(28)=Qspvak7k2*acc23(4)
      acc23(29)=Qspval6k7*acc23(12)
      acc23(30)=Qspval6l5*acc23(15)
      acc23(31)=Qspval6k2*acc23(6)
      acc23(32)=Qspval5k7*acc23(11)
      acc23(33)=Qspval5l6*acc23(7)
      acc23(34)=Qspval5k2*acc23(3)
      acc23(35)=Qspvak1k4*acc23(9)
      acc23(36)=Qspe7*acc23(10)
      acc23(37)=Qspk7*acc23(19)
      acc23(38)=Qspk2*acc23(13)
      acc23(39)=Qspk1*acc23(17)
      acc23(23)=acc23(23)+acc23(39)+acc23(38)+acc23(37)+acc23(36)+acc23(35)+acc&
      &23(34)+acc23(33)+acc23(32)+acc23(31)+acc23(30)+acc23(29)+acc23(28)+acc23&
      &(27)+acc23(26)+acc23(25)+acc23(24)+acc23(2)
      acc23(23)=Qspvak4k3*acc23(23)
      acc23(24)=-Qspk4-Qspk3
      acc23(25)=acc23(22)*Qspvak4k3
      acc23(25)=acc23(25)-acc23(14)
      acc23(24)=acc23(25)*acc23(24)
      acc23(25)=acc23(8)*Qspvak1k3
      acc23(26)=QspQ*acc23(16)
      brack=acc23(23)+acc23(24)+acc23(25)+acc23(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram23_sign, shift => diagram23_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd23h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd23h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d23h0l1