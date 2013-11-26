module     p0_dbaru_epnebbbarg_d302h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d302h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd302h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc302(21)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspl6 = dotproduct(Q,l6)
      acc302(1)=abb302(6)
      acc302(2)=abb302(7)
      acc302(3)=abb302(8)
      acc302(4)=abb302(9)
      acc302(5)=abb302(10)
      acc302(6)=abb302(11)
      acc302(7)=abb302(12)
      acc302(8)=abb302(13)
      acc302(9)=abb302(14)
      acc302(10)=abb302(16)
      acc302(11)=abb302(20)
      acc302(12)=abb302(22)
      acc302(13)=abb302(23)
      acc302(14)=abb302(24)
      acc302(15)=abb302(25)
      acc302(16)=acc302(1)*Qspvak1k2
      acc302(17)=acc302(4)*Qspvak4k2
      acc302(16)=acc302(17)+acc302(16)+acc302(2)
      acc302(16)=acc302(16)*Qspe7
      acc302(16)=acc302(3)+acc302(16)
      acc302(16)=Qspval6k2*acc302(16)
      acc302(17)=acc302(7)*Qspvak4k2
      acc302(18)=acc302(8)*Qspvak1k2
      acc302(17)=acc302(18)+acc302(17)
      acc302(17)=Qspval6e7*acc302(17)
      acc302(18)=acc302(6)*Qspval6k2
      acc302(19)=acc302(15)*Qspvae7k2
      acc302(18)=acc302(19)+acc302(11)+acc302(18)
      acc302(18)=Qspk2*acc302(18)
      acc302(19)=acc302(5)*Qspval6k2
      acc302(20)=acc302(13)*Qspvae7k2
      acc302(19)=acc302(14)+acc302(20)+acc302(19)
      acc302(19)=QspQ*acc302(19)
      acc302(20)=Qspval6k7*acc302(9)
      acc302(21)=Qspl6*acc302(12)
      brack=acc302(10)+acc302(16)+acc302(17)+acc302(18)+acc302(19)+acc302(20)+a&
      &cc302(21)
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
      use p0_dbaru_epnebbbarg_abbrevd302h0
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
      use p0_dbaru_epnebbbarg_abbrevd302h0
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
end module p0_dbaru_epnebbbarg_d302h0l1
