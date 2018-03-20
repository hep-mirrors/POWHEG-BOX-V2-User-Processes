module     p0_gg_hhg_d49h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d49h3l1.f90
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
      use p0_gg_hhg_abbrevd49h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc49(53)
      complex(ki) :: Qspk1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k2
      Qspk1 = dotproduct(Q,k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      acc49(1)=abb49(7)
      acc49(2)=abb49(8)
      acc49(3)=abb49(9)
      acc49(4)=abb49(10)
      acc49(5)=abb49(11)
      acc49(6)=abb49(12)
      acc49(7)=abb49(13)
      acc49(8)=abb49(14)
      acc49(9)=abb49(15)
      acc49(10)=abb49(16)
      acc49(11)=abb49(17)
      acc49(12)=abb49(18)
      acc49(13)=abb49(19)
      acc49(14)=abb49(20)
      acc49(15)=abb49(21)
      acc49(16)=abb49(22)
      acc49(17)=abb49(23)
      acc49(18)=abb49(24)
      acc49(19)=abb49(25)
      acc49(20)=abb49(26)
      acc49(21)=abb49(27)
      acc49(22)=abb49(28)
      acc49(23)=abb49(29)
      acc49(24)=abb49(30)
      acc49(25)=abb49(31)
      acc49(26)=abb49(33)
      acc49(27)=abb49(34)
      acc49(28)=abb49(35)
      acc49(29)=abb49(36)
      acc49(30)=abb49(37)
      acc49(31)=abb49(38)
      acc49(32)=abb49(39)
      acc49(33)=abb49(41)
      acc49(34)=abb49(42)
      acc49(35)=abb49(43)
      acc49(36)=abb49(44)
      acc49(37)=abb49(46)
      acc49(38)=abb49(48)
      acc49(39)=abb49(49)
      acc49(40)=abb49(50)
      acc49(41)=abb49(51)
      acc49(42)=abb49(55)
      acc49(43)=abb49(56)
      acc49(44)=Qspk1*acc49(32)
      acc49(45)=Qspval4k1*acc49(29)
      acc49(46)=Qspvak2l4*Qspval4k1
      acc49(47)=acc49(43)*acc49(46)
      acc49(48)=QspQ*acc49(31)
      acc49(44)=acc49(48)+acc49(47)+acc49(45)+acc49(4)+acc49(44)
      acc49(44)=Qspk5*acc49(44)
      acc49(45)=Qspval4k5*acc49(1)
      acc49(47)=Qspval4k5*acc49(39)
      acc49(47)=acc49(40)+acc49(47)
      acc49(47)=Qspvak2l4*acc49(47)
      acc49(48)=QspQ*acc49(16)
      acc49(49)=Qspvak2k5*acc49(37)
      acc49(45)=acc49(49)+acc49(48)+acc49(47)+acc49(15)+acc49(45)
      acc49(45)=Qspvak5k1*acc49(45)
      acc49(47)=-Qspk1*acc49(20)
      acc49(48)=QspQ*acc49(42)
      acc49(49)=Qspk1*acc49(3)
      acc49(49)=-acc49(22)+acc49(49)
      acc49(49)=Qspk5*acc49(49)
      acc49(50)=-Qspvak5k1*acc49(39)*Qspvak1k5
      acc49(47)=acc49(50)+acc49(49)+acc49(48)+acc49(8)+acc49(47)
      acc49(47)=Qspvak2k1*acc49(47)
      acc49(48)=Qspvak5k1*Qspvak2k5*acc49(38)
      acc49(49)=Qspk5*acc49(24)
      acc49(49)=acc49(22)+acc49(49)
      acc49(49)=Qspvak2k1*acc49(49)
      acc49(48)=acc49(48)+acc49(49)
      acc49(48)=Qspk2*acc49(48)
      acc49(49)=Qspk1*acc49(30)
      acc49(50)=Qspval4k1*acc49(27)
      acc49(46)=acc49(42)*acc49(46)
      acc49(51)=QspQ*acc49(34)
      acc49(52)=Qspvak2k5*acc49(35)
      acc49(44)=acc49(48)+acc49(47)+acc49(45)+acc49(44)+acc49(52)+acc49(51)+acc&
      &49(46)+acc49(50)+acc49(26)+acc49(49)
      acc49(44)=Qspk2*acc49(44)
      acc49(45)=acc49(23)*Qspvak1k5
      acc49(46)=-Qspk1*acc49(36)
      acc49(47)=QspQ*acc49(25)
      acc49(47)=-acc49(36)+acc49(47)
      acc49(47)=QspQ*acc49(47)
      acc49(48)=QspQ*acc49(39)
      acc49(48)=acc49(19)+acc49(48)
      acc49(48)=Qspvak2k5*Qspvak5k2*acc49(48)
      acc49(49)=Qspk5*acc49(11)
      acc49(50)=Qspvak5k1*acc49(2)
      acc49(45)=acc49(50)+acc49(49)+acc49(48)+acc49(47)+acc49(46)+acc49(6)+acc4&
      &9(45)
      acc49(45)=Qspvak2k1*acc49(45)
      acc49(46)=-Qspval4k5*acc49(23)
      acc49(47)=Qspval4k1*acc49(41)
      acc49(46)=acc49(47)+acc49(9)+acc49(46)
      acc49(46)=Qspvak2l4*acc49(46)
      acc49(47)=Qspval4k5*acc49(18)
      acc49(48)=Qspk1*acc49(28)
      acc49(49)=Qspval4k1*acc49(14)
      acc49(50)=QspQ*acc49(33)
      acc49(51)=QspQ*acc49(5)
      acc49(51)=acc49(13)+acc49(51)
      acc49(51)=QspQ*acc49(51)
      acc49(51)=acc49(7)+acc49(51)
      acc49(51)=Qspvak2k5*acc49(51)
      acc49(52)=Qspvak2k5*acc49(12)
      acc49(52)=acc49(21)+acc49(52)
      acc49(52)=Qspk5*acc49(52)
      acc49(53)=-Qspvak2k5*acc49(36)
      acc49(53)=acc49(17)+acc49(53)
      acc49(53)=Qspvak5k1*acc49(53)
      brack=acc49(10)+acc49(44)+acc49(45)+acc49(46)+acc49(47)+acc49(48)+acc49(4&
      &9)+acc49(50)+acc49(51)+acc49(52)+acc49(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d49h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d49h3l1
