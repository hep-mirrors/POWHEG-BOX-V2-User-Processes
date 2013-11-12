module     p0_gg_hepem_d25h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity4d25h4l1.f90
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
      use p0_gg_hepem_abbrevd25h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc25(56)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1e1
      complex(ki) :: Qspvak2e1
      complex(ki) :: Qspval3e1
      complex(ki) :: Qspvak4e1
      complex(ki) :: QspQ
      complex(ki) :: Qspvae2k5
      complex(ki) :: Qspvae1e2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvae1k1
      complex(ki) :: Qspvae1k2
      complex(ki) :: Qspvae1l3
      complex(ki) :: Qspvae1k5
      complex(ki) :: Qspvak4e2
      complex(ki) :: Qspvae2e1
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1e1 = dotproduct(Q,spvak1e1)
      Qspvak2e1 = dotproduct(Q,spvak2e1)
      Qspval3e1 = dotproduct(Q,spval3e1)
      Qspvak4e1 = dotproduct(Q,spvak4e1)
      QspQ = dotproduct(Q,Q)
      Qspvae2k5 = dotproduct(Q,spvae2k5)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvae1k1 = dotproduct(Q,spvae1k1)
      Qspvae1k2 = dotproduct(Q,spvae1k2)
      Qspvae1l3 = dotproduct(Q,spvae1l3)
      Qspvae1k5 = dotproduct(Q,spvae1k5)
      Qspvak4e2 = dotproduct(Q,spvak4e2)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      acc25(1)=abb25(5)
      acc25(2)=abb25(6)
      acc25(3)=abb25(7)
      acc25(4)=abb25(8)
      acc25(5)=abb25(9)
      acc25(6)=abb25(10)
      acc25(7)=abb25(11)
      acc25(8)=abb25(12)
      acc25(9)=abb25(13)
      acc25(10)=abb25(14)
      acc25(11)=abb25(15)
      acc25(12)=abb25(16)
      acc25(13)=abb25(17)
      acc25(14)=abb25(18)
      acc25(15)=abb25(19)
      acc25(16)=abb25(20)
      acc25(17)=abb25(21)
      acc25(18)=abb25(22)
      acc25(19)=abb25(23)
      acc25(20)=abb25(24)
      acc25(21)=abb25(25)
      acc25(22)=abb25(26)
      acc25(23)=abb25(27)
      acc25(24)=abb25(28)
      acc25(25)=abb25(29)
      acc25(26)=abb25(30)
      acc25(27)=abb25(31)
      acc25(28)=abb25(32)
      acc25(29)=abb25(33)
      acc25(30)=abb25(34)
      acc25(31)=abb25(35)
      acc25(32)=abb25(36)
      acc25(33)=abb25(37)
      acc25(34)=abb25(38)
      acc25(35)=abb25(39)
      acc25(36)=abb25(40)
      acc25(37)=abb25(41)
      acc25(38)=abb25(42)
      acc25(39)=abb25(43)
      acc25(40)=abb25(44)
      acc25(41)=abb25(45)
      acc25(42)=-Qspvak1k5*acc25(34)
      acc25(43)=Qspvak1e1*acc25(31)
      acc25(44)=Qspvak2e1*acc25(41)
      acc25(45)=Qspval3e1*acc25(38)
      acc25(46)=Qspvak4e1*acc25(10)
      acc25(47)=QspQ*acc25(36)
      acc25(48)=-Qspvak4e1*acc25(9)
      acc25(48)=acc25(5)+acc25(48)
      acc25(48)=Qspvae2k5*acc25(48)
      acc25(42)=acc25(48)+acc25(47)+acc25(46)+acc25(45)+acc25(44)+acc25(43)+acc&
      &25(1)+acc25(42)
      acc25(42)=Qspvae1e2*acc25(42)
      acc25(43)=Qspvak4k1*acc25(29)
      acc25(44)=Qspvae1k1*acc25(16)
      acc25(45)=Qspvae1k2*acc25(30)
      acc25(46)=Qspvae1l3*acc25(14)
      acc25(47)=Qspvae1k5*acc25(12)
      acc25(48)=QspQ*acc25(26)
      acc25(49)=Qspvae1k5*acc25(9)
      acc25(49)=acc25(7)+acc25(49)
      acc25(49)=Qspvak4e2*acc25(49)
      acc25(43)=acc25(49)+acc25(48)+acc25(47)+acc25(46)+acc25(45)+acc25(44)+acc&
      &25(8)+acc25(43)
      acc25(43)=Qspvae2e1*acc25(43)
      acc25(44)=-Qspvak1k5*acc25(22)
      acc25(45)=Qspvak1e1*acc25(21)
      acc25(46)=Qspvak2e1*acc25(2)
      acc25(47)=Qspval3e1*acc25(39)
      acc25(48)=QspQ*acc25(28)
      acc25(44)=acc25(48)+acc25(47)+acc25(46)+acc25(45)+acc25(24)+acc25(44)
      acc25(44)=Qspvak4e2*acc25(44)
      acc25(45)=Qspvak4k1*acc25(37)
      acc25(46)=Qspvae1k1*acc25(17)
      acc25(47)=-Qspvae1k2*acc25(3)
      acc25(48)=-Qspvae1l3*acc25(33)
      acc25(49)=QspQ*acc25(32)
      acc25(45)=acc25(49)+acc25(48)+acc25(47)+acc25(46)+acc25(15)+acc25(45)
      acc25(45)=Qspvae2k5*acc25(45)
      acc25(46)=Qspvak1k5*acc25(23)
      acc25(47)=-Qspvak4k1*acc25(19)
      acc25(48)=Qspvak1e1*acc25(20)
      acc25(49)=Qspvae1k1*acc25(18)
      acc25(50)=Qspvak2e1*acc25(27)
      acc25(51)=Qspvae1k2*acc25(40)
      acc25(52)=Qspval3e1*acc25(35)
      acc25(53)=Qspvae1l3*acc25(13)
      acc25(54)=Qspvak4e1*acc25(4)
      acc25(55)=Qspvae1k5*acc25(11)
      acc25(56)=QspQ*acc25(25)
      brack=acc25(6)+acc25(42)+acc25(43)+acc25(44)+acc25(45)+acc25(46)+acc25(47&
      &)+acc25(48)+acc25(49)+acc25(50)+acc25(51)+acc25(52)+acc25(53)+acc25(54)+&
      &acc25(55)+acc25(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram25_sign, shift => diagram25_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd25h4
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d25
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d25 = 0.0_ki
      d25 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d25, ki), aimag(d25), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd25h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d25
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d25 = 0.0_ki
      d25 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d25, ki), aimag(d25), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d25h4l1
