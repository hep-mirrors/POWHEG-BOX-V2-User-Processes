module     p1_dbarc_epnebbbarg_d16h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d16h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc16(22)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      acc16(1)=abb16(6)
      acc16(2)=abb16(7)
      acc16(3)=abb16(8)
      acc16(4)=abb16(9)
      acc16(5)=abb16(10)
      acc16(6)=abb16(11)
      acc16(7)=abb16(12)
      acc16(8)=abb16(14)
      acc16(9)=abb16(15)
      acc16(10)=abb16(16)
      acc16(11)=abb16(17)
      acc16(12)=abb16(22)
      acc16(13)=abb16(23)
      acc16(14)=abb16(25)
      acc16(15)=abb16(26)
      acc16(16)=abb16(28)
      acc16(17)=abb16(29)
      acc16(18)=Qspvak1k2*acc16(6)
      acc16(19)=Qspvak7k2*acc16(5)
      acc16(18)=acc16(19)+acc16(1)+acc16(18)
      acc16(18)=Qspvak4k3*acc16(18)
      acc16(19)=Qspvak1k3*acc16(7)
      acc16(20)=Qspvak7k3*acc16(15)
      acc16(21)=QspQ*acc16(13)
      acc16(18)=acc16(18)+acc16(21)+acc16(20)+acc16(4)+acc16(19)
      acc16(18)=Qspval5k2*acc16(18)
      acc16(19)=Qspvak1k2*acc16(8)
      acc16(20)=Qspvak7k2*acc16(17)
      acc16(19)=acc16(20)+acc16(2)+acc16(19)
      acc16(19)=Qspvak4k3*acc16(19)
      acc16(20)=Qspvak1k3*acc16(10)
      acc16(21)=Qspvak7k3*acc16(16)
      acc16(22)=QspQ*acc16(14)
      acc16(19)=acc16(19)+acc16(22)+acc16(21)+acc16(12)+acc16(20)
      acc16(19)=Qspval6k2*acc16(19)
      acc16(20)=-Qspl5-Qspl6
      acc16(20)=acc16(11)*acc16(20)
      acc16(21)=acc16(3)*Qspvak4k2
      acc16(21)=acc16(9)+acc16(21)
      acc16(21)=QspQ*acc16(21)
      brack=acc16(18)+acc16(19)+acc16(20)+acc16(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram16_sign, shift => diagram16_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd16h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d16
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d16 = 0.0_ki
      d16 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d16, ki), aimag(d16), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd16h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d16
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d16 = 0.0_ki
      d16 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d16, ki), aimag(d16), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d16h0l1
