module     p9_csbar_epnebbbarg_d310h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d310h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd310h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc310(44)
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k1
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc310(1)=abb310(8)
      acc310(2)=abb310(9)
      acc310(3)=abb310(10)
      acc310(4)=abb310(11)
      acc310(5)=abb310(12)
      acc310(6)=abb310(13)
      acc310(7)=abb310(14)
      acc310(8)=abb310(15)
      acc310(9)=abb310(16)
      acc310(10)=abb310(17)
      acc310(11)=abb310(18)
      acc310(12)=abb310(19)
      acc310(13)=abb310(20)
      acc310(14)=abb310(21)
      acc310(15)=abb310(22)
      acc310(16)=abb310(23)
      acc310(17)=abb310(24)
      acc310(18)=abb310(25)
      acc310(19)=abb310(26)
      acc310(20)=abb310(28)
      acc310(21)=abb310(29)
      acc310(22)=abb310(30)
      acc310(23)=abb310(31)
      acc310(24)=abb310(36)
      acc310(25)=abb310(41)
      acc310(26)=abb310(43)
      acc310(27)=abb310(47)
      acc310(28)=abb310(49)
      acc310(29)=abb310(50)
      acc310(30)=abb310(63)
      acc310(31)=abb310(75)
      acc310(32)=abb310(79)
      acc310(33)=-QspQ+Qspl6
      acc310(33)=acc310(31)*acc310(33)
      acc310(34)=Qspk2*acc310(32)
      acc310(35)=Qspvak2l6*acc310(28)
      acc310(36)=Qspvak4l6*acc310(23)
      acc310(37)=Qspk1*acc310(9)
      acc310(38)=Qspvak2l5*acc310(29)
      acc310(38)=acc310(22)+acc310(38)
      acc310(38)=Qspvak4k1*acc310(38)
      acc310(39)=Qspvak2l5*acc310(18)
      acc310(39)=acc310(4)+acc310(39)
      acc310(39)=Qspvak2k1*acc310(39)
      acc310(33)=acc310(39)+acc310(38)+acc310(37)+acc310(36)+acc310(35)+acc310(&
      &1)+acc310(34)+acc310(33)
      acc310(33)=Qspe7*acc310(33)
      acc310(34)=Qspvak2e7*acc310(11)
      acc310(35)=QspQ*acc310(6)
      acc310(36)=Qspk1*acc310(8)
      acc310(37)=Qspvak4k1*acc310(12)
      acc310(38)=Qspvak2k1*acc310(15)
      acc310(34)=acc310(38)+acc310(37)+acc310(36)+acc310(35)+acc310(2)+acc310(3&
      &4)
      acc310(34)=Qspvak2k1*acc310(34)
      acc310(35)=Qspvae7k1*acc310(20)
      acc310(36)=-Qspvae7l6*acc310(16)
      acc310(35)=acc310(36)+acc310(14)+acc310(35)
      acc310(35)=QspQ*acc310(35)
      acc310(36)=Qspvae7k1*acc310(21)
      acc310(37)=Qspvae7l6*acc310(17)
      acc310(36)=acc310(37)+acc310(13)+acc310(36)
      acc310(36)=Qspk1*acc310(36)
      acc310(37)=acc310(26)*Qspvak2k7
      acc310(38)=acc310(19)*Qspvak1l6
      acc310(39)=acc310(10)*Qspval6k1
      acc310(40)=Qspk2*acc310(27)
      acc310(41)=Qspl6*acc310(30)
      acc310(42)=Qspvak2l6*acc310(25)
      acc310(43)=Qspvak4l6*acc310(3)
      acc310(44)=Qspvak2e7*acc310(24)
      acc310(44)=acc310(7)+acc310(44)
      acc310(44)=Qspvak4k1*acc310(44)
      brack=acc310(5)+acc310(33)+acc310(34)+acc310(35)+acc310(36)+acc310(37)+ac&
      &c310(38)+acc310(39)+acc310(40)+acc310(41)+acc310(42)+acc310(43)+acc310(4&
      &4)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram310_sign, shift => diagram310_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd310h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d310
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d310 = 0.0_ki
      d310 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d310, ki), aimag(d310), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd310h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d310
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d310 = 0.0_ki
      d310 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d310, ki), aimag(d310), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d310h3l1
