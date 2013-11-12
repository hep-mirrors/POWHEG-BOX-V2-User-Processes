module     p0_gg_hepem_d47h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity4d47h4l1.f90
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
      use p0_gg_hepem_abbrevd47h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc47(42)
      complex(ki) :: Qspvak2e1
      complex(ki) :: Qspval3e1
      complex(ki) :: Qspvae2e1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4e2
      complex(ki) :: Qspvae1k5
      complex(ki) :: Qspvae1e2
      complex(ki) :: Qspvak4e1
      complex(ki) :: Qspvae2k5
      complex(ki) :: Qspvae1k2
      complex(ki) :: Qspvae1l3
      Qspvak2e1 = dotproduct(Q,spvak2e1)
      Qspval3e1 = dotproduct(Q,spval3e1)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      QspQ = dotproduct(Q,Q)
      Qspvak4e2 = dotproduct(Q,spvak4e2)
      Qspvae1k5 = dotproduct(Q,spvae1k5)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      Qspvak4e1 = dotproduct(Q,spvak4e1)
      Qspvae2k5 = dotproduct(Q,spvae2k5)
      Qspvae1k2 = dotproduct(Q,spvae1k2)
      Qspvae1l3 = dotproduct(Q,spvae1l3)
      acc47(1)=abb47(5)
      acc47(2)=abb47(6)
      acc47(3)=abb47(7)
      acc47(4)=abb47(8)
      acc47(5)=abb47(9)
      acc47(6)=abb47(10)
      acc47(7)=abb47(11)
      acc47(8)=abb47(12)
      acc47(9)=abb47(13)
      acc47(10)=abb47(14)
      acc47(11)=abb47(15)
      acc47(12)=abb47(16)
      acc47(13)=abb47(17)
      acc47(14)=abb47(18)
      acc47(15)=abb47(19)
      acc47(16)=abb47(20)
      acc47(17)=abb47(21)
      acc47(18)=abb47(22)
      acc47(19)=abb47(23)
      acc47(20)=abb47(24)
      acc47(21)=abb47(25)
      acc47(22)=abb47(26)
      acc47(23)=abb47(27)
      acc47(24)=abb47(28)
      acc47(25)=abb47(29)
      acc47(26)=abb47(31)
      acc47(27)=abb47(32)
      acc47(28)=abb47(33)
      acc47(29)=abb47(35)
      acc47(30)=abb47(36)
      acc47(31)=abb47(37)
      acc47(32)=Qspvak2e1*acc47(13)
      acc47(33)=Qspval3e1*acc47(3)
      acc47(34)=Qspvae2e1*acc47(25)
      acc47(35)=QspQ*acc47(23)
      acc47(36)=-Qspvae2e1*acc47(28)
      acc47(36)=acc47(26)+acc47(36)
      acc47(36)=Qspvak4e2*acc47(36)
      acc47(32)=acc47(36)+acc47(35)+acc47(34)+acc47(33)+acc47(20)+acc47(32)
      acc47(32)=Qspvae1k5*acc47(32)
      acc47(33)=Qspvak2e1*acc47(10)
      acc47(34)=Qspval3e1*acc47(31)
      acc47(35)=Qspvae1e2*acc47(21)
      acc47(36)=QspQ*acc47(12)
      acc47(37)=Qspvae1e2*acc47(28)
      acc47(37)=acc47(29)+acc47(37)
      acc47(37)=Qspvak4e1*acc47(37)
      acc47(33)=acc47(37)+acc47(36)+acc47(35)+acc47(34)+acc47(19)+acc47(33)
      acc47(33)=Qspvae2k5*acc47(33)
      acc47(34)=Qspvae1k2*acc47(24)
      acc47(35)=Qspvae1l3*acc47(27)
      acc47(36)=Qspvae1e2*acc47(22)
      acc47(37)=QspQ*acc47(18)
      acc47(34)=acc47(37)+acc47(36)+acc47(35)+acc47(15)+acc47(34)
      acc47(34)=Qspvak4e1*acc47(34)
      acc47(35)=Qspvae1k2*acc47(11)
      acc47(36)=Qspvae1l3*acc47(30)
      acc47(37)=Qspvae2e1*acc47(17)
      acc47(38)=QspQ*acc47(9)
      acc47(35)=acc47(38)+acc47(37)+acc47(36)+acc47(4)+acc47(35)
      acc47(35)=Qspvak4e2*acc47(35)
      acc47(36)=Qspvak2e1*acc47(1)
      acc47(37)=Qspvae1k2*acc47(8)
      acc47(38)=Qspval3e1*acc47(2)
      acc47(39)=Qspvae1l3*acc47(6)
      acc47(40)=Qspvae1e2*acc47(16)
      acc47(41)=Qspvae2e1*acc47(14)
      acc47(42)=QspQ*acc47(7)
      brack=acc47(5)+acc47(32)+acc47(33)+acc47(34)+acc47(35)+acc47(36)+acc47(37&
      &)+acc47(38)+acc47(39)+acc47(40)+acc47(41)+acc47(42)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram47_sign, shift => diagram47_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd47h4
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd47h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d47h4l1
