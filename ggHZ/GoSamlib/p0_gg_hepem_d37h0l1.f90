module     p0_gg_hepem_d37h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d37h0l1.f90
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
      use p0_gg_hepem_abbrevd37h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc37(48)
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvae2k2
      complex(ki) :: Qspvae2l3
      complex(ki) :: Qspvae2k4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5e1
      complex(ki) :: Qspvae1e2
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2e2
      complex(ki) :: Qspval3e2
      complex(ki) :: Qspvak5e2
      complex(ki) :: Qspvae1k4
      complex(ki) :: Qspvae2e1
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvae2k2 = dotproduct(Q,spvae2k2)
      Qspvae2l3 = dotproduct(Q,spvae2l3)
      Qspvae2k4 = dotproduct(Q,spvae2k4)
      QspQ = dotproduct(Q,Q)
      Qspvak5e1 = dotproduct(Q,spvak5e1)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2e2 = dotproduct(Q,spvak2e2)
      Qspval3e2 = dotproduct(Q,spval3e2)
      Qspvak5e2 = dotproduct(Q,spvak5e2)
      Qspvae1k4 = dotproduct(Q,spvae1k4)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      acc37(1)=abb37(5)
      acc37(2)=abb37(6)
      acc37(3)=abb37(7)
      acc37(4)=abb37(8)
      acc37(5)=abb37(9)
      acc37(6)=abb37(10)
      acc37(7)=abb37(11)
      acc37(8)=abb37(12)
      acc37(9)=abb37(13)
      acc37(10)=abb37(14)
      acc37(11)=abb37(15)
      acc37(12)=abb37(16)
      acc37(13)=abb37(17)
      acc37(14)=abb37(18)
      acc37(15)=abb37(19)
      acc37(16)=abb37(20)
      acc37(17)=abb37(21)
      acc37(18)=abb37(22)
      acc37(19)=abb37(23)
      acc37(20)=abb37(24)
      acc37(21)=abb37(25)
      acc37(22)=abb37(26)
      acc37(23)=abb37(27)
      acc37(24)=abb37(28)
      acc37(25)=abb37(29)
      acc37(26)=abb37(30)
      acc37(27)=abb37(31)
      acc37(28)=abb37(32)
      acc37(29)=abb37(33)
      acc37(30)=abb37(34)
      acc37(31)=abb37(35)
      acc37(32)=abb37(36)
      acc37(33)=abb37(37)
      acc37(34)=abb37(38)
      acc37(35)=abb37(39)
      acc37(36)=Qspvak5k2*acc37(26)
      acc37(37)=Qspvae2k2*acc37(24)
      acc37(38)=Qspvae2l3*acc37(27)
      acc37(39)=Qspvae2k4*acc37(33)
      acc37(40)=QspQ*acc37(30)
      acc37(41)=Qspvae2k4*acc37(25)
      acc37(41)=-acc37(5)+acc37(41)
      acc37(41)=Qspvak5e1*acc37(41)
      acc37(36)=acc37(41)+acc37(40)+acc37(39)+acc37(38)+acc37(37)+acc37(2)+acc3&
      &7(36)
      acc37(36)=Qspvae1e2*acc37(36)
      acc37(37)=Qspvak2k4*acc37(28)
      acc37(38)=Qspvak2e2*acc37(1)
      acc37(39)=Qspval3e2*acc37(14)
      acc37(40)=Qspvak5e2*acc37(31)
      acc37(41)=QspQ*acc37(29)
      acc37(42)=-Qspvak5e2*acc37(25)
      acc37(42)=acc37(9)+acc37(42)
      acc37(42)=Qspvae1k4*acc37(42)
      acc37(37)=acc37(42)+acc37(41)+acc37(40)+acc37(39)+acc37(38)+acc37(19)+acc&
      &37(37)
      acc37(37)=Qspvae2e1*acc37(37)
      acc37(38)=-Qspvak5k2*acc37(15)
      acc37(39)=Qspvae2k2*acc37(35)
      acc37(40)=Qspvae2l3*acc37(34)
      acc37(41)=QspQ*acc37(18)
      acc37(38)=acc37(41)+acc37(40)+acc37(39)+acc37(3)+acc37(38)
      acc37(38)=Qspvae1k4*acc37(38)
      acc37(39)=Qspvak2k4*acc37(20)
      acc37(40)=-Qspvak2e2*acc37(10)
      acc37(41)=-Qspval3e2*acc37(32)
      acc37(42)=QspQ*acc37(23)
      acc37(39)=acc37(42)+acc37(41)+acc37(40)+acc37(7)+acc37(39)
      acc37(39)=Qspvak5e1*acc37(39)
      acc37(40)=-Qspvak2k4*acc37(21)
      acc37(41)=Qspvak5k2*acc37(16)
      acc37(42)=Qspvak2e2*acc37(11)
      acc37(43)=Qspvae2k2*acc37(13)
      acc37(44)=Qspval3e2*acc37(22)
      acc37(45)=-Qspvae2l3*acc37(17)
      acc37(46)=Qspvae2k4*acc37(4)
      acc37(47)=Qspvak5e2*acc37(8)
      acc37(48)=QspQ*acc37(12)
      brack=acc37(6)+acc37(36)+acc37(37)+acc37(38)+acc37(39)+acc37(40)+acc37(41&
      &)+acc37(42)+acc37(43)+acc37(44)+acc37(45)+acc37(46)+acc37(47)+acc37(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram37_sign, shift => diagram37_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd37h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d37
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d37 = 0.0_ki
      d37 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d37, ki), aimag(d37), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd37h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d37
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d37 = 0.0_ki
      d37 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d37, ki), aimag(d37), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d37h0l1
