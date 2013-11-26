module     p1_dbarc_epnebbbarg_d223h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d223h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd223h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc223(29)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspe7 = dotproduct(Q,e7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc223(1)=abb223(9)
      acc223(2)=abb223(10)
      acc223(3)=abb223(11)
      acc223(4)=abb223(12)
      acc223(5)=abb223(13)
      acc223(6)=abb223(14)
      acc223(7)=abb223(15)
      acc223(8)=abb223(16)
      acc223(9)=abb223(17)
      acc223(10)=abb223(18)
      acc223(11)=abb223(19)
      acc223(12)=abb223(20)
      acc223(13)=abb223(21)
      acc223(14)=abb223(23)
      acc223(15)=abb223(25)
      acc223(16)=abb223(31)
      acc223(17)=abb223(33)
      acc223(18)=abb223(38)
      acc223(19)=abb223(41)
      acc223(20)=acc223(4)*Qspval5k2
      acc223(21)=acc223(15)*Qspval5l6
      acc223(22)=acc223(16)*Qspk2
      acc223(23)=Qspvak4l6*acc223(8)
      acc223(24)=Qspvak4k2*acc223(9)
      acc223(25)=Qspvak1l6*acc223(6)
      acc223(26)=Qspvak1k2*acc223(13)
      acc223(20)=acc223(26)+acc223(25)+acc223(24)+acc223(23)+acc223(22)+acc223(&
      &21)+acc223(10)+acc223(20)
      acc223(20)=Qspe7*acc223(20)
      acc223(21)=Qspl6+Qspl5
      acc223(22)=acc223(19)*Qspe7
      acc223(22)=acc223(22)+acc223(17)
      acc223(21)=acc223(22)*acc223(21)
      acc223(22)=Qspk1-Qspk3-Qspk4
      acc223(22)=acc223(18)*acc223(22)
      acc223(23)=acc223(2)*Qspval5l6
      acc223(24)=acc223(3)*Qspval5k2
      acc223(25)=acc223(5)*Qspk2
      acc223(26)=Qspvak4e7*acc223(7)
      acc223(27)=Qspvak1e7*acc223(12)
      acc223(28)=Qspk7*acc223(11)
      acc223(29)=QspQ*acc223(14)
      brack=acc223(1)+acc223(20)+acc223(21)+acc223(22)+acc223(23)+acc223(24)+ac&
      &c223(25)+acc223(26)+acc223(27)+acc223(28)+acc223(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram223_sign, shift => diagram223_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd223h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d223
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2+k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d223 = 0.0_ki
      d223 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d223, ki), aimag(d223), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd223h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d223
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2+k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d223 = 0.0_ki
      d223 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d223, ki), aimag(d223), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d223h2l1
