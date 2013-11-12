module     p0_gg_hepem_d61h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d61h0l1.f90
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
      use p0_gg_hepem_abbrevd61h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(26)
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
      acc61(1)=abb61(13)
      acc61(2)=abb61(14)
      acc61(3)=abb61(15)
      acc61(4)=abb61(16)
      acc61(5)=abb61(17)
      acc61(6)=abb61(18)
      acc61(7)=abb61(19)
      acc61(8)=abb61(20)
      acc61(9)=abb61(21)
      acc61(10)=abb61(22)
      acc61(11)=abb61(23)
      acc61(12)=abb61(24)
      acc61(13)=abb61(25)
      acc61(14)=abb61(26)
      acc61(15)=abb61(28)
      acc61(16)=abb61(30)
      acc61(17)=Qspvae2k4*acc61(14)
      acc61(18)=Qspvae2k4*acc61(1)
      acc61(18)=-acc61(9)+acc61(18)
      acc61(18)=Qspvak5e1*acc61(18)
      acc61(17)=acc61(18)+acc61(3)+acc61(17)
      acc61(17)=Qspvae1e2*acc61(17)
      acc61(18)=Qspvae1k4*acc61(4)
      acc61(19)=-Qspvae1k4*acc61(1)
      acc61(19)=acc61(15)+acc61(19)
      acc61(19)=Qspvak5e2*acc61(19)
      acc61(18)=acc61(19)+acc61(11)+acc61(18)
      acc61(18)=Qspvae2e1*acc61(18)
      acc61(19)=acc61(12)*Qspvae2k1
      acc61(20)=acc61(10)*Qspvak2e1
      acc61(21)=acc61(7)*Qspvak1e2
      acc61(22)=acc61(2)*Qspvae1k2
      acc61(23)=Qspvae1k4*acc61(6)
      acc61(24)=Qspvae2k4*acc61(16)
      acc61(25)=Qspvak5e1*acc61(8)
      acc61(26)=Qspvak5e2*acc61(5)
      brack=acc61(13)+acc61(17)+acc61(18)+acc61(19)+acc61(20)+acc61(21)+acc61(2&
      &2)+acc61(23)+acc61(24)+acc61(25)+acc61(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram61_sign, shift => diagram61_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd61h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd61h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d61h0l1
