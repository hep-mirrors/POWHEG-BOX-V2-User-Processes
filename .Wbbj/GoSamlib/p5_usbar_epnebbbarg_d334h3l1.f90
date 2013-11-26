module     p5_usbar_epnebbbarg_d334h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d334h3l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd334h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc334(28)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc334(1)=abb334(10)
      acc334(2)=abb334(11)
      acc334(3)=abb334(12)
      acc334(4)=abb334(13)
      acc334(5)=abb334(14)
      acc334(6)=abb334(15)
      acc334(7)=abb334(16)
      acc334(8)=abb334(18)
      acc334(9)=abb334(19)
      acc334(10)=abb334(20)
      acc334(11)=abb334(21)
      acc334(12)=abb334(22)
      acc334(13)=abb334(23)
      acc334(14)=abb334(24)
      acc334(15)=abb334(26)
      acc334(16)=abb334(27)
      acc334(17)=abb334(28)
      acc334(18)=abb334(29)
      acc334(19)=acc334(2)*Qspvak2l6
      acc334(20)=acc334(9)*Qspl6
      acc334(21)=acc334(12)*Qspk2
      acc334(22)=acc334(14)*Qspvak2k7
      acc334(23)=acc334(15)*Qspvak7l6
      acc334(24)=Qspvak4l6*acc334(16)
      acc334(25)=Qspvak2k1*acc334(3)
      acc334(19)=acc334(25)+acc334(24)+acc334(23)+acc334(22)+acc334(21)+acc334(&
      &20)+acc334(4)+acc334(19)
      acc334(19)=Qspe7*acc334(19)
      acc334(20)=acc334(5)*Qspk2
      acc334(21)=acc334(8)*Qspl6
      acc334(22)=acc334(11)*Qspvak7l6
      acc334(23)=acc334(17)*Qspvak2l6
      acc334(24)=acc334(18)*Qspvak2k7
      acc334(25)=Qspvae7l6*acc334(7)
      acc334(26)=Qspvak2e7*acc334(10)
      acc334(27)=Qspk7*acc334(6)
      acc334(28)=QspQ*acc334(13)
      brack=acc334(1)+acc334(19)+acc334(20)+acc334(21)+acc334(22)+acc334(23)+ac&
      &c334(24)+acc334(25)+acc334(26)+acc334(27)+acc334(28)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram334_sign, shift => diagram334_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd334h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d334
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d334 = 0.0_ki
      d334 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d334, ki), aimag(d334), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd334h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d334
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d334 = 0.0_ki
      d334 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d334, ki), aimag(d334), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d334h3l1
