module     p1_dbarc_epnebbbarg_d100h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d100h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd100h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc100(43)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspval6e7
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      acc100(1)=abb100(9)
      acc100(2)=abb100(10)
      acc100(3)=abb100(11)
      acc100(4)=abb100(12)
      acc100(5)=abb100(13)
      acc100(6)=abb100(14)
      acc100(7)=abb100(15)
      acc100(8)=abb100(16)
      acc100(9)=abb100(17)
      acc100(10)=abb100(18)
      acc100(11)=abb100(19)
      acc100(12)=abb100(20)
      acc100(13)=abb100(21)
      acc100(14)=abb100(22)
      acc100(15)=abb100(24)
      acc100(16)=abb100(25)
      acc100(17)=abb100(26)
      acc100(18)=abb100(27)
      acc100(19)=abb100(28)
      acc100(20)=abb100(30)
      acc100(21)=abb100(31)
      acc100(22)=abb100(33)
      acc100(23)=abb100(34)
      acc100(24)=abb100(37)
      acc100(25)=abb100(41)
      acc100(26)=abb100(47)
      acc100(27)=abb100(48)
      acc100(28)=abb100(51)
      acc100(29)=Qspval6k2*acc100(9)
      acc100(30)=Qspvak7k2*acc100(19)
      acc100(31)=Qspk2*acc100(20)
      acc100(32)=Qspvak1k2*acc100(7)
      acc100(33)=Qspvak4k2*acc100(23)
      acc100(29)=acc100(33)+acc100(32)+acc100(31)+acc100(29)+acc100(30)
      acc100(29)=Qspvae7l6*acc100(29)
      acc100(30)=-Qspl6-Qspk7
      acc100(30)=acc100(26)*acc100(30)
      acc100(31)=Qspvak2e7*acc100(8)
      acc100(32)=Qspk2*acc100(5)
      acc100(30)=acc100(32)+acc100(31)+acc100(25)+acc100(30)
      acc100(30)=Qspvae7k2*acc100(30)
      acc100(31)=Qspvak7k2*acc100(28)
      acc100(32)=Qspk2*acc100(27)
      acc100(31)=acc100(31)+acc100(32)
      acc100(31)=Qspe7*acc100(31)
      acc100(32)=Qspvak2e7*acc100(12)
      acc100(33)=Qspe7*acc100(3)
      acc100(32)=acc100(33)+acc100(14)+acc100(32)
      acc100(32)=Qspvak1k2*acc100(32)
      acc100(33)=Qspvak2e7*acc100(18)
      acc100(34)=Qspe7*acc100(6)
      acc100(33)=acc100(34)+acc100(4)+acc100(33)
      acc100(33)=Qspvak4k2*acc100(33)
      acc100(34)=acc100(22)*Qspval6k7
      acc100(35)=acc100(16)*QspQ
      acc100(36)=acc100(13)*Qspvak7l6
      acc100(37)=acc100(11)*Qspvak7e7
      acc100(38)=acc100(1)*Qspval6e7
      acc100(39)=Qspl6*acc100(24)
      acc100(40)=Qspk7*acc100(17)
      acc100(41)=Qspval6k2*acc100(21)
      acc100(42)=Qspvak7k2*acc100(15)
      acc100(43)=Qspk2*acc100(2)
      brack=acc100(10)+acc100(29)+acc100(30)+acc100(31)+acc100(32)+acc100(33)+a&
      &cc100(34)+acc100(35)+acc100(36)+acc100(37)+acc100(38)+acc100(39)+acc100(&
      &40)+acc100(41)+acc100(42)+acc100(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram100_sign, shift => diagram100_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd100h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd100h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d100h2l1
