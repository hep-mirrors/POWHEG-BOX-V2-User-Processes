module     p0_dbaru_epnebbbarg_d110h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d110h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc110(34)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      acc110(1)=abb110(9)
      acc110(2)=abb110(10)
      acc110(3)=abb110(11)
      acc110(4)=abb110(12)
      acc110(5)=abb110(13)
      acc110(6)=abb110(14)
      acc110(7)=abb110(15)
      acc110(8)=abb110(16)
      acc110(9)=abb110(19)
      acc110(10)=abb110(20)
      acc110(11)=abb110(25)
      acc110(12)=abb110(26)
      acc110(13)=abb110(29)
      acc110(14)=abb110(31)
      acc110(15)=abb110(34)
      acc110(16)=abb110(38)
      acc110(17)=abb110(41)
      acc110(18)=abb110(44)
      acc110(19)=abb110(45)
      acc110(20)=abb110(46)
      acc110(21)=abb110(48)
      acc110(22)=abb110(51)
      acc110(23)=acc110(2)*Qspvak2l5
      acc110(24)=acc110(7)*Qspvak2l6
      acc110(25)=acc110(9)*Qspvak7l5
      acc110(26)=acc110(13)*Qspvak7l6
      acc110(23)=acc110(26)+acc110(25)+acc110(8)+acc110(24)+acc110(23)
      acc110(23)=Qspvae7k2*acc110(23)
      acc110(24)=acc110(1)*Qspvak2l5
      acc110(25)=-Qspvae7l6*acc110(21)
      acc110(26)=-Qspvae7l5*acc110(22)
      acc110(24)=acc110(24)+acc110(26)+acc110(25)
      acc110(25)=Qspk2-Qspk7
      acc110(24)=acc110(25)*acc110(24)
      acc110(25)=acc110(3)*Qspvak2l5
      acc110(26)=acc110(11)*Qspvak7l5
      acc110(27)=acc110(15)*Qspvak7l6
      acc110(25)=acc110(27)+acc110(12)+acc110(26)+acc110(25)
      acc110(25)=Qspe7*acc110(25)
      acc110(26)=acc110(6)*Qspvak2l6
      acc110(27)=acc110(19)*Qspk2
      acc110(28)=acc110(20)*Qspk7
      acc110(29)=Qspval6k7*acc110(16)
      acc110(30)=Qspvak4l6*acc110(14)
      acc110(31)=Qspvak2k7*acc110(4)
      acc110(32)=Qspvak1l6*acc110(5)
      acc110(33)=Qspl6*acc110(18)
      acc110(34)=QspQ*acc110(17)
      brack=acc110(10)+acc110(23)+acc110(24)+acc110(25)+acc110(26)+acc110(27)+a&
      &cc110(28)+acc110(29)+acc110(30)+acc110(31)+acc110(32)+acc110(33)+acc110(&
      &34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram110_sign, shift => diagram110_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d110
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d110 = 0.0_ki
      d110 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d110, ki), aimag(d110), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d110
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d110 = 0.0_ki
      d110 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d110, ki), aimag(d110), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d110h3l1
