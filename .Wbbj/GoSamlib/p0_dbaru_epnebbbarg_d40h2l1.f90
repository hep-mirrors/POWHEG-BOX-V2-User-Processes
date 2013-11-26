module     p0_dbaru_epnebbbarg_d40h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d40h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd40h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc40(37)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      QspQ = dotproduct(Q,Q)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc40(1)=abb40(10)
      acc40(2)=abb40(11)
      acc40(3)=abb40(12)
      acc40(4)=abb40(13)
      acc40(5)=abb40(14)
      acc40(6)=abb40(15)
      acc40(7)=abb40(16)
      acc40(8)=abb40(17)
      acc40(9)=abb40(18)
      acc40(10)=abb40(20)
      acc40(11)=abb40(21)
      acc40(12)=abb40(24)
      acc40(13)=abb40(28)
      acc40(14)=abb40(29)
      acc40(15)=abb40(30)
      acc40(16)=abb40(32)
      acc40(17)=abb40(34)
      acc40(18)=abb40(42)
      acc40(19)=abb40(47)
      acc40(20)=abb40(49)
      acc40(21)=abb40(50)
      acc40(22)=abb40(52)
      acc40(23)=abb40(58)
      acc40(24)=abb40(79)
      acc40(25)=Qspk2-Qspk7
      acc40(25)=acc40(23)*acc40(25)
      acc40(26)=Qspvak1k7*acc40(4)
      acc40(27)=Qspvak4k7*acc40(15)
      acc40(28)=Qspe7*acc40(21)
      acc40(29)=Qspvae7k2*acc40(5)
      acc40(30)=Qspval5l6*acc40(17)
      acc40(25)=acc40(30)+acc40(29)+acc40(28)+acc40(27)+acc40(9)+acc40(26)+acc4&
      &0(25)
      acc40(25)=Qspk2*acc40(25)
      acc40(26)=Qspvak1k7*acc40(1)
      acc40(27)=Qspvak4k7*acc40(8)
      acc40(28)=-Qspk7*acc40(17)
      acc40(29)=Qspe7*acc40(18)
      acc40(30)=Qspvae7k2*acc40(7)
      acc40(26)=acc40(30)+acc40(29)+acc40(28)+acc40(27)+acc40(6)+acc40(26)
      acc40(26)=Qspval5l6*acc40(26)
      acc40(27)=acc40(16)*Qspvak4l6
      acc40(28)=acc40(14)*Qspvak4k2
      acc40(29)=acc40(13)*Qspvak4l5
      acc40(30)=acc40(12)*QspQ
      acc40(31)=acc40(11)*Qspvak1l5
      acc40(32)=acc40(10)*Qspvak1l6
      acc40(33)=acc40(3)*Qspvak1k2
      acc40(34)=Qspl5+Qspl6
      acc40(34)=acc40(19)*acc40(34)
      acc40(35)=Qspk7*acc40(24)
      acc40(36)=Qspe7*acc40(20)
      acc40(37)=Qspvae7k2*acc40(2)
      brack=acc40(22)+acc40(25)+acc40(26)+acc40(27)+acc40(28)+acc40(29)+acc40(3&
      &0)+acc40(31)+acc40(32)+acc40(33)+acc40(34)+acc40(35)+acc40(36)+acc40(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram40_sign, shift => diagram40_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd40h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d40
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d40 = 0.0_ki
      d40 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d40, ki), aimag(d40), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd40h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d40
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d40 = 0.0_ki
      d40 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d40, ki), aimag(d40), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d40h2l1
