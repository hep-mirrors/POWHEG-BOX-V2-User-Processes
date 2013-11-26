module     p9_csbar_epnebbbarg_d1h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d1h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd1h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc1(22)
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      acc1(1)=abb1(5)
      acc1(2)=abb1(6)
      acc1(3)=abb1(7)
      acc1(4)=abb1(8)
      acc1(5)=abb1(10)
      acc1(6)=abb1(11)
      acc1(7)=abb1(12)
      acc1(8)=abb1(14)
      acc1(9)=abb1(16)
      acc1(10)=abb1(21)
      acc1(11)=abb1(25)
      acc1(12)=abb1(28)
      acc1(13)=abb1(30)
      acc1(14)=acc1(1)*Qspvae7k1
      acc1(15)=acc1(4)*Qspe7
      acc1(16)=acc1(8)*Qspval5k2
      acc1(17)=acc1(9)*Qspval6k2
      acc1(18)=Qspvak2k1*acc1(3)
      acc1(14)=acc1(18)+acc1(17)+acc1(16)+acc1(14)+acc1(15)
      acc1(14)=Qspvak4k3*acc1(14)
      acc1(15)=acc1(7)*Qspe7
      acc1(16)=acc1(11)*Qspval5k2
      acc1(17)=acc1(12)*Qspvae7k1
      acc1(18)=acc1(13)*Qspval6k2
      acc1(19)=Qspval6k1*acc1(6)
      acc1(20)=Qspval5k1*acc1(5)
      acc1(21)=Qspvak2k3*acc1(2)
      acc1(22)=QspQ*acc1(10)
      brack=acc1(14)+acc1(15)+acc1(16)+acc1(17)+acc1(18)+acc1(19)+acc1(20)+acc1&
      &(21)+acc1(22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram1_sign, shift => diagram1_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd1h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d1
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d1 = 0.0_ki
      d1 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d1, ki), aimag(d1), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd1h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d1
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d1 = 0.0_ki
      d1 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d1, ki), aimag(d1), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d1h0l1
