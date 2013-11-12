module     p0_gg_hepem_d23h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d23h0l1.f90
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
      use p0_gg_hepem_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(56)
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1e1
      complex(ki) :: Qspvak2e1
      complex(ki) :: Qspval3e1
      complex(ki) :: Qspvak5e1
      complex(ki) :: QspQ
      complex(ki) :: Qspvae2k4
      complex(ki) :: Qspvae1e2
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvae1k1
      complex(ki) :: Qspvae1k2
      complex(ki) :: Qspvae1l3
      complex(ki) :: Qspvae1k4
      complex(ki) :: Qspvak5e2
      complex(ki) :: Qspvae2e1
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1e1 = dotproduct(Q,spvak1e1)
      Qspvak2e1 = dotproduct(Q,spvak2e1)
      Qspval3e1 = dotproduct(Q,spval3e1)
      Qspvak5e1 = dotproduct(Q,spvak5e1)
      QspQ = dotproduct(Q,Q)
      Qspvae2k4 = dotproduct(Q,spvae2k4)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvae1k1 = dotproduct(Q,spvae1k1)
      Qspvae1k2 = dotproduct(Q,spvae1k2)
      Qspvae1l3 = dotproduct(Q,spvae1l3)
      Qspvae1k4 = dotproduct(Q,spvae1k4)
      Qspvak5e2 = dotproduct(Q,spvak5e2)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      acc23(1)=abb23(5)
      acc23(2)=abb23(6)
      acc23(3)=abb23(7)
      acc23(4)=abb23(8)
      acc23(5)=abb23(9)
      acc23(6)=abb23(10)
      acc23(7)=abb23(11)
      acc23(8)=abb23(12)
      acc23(9)=abb23(13)
      acc23(10)=abb23(14)
      acc23(11)=abb23(15)
      acc23(12)=abb23(16)
      acc23(13)=abb23(17)
      acc23(14)=abb23(18)
      acc23(15)=abb23(19)
      acc23(16)=abb23(20)
      acc23(17)=abb23(21)
      acc23(18)=abb23(22)
      acc23(19)=abb23(23)
      acc23(20)=abb23(24)
      acc23(21)=abb23(25)
      acc23(22)=abb23(26)
      acc23(23)=abb23(27)
      acc23(24)=abb23(28)
      acc23(25)=abb23(29)
      acc23(26)=abb23(30)
      acc23(27)=abb23(31)
      acc23(28)=abb23(32)
      acc23(29)=abb23(33)
      acc23(30)=abb23(34)
      acc23(31)=abb23(35)
      acc23(32)=abb23(36)
      acc23(33)=abb23(37)
      acc23(34)=abb23(38)
      acc23(35)=abb23(39)
      acc23(36)=abb23(40)
      acc23(37)=abb23(41)
      acc23(38)=abb23(42)
      acc23(39)=abb23(43)
      acc23(40)=abb23(44)
      acc23(41)=abb23(45)
      acc23(42)=Qspvak1k4*acc23(33)
      acc23(43)=Qspvak1e1*acc23(16)
      acc23(44)=Qspvak2e1*acc23(26)
      acc23(45)=Qspval3e1*acc23(36)
      acc23(46)=Qspvak5e1*acc23(12)
      acc23(47)=QspQ*acc23(27)
      acc23(48)=-Qspvak5e1*acc23(9)
      acc23(48)=acc23(7)+acc23(48)
      acc23(48)=Qspvae2k4*acc23(48)
      acc23(42)=acc23(48)+acc23(47)+acc23(46)+acc23(45)+acc23(44)+acc23(43)+acc&
      &23(8)+acc23(42)
      acc23(42)=Qspvae1e2*acc23(42)
      acc23(43)=Qspvak5k1*acc23(29)
      acc23(44)=Qspvae1k1*acc23(30)
      acc23(45)=Qspvae1k2*acc23(40)
      acc23(46)=Qspvae1l3*acc23(14)
      acc23(47)=Qspvae1k4*acc23(10)
      acc23(48)=QspQ*acc23(32)
      acc23(49)=Qspvae1k4*acc23(9)
      acc23(49)=acc23(5)+acc23(49)
      acc23(49)=Qspvak5e2*acc23(49)
      acc23(43)=acc23(49)+acc23(48)+acc23(47)+acc23(46)+acc23(45)+acc23(44)+acc&
      &23(1)+acc23(43)
      acc23(43)=Qspvae2e1*acc23(43)
      acc23(44)=Qspvak5k1*acc23(25)
      acc23(45)=Qspvae1k1*acc23(21)
      acc23(46)=Qspvae1k2*acc23(2)
      acc23(47)=-Qspvae1l3*acc23(37)
      acc23(48)=QspQ*acc23(31)
      acc23(44)=acc23(48)+acc23(47)+acc23(46)+acc23(45)+acc23(24)+acc23(44)
      acc23(44)=Qspvae2k4*acc23(44)
      acc23(45)=-Qspvak1k4*acc23(34)
      acc23(46)=Qspvak1e1*acc23(17)
      acc23(47)=Qspvak2e1*acc23(3)
      acc23(48)=Qspval3e1*acc23(39)
      acc23(49)=QspQ*acc23(35)
      acc23(45)=acc23(49)+acc23(48)+acc23(47)+acc23(46)+acc23(15)+acc23(45)
      acc23(45)=Qspvak5e2*acc23(45)
      acc23(46)=Qspvak1k4*acc23(19)
      acc23(47)=-Qspvak5k1*acc23(23)
      acc23(48)=Qspvak1e1*acc23(18)
      acc23(49)=Qspvae1k1*acc23(22)
      acc23(50)=Qspvak2e1*acc23(41)
      acc23(51)=Qspvae1k2*acc23(28)
      acc23(52)=Qspval3e1*acc23(38)
      acc23(53)=Qspvae1l3*acc23(13)
      acc23(54)=Qspvae1k4*acc23(4)
      acc23(55)=Qspvak5e1*acc23(11)
      acc23(56)=QspQ*acc23(20)
      brack=acc23(6)+acc23(42)+acc23(43)+acc23(44)+acc23(45)+acc23(46)+acc23(47&
      &)+acc23(48)+acc23(49)+acc23(50)+acc23(51)+acc23(52)+acc23(53)+acc23(54)+&
      &acc23(55)+acc23(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram23_sign, shift => diagram23_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd23h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd23h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d23h0l1
