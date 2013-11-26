module     p1_dbarc_epnebbbarg_d227h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d227h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd227h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc227(34)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k7
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc227(1)=abb227(9)
      acc227(2)=abb227(10)
      acc227(3)=abb227(11)
      acc227(4)=abb227(12)
      acc227(5)=abb227(13)
      acc227(6)=abb227(14)
      acc227(7)=abb227(15)
      acc227(8)=abb227(16)
      acc227(9)=abb227(25)
      acc227(10)=abb227(28)
      acc227(11)=abb227(40)
      acc227(12)=abb227(51)
      acc227(13)=abb227(55)
      acc227(14)=abb227(58)
      acc227(15)=abb227(64)
      acc227(16)=abb227(69)
      acc227(17)=abb227(73)
      acc227(18)=abb227(86)
      acc227(19)=abb227(98)
      acc227(20)=abb227(99)
      acc227(21)=abb227(105)
      acc227(22)=abb227(110)
      acc227(23)=acc227(22)*Qspval5k2
      acc227(24)=acc227(21)*Qspval5k3
      acc227(25)=acc227(20)*Qspval6k3
      acc227(26)=acc227(19)*Qspval6k2
      acc227(27)=acc227(8)*Qspvak1k2
      acc227(28)=acc227(7)*Qspvak1k3
      acc227(29)=acc227(5)*Qspvak2k3
      acc227(30)=Qspk2*acc227(17)
      acc227(31)=Qspvak4k2*acc227(2)
      acc227(32)=Qspvak4k3*acc227(10)
      acc227(33)=Qspk4+Qspk3
      acc227(34)=acc227(18)*acc227(33)
      acc227(23)=acc227(34)+acc227(32)+acc227(31)+acc227(30)+acc227(29)+acc227(&
      &28)+acc227(27)+acc227(14)+acc227(26)+acc227(25)+acc227(23)+acc227(24)
      acc227(23)=Qspe7*acc227(23)
      acc227(24)=acc227(16)*Qspk7
      acc227(25)=acc227(13)*Qspval6k7
      acc227(26)=acc227(12)*Qspval5k7
      acc227(27)=acc227(9)*QspQ
      acc227(28)=acc227(6)*Qspvak1k7
      acc227(29)=acc227(4)*Qspvak2k7
      acc227(30)=Qspvak4k2*acc227(3)
      acc227(31)=Qspvak4k3*acc227(1)
      acc227(32)=Qspk2-acc227(33)
      acc227(32)=acc227(15)*acc227(32)
      brack=acc227(11)+acc227(23)+acc227(24)+acc227(25)+acc227(26)+acc227(27)+a&
      &cc227(28)+acc227(29)+acc227(30)+acc227(31)+acc227(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram227_sign, shift => diagram227_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd227h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d227
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d227 = 0.0_ki
      d227 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d227, ki), aimag(d227), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd227h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d227
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d227 = 0.0_ki
      d227 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d227, ki), aimag(d227), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d227h2l1
