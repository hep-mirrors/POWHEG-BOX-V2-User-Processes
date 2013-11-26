module     p0_dbaru_epnebbbarg_d302h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d302h2l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd302h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc302(37)
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2e7
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl6 = dotproduct(Q,l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc302(1)=abb302(8)
      acc302(2)=abb302(9)
      acc302(3)=abb302(10)
      acc302(4)=abb302(11)
      acc302(5)=abb302(13)
      acc302(6)=abb302(14)
      acc302(7)=abb302(15)
      acc302(8)=abb302(16)
      acc302(9)=abb302(17)
      acc302(10)=abb302(18)
      acc302(11)=abb302(19)
      acc302(12)=abb302(20)
      acc302(13)=abb302(21)
      acc302(14)=abb302(22)
      acc302(15)=abb302(23)
      acc302(16)=abb302(24)
      acc302(17)=abb302(29)
      acc302(18)=abb302(30)
      acc302(19)=abb302(31)
      acc302(20)=abb302(32)
      acc302(21)=abb302(34)
      acc302(22)=abb302(37)
      acc302(23)=abb302(38)
      acc302(24)=abb302(39)
      acc302(25)=abb302(40)
      acc302(26)=abb302(43)
      acc302(27)=Qspvae7k2*acc302(24)
      acc302(28)=Qspvae7l6*acc302(12)
      acc302(29)=QspQ*acc302(6)
      acc302(30)=Qspk2*acc302(26)
      acc302(27)=acc302(30)+acc302(29)+acc302(28)+acc302(15)+acc302(27)
      acc302(27)=Qspk2*acc302(27)
      acc302(28)=Qspvak1k2*acc302(2)
      acc302(29)=Qspvak4k2*acc302(16)
      acc302(28)=acc302(29)+acc302(11)+acc302(28)
      acc302(28)=Qspk2*acc302(28)
      acc302(29)=QspQ-Qspl6
      acc302(29)=acc302(23)*acc302(29)
      acc302(30)=Qspvak1k2*acc302(14)
      acc302(31)=Qspvak4k2*acc302(21)
      acc302(28)=acc302(28)+acc302(31)+acc302(30)+acc302(19)+acc302(29)
      acc302(28)=Qspe7*acc302(28)
      acc302(29)=Qspvae7k2*acc302(22)
      acc302(30)=Qspvae7l6*acc302(7)
      acc302(29)=acc302(30)+acc302(1)+acc302(29)
      acc302(29)=QspQ*acc302(29)
      acc302(30)=acc302(17)*Qspvak4l6
      acc302(31)=acc302(13)*Qspval6k2
      acc302(32)=acc302(9)*Qspvak1l6
      acc302(33)=acc302(5)*Qspvak2k7
      acc302(34)=acc302(4)*Qspvak2l6
      acc302(35)=Qspl6*acc302(20)
      acc302(36)=Qspvak2e7*acc302(3)
      acc302(36)=acc302(10)+acc302(36)
      acc302(36)=Qspvak1k2*acc302(36)
      acc302(37)=Qspvak2e7*acc302(25)
      acc302(37)=acc302(18)+acc302(37)
      acc302(37)=Qspvak4k2*acc302(37)
      brack=acc302(8)+acc302(27)+acc302(28)+acc302(29)+acc302(30)+acc302(31)+ac&
      &c302(32)+acc302(33)+acc302(34)+acc302(35)+acc302(36)+acc302(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram302_sign, shift => diagram302_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd302h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d302
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d302 = 0.0_ki
      d302 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d302, ki), aimag(d302), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd302h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d302
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d302 = 0.0_ki
      d302 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d302, ki), aimag(d302), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d302h2l1
