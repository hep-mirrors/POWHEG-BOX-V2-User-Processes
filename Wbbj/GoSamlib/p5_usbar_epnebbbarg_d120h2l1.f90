module     p5_usbar_epnebbbarg_d120h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d120h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd120h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc120(21)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      acc120(1)=abb120(10)
      acc120(2)=abb120(11)
      acc120(3)=abb120(12)
      acc120(4)=abb120(13)
      acc120(5)=abb120(14)
      acc120(6)=abb120(15)
      acc120(7)=abb120(16)
      acc120(8)=abb120(20)
      acc120(9)=abb120(28)
      acc120(10)=abb120(29)
      acc120(11)=abb120(31)
      acc120(12)=abb120(34)
      acc120(13)=abb120(35)
      acc120(14)=abb120(41)
      acc120(15)=acc120(10)*Qspvak2l5
      acc120(16)=acc120(13)*Qspvak2e7
      acc120(17)=acc120(14)*Qspvak2k7
      acc120(15)=acc120(17)+acc120(16)+acc120(15)+acc120(2)
      acc120(15)=Qspvak4k1*acc120(15)
      acc120(16)=acc120(4)*Qspvak2e7
      acc120(17)=acc120(6)*Qspvak2k7
      acc120(18)=acc120(7)*Qspvak2l5
      acc120(16)=acc120(18)+acc120(17)+acc120(16)+acc120(3)
      acc120(16)=Qspvak2k1*acc120(16)
      acc120(17)=-QspQ-Qspl6
      acc120(17)=acc120(11)*acc120(17)
      acc120(18)=Qspvak4l6*acc120(5)
      acc120(19)=Qspvak2l6*acc120(8)
      acc120(20)=Qspk2*acc120(12)
      acc120(21)=Qspk1*acc120(1)
      brack=acc120(9)+acc120(15)+acc120(16)+acc120(17)+acc120(18)+acc120(19)+ac&
      &c120(20)+acc120(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram120_sign, shift => diagram120_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd120h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd120h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d120h2l1