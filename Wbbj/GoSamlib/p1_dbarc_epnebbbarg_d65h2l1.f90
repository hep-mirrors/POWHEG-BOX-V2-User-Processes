module     p1_dbarc_epnebbbarg_d65h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d65h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd65h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(45)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      acc65(1)=abb65(11)
      acc65(2)=abb65(12)
      acc65(3)=abb65(13)
      acc65(4)=abb65(14)
      acc65(5)=abb65(15)
      acc65(6)=abb65(16)
      acc65(7)=abb65(17)
      acc65(8)=abb65(18)
      acc65(9)=abb65(19)
      acc65(10)=abb65(20)
      acc65(11)=abb65(21)
      acc65(12)=abb65(22)
      acc65(13)=abb65(23)
      acc65(14)=abb65(24)
      acc65(15)=abb65(25)
      acc65(16)=abb65(26)
      acc65(17)=abb65(27)
      acc65(18)=abb65(28)
      acc65(19)=abb65(29)
      acc65(20)=abb65(34)
      acc65(21)=abb65(59)
      acc65(22)=abb65(137)
      acc65(23)=abb65(159)
      acc65(24)=Qspk3+Qspk4
      acc65(24)=acc65(21)*acc65(24)
      acc65(25)=Qspvae7k2*acc65(3)
      acc65(26)=Qspval6l5*acc65(8)
      acc65(27)=Qspval6k2*acc65(10)
      acc65(28)=Qspval6k1*acc65(11)
      acc65(29)=Qspval5l6*acc65(12)
      acc65(30)=Qspval5k2*acc65(13)
      acc65(31)=Qspval5k1*acc65(14)
      acc65(32)=Qspvak4k3*acc65(4)
      acc65(33)=Qspvak4k2*acc65(2)
      acc65(34)=Qspvak2l6*acc65(15)
      acc65(35)=Qspvak2l5*acc65(16)
      acc65(36)=Qspvak2k1*acc65(9)
      acc65(37)=Qspvak1l6*acc65(17)
      acc65(38)=Qspvak1l5*acc65(18)
      acc65(39)=Qspvak1k2*acc65(19)
      acc65(40)=Qspe7*acc65(1)
      acc65(41)=Qspk7*acc65(20)
      acc65(42)=Qspl6*acc65(23)
      acc65(43)=Qspl5*acc65(22)
      acc65(44)=Qspk2*acc65(6)
      acc65(45)=Qspk1*acc65(7)
      brack=acc65(5)+acc65(24)+acc65(25)+acc65(26)+acc65(27)+acc65(28)+acc65(29&
      &)+acc65(30)+acc65(31)+acc65(32)+acc65(33)+acc65(34)+acc65(35)+acc65(36)+&
      &acc65(37)+acc65(38)+acc65(39)+acc65(40)+acc65(41)+acc65(42)+acc65(43)+ac&
      &c65(44)+acc65(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram65_sign, shift => diagram65_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd65h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd65h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d65h2l1
