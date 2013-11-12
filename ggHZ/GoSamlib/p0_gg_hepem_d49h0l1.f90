module     p0_gg_hepem_d49h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d49h0l1.f90
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
      use p0_gg_hepem_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc49(42)
      complex(ki) :: Qspvae1k2
      complex(ki) :: Qspvae1l3
      complex(ki) :: Qspvae1e2
      complex(ki) :: QspQ
      complex(ki) :: Qspvae2k4
      complex(ki) :: Qspvak5e1
      complex(ki) :: Qspvae2e1
      complex(ki) :: Qspvae1k4
      complex(ki) :: Qspvak5e2
      complex(ki) :: Qspvak2e1
      complex(ki) :: Qspval3e1
      Qspvae1k2 = dotproduct(Q,spvae1k2)
      Qspvae1l3 = dotproduct(Q,spvae1l3)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      QspQ = dotproduct(Q,Q)
      Qspvae2k4 = dotproduct(Q,spvae2k4)
      Qspvak5e1 = dotproduct(Q,spvak5e1)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      Qspvae1k4 = dotproduct(Q,spvae1k4)
      Qspvak5e2 = dotproduct(Q,spvak5e2)
      Qspvak2e1 = dotproduct(Q,spvak2e1)
      Qspval3e1 = dotproduct(Q,spval3e1)
      acc49(1)=abb49(5)
      acc49(2)=abb49(6)
      acc49(3)=abb49(7)
      acc49(4)=abb49(8)
      acc49(5)=abb49(9)
      acc49(6)=abb49(10)
      acc49(7)=abb49(11)
      acc49(8)=abb49(12)
      acc49(9)=abb49(13)
      acc49(10)=abb49(14)
      acc49(11)=abb49(15)
      acc49(12)=abb49(16)
      acc49(13)=abb49(17)
      acc49(14)=abb49(18)
      acc49(15)=abb49(19)
      acc49(16)=abb49(20)
      acc49(17)=abb49(21)
      acc49(18)=abb49(22)
      acc49(19)=abb49(23)
      acc49(20)=abb49(24)
      acc49(21)=abb49(25)
      acc49(22)=abb49(26)
      acc49(23)=abb49(27)
      acc49(24)=abb49(28)
      acc49(25)=abb49(29)
      acc49(26)=abb49(31)
      acc49(27)=abb49(32)
      acc49(28)=abb49(33)
      acc49(29)=abb49(35)
      acc49(30)=abb49(36)
      acc49(31)=abb49(37)
      acc49(32)=Qspvae1k2*acc49(24)
      acc49(33)=Qspvae1l3*acc49(3)
      acc49(34)=Qspvae1e2*acc49(25)
      acc49(35)=QspQ*acc49(23)
      acc49(36)=Qspvae1e2*acc49(28)
      acc49(36)=acc49(26)+acc49(36)
      acc49(36)=Qspvae2k4*acc49(36)
      acc49(32)=acc49(36)+acc49(35)+acc49(34)+acc49(33)+acc49(15)+acc49(32)
      acc49(32)=Qspvak5e1*acc49(32)
      acc49(33)=Qspvae1k2*acc49(11)
      acc49(34)=Qspvae1l3*acc49(30)
      acc49(35)=Qspvae2e1*acc49(21)
      acc49(36)=QspQ*acc49(9)
      acc49(37)=-Qspvae2e1*acc49(28)
      acc49(37)=acc49(29)+acc49(37)
      acc49(37)=Qspvae1k4*acc49(37)
      acc49(33)=acc49(37)+acc49(36)+acc49(35)+acc49(34)+acc49(19)+acc49(33)
      acc49(33)=Qspvak5e2*acc49(33)
      acc49(34)=Qspvak2e1*acc49(13)
      acc49(35)=Qspval3e1*acc49(27)
      acc49(36)=Qspvae2e1*acc49(20)
      acc49(37)=QspQ*acc49(18)
      acc49(34)=acc49(37)+acc49(36)+acc49(35)+acc49(17)+acc49(34)
      acc49(34)=Qspvae1k4*acc49(34)
      acc49(35)=Qspvak2e1*acc49(10)
      acc49(36)=Qspval3e1*acc49(31)
      acc49(37)=Qspvae1e2*acc49(22)
      acc49(38)=QspQ*acc49(12)
      acc49(35)=acc49(38)+acc49(37)+acc49(36)+acc49(4)+acc49(35)
      acc49(35)=Qspvae2k4*acc49(35)
      acc49(36)=Qspvak2e1*acc49(1)
      acc49(37)=Qspvae1k2*acc49(8)
      acc49(38)=Qspval3e1*acc49(2)
      acc49(39)=Qspvae1l3*acc49(6)
      acc49(40)=Qspvae1e2*acc49(16)
      acc49(41)=Qspvae2e1*acc49(14)
      acc49(42)=QspQ*acc49(7)
      brack=acc49(5)+acc49(32)+acc49(33)+acc49(34)+acc49(35)+acc49(36)+acc49(37&
      &)+acc49(38)+acc49(39)+acc49(40)+acc49(41)+acc49(42)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram49_sign, shift => diagram49_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd49h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd49h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d49h0l1
