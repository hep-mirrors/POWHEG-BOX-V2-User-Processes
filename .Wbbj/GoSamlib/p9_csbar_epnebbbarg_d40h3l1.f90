module     p9_csbar_epnebbbarg_d40h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d40h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd40h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc40(33)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc40(1)=abb40(10)
      acc40(2)=abb40(11)
      acc40(3)=abb40(12)
      acc40(4)=abb40(13)
      acc40(5)=abb40(14)
      acc40(6)=abb40(15)
      acc40(7)=abb40(16)
      acc40(8)=abb40(17)
      acc40(9)=abb40(18)
      acc40(10)=abb40(19)
      acc40(11)=abb40(20)
      acc40(12)=abb40(22)
      acc40(13)=abb40(23)
      acc40(14)=abb40(24)
      acc40(15)=abb40(28)
      acc40(16)=abb40(29)
      acc40(17)=abb40(30)
      acc40(18)=abb40(31)
      acc40(19)=abb40(33)
      acc40(20)=abb40(34)
      acc40(21)=abb40(39)
      acc40(22)=abb40(43)
      acc40(23)=acc40(1)*Qspvak4k1
      acc40(24)=acc40(16)*Qspvak7k1
      acc40(25)=acc40(19)*Qspvak7k3
      acc40(26)=acc40(20)*Qspvak4k3
      acc40(23)=acc40(26)+acc40(25)+acc40(24)+acc40(4)+acc40(23)
      acc40(23)=Qspvak2l6*acc40(23)
      acc40(24)=acc40(8)*Qspvak4k3
      acc40(25)=acc40(11)*Qspvak7k1
      acc40(26)=acc40(12)*Qspvak7k3
      acc40(27)=acc40(14)*Qspvak4k1
      acc40(24)=acc40(27)+acc40(26)+acc40(25)+acc40(9)+acc40(24)
      acc40(24)=Qspvak2l5*acc40(24)
      acc40(25)=acc40(10)*Qspvak2l5
      acc40(26)=acc40(15)*Qspvak2l6
      acc40(25)=acc40(22)+acc40(25)+acc40(26)
      acc40(26)=Qspk1-Qspk4-Qspk3
      acc40(25)=acc40(25)*acc40(26)
      acc40(26)=-Qspl5-Qspl6
      acc40(26)=acc40(21)*acc40(26)
      acc40(27)=acc40(5)*Qspvak4k1
      acc40(28)=acc40(13)*Qspvak4k3
      acc40(29)=Qspvak7l6*acc40(18)
      acc40(30)=Qspvak7l5*acc40(2)
      acc40(31)=Qspk7*acc40(6)
      acc40(32)=Qspk2*acc40(17)
      acc40(33)=QspQ*acc40(7)
      brack=acc40(3)+acc40(23)+acc40(24)+acc40(25)+acc40(26)+acc40(27)+acc40(28&
      &)+acc40(29)+acc40(30)+acc40(31)+acc40(32)+acc40(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram40_sign, shift => diagram40_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd40h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d40
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d40 = 0.0_ki
      d40 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d40, ki), aimag(d40), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd40h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d40
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d40 = 0.0_ki
      d40 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d40, ki), aimag(d40), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d40h3l1
