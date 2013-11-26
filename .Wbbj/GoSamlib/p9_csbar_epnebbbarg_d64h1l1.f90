module     p9_csbar_epnebbbarg_d64h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d64h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd64h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc64(29)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      acc64(1)=abb64(11)
      acc64(2)=abb64(12)
      acc64(3)=abb64(13)
      acc64(4)=abb64(14)
      acc64(5)=abb64(15)
      acc64(6)=abb64(16)
      acc64(7)=abb64(17)
      acc64(8)=abb64(18)
      acc64(9)=abb64(19)
      acc64(10)=abb64(20)
      acc64(11)=abb64(22)
      acc64(12)=abb64(79)
      acc64(13)=abb64(81)
      acc64(14)=abb64(88)
      acc64(15)=abb64(106)
      acc64(16)=-Qspk3-Qspk4
      acc64(16)=acc64(12)*acc64(16)
      acc64(17)=Qspvae7k1*acc64(2)
      acc64(18)=Qspval6l5*acc64(11)
      acc64(19)=Qspval6k2*acc64(7)
      acc64(20)=Qspvak4k3*acc64(3)
      acc64(21)=Qspvak4k1*acc64(1)
      acc64(22)=Qspvak2l6*acc64(6)
      acc64(23)=Qspvak2l5*acc64(4)
      acc64(24)=Qspe7*acc64(5)
      acc64(25)=Qspk7*acc64(14)
      acc64(26)=Qspl6*acc64(15)
      acc64(27)=Qspl5*acc64(13)
      acc64(28)=Qspk2*acc64(8)
      acc64(29)=Qspk1*acc64(9)
      brack=acc64(10)+acc64(16)+acc64(17)+acc64(18)+acc64(19)+acc64(20)+acc64(2&
      &1)+acc64(22)+acc64(23)+acc64(24)+acc64(25)+acc64(26)+acc64(27)+acc64(28)&
      &+acc64(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram64_sign, shift => diagram64_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd64h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d64
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d64 = 0.0_ki
      d64 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d64, ki), aimag(d64), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd64h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d64
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d64 = 0.0_ki
      d64 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d64, ki), aimag(d64), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d64h1l1
