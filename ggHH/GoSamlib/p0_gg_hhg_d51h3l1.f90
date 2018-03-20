module     p0_gg_hhg_d51h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d51h3l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc51(55)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      acc51(1)=abb51(7)
      acc51(2)=abb51(8)
      acc51(3)=abb51(9)
      acc51(4)=abb51(10)
      acc51(5)=abb51(11)
      acc51(6)=abb51(12)
      acc51(7)=abb51(13)
      acc51(8)=abb51(14)
      acc51(9)=abb51(15)
      acc51(10)=abb51(16)
      acc51(11)=abb51(17)
      acc51(12)=abb51(18)
      acc51(13)=abb51(19)
      acc51(14)=abb51(20)
      acc51(15)=abb51(21)
      acc51(16)=abb51(22)
      acc51(17)=abb51(23)
      acc51(18)=abb51(24)
      acc51(19)=abb51(25)
      acc51(20)=abb51(26)
      acc51(21)=abb51(27)
      acc51(22)=abb51(28)
      acc51(23)=abb51(29)
      acc51(24)=abb51(30)
      acc51(25)=abb51(31)
      acc51(26)=abb51(32)
      acc51(27)=abb51(33)
      acc51(28)=abb51(34)
      acc51(29)=abb51(35)
      acc51(30)=abb51(36)
      acc51(31)=abb51(37)
      acc51(32)=abb51(38)
      acc51(33)=abb51(39)
      acc51(34)=abb51(40)
      acc51(35)=abb51(41)
      acc51(36)=abb51(42)
      acc51(37)=abb51(43)
      acc51(38)=abb51(44)
      acc51(39)=abb51(45)
      acc51(40)=abb51(46)
      acc51(41)=abb51(47)
      acc51(42)=abb51(48)
      acc51(43)=abb51(49)
      acc51(44)=abb51(50)
      acc51(45)=abb51(51)
      acc51(46)=abb51(52)
      acc51(47)=Qspvak1k2*acc51(15)
      acc51(48)=Qspval3k5*acc51(8)
      acc51(49)=Qspvak5k2*acc51(36)
      acc51(50)=Qspval3k5*acc51(29)
      acc51(50)=acc51(42)+acc51(50)
      acc51(50)=Qspvak5l3*acc51(50)
      acc51(51)=QspQ*acc51(40)
      acc51(47)=acc51(51)+acc51(50)+acc51(49)+acc51(48)+acc51(4)+acc51(47)
      acc51(47)=Qspvak2k1*acc51(47)
      acc51(48)=Qspvak5k1*acc51(43)
      acc51(49)=Qspvak2k1*Qspvak5k2
      acc51(50)=acc51(2)*acc51(49)
      acc51(48)=acc51(50)+acc51(24)+acc51(48)
      acc51(48)=Qspvak2k5*acc51(48)
      acc51(50)=Qspk5*acc51(28)
      acc51(51)=Qspvak5l3*acc51(34)
      acc51(52)=Qspvak2l3*acc51(20)
      acc51(53)=QspQ*acc51(38)
      acc51(53)=acc51(23)+acc51(53)
      acc51(53)=Qspvak5k1*acc51(53)
      acc51(54)=Qspvak2k5*acc51(44)
      acc51(54)=acc51(54)+acc51(37)
      acc51(54)=Qspvak5k1*acc51(54)
      acc51(54)=acc51(28)+acc51(54)
      acc51(54)=Qspk2*acc51(54)
      acc51(47)=acc51(54)+acc51(48)+acc51(47)+acc51(53)+acc51(52)+acc51(51)+acc&
      &51(25)+acc51(50)
      acc51(47)=Qspk2*acc51(47)
      acc51(48)=Qspvak2l3*acc51(32)
      acc51(48)=acc51(6)+acc51(48)
      acc51(48)=Qspval3k2*acc51(48)
      acc51(50)=QspQ*acc51(45)
      acc51(48)=acc51(50)+acc51(18)+acc51(48)
      acc51(48)=Qspvak5k1*acc51(48)
      acc51(50)=-QspQ*acc51(29)
      acc51(50)=acc51(22)+acc51(50)
      acc51(49)=acc51(50)*acc51(49)
      acc51(50)=Qspk5*acc51(14)
      acc51(51)=Qspvak5l3*acc51(39)
      acc51(52)=Qspvak2l3*acc51(26)
      acc51(53)=QspQ*acc51(27)
      acc51(53)=-acc51(11)+acc51(53)
      acc51(53)=QspQ*acc51(53)
      acc51(48)=acc51(49)+acc51(48)+acc51(53)+acc51(52)+acc51(51)+acc51(3)+acc5&
      &1(50)
      acc51(48)=Qspvak2k5*acc51(48)
      acc51(49)=Qspvak1k2*acc51(12)
      acc51(50)=Qspval3k5*acc51(46)
      acc51(51)=Qspval3k2*acc51(19)
      acc51(52)=QspQ*acc51(41)
      acc51(52)=acc51(1)+acc51(52)
      acc51(52)=QspQ*acc51(52)
      acc51(49)=acc51(52)+acc51(51)+acc51(50)+acc51(16)+acc51(49)
      acc51(49)=Qspvak2k1*acc51(49)
      acc51(50)=Qspvak2l3*acc51(21)
      acc51(50)=acc51(10)+acc51(50)
      acc51(50)=Qspval3k2*acc51(50)
      acc51(51)=QspQ*acc51(35)
      acc51(50)=acc51(51)+acc51(31)+acc51(50)
      acc51(50)=Qspvak5k1*acc51(50)
      acc51(51)=Qspk5*acc51(17)
      acc51(52)=Qspvak5l3*acc51(33)
      acc51(53)=Qspvak2l3*acc51(7)
      acc51(54)=Qspvak2l3*acc51(30)
      acc51(54)=acc51(9)+acc51(54)
      acc51(54)=Qspval3k2*acc51(54)
      acc51(55)=QspQ*acc51(13)
      brack=acc51(5)+acc51(47)+acc51(48)+acc51(49)+acc51(50)+acc51(51)+acc51(52&
      &)+acc51(53)+acc51(54)+acc51(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d51h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd51h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d51
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d51 = 0.0_ki
      d51 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d51, ki), aimag(d51), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d51h3l1
