module     p1_dbarc_epnebbbarg_d107h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d107h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd107h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc107(44)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      QspQ = dotproduct(Q,Q)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc107(1)=abb107(9)
      acc107(2)=abb107(10)
      acc107(3)=abb107(11)
      acc107(4)=abb107(12)
      acc107(5)=abb107(13)
      acc107(6)=abb107(14)
      acc107(7)=abb107(15)
      acc107(8)=abb107(16)
      acc107(9)=abb107(17)
      acc107(10)=abb107(18)
      acc107(11)=abb107(19)
      acc107(12)=abb107(20)
      acc107(13)=abb107(22)
      acc107(14)=abb107(23)
      acc107(15)=abb107(24)
      acc107(16)=abb107(27)
      acc107(17)=abb107(28)
      acc107(18)=abb107(29)
      acc107(19)=abb107(30)
      acc107(20)=abb107(33)
      acc107(21)=abb107(38)
      acc107(22)=abb107(41)
      acc107(23)=abb107(46)
      acc107(24)=abb107(47)
      acc107(25)=abb107(52)
      acc107(26)=abb107(66)
      acc107(27)=abb107(69)
      acc107(28)=abb107(71)
      acc107(29)=Qspk4+Qspk3
      acc107(30)=acc107(15)*acc107(29)
      acc107(31)=acc107(6)*Qspvak2l6
      acc107(32)=Qspvak4l6*acc107(1)
      acc107(33)=Qspvak4k3*acc107(3)
      acc107(34)=Qspk2*acc107(18)
      acc107(35)=Qspvak4k2*acc107(12)
      acc107(30)=acc107(35)+acc107(34)+acc107(33)+acc107(32)+acc107(2)+acc107(3&
      &1)+acc107(30)
      acc107(30)=Qspvak4k2*acc107(30)
      acc107(31)=acc107(10)*Qspvak3k2
      acc107(32)=-acc107(6)*Qspvak3l6
      acc107(33)=Qspvak4l6*acc107(11)
      acc107(31)=acc107(33)+acc107(32)+acc107(14)+acc107(31)
      acc107(31)=Qspvak4k3*acc107(31)
      acc107(32)=Qspvak4l6*acc107(25)
      acc107(33)=Qspk2-acc107(29)
      acc107(33)=acc107(19)*acc107(33)
      acc107(34)=Qspvak4k3*acc107(21)
      acc107(33)=acc107(34)-acc107(32)+acc107(16)+acc107(33)
      acc107(33)=Qspk2*acc107(33)
      acc107(32)=acc107(32)-acc107(8)
      acc107(29)=acc107(29)*acc107(32)
      acc107(32)=acc107(28)*Qspval5l6
      acc107(34)=acc107(27)*Qspvak7l6
      acc107(35)=acc107(26)*QspQ
      acc107(36)=acc107(24)*Qspval5k3
      acc107(37)=acc107(23)*Qspvak7k3
      acc107(38)=acc107(22)*Qspvak7k2
      acc107(39)=acc107(20)*Qspval5k2
      acc107(40)=acc107(13)*Qspvak1k3
      acc107(41)=acc107(7)*Qspvak1k2
      acc107(42)=acc107(5)*Qspvak1l6
      acc107(43)=acc107(4)*Qspvak2k3
      acc107(44)=Qspvak2l6*acc107(17)
      brack=acc107(9)+acc107(29)+acc107(30)+acc107(31)+acc107(32)+acc107(33)+ac&
      &c107(34)+acc107(35)+acc107(36)+acc107(37)+acc107(38)+acc107(39)+acc107(4&
      &0)+acc107(41)+acc107(42)+acc107(43)+acc107(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram107_sign, shift => diagram107_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd107h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d107
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d107 = 0.0_ki
      d107 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d107, ki), aimag(d107), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd107h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d107
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d107 = 0.0_ki
      d107 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d107, ki), aimag(d107), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d107h2l1
