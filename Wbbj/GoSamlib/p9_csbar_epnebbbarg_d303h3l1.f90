module     p9_csbar_epnebbbarg_d303h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d303h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc303(44)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      acc303(1)=abb303(8)
      acc303(2)=abb303(9)
      acc303(3)=abb303(10)
      acc303(4)=abb303(11)
      acc303(5)=abb303(12)
      acc303(6)=abb303(14)
      acc303(7)=abb303(15)
      acc303(8)=abb303(16)
      acc303(9)=abb303(17)
      acc303(10)=abb303(18)
      acc303(11)=abb303(19)
      acc303(12)=abb303(20)
      acc303(13)=abb303(21)
      acc303(14)=abb303(22)
      acc303(15)=abb303(23)
      acc303(16)=abb303(24)
      acc303(17)=abb303(25)
      acc303(18)=abb303(26)
      acc303(19)=abb303(27)
      acc303(20)=abb303(28)
      acc303(21)=abb303(29)
      acc303(22)=abb303(30)
      acc303(23)=abb303(31)
      acc303(24)=abb303(32)
      acc303(25)=abb303(33)
      acc303(26)=abb303(34)
      acc303(27)=abb303(35)
      acc303(28)=abb303(36)
      acc303(29)=abb303(37)
      acc303(30)=abb303(38)
      acc303(31)=abb303(41)
      acc303(32)=abb303(42)
      acc303(33)=abb303(45)
      acc303(34)=abb303(52)
      acc303(35)=Qspvak2l5*Qspe7
      acc303(36)=acc303(1)*acc303(35)
      acc303(37)=acc303(2)*Qspvak2l6
      acc303(38)=acc303(4)*Qspvak2e7
      acc303(39)=acc303(9)*Qspe7
      acc303(40)=acc303(19)*Qspvak2k7
      acc303(41)=acc303(20)*Qspvak2l5
      acc303(36)=acc303(41)+acc303(39)+acc303(40)+acc303(6)+acc303(38)+acc303(3&
      &7)+acc303(36)
      acc303(36)=Qspvak4k1*acc303(36)
      acc303(37)=acc303(10)*Qspvak2k7
      acc303(38)=-acc303(15)*Qspvak2l5
      acc303(39)=acc303(16)*acc303(35)
      acc303(40)=-acc303(18)*Qspvak2l6
      acc303(41)=-acc303(29)*Qspe7
      acc303(42)=acc303(34)*Qspvak2e7
      acc303(37)=acc303(42)+acc303(41)-acc303(27)+acc303(40)+acc303(39)+acc303(&
      &37)+acc303(38)
      acc303(38)=-Qspk4+Qspk1-Qspk3
      acc303(37)=acc303(38)*acc303(37)
      acc303(38)=acc303(14)*Qspvak2l6
      acc303(39)=acc303(21)*Qspvak2k7
      acc303(40)=acc303(25)*Qspvak2e7
      acc303(41)=acc303(28)*Qspvak2l5
      acc303(42)=acc303(30)*Qspe7
      acc303(35)=acc303(31)*acc303(35)
      acc303(35)=acc303(35)+acc303(42)+acc303(41)+acc303(26)+acc303(40)+acc303(&
      &39)+acc303(38)
      acc303(35)=Qspvak4k3*acc303(35)
      acc303(38)=Qspl6-Qspk7
      acc303(39)=acc303(13)*Qspvak2e7
      acc303(39)=acc303(39)-acc303(24)
      acc303(38)=acc303(39)*acc303(38)
      acc303(39)=acc303(7)*Qspvak2k7
      acc303(40)=acc303(17)*Qspvak2l6
      acc303(39)=acc303(22)+acc303(40)+acc303(39)
      acc303(39)=Qspe7*acc303(39)
      acc303(40)=acc303(12)*QspQ
      acc303(41)=acc303(32)*Qspk2
      acc303(40)=acc303(41)+acc303(40)+acc303(11)
      acc303(40)=Qspvak2e7*acc303(40)
      acc303(41)=acc303(3)*Qspvak2l6
      acc303(42)=acc303(5)*Qspvak2k7
      acc303(43)=acc303(23)*QspQ
      acc303(44)=acc303(33)*Qspk2
      brack=acc303(8)+acc303(35)+acc303(36)+acc303(37)+acc303(38)+acc303(39)+ac&
      &c303(40)+acc303(41)+acc303(42)+acc303(43)+acc303(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram303_sign, shift => diagram303_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd303h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd303h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d303
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d303 = 0.0_ki
      d303 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d303, ki), aimag(d303), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d303h3l1