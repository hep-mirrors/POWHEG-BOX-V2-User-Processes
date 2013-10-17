module     p1_dbarc_epnebbbarg_d301h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d301h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc301(31)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspl5
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspl5 = dotproduct(Q,l5)
      acc301(1)=abb301(6)
      acc301(2)=abb301(7)
      acc301(3)=abb301(8)
      acc301(4)=abb301(9)
      acc301(5)=abb301(10)
      acc301(6)=abb301(11)
      acc301(7)=abb301(12)
      acc301(8)=abb301(13)
      acc301(9)=abb301(14)
      acc301(10)=abb301(15)
      acc301(11)=abb301(16)
      acc301(12)=abb301(17)
      acc301(13)=abb301(18)
      acc301(14)=abb301(19)
      acc301(15)=abb301(20)
      acc301(16)=abb301(21)
      acc301(17)=abb301(22)
      acc301(18)=abb301(23)
      acc301(19)=abb301(24)
      acc301(20)=abb301(25)
      acc301(21)=abb301(26)
      acc301(22)=abb301(27)
      acc301(23)=Qspvak1k2*acc301(4)
      acc301(24)=Qspvak4k2*acc301(6)
      acc301(23)=acc301(24)+acc301(23)+acc301(1)
      acc301(23)=Qspe7*acc301(23)
      acc301(24)=Qspvak7k2*acc301(15)
      acc301(25)=Qspvae7k2*acc301(14)
      acc301(26)=Qspk2*acc301(8)
      acc301(23)=acc301(26)+acc301(25)+acc301(13)+acc301(24)+acc301(23)
      acc301(23)=Qspval5k2*acc301(23)
      acc301(24)=QspQ*acc301(7)
      acc301(25)=Qspval5k7*acc301(21)
      acc301(26)=Qspk2*acc301(22)
      acc301(24)=acc301(26)+acc301(25)+acc301(17)+acc301(24)
      acc301(24)=Qspvak1k2*acc301(24)
      acc301(25)=QspQ*acc301(9)
      acc301(26)=Qspval5k7*acc301(16)
      acc301(27)=Qspk2*acc301(20)
      acc301(25)=acc301(27)+acc301(26)+acc301(19)+acc301(25)
      acc301(25)=Qspvak4k2*acc301(25)
      acc301(26)=acc301(10)*Qspl5
      acc301(27)=Qspvak7k2*acc301(2)
      acc301(28)=Qspvae7k2*acc301(3)
      acc301(29)=QspQ*acc301(12)
      acc301(30)=Qspval5k7*acc301(5)
      acc301(31)=Qspk2*acc301(11)
      brack=acc301(18)+acc301(23)+acc301(24)+acc301(25)+acc301(26)+acc301(27)+a&
      &cc301(28)+acc301(29)+acc301(30)+acc301(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram301_sign, shift => diagram301_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd301h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd301h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d301h0l1