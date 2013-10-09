module     p9_csbar_epnebbbarg_d137h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d137h0l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd137h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc137(37)
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspe7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2e7
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspe7 = dotproduct(Q,e7)
      QspQ = dotproduct(Q,Q)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc137(1)=abb137(11)
      acc137(2)=abb137(12)
      acc137(3)=abb137(13)
      acc137(4)=abb137(14)
      acc137(5)=abb137(15)
      acc137(6)=abb137(16)
      acc137(7)=abb137(17)
      acc137(8)=abb137(18)
      acc137(9)=abb137(19)
      acc137(10)=abb137(20)
      acc137(11)=abb137(21)
      acc137(12)=abb137(22)
      acc137(13)=abb137(24)
      acc137(14)=abb137(25)
      acc137(15)=abb137(27)
      acc137(16)=abb137(28)
      acc137(17)=abb137(29)
      acc137(18)=abb137(34)
      acc137(19)=abb137(49)
      acc137(20)=abb137(50)
      acc137(21)=abb137(57)
      acc137(22)=abb137(58)
      acc137(23)=abb137(82)
      acc137(24)=abb137(93)
      acc137(25)=acc137(10)*Qspvak2k7
      acc137(26)=acc137(1)*Qspvak4k1
      acc137(27)=Qspk1*acc137(15)
      acc137(28)=Qspk2*acc137(9)
      acc137(29)=Qspk7*acc137(22)
      acc137(30)=Qspvak4k3*acc137(5)
      acc137(31)=Qspval5k1*acc137(3)
      acc137(32)=Qspval5k2*acc137(14)
      acc137(33)=Qspval6k1*acc137(20)
      acc137(34)=Qspval6k2*acc137(11)
      acc137(35)=Qspk3+Qspk4
      acc137(35)=acc137(24)*acc137(35)
      acc137(36)=Qspl6+Qspl5
      acc137(37)=acc137(19)*acc137(36)
      acc137(25)=acc137(37)+acc137(35)+acc137(34)+acc137(33)+acc137(32)+acc137(&
      &31)+acc137(30)+acc137(29)+acc137(28)+acc137(27)+acc137(26)+acc137(21)+ac&
      &c137(25)
      acc137(25)=Qspe7*acc137(25)
      acc137(26)=acc137(12)*QspQ
      acc137(27)=acc137(4)*Qspvak2e7
      acc137(28)=Qspk2*acc137(8)
      acc137(29)=Qspk7*acc137(17)
      acc137(30)=Qspvak4k3*acc137(2)
      acc137(31)=Qspval5k1*acc137(16)
      acc137(32)=Qspval5k2*acc137(7)
      acc137(33)=Qspval6k1*acc137(18)
      acc137(34)=Qspval6k2*acc137(6)
      acc137(35)=Qspk1-acc137(36)
      acc137(35)=acc137(23)*acc137(35)
      brack=acc137(13)+acc137(25)+acc137(26)+acc137(27)+acc137(28)+acc137(29)+a&
      &cc137(30)+acc137(31)+acc137(32)+acc137(33)+acc137(34)+acc137(35)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram137_sign, shift => diagram137_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd137h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d137
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d137 = 0.0_ki
      d137 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d137, ki), aimag(d137), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd137h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d137
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d137 = 0.0_ki
      d137 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d137, ki), aimag(d137), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d137h0l1
