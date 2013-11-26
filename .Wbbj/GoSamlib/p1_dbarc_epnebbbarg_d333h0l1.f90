module     p1_dbarc_epnebbbarg_d333h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d333h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd333h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc333(30)
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc333(1)=abb333(11)
      acc333(2)=abb333(12)
      acc333(3)=abb333(13)
      acc333(4)=abb333(14)
      acc333(5)=abb333(15)
      acc333(6)=abb333(16)
      acc333(7)=abb333(17)
      acc333(8)=abb333(18)
      acc333(9)=abb333(19)
      acc333(10)=abb333(20)
      acc333(11)=abb333(21)
      acc333(12)=abb333(22)
      acc333(13)=abb333(25)
      acc333(14)=abb333(26)
      acc333(15)=abb333(27)
      acc333(16)=abb333(28)
      acc333(17)=abb333(30)
      acc333(18)=abb333(35)
      acc333(19)=abb333(36)
      acc333(20)=acc333(6)*Qspvak7k2
      acc333(21)=acc333(7)*Qspval6k7
      acc333(22)=Qspval6k3*acc333(11)
      acc333(23)=Qspval6k2*acc333(8)
      acc333(24)=Qspvak1k2*acc333(12)
      acc333(25)=Qspl6*acc333(13)
      acc333(26)=Qspk2*acc333(14)
      acc333(20)=acc333(26)+acc333(25)+acc333(24)+acc333(23)+acc333(22)+acc333(&
      &21)+acc333(20)+acc333(1)
      acc333(20)=Qspe7*acc333(20)
      acc333(21)=acc333(3)*Qspval6k7
      acc333(22)=acc333(4)*Qspvak7k2
      acc333(23)=Qspval6e7*acc333(16)
      acc333(24)=Qspvae7k2*acc333(17)
      acc333(25)=Qspvak7l6*acc333(19)
      acc333(26)=Qspvak7k3*acc333(18)
      acc333(27)=Qspvak2k7*acc333(5)
      acc333(28)=Qspvak1k7*acc333(10)
      acc333(29)=Qspk7*acc333(2)
      acc333(30)=QspQ*acc333(15)
      brack=acc333(9)+acc333(20)+acc333(21)+acc333(22)+acc333(23)+acc333(24)+ac&
      &c333(25)+acc333(26)+acc333(27)+acc333(28)+acc333(29)+acc333(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram333_sign, shift => diagram333_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd333h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d333
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d333 = 0.0_ki
      d333 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d333, ki), aimag(d333), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd333h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d333
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d333 = 0.0_ki
      d333 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d333, ki), aimag(d333), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d333h0l1
