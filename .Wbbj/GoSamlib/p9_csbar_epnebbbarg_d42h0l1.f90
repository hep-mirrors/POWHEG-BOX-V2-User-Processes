module     p9_csbar_epnebbbarg_d42h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d42h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd42h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc42(17)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: QspQ
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      QspQ = dotproduct(Q,Q)
      acc42(1)=abb42(8)
      acc42(2)=abb42(9)
      acc42(3)=abb42(10)
      acc42(4)=abb42(11)
      acc42(5)=abb42(12)
      acc42(6)=abb42(13)
      acc42(7)=abb42(14)
      acc42(8)=abb42(15)
      acc42(9)=abb42(19)
      acc42(10)=abb42(21)
      acc42(11)=-Qspk1+Qspk7
      acc42(11)=acc42(11)*acc42(4)
      acc42(12)=Qspvae7k1*acc42(1)
      acc42(13)=Qspval6k7*acc42(3)
      acc42(14)=Qspval6k1*acc42(8)
      acc42(15)=Qspval5k7*acc42(5)
      acc42(16)=Qspval5k1*acc42(7)
      acc42(17)=Qspe7*acc42(2)
      acc42(11)=acc42(11)+acc42(17)+acc42(16)+acc42(15)+acc42(14)+acc42(12)+acc&
      &42(13)
      acc42(11)=Qspvak4k3*acc42(11)
      acc42(12)=Qspval6k3*acc42(9)
      acc42(13)=Qspval5k3*acc42(6)
      acc42(14)=QspQ*acc42(10)
      brack=acc42(11)+acc42(12)+acc42(13)+acc42(14)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram42_sign, shift => diagram42_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd42h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d42
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d42 = 0.0_ki
      d42 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d42, ki), aimag(d42), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd42h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d42
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d42 = 0.0_ki
      d42 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d42, ki), aimag(d42), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d42h0l1
