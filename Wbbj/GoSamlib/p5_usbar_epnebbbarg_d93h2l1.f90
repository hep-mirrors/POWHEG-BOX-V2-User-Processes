module     p5_usbar_epnebbbarg_d93h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d93h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd93h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc93(25)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      acc93(1)=abb93(11)
      acc93(2)=abb93(12)
      acc93(3)=abb93(13)
      acc93(4)=abb93(14)
      acc93(5)=abb93(20)
      acc93(6)=abb93(21)
      acc93(7)=abb93(22)
      acc93(8)=abb93(23)
      acc93(9)=abb93(26)
      acc93(10)=abb93(27)
      acc93(11)=abb93(33)
      acc93(12)=abb93(39)
      acc93(13)=abb93(42)
      acc93(14)=abb93(43)
      acc93(15)=abb93(53)
      acc93(16)=acc93(3)*Qspvak2k1
      acc93(17)=acc93(7)*Qspk1
      acc93(18)=acc93(10)*Qspval6k1
      acc93(19)=acc93(14)*Qspval5k1
      acc93(16)=acc93(15)+acc93(19)+acc93(18)+acc93(17)+acc93(16)
      acc93(16)=Qspk2*acc93(16)
      acc93(17)=acc93(2)*Qspvak2k1
      acc93(18)=acc93(5)*Qspk1
      acc93(19)=acc93(9)*Qspval6k1
      acc93(20)=acc93(12)*Qspval5k1
      acc93(21)=Qspval5l6*acc93(11)
      acc93(22)=Qspvak2l6*acc93(1)
      acc93(23)=Qspvak1l6*acc93(4)
      acc93(24)=Qspl6*acc93(13)
      acc93(25)=QspQ*acc93(8)
      brack=acc93(6)+acc93(16)+acc93(17)+acc93(18)+acc93(19)+acc93(20)+acc93(21&
      &)+acc93(22)+acc93(23)+acc93(24)+acc93(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram93_sign, shift => diagram93_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd93h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d93
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d93 = 0.0_ki
      d93 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d93, ki), aimag(d93), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd93h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d93
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d93 = 0.0_ki
      d93 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d93, ki), aimag(d93), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d93h2l1
