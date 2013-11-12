module     p0_gg_hepem_d35h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity4d35h4l1.f90
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
      use p0_gg_hepem_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc35(48)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvae2k2
      complex(ki) :: Qspvae2l3
      complex(ki) :: Qspvae2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4e1
      complex(ki) :: Qspvae1e2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2e2
      complex(ki) :: Qspval3e2
      complex(ki) :: Qspvak4e2
      complex(ki) :: Qspvae1k5
      complex(ki) :: Qspvae2e1
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvae2k2 = dotproduct(Q,spvae2k2)
      Qspvae2l3 = dotproduct(Q,spvae2l3)
      Qspvae2k5 = dotproduct(Q,spvae2k5)
      QspQ = dotproduct(Q,Q)
      Qspvak4e1 = dotproduct(Q,spvak4e1)
      Qspvae1e2 = dotproduct(Q,spvae1e2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2e2 = dotproduct(Q,spvak2e2)
      Qspval3e2 = dotproduct(Q,spval3e2)
      Qspvak4e2 = dotproduct(Q,spvak4e2)
      Qspvae1k5 = dotproduct(Q,spvae1k5)
      Qspvae2e1 = dotproduct(Q,spvae2e1)
      acc35(1)=abb35(5)
      acc35(2)=abb35(6)
      acc35(3)=abb35(7)
      acc35(4)=abb35(8)
      acc35(5)=abb35(9)
      acc35(6)=abb35(10)
      acc35(7)=abb35(11)
      acc35(8)=abb35(12)
      acc35(9)=abb35(13)
      acc35(10)=abb35(14)
      acc35(11)=abb35(15)
      acc35(12)=abb35(16)
      acc35(13)=abb35(17)
      acc35(14)=abb35(18)
      acc35(15)=abb35(19)
      acc35(16)=abb35(20)
      acc35(17)=abb35(21)
      acc35(18)=abb35(22)
      acc35(19)=abb35(23)
      acc35(20)=abb35(24)
      acc35(21)=abb35(25)
      acc35(22)=abb35(26)
      acc35(23)=abb35(27)
      acc35(24)=abb35(28)
      acc35(25)=abb35(29)
      acc35(26)=abb35(30)
      acc35(27)=abb35(31)
      acc35(28)=abb35(32)
      acc35(29)=abb35(33)
      acc35(30)=abb35(34)
      acc35(31)=abb35(35)
      acc35(32)=abb35(36)
      acc35(33)=abb35(37)
      acc35(34)=abb35(38)
      acc35(35)=abb35(39)
      acc35(36)=Qspvak4k2*acc35(26)
      acc35(37)=Qspvae2k2*acc35(24)
      acc35(38)=Qspvae2l3*acc35(27)
      acc35(39)=Qspvae2k5*acc35(31)
      acc35(40)=QspQ*acc35(30)
      acc35(41)=Qspvae2k5*acc35(25)
      acc35(41)=-acc35(9)+acc35(41)
      acc35(41)=Qspvak4e1*acc35(41)
      acc35(36)=acc35(41)+acc35(40)+acc35(39)+acc35(38)+acc35(37)+acc35(2)+acc3&
      &5(36)
      acc35(36)=Qspvae1e2*acc35(36)
      acc35(37)=Qspvak2k5*acc35(28)
      acc35(38)=Qspvak2e2*acc35(1)
      acc35(39)=Qspval3e2*acc35(14)
      acc35(40)=Qspvak4e2*acc35(33)
      acc35(41)=QspQ*acc35(29)
      acc35(42)=-Qspvak4e2*acc35(25)
      acc35(42)=acc35(5)+acc35(42)
      acc35(42)=Qspvae1k5*acc35(42)
      acc35(37)=acc35(42)+acc35(41)+acc35(40)+acc35(39)+acc35(38)+acc35(19)+acc&
      &35(37)
      acc35(37)=Qspvae2e1*acc35(37)
      acc35(38)=Qspvak2k5*acc35(20)
      acc35(39)=-Qspvak2e2*acc35(10)
      acc35(40)=-Qspval3e2*acc35(34)
      acc35(41)=QspQ*acc35(23)
      acc35(38)=acc35(41)+acc35(40)+acc35(39)+acc35(3)+acc35(38)
      acc35(38)=Qspvak4e1*acc35(38)
      acc35(39)=-Qspvak4k2*acc35(15)
      acc35(40)=Qspvae2k2*acc35(35)
      acc35(41)=Qspvae2l3*acc35(32)
      acc35(42)=QspQ*acc35(18)
      acc35(39)=acc35(42)+acc35(41)+acc35(40)+acc35(7)+acc35(39)
      acc35(39)=Qspvae1k5*acc35(39)
      acc35(40)=-Qspvak2k5*acc35(21)
      acc35(41)=Qspvak4k2*acc35(16)
      acc35(42)=Qspvak2e2*acc35(11)
      acc35(43)=Qspvae2k2*acc35(13)
      acc35(44)=Qspval3e2*acc35(22)
      acc35(45)=-Qspvae2l3*acc35(17)
      acc35(46)=Qspvak4e2*acc35(4)
      acc35(47)=Qspvae2k5*acc35(8)
      acc35(48)=QspQ*acc35(12)
      brack=acc35(6)+acc35(36)+acc35(37)+acc35(38)+acc35(39)+acc35(40)+acc35(41&
      &)+acc35(42)+acc35(43)+acc35(44)+acc35(45)+acc35(46)+acc35(47)+acc35(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_gg_hepem_groups, only: &
!           & sign => diagram35_sign, shift => diagram35_shift
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd35h4
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d35
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d35 = 0.0_ki
      d35 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d35, ki), aimag(d35), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd35h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d35
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d35 = 0.0_ki
      d35 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d35, ki), aimag(d35), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_gg_hepem_d35h4l1
