module     p5_usbar_epnebbbarg_d72h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d72h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc72(33)
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak1l6
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc72(1)=abb72(8)
      acc72(2)=abb72(9)
      acc72(3)=abb72(10)
      acc72(4)=abb72(11)
      acc72(5)=abb72(12)
      acc72(6)=abb72(13)
      acc72(7)=abb72(14)
      acc72(8)=abb72(15)
      acc72(9)=abb72(16)
      acc72(10)=abb72(17)
      acc72(11)=abb72(18)
      acc72(12)=abb72(19)
      acc72(13)=abb72(20)
      acc72(14)=abb72(21)
      acc72(15)=abb72(22)
      acc72(16)=abb72(23)
      acc72(17)=abb72(24)
      acc72(18)=abb72(25)
      acc72(19)=abb72(26)
      acc72(20)=abb72(27)
      acc72(21)=abb72(28)
      acc72(22)=abb72(29)
      acc72(23)=abb72(34)
      acc72(24)=abb72(38)
      acc72(25)=Qspvak2k3*acc72(21)
      acc72(26)=QspQ*acc72(17)
      acc72(27)=Qspk1*acc72(18)
      acc72(28)=Qspvak2k1*acc72(14)
      acc72(25)=acc72(28)+acc72(27)+acc72(26)+acc72(1)+acc72(25)
      acc72(25)=Qspvak2k1*acc72(25)
      acc72(26)=acc72(15)*Qspvak2l5
      acc72(27)=acc72(7)*Qspvak2k7
      acc72(28)=acc72(3)*Qspvak2e7
      acc72(26)=acc72(2)+acc72(28)+acc72(26)+acc72(27)
      acc72(26)=Qspvak2k1*acc72(26)
      acc72(27)=Qspk1-QspQ+Qspl6
      acc72(27)=acc72(8)*acc72(27)
      acc72(28)=Qspvak2l6*acc72(4)
      acc72(26)=acc72(26)+acc72(10)+acc72(28)+acc72(27)
      acc72(26)=Qspvak4k3*acc72(26)
      acc72(27)=Qspvak4k1*acc72(5)
      acc72(28)=Qspvak4l6*acc72(9)
      acc72(27)=acc72(28)+acc72(13)+acc72(27)
      acc72(27)=QspQ*acc72(27)
      acc72(28)=Qspvak4k1*acc72(22)
      acc72(29)=Qspvak4l6*acc72(24)
      acc72(28)=acc72(29)+acc72(12)+acc72(28)
      acc72(28)=Qspk1*acc72(28)
      acc72(29)=acc72(20)*Qspval6k1
      acc72(30)=acc72(19)*Qspvak1l6
      acc72(31)=Qspl6*acc72(23)
      acc72(32)=Qspvak2k3*acc72(16)
      acc72(33)=Qspvak2l6*acc72(6)
      brack=acc72(11)+acc72(25)+acc72(26)+acc72(27)+acc72(28)+acc72(29)+acc72(3&
      &0)+acc72(31)+acc72(32)+acc72(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram72_sign, shift => diagram72_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d72h2l1
