module     p1_dbarc_epnebbbarg_d121h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d121h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd121h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc121(27)
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl5
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl5 = dotproduct(Q,l5)
      acc121(1)=abb121(8)
      acc121(2)=abb121(9)
      acc121(3)=abb121(10)
      acc121(4)=abb121(11)
      acc121(5)=abb121(12)
      acc121(6)=abb121(13)
      acc121(7)=abb121(14)
      acc121(8)=abb121(15)
      acc121(9)=abb121(16)
      acc121(10)=abb121(17)
      acc121(11)=abb121(19)
      acc121(12)=abb121(20)
      acc121(13)=abb121(21)
      acc121(14)=abb121(22)
      acc121(15)=abb121(23)
      acc121(16)=abb121(24)
      acc121(17)=acc121(9)*Qspvak2e7
      acc121(18)=acc121(5)*Qspe7
      acc121(19)=acc121(2)*Qspk2
      acc121(20)=acc121(1)*Qspvae7l6
      acc121(21)=-acc121(16)*Qspvak1l6
      acc121(22)=acc121(15)*Qspvak1k7
      acc121(23)=acc121(14)*Qspvak4k7
      acc121(24)=-acc121(12)*Qspvak4l6
      acc121(25)=acc121(8)*Qspvak4e7
      acc121(26)=Qspl6+Qspk7
      acc121(26)=acc121(6)*acc121(26)
      acc121(27)=acc121(4)*Qspvak1e7
      acc121(17)=acc121(27)+acc121(26)+acc121(25)+acc121(24)+acc121(23)+acc121(&
      &22)+acc121(21)+acc121(20)+acc121(19)+acc121(3)+acc121(17)+acc121(18)
      acc121(17)=Qspval5k2*acc121(17)
      acc121(18)=acc121(16)*Qspval5l6
      acc121(19)=-acc121(15)*Qspval5k7
      acc121(20)=-acc121(4)*Qspval5e7
      acc121(18)=acc121(20)+acc121(19)+acc121(10)+acc121(18)
      acc121(18)=Qspvak1k2*acc121(18)
      acc121(19)=-acc121(14)*Qspval5k7
      acc121(20)=acc121(12)*Qspval5l6
      acc121(21)=-acc121(8)*Qspval5e7
      acc121(19)=acc121(21)+acc121(20)+acc121(7)+acc121(19)
      acc121(19)=Qspvak4k2*acc121(19)
      acc121(20)=acc121(13)*Qspl5
      brack=acc121(11)+acc121(17)+acc121(18)+acc121(19)+acc121(20)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram121_sign, shift => diagram121_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd121h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd121h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d121h2l1
