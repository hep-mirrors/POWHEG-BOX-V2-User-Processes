module     p9_csbar_epnebbbarg_d295h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d295h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc295(41)
      complex(ki) :: Qspvak2e7
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2l6
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc295(1)=abb295(7)
      acc295(2)=abb295(8)
      acc295(3)=abb295(9)
      acc295(4)=abb295(10)
      acc295(5)=abb295(11)
      acc295(6)=abb295(12)
      acc295(7)=abb295(13)
      acc295(8)=abb295(14)
      acc295(9)=abb295(15)
      acc295(10)=abb295(16)
      acc295(11)=abb295(17)
      acc295(12)=abb295(18)
      acc295(13)=abb295(20)
      acc295(14)=abb295(21)
      acc295(15)=abb295(22)
      acc295(16)=abb295(23)
      acc295(17)=abb295(24)
      acc295(18)=abb295(25)
      acc295(19)=abb295(27)
      acc295(20)=abb295(28)
      acc295(21)=abb295(29)
      acc295(22)=abb295(30)
      acc295(23)=abb295(31)
      acc295(24)=abb295(40)
      acc295(25)=abb295(43)
      acc295(26)=abb295(48)
      acc295(27)=abb295(50)
      acc295(28)=abb295(56)
      acc295(29)=abb295(59)
      acc295(30)=abb295(60)
      acc295(31)=abb295(64)
      acc295(32)=abb295(66)
      acc295(33)=abb295(70)
      acc295(34)=abb295(74)
      acc295(35)=Qspvak2e7*acc295(22)
      acc295(36)=QspQ*acc295(17)
      acc295(37)=Qspk1*acc295(10)
      acc295(38)=-acc295(11)*Qspvak2l5
      acc295(38)=acc295(38)+acc295(1)
      acc295(38)=Qspe7*acc295(38)
      acc295(35)=acc295(38)+acc295(37)+acc295(36)+acc295(8)+acc295(35)
      acc295(35)=Qspvak4k3*acc295(35)
      acc295(36)=acc295(23)*Qspvak2k7
      acc295(37)=acc295(16)*Qspvak2k3
      acc295(36)=acc295(7)+acc295(36)+acc295(37)
      acc295(36)=Qspe7*acc295(36)
      acc295(37)=Qspe7*acc295(4)
      acc295(38)=Qspvak4k3*acc295(12)
      acc295(37)=acc295(38)+acc295(3)+acc295(37)
      acc295(37)=Qspvak2k1*acc295(37)
      acc295(38)=Qspk7*acc295(14)
      acc295(39)=-Qspk7*acc295(13)
      acc295(39)=acc295(5)+acc295(39)
      acc295(39)=Qspvak2e7*acc295(39)
      acc295(40)=Qspvak2e7*acc295(20)
      acc295(40)=acc295(9)+acc295(40)
      acc295(40)=QspQ*acc295(40)
      acc295(41)=Qspvak2e7*acc295(13)
      acc295(41)=acc295(19)+acc295(41)
      acc295(41)=Qspk1*acc295(41)
      acc295(35)=acc295(37)+acc295(35)+acc295(36)+acc295(41)+acc295(40)+acc295(&
      &39)+acc295(6)+acc295(38)
      acc295(35)=Qspvak2k1*acc295(35)
      acc295(36)=QspQ*acc295(31)
      acc295(37)=Qspk1*acc295(32)
      acc295(38)=Qspvak2l6*acc295(2)
      acc295(39)=Qspvak2l6*acc295(28)
      acc295(39)=acc295(27)+acc295(39)
      acc295(39)=Qspe7*acc295(39)
      acc295(36)=acc295(39)+acc295(38)+acc295(37)+acc295(25)+acc295(36)
      acc295(36)=Qspvak4k3*acc295(36)
      acc295(37)=Qspk1-Qspk7
      acc295(37)=acc295(34)*acc295(37)
      acc295(38)=QspQ*acc295(33)
      acc295(37)=acc295(38)+acc295(15)+acc295(37)
      acc295(37)=Qspvak2l6*acc295(37)
      acc295(38)=Qspk7*acc295(30)
      acc295(39)=QspQ*acc295(21)
      acc295(40)=Qspk1*acc295(29)
      acc295(41)=Qspvak2l6*acc295(24)
      acc295(41)=acc295(26)+acc295(41)
      acc295(41)=Qspe7*acc295(41)
      brack=acc295(18)+acc295(35)+acc295(36)+acc295(37)+acc295(38)+acc295(39)+a&
      &cc295(40)+acc295(41)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram295_sign, shift => diagram295_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d295
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d295 = 0.0_ki
      d295 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d295, ki), aimag(d295), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd295h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d295
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d295 = 0.0_ki
      d295 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d295, ki), aimag(d295), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d295h3l1
