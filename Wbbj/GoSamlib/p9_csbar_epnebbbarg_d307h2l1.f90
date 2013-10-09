module     p9_csbar_epnebbbarg_d307h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d307h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd307h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc307(45)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5e7
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      QspQ = dotproduct(Q,Q)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      acc307(1)=abb307(8)
      acc307(2)=abb307(9)
      acc307(3)=abb307(10)
      acc307(4)=abb307(11)
      acc307(5)=abb307(12)
      acc307(6)=abb307(13)
      acc307(7)=abb307(14)
      acc307(8)=abb307(15)
      acc307(9)=abb307(16)
      acc307(10)=abb307(17)
      acc307(11)=abb307(18)
      acc307(12)=abb307(19)
      acc307(13)=abb307(20)
      acc307(14)=abb307(21)
      acc307(15)=abb307(22)
      acc307(16)=abb307(23)
      acc307(17)=abb307(24)
      acc307(18)=abb307(25)
      acc307(19)=abb307(26)
      acc307(20)=abb307(27)
      acc307(21)=abb307(28)
      acc307(22)=abb307(29)
      acc307(23)=abb307(30)
      acc307(24)=abb307(31)
      acc307(25)=abb307(32)
      acc307(26)=abb307(33)
      acc307(27)=abb307(34)
      acc307(28)=abb307(35)
      acc307(29)=abb307(36)
      acc307(30)=abb307(37)
      acc307(31)=abb307(40)
      acc307(32)=abb307(41)
      acc307(33)=abb307(42)
      acc307(34)=abb307(43)
      acc307(35)=abb307(44)
      acc307(36)=-Qspk1+Qspk4+Qspk3
      acc307(37)=-acc307(30)*acc307(36)
      acc307(38)=acc307(26)*Qspval5k1
      acc307(39)=-acc307(15)*Qspval5k3
      acc307(40)=Qspvak4k1*acc307(1)
      acc307(41)=Qspvak4k3*acc307(20)
      acc307(37)=acc307(41)+acc307(40)+acc307(39)+acc307(27)+acc307(38)+acc307(&
      &37)
      acc307(37)=Qspvak2l6*acc307(37)
      acc307(38)=-acc307(26)*Qspvak2k1
      acc307(39)=acc307(15)*Qspvak2k3
      acc307(38)=acc307(39)+acc307(38)
      acc307(38)=Qspval5l6*acc307(38)
      acc307(39)=-acc307(25)*acc307(36)
      acc307(40)=Qspk2*acc307(12)
      acc307(41)=Qspvak4k1*acc307(2)
      acc307(42)=Qspvak4k3*acc307(5)
      acc307(37)=acc307(37)+acc307(42)+acc307(41)+acc307(40)+acc307(39)+acc307(&
      &38)
      acc307(37)=Qspe7*acc307(37)
      acc307(38)=Qspvak2k7*acc307(17)
      acc307(39)=Qspvak7l6*acc307(13)
      acc307(40)=Qspvae7l6*acc307(32)
      acc307(41)=QspQ*acc307(23)
      acc307(38)=acc307(22)+acc307(38)-acc307(39)+acc307(40)+acc307(41)
      acc307(36)=acc307(38)*acc307(36)
      acc307(38)=Qspvak2k7*acc307(6)
      acc307(39)=Qspvak7l6*acc307(4)
      acc307(40)=Qspvae7l6*acc307(18)
      acc307(41)=QspQ*acc307(9)
      acc307(38)=acc307(41)+acc307(40)+acc307(39)+acc307(7)+acc307(38)
      acc307(38)=Qspvak4k1*acc307(38)
      acc307(39)=Qspvak2k7*acc307(24)
      acc307(40)=Qspvak7l6*acc307(19)
      acc307(41)=Qspvae7l6*acc307(33)
      acc307(42)=QspQ*acc307(14)
      acc307(39)=acc307(42)+acc307(41)+acc307(40)+acc307(8)+acc307(39)
      acc307(39)=Qspvak4k3*acc307(39)
      acc307(40)=Qspvak2k1*acc307(21)
      acc307(41)=Qspvak2k3*acc307(28)
      acc307(40)=acc307(40)+acc307(41)
      acc307(40)=Qspval5k7*acc307(40)
      acc307(41)=acc307(16)*Qspvak7k2
      acc307(42)=Qspk2*acc307(31)
      acc307(43)=Qspval5e7*acc307(34)
      acc307(44)=Qspval5e7*acc307(35)
      acc307(44)=acc307(10)+acc307(44)
      acc307(44)=QspQ*acc307(44)
      acc307(45)=Qspval5k7*acc307(3)
      acc307(45)=acc307(29)+acc307(45)
      acc307(45)=Qspvak2l6*acc307(45)
      brack=acc307(11)+acc307(36)+acc307(37)+acc307(38)+acc307(39)+acc307(40)+a&
      &cc307(41)+acc307(42)+acc307(43)+acc307(44)+acc307(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram307_sign, shift => diagram307_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd307h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd307h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d307h2l1
