module     p0_gg_hhg_d45h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d45h3l1.f90
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
      use p0_gg_hhg_abbrevd45h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc45(53)
      complex(ki) :: Qspk1
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: QspQ
      complex(ki) :: Qspk5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k2
      Qspk1 = dotproduct(Q,k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      QspQ = dotproduct(Q,Q)
      Qspk5 = dotproduct(Q,k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      acc45(1)=abb45(7)
      acc45(2)=abb45(8)
      acc45(3)=abb45(9)
      acc45(4)=abb45(10)
      acc45(5)=abb45(11)
      acc45(6)=abb45(12)
      acc45(7)=abb45(13)
      acc45(8)=abb45(14)
      acc45(9)=abb45(15)
      acc45(10)=abb45(16)
      acc45(11)=abb45(17)
      acc45(12)=abb45(18)
      acc45(13)=abb45(19)
      acc45(14)=abb45(20)
      acc45(15)=abb45(21)
      acc45(16)=abb45(22)
      acc45(17)=abb45(23)
      acc45(18)=abb45(24)
      acc45(19)=abb45(25)
      acc45(20)=abb45(26)
      acc45(21)=abb45(27)
      acc45(22)=abb45(28)
      acc45(23)=abb45(29)
      acc45(24)=abb45(30)
      acc45(25)=abb45(31)
      acc45(26)=abb45(33)
      acc45(27)=abb45(34)
      acc45(28)=abb45(35)
      acc45(29)=abb45(36)
      acc45(30)=abb45(37)
      acc45(31)=abb45(38)
      acc45(32)=abb45(39)
      acc45(33)=abb45(41)
      acc45(34)=abb45(42)
      acc45(35)=abb45(43)
      acc45(36)=abb45(44)
      acc45(37)=abb45(46)
      acc45(38)=abb45(48)
      acc45(39)=abb45(49)
      acc45(40)=abb45(50)
      acc45(41)=abb45(51)
      acc45(42)=abb45(55)
      acc45(43)=abb45(56)
      acc45(44)=Qspk1*acc45(32)
      acc45(45)=Qspval3k1*acc45(29)
      acc45(46)=Qspvak2l3*Qspval3k1
      acc45(47)=acc45(43)*acc45(46)
      acc45(48)=QspQ*acc45(31)
      acc45(44)=acc45(48)+acc45(47)+acc45(45)+acc45(4)+acc45(44)
      acc45(44)=Qspk5*acc45(44)
      acc45(45)=Qspval3k5*acc45(1)
      acc45(47)=Qspval3k5*acc45(39)
      acc45(47)=acc45(40)+acc45(47)
      acc45(47)=Qspvak2l3*acc45(47)
      acc45(48)=QspQ*acc45(16)
      acc45(49)=Qspvak2k5*acc45(37)
      acc45(45)=acc45(49)+acc45(48)+acc45(47)+acc45(15)+acc45(45)
      acc45(45)=Qspvak5k1*acc45(45)
      acc45(47)=-Qspk1*acc45(20)
      acc45(48)=QspQ*acc45(42)
      acc45(49)=Qspk1*acc45(3)
      acc45(49)=-acc45(22)+acc45(49)
      acc45(49)=Qspk5*acc45(49)
      acc45(50)=-Qspvak5k1*acc45(39)*Qspvak1k5
      acc45(47)=acc45(50)+acc45(49)+acc45(48)+acc45(8)+acc45(47)
      acc45(47)=Qspvak2k1*acc45(47)
      acc45(48)=Qspvak5k1*Qspvak2k5*acc45(38)
      acc45(49)=Qspk5*acc45(24)
      acc45(49)=acc45(22)+acc45(49)
      acc45(49)=Qspvak2k1*acc45(49)
      acc45(48)=acc45(48)+acc45(49)
      acc45(48)=Qspk2*acc45(48)
      acc45(49)=Qspk1*acc45(30)
      acc45(50)=Qspval3k1*acc45(27)
      acc45(46)=acc45(42)*acc45(46)
      acc45(51)=QspQ*acc45(34)
      acc45(52)=Qspvak2k5*acc45(35)
      acc45(44)=acc45(48)+acc45(47)+acc45(45)+acc45(44)+acc45(52)+acc45(51)+acc&
      &45(46)+acc45(50)+acc45(26)+acc45(49)
      acc45(44)=Qspk2*acc45(44)
      acc45(45)=acc45(23)*Qspvak1k5
      acc45(46)=-Qspk1*acc45(36)
      acc45(47)=QspQ*acc45(25)
      acc45(47)=-acc45(36)+acc45(47)
      acc45(47)=QspQ*acc45(47)
      acc45(48)=QspQ*acc45(39)
      acc45(48)=acc45(19)+acc45(48)
      acc45(48)=Qspvak2k5*Qspvak5k2*acc45(48)
      acc45(49)=Qspk5*acc45(11)
      acc45(50)=Qspvak5k1*acc45(2)
      acc45(45)=acc45(50)+acc45(49)+acc45(48)+acc45(47)+acc45(46)+acc45(6)+acc4&
      &5(45)
      acc45(45)=Qspvak2k1*acc45(45)
      acc45(46)=-Qspval3k5*acc45(23)
      acc45(47)=Qspval3k1*acc45(41)
      acc45(46)=acc45(47)+acc45(9)+acc45(46)
      acc45(46)=Qspvak2l3*acc45(46)
      acc45(47)=Qspval3k5*acc45(18)
      acc45(48)=Qspk1*acc45(28)
      acc45(49)=Qspval3k1*acc45(14)
      acc45(50)=QspQ*acc45(33)
      acc45(51)=QspQ*acc45(5)
      acc45(51)=acc45(13)+acc45(51)
      acc45(51)=QspQ*acc45(51)
      acc45(51)=acc45(7)+acc45(51)
      acc45(51)=Qspvak2k5*acc45(51)
      acc45(52)=Qspvak2k5*acc45(12)
      acc45(52)=acc45(21)+acc45(52)
      acc45(52)=Qspk5*acc45(52)
      acc45(53)=-Qspvak2k5*acc45(36)
      acc45(53)=acc45(17)+acc45(53)
      acc45(53)=Qspvak5k1*acc45(53)
      brack=acc45(10)+acc45(44)+acc45(45)+acc45(46)+acc45(47)+acc45(48)+acc45(4&
      &9)+acc45(50)+acc45(51)+acc45(52)+acc45(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d45h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd45h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d45
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d45 = 0.0_ki
      d45 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d45, ki), aimag(d45), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d45h3l1
