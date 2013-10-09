module     p5_usbar_epnebbbarg_d92h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d92h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd92h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(29)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      acc92(1)=abb92(11)
      acc92(2)=abb92(12)
      acc92(3)=abb92(13)
      acc92(4)=abb92(14)
      acc92(5)=abb92(15)
      acc92(6)=abb92(16)
      acc92(7)=abb92(17)
      acc92(8)=abb92(24)
      acc92(9)=abb92(31)
      acc92(10)=abb92(33)
      acc92(11)=abb92(34)
      acc92(12)=abb92(40)
      acc92(13)=abb92(43)
      acc92(14)=abb92(57)
      acc92(15)=abb92(58)
      acc92(16)=abb92(68)
      acc92(17)=abb92(69)
      acc92(18)=abb92(71)
      acc92(19)=abb92(73)
      acc92(20)=Qspval6l5*acc92(17)
      acc92(21)=acc92(1)*Qspvak2l6
      acc92(22)=acc92(3)*Qspl5
      acc92(23)=acc92(7)*Qspvak1l5
      acc92(20)=acc92(23)+acc92(22)+acc92(2)+acc92(21)+acc92(20)
      acc92(20)=Qspvak2k1*acc92(20)
      acc92(21)=acc92(11)*Qspval5k1
      acc92(22)=acc92(16)*Qspk1
      acc92(23)=acc92(19)*Qspval6k1
      acc92(21)=acc92(23)+acc92(22)+acc92(21)
      acc92(21)=Qspvak2l6*acc92(21)
      acc92(22)=-acc92(17)*Qspval6k1
      acc92(23)=acc92(14)*Qspk1
      acc92(24)=acc92(18)*Qspval5k1
      acc92(22)=acc92(24)+acc92(23)+acc92(10)+acc92(22)
      acc92(22)=Qspvak2l5*acc92(22)
      acc92(23)=acc92(4)*Qspvak1l5
      acc92(24)=acc92(5)*Qspval5k1
      acc92(25)=acc92(6)*Qspl5
      acc92(26)=acc92(9)*Qspk1
      acc92(27)=acc92(12)*Qspval6l5
      acc92(28)=acc92(15)*Qspval6k1
      acc92(29)=Qspk2*acc92(8)
      brack=acc92(13)+acc92(20)+acc92(21)+acc92(22)+acc92(23)+acc92(24)+acc92(2&
      &5)+acc92(26)+acc92(27)+acc92(28)+acc92(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram92_sign, shift => diagram92_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd92h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd92h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d92h3l1
