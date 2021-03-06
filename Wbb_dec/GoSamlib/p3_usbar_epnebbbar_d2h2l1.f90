module     p3_usbar_epnebbbar_d2h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity2d2h2l1.f90
   ! generator: buildfortran.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd2h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc2(44)
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      acc2(1)=abb2(6)
      acc2(2)=abb2(7)
      acc2(3)=abb2(8)
      acc2(4)=abb2(9)
      acc2(5)=abb2(10)
      acc2(6)=abb2(11)
      acc2(7)=abb2(12)
      acc2(8)=abb2(13)
      acc2(9)=abb2(14)
      acc2(10)=abb2(15)
      acc2(11)=abb2(16)
      acc2(12)=abb2(17)
      acc2(13)=abb2(18)
      acc2(14)=abb2(19)
      acc2(15)=abb2(20)
      acc2(16)=abb2(21)
      acc2(17)=abb2(22)
      acc2(18)=abb2(23)
      acc2(19)=abb2(24)
      acc2(20)=abb2(25)
      acc2(21)=abb2(26)
      acc2(22)=abb2(27)
      acc2(23)=abb2(29)
      acc2(24)=abb2(30)
      acc2(25)=abb2(31)
      acc2(26)=abb2(32)
      acc2(27)=abb2(33)
      acc2(28)=abb2(34)
      acc2(29)=abb2(35)
      acc2(30)=abb2(36)
      acc2(31)=abb2(37)
      acc2(32)=abb2(38)
      acc2(33)=abb2(39)
      acc2(34)=abb2(41)
      acc2(35)=abb2(42)
      acc2(36)=Qspval5l6*acc2(17)
      acc2(37)=Qspk2*acc2(9)
      acc2(36)=acc2(37)+acc2(5)+acc2(36)
      acc2(36)=Qspvak2k1*acc2(36)
      acc2(37)=-acc2(12)*Qspvak3k1
      acc2(38)=Qspvak2l6*acc2(33)
      acc2(39)=Qspval5k1*acc2(29)
      acc2(40)=Qspk1*acc2(22)
      acc2(41)=Qspvak4k1*acc2(30)
      acc2(42)=Qspk2*acc2(16)
      acc2(36)=acc2(36)+acc2(42)+acc2(41)+acc2(40)+acc2(39)+acc2(38)+acc2(28)+a&
      &cc2(37)
      acc2(36)=Qspvak4k3*acc2(36)
      acc2(37)=Qspk4+Qspk3
      acc2(38)=-acc2(19)*acc2(37)
      acc2(39)=Qspvak2k3*acc2(35)
      acc2(40)=Qspk1*acc2(4)
      acc2(41)=Qspvak4k1*acc2(18)
      acc2(38)=acc2(41)+acc2(40)+acc2(1)+acc2(39)+acc2(38)
      acc2(38)=Qspk2*acc2(38)
      acc2(39)=Qspk1-acc2(37)
      acc2(40)=acc2(7)*acc2(39)
      acc2(41)=QspQ*acc2(2)
      acc2(42)=Qspval5l6*acc2(3)
      acc2(43)=Qspk2*acc2(10)
      acc2(40)=acc2(43)+acc2(42)+acc2(41)+acc2(40)
      acc2(40)=Qspvak2k1*acc2(40)
      acc2(39)=-acc2(23)*acc2(39)
      acc2(41)=QspQ*acc2(12)
      acc2(42)=Qspval5l6*acc2(8)
      acc2(39)=acc2(42)+acc2(11)+acc2(41)+acc2(39)
      acc2(39)=Qspvak4k1*acc2(39)
      acc2(41)=Qspvak2l6*acc2(32)
      acc2(42)=Qspval5k1*acc2(27)
      acc2(41)=acc2(41)-acc2(42)
      acc2(42)=acc2(41)+acc2(14)
      acc2(37)=-acc2(42)*acc2(37)
      acc2(42)=Qspvak2l6*acc2(31)
      acc2(43)=Qspval5k1*acc2(26)
      acc2(42)=acc2(43)+acc2(13)+acc2(42)
      acc2(42)=QspQ*acc2(42)
      acc2(43)=Qspvak2k3*acc2(34)
      acc2(44)=QspQ*acc2(24)
      acc2(43)=acc2(44)+acc2(15)+acc2(43)
      acc2(43)=Qspval5l6*acc2(43)
      acc2(44)=Qspval5l6*acc2(25)
      acc2(41)=acc2(44)+acc2(20)+acc2(41)
      acc2(41)=Qspk1*acc2(41)
      acc2(44)=Qspvak3k1*acc2(21)
      brack=acc2(6)+acc2(36)+acc2(37)+acc2(38)+acc2(39)+acc2(40)+acc2(41)+acc2(&
      &42)+acc2(43)+acc2(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p3_usbar_epnebbbar_groups, only: &
!           & sign => diagram2_sign, shift => diagram2_shift
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd2h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d2
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d2 = 0.0_ki
      d2 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d2, ki), aimag(d2), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd2h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d2
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d2 = 0.0_ki
      d2 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d2, ki), aimag(d2), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p3_usbar_epnebbbar_d2h2l1
