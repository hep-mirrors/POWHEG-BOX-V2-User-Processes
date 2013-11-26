module     p1_dbarc_epnebbbarg_d123h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d123h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd123h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc123(43)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      acc123(1)=abb123(6)
      acc123(2)=abb123(7)
      acc123(3)=abb123(8)
      acc123(4)=abb123(9)
      acc123(5)=abb123(10)
      acc123(6)=abb123(11)
      acc123(7)=abb123(12)
      acc123(8)=abb123(13)
      acc123(9)=abb123(14)
      acc123(10)=abb123(15)
      acc123(11)=abb123(16)
      acc123(12)=abb123(17)
      acc123(13)=abb123(18)
      acc123(14)=abb123(19)
      acc123(15)=abb123(20)
      acc123(16)=abb123(21)
      acc123(17)=abb123(22)
      acc123(18)=abb123(23)
      acc123(19)=abb123(24)
      acc123(20)=abb123(25)
      acc123(21)=abb123(26)
      acc123(22)=abb123(27)
      acc123(23)=abb123(28)
      acc123(24)=abb123(29)
      acc123(25)=abb123(32)
      acc123(26)=abb123(34)
      acc123(27)=abb123(37)
      acc123(28)=abb123(40)
      acc123(29)=abb123(41)
      acc123(30)=abb123(46)
      acc123(31)=abb123(56)
      acc123(32)=Qspvak1k2*acc123(24)
      acc123(33)=Qspval5k2*acc123(21)
      acc123(34)=Qspval6k2*acc123(20)
      acc123(32)=acc123(34)+acc123(33)+acc123(22)+acc123(32)
      acc123(32)=Qspvak4k3*acc123(32)
      acc123(33)=acc123(13)*Qspvak1k3
      acc123(34)=acc123(4)*Qspval5k3
      acc123(35)=acc123(2)*Qspval6k3
      acc123(36)=Qspvak1k2*acc123(12)
      acc123(37)=Qspval5k2*acc123(14)
      acc123(38)=Qspval6k2*acc123(3)
      acc123(39)=Qspk4+Qspk3
      acc123(40)=-acc123(29)*acc123(39)
      acc123(41)=Qspvak4k2*acc123(10)
      acc123(42)=QspQ*acc123(28)
      acc123(43)=Qspk2*acc123(31)
      acc123(32)=acc123(32)+acc123(43)+acc123(42)+acc123(41)+acc123(40)+acc123(&
      &38)+acc123(37)+acc123(36)+acc123(35)+acc123(34)+acc123(26)+acc123(33)
      acc123(32)=Qspe7*acc123(32)
      acc123(33)=Qspk7*acc123(23)
      acc123(34)=Qspvak7k2*acc123(7)
      acc123(35)=QspQ*acc123(17)
      acc123(36)=Qspk2*acc123(25)
      acc123(37)=Qspvae7k2*acc123(5)
      acc123(33)=acc123(37)+acc123(36)+acc123(35)+acc123(34)+acc123(15)+acc123(&
      &33)
      acc123(33)=Qspvak4k3*acc123(33)
      acc123(34)=Qspk2-acc123(39)
      acc123(34)=acc123(19)*acc123(34)
      acc123(35)=QspQ*acc123(16)
      acc123(34)=acc123(35)+acc123(8)+acc123(34)
      acc123(34)=Qspvae7k2*acc123(34)
      acc123(35)=Qspk7*acc123(27)
      acc123(36)=Qspvak7k2*acc123(1)
      acc123(37)=Qspvak4k2*acc123(30)
      acc123(37)=acc123(6)+acc123(37)
      acc123(37)=QspQ*acc123(37)
      acc123(38)=Qspvak4k2*acc123(11)
      acc123(38)=acc123(9)+acc123(38)
      acc123(38)=Qspk2*acc123(38)
      brack=acc123(18)+acc123(32)+acc123(33)+acc123(34)+acc123(35)+acc123(36)+a&
      &cc123(37)+acc123(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram123_sign, shift => diagram123_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd123h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd123h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d123
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d123 = 0.0_ki
      d123 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d123, ki), aimag(d123), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d123h0l1
