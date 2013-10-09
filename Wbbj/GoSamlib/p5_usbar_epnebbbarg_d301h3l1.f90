module     p5_usbar_epnebbbarg_d301h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d301h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd301h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc301(45)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
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
      acc301(23)=abb301(28)
      acc301(24)=abb301(29)
      acc301(25)=abb301(30)
      acc301(26)=abb301(31)
      acc301(27)=abb301(32)
      acc301(28)=abb301(33)
      acc301(29)=abb301(34)
      acc301(30)=abb301(35)
      acc301(31)=abb301(36)
      acc301(32)=abb301(37)
      acc301(33)=abb301(38)
      acc301(34)=abb301(46)
      acc301(35)=acc301(1)*Qspvak4k1
      acc301(36)=acc301(5)*Qspvak4k3
      acc301(37)=acc301(20)*Qspvak2l6
      acc301(38)=acc301(25)*Qspvak2k1
      acc301(39)=acc301(27)*Qspvak2k3
      acc301(35)=acc301(36)+acc301(35)+acc301(39)+acc301(38)+acc301(22)+acc301(&
      &37)
      acc301(35)=Qspe7*acc301(35)
      acc301(36)=acc301(11)*Qspvak2e7
      acc301(37)=Qspvak2l5*Qspe7
      acc301(38)=-acc301(12)*acc301(37)
      acc301(39)=acc301(18)*Qspe7
      acc301(40)=-acc301(24)*Qspk2
      acc301(41)=-acc301(26)*Qspvak2k7
      acc301(36)=acc301(40)+acc301(39)+acc301(38)+acc301(41)-acc301(19)+acc301(&
      &36)
      acc301(38)=-Qspk4+Qspk1-Qspk3
      acc301(36)=acc301(38)*acc301(36)
      acc301(38)=acc301(9)*Qspvak2e7
      acc301(39)=acc301(13)*acc301(37)
      acc301(40)=acc301(30)*Qspvak2k7
      acc301(41)=acc301(32)*Qspk2
      acc301(38)=acc301(41)+acc301(40)+acc301(39)+acc301(38)+acc301(6)
      acc301(38)=Qspvak4k3*acc301(38)
      acc301(39)=acc301(3)*Qspvak2e7
      acc301(40)=acc301(8)*Qspvak2k7
      acc301(41)=acc301(14)*acc301(37)
      acc301(42)=acc301(23)*Qspk2
      acc301(39)=acc301(42)+acc301(17)+acc301(41)+acc301(40)+acc301(39)
      acc301(39)=Qspvak4k1*acc301(39)
      acc301(40)=-acc301(28)*Qspvak2k1
      acc301(41)=acc301(29)*Qspvak2k3
      acc301(40)=-acc301(34)+acc301(41)+acc301(40)
      acc301(41)=Qspk7-Qspk2
      acc301(40)=acc301(41)*acc301(40)
      acc301(41)=acc301(31)*Qspvak2k1
      acc301(42)=acc301(33)*Qspvak2k3
      acc301(41)=acc301(42)+acc301(41)+acc301(21)
      acc301(41)=QspQ*acc301(41)
      acc301(42)=acc301(2)*Qspvak2l6
      acc301(43)=acc301(4)*Qspvak2l5
      acc301(37)=acc301(7)*acc301(37)
      acc301(44)=acc301(10)*Qspvak2k1
      acc301(45)=acc301(16)*Qspvak2k3
      brack=acc301(15)+acc301(35)+acc301(36)+acc301(37)+acc301(38)+acc301(39)+a&
      &cc301(40)+acc301(41)+acc301(42)+acc301(43)+acc301(44)+acc301(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram301_sign, shift => diagram301_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd301h3
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
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd301h3
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
end module p5_usbar_epnebbbarg_d301h3l1
