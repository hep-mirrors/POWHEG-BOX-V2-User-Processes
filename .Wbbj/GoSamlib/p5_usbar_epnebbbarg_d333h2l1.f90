module     p5_usbar_epnebbbarg_d333h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d333h2l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd333h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc333(33)
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
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
      acc333(16)=abb333(29)
      acc333(17)=abb333(30)
      acc333(18)=abb333(31)
      acc333(19)=abb333(32)
      acc333(20)=abb333(38)
      acc333(21)=abb333(39)
      acc333(22)=acc333(6)*Qspvak7l6
      acc333(23)=acc333(8)*Qspvak2k7
      acc333(24)=Qspvak4l6*acc333(17)
      acc333(25)=Qspvak2l6*acc333(4)
      acc333(26)=Qspvak2k3*acc333(5)
      acc333(27)=Qspvak2k1*acc333(12)
      acc333(28)=Qspl6*acc333(19)
      acc333(29)=Qspk2*acc333(20)
      acc333(22)=acc333(29)+acc333(28)+acc333(27)+acc333(26)+acc333(25)+acc333(&
      &24)+acc333(23)+acc333(7)+acc333(22)
      acc333(22)=Qspe7*acc333(22)
      acc333(23)=acc333(2)*Qspvak7l6
      acc333(24)=acc333(3)*Qspvak2k7
      acc333(25)=Qspvae7l6*acc333(18)
      acc333(26)=Qspvak2e7*acc333(16)
      acc333(27)=Qspvak7k3*acc333(1)
      acc333(28)=Qspvak7k2*acc333(9)
      acc333(29)=Qspvak7k1*acc333(11)
      acc333(30)=Qspval6k7*acc333(14)
      acc333(31)=Qspvak4k7*acc333(15)
      acc333(32)=Qspk7*acc333(10)
      acc333(33)=QspQ*acc333(21)
      brack=acc333(13)+acc333(22)+acc333(23)+acc333(24)+acc333(25)+acc333(26)+a&
      &cc333(27)+acc333(28)+acc333(29)+acc333(30)+acc333(31)+acc333(32)+acc333(&
      &33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram333_sign, shift => diagram333_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd333h2
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
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd333h2
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
end module p5_usbar_epnebbbarg_d333h2l1
