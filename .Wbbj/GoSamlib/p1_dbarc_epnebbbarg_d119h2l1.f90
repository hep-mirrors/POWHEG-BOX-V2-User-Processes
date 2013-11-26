module     p1_dbarc_epnebbbarg_d119h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d119h2l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd119h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc119(21)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk2
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk2 = dotproduct(Q,k2)
      acc119(1)=abb119(9)
      acc119(2)=abb119(10)
      acc119(3)=abb119(11)
      acc119(4)=abb119(12)
      acc119(5)=abb119(13)
      acc119(6)=abb119(14)
      acc119(7)=abb119(15)
      acc119(8)=abb119(16)
      acc119(9)=abb119(17)
      acc119(10)=abb119(18)
      acc119(11)=abb119(19)
      acc119(12)=abb119(20)
      acc119(13)=abb119(21)
      acc119(14)=abb119(27)
      acc119(15)=acc119(4)*Qspvak2l5
      acc119(16)=acc119(10)*Qspvak2e7
      acc119(17)=acc119(11)*Qspvak2k7
      acc119(15)=acc119(17)+acc119(16)+acc119(7)+acc119(15)
      acc119(15)=Qspvak4k2*acc119(15)
      acc119(16)=acc119(1)*Qspvak2k7
      acc119(17)=acc119(8)*Qspvak2e7
      acc119(18)=acc119(13)*Qspvak2l5
      acc119(16)=acc119(18)+acc119(17)+acc119(16)+acc119(2)
      acc119(16)=Qspvak1k2*acc119(16)
      acc119(17)=QspQ+Qspl6
      acc119(17)=acc119(14)*acc119(17)
      acc119(18)=Qspvak4l6*acc119(9)
      acc119(19)=Qspvak2l6*acc119(3)
      acc119(20)=Qspvak1l6*acc119(6)
      acc119(21)=Qspk2*acc119(5)
      brack=acc119(12)+acc119(15)+acc119(16)+acc119(17)+acc119(18)+acc119(19)+a&
      &cc119(20)+acc119(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram119_sign, shift => diagram119_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd119h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd119h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d119h2l1
