module     p0_dbaru_epnebbbarg_d223h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d223h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd223h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc223(29)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspe7 = dotproduct(Q,e7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc223(1)=abb223(8)
      acc223(2)=abb223(9)
      acc223(3)=abb223(10)
      acc223(4)=abb223(11)
      acc223(5)=abb223(12)
      acc223(6)=abb223(13)
      acc223(7)=abb223(14)
      acc223(8)=abb223(16)
      acc223(9)=abb223(17)
      acc223(10)=abb223(18)
      acc223(11)=abb223(19)
      acc223(12)=abb223(20)
      acc223(13)=abb223(22)
      acc223(14)=abb223(24)
      acc223(15)=abb223(32)
      acc223(16)=abb223(33)
      acc223(17)=abb223(34)
      acc223(18)=abb223(49)
      acc223(19)=abb223(70)
      acc223(20)=acc223(4)*Qspvak2l5
      acc223(21)=acc223(8)*Qspk2
      acc223(22)=acc223(17)*Qspvak2l6
      acc223(23)=Qspvak4l6*acc223(14)
      acc223(24)=Qspvak4l5*acc223(15)
      acc223(25)=Qspvak1l6*acc223(6)
      acc223(26)=Qspvak1l5*acc223(7)
      acc223(20)=acc223(26)+acc223(25)+acc223(24)+acc223(23)+acc223(19)+acc223(&
      &22)+acc223(21)+acc223(20)
      acc223(20)=Qspe7*acc223(20)
      acc223(21)=-Qspl6-Qspl5
      acc223(22)=acc223(2)*Qspe7
      acc223(22)=acc223(22)+acc223(1)
      acc223(21)=acc223(22)*acc223(21)
      acc223(22)=Qspk1-Qspk3-Qspk4
      acc223(22)=acc223(5)*acc223(22)
      acc223(23)=acc223(3)*Qspvak2l5
      acc223(24)=acc223(10)*Qspk2
      acc223(25)=acc223(16)*Qspvak2l6
      acc223(26)=Qspvak4e7*acc223(13)
      acc223(27)=Qspvak1e7*acc223(9)
      acc223(28)=Qspk7*acc223(11)
      acc223(29)=QspQ*acc223(12)
      brack=acc223(18)+acc223(20)+acc223(21)+acc223(22)+acc223(23)+acc223(24)+a&
      &cc223(25)+acc223(26)+acc223(27)+acc223(28)+acc223(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram223_sign, shift => diagram223_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d223
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2+k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d223 = 0.0_ki
      d223 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d223, ki), aimag(d223), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d223
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2+k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d223 = 0.0_ki
      d223 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d223, ki), aimag(d223), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d223h3l1
