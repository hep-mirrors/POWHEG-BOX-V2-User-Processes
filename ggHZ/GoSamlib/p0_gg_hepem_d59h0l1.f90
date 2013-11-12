module     p0_gg_hepem_d59h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d59h0l1.f90
   ! generator: buildfortran.py
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd59h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc59(26)
      complex(ki) :: Qspvae2k4
      complex(ki) :: Qspvak5e1
      complex(ki) :: Qspvae1e2
      complex(ki) :: Qspvae1k4
      complex(ki) :: Qspvak5e2
      complex(ki) :: Qspvae2e1
      complex(ki) :: Qspvae2k1
      complex(ki) :: Qspvak2e1
      complex(ki) :: Qspvak1e2
      complex(ki) :: Qspvae1k2
      Qspvae2k4 = dotproduct(Q,spvae2k4)
      Qspvak5e1 = dotproduct(Q,spvak5e1)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      Qspvae1k4 = dotproduct(Q,spvae1k4)
      Qspvak5e2 = dotproduct(Q,spvak5e2)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      Qspvae2k1 = dotproduct(Q,spvae2k1)
      Qspvak2e1 = dotproduct(Q,spvak2e1)
      Qspvak1e2 = dotproduct(Q,spvak1e2)
      Qspvae1k2 = dotproduct(Q,spvae1k2)
      acc59(1)=abb59(13)
      acc59(2)=abb59(14)
      acc59(3)=abb59(15)
      acc59(4)=abb59(16)
      acc59(5)=abb59(17)
      acc59(6)=abb59(18)
      acc59(7)=abb59(19)
      acc59(8)=abb59(20)
      acc59(9)=abb59(21)
      acc59(10)=abb59(22)
      acc59(11)=abb59(23)
      acc59(12)=abb59(24)
      acc59(13)=abb59(25)
      acc59(14)=abb59(26)
      acc59(15)=abb59(28)
      acc59(16)=abb59(30)
      acc59(17)=Qspvae2k4*acc59(14)
      acc59(18)=Qspvae2k4*acc59(1)
      acc59(18)=-acc59(9)+acc59(18)
      acc59(18)=Qspvak5e1*acc59(18)
      acc59(17)=acc59(18)+acc59(3)+acc59(17)
      acc59(17)=Qspvae1e2*acc59(17)
      acc59(18)=Qspvae1k4*acc59(4)
      acc59(19)=-Qspvae1k4*acc59(1)
      acc59(19)=acc59(15)+acc59(19)
      acc59(19)=Qspvak5e2*acc59(19)
      acc59(18)=acc59(19)+acc59(11)+acc59(18)
      acc59(18)=Qspvae2e1*acc59(18)
      acc59(19)=acc59(12)*Qspvae2k1
      acc59(20)=acc59(10)*Qspvak2e1
      acc59(21)=acc59(7)*Qspvak1e2
      acc59(22)=acc59(2)*Qspvae1k2
      acc59(23)=Qspvae1k4*acc59(6)
      acc59(24)=Qspvae2k4*acc59(16)
      acc59(25)=Qspvak5e1*acc59(8)
      acc59(26)=Qspvak5e2*acc59(5)
      brack=acc59(13)+acc59(17)+acc59(18)+acc59(19)+acc59(20)+acc59(21)+acc59(2&
      &2)+acc59(23)+acc59(24)+acc59(25)+acc59(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram59_sign, shift => diagram59_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd59h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d59
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d59 = 0.0_ki
      d59 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d59, ki), aimag(d59), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd59h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d59
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d59 = 0.0_ki
      d59 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d59, ki), aimag(d59), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d59h0l1
