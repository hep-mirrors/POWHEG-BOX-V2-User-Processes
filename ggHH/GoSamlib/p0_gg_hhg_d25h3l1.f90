module     p0_gg_hhg_d25h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d25h3l1.f90
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
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc25(43)
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc25(1)=abb25(10)
      acc25(2)=abb25(11)
      acc25(3)=abb25(12)
      acc25(4)=abb25(13)
      acc25(5)=abb25(14)
      acc25(6)=abb25(15)
      acc25(7)=abb25(16)
      acc25(8)=abb25(17)
      acc25(9)=abb25(18)
      acc25(10)=abb25(19)
      acc25(11)=abb25(21)
      acc25(12)=abb25(22)
      acc25(13)=abb25(23)
      acc25(14)=abb25(24)
      acc25(15)=abb25(25)
      acc25(16)=abb25(26)
      acc25(17)=abb25(27)
      acc25(18)=abb25(28)
      acc25(19)=abb25(30)
      acc25(20)=abb25(31)
      acc25(21)=abb25(33)
      acc25(22)=abb25(34)
      acc25(23)=abb25(35)
      acc25(24)=abb25(37)
      acc25(25)=abb25(39)
      acc25(26)=abb25(40)
      acc25(27)=abb25(43)
      acc25(28)=abb25(45)
      acc25(29)=abb25(46)
      acc25(30)=abb25(47)
      acc25(31)=abb25(48)
      acc25(32)=abb25(52)
      acc25(33)=abb25(53)
      acc25(34)=QspQ-Qspk1
      acc25(34)=acc25(30)*acc25(34)
      acc25(35)=Qspvak2l4*acc25(17)
      acc25(36)=Qspval4k1*acc25(32)
      acc25(37)=Qspvak2l3*acc25(9)
      acc25(38)=Qspvak5k1*acc25(5)
      acc25(39)=Qspk2*acc25(27)
      acc25(40)=Qspval3k1*acc25(8)
      acc25(41)=Qspvak2k1*acc25(1)
      acc25(34)=acc25(41)+acc25(40)+acc25(39)+acc25(38)+acc25(37)+acc25(36)+acc&
      &25(35)+acc25(2)+acc25(34)
      acc25(34)=QspQ*acc25(34)
      acc25(35)=Qspvak2l4*acc25(20)
      acc25(36)=Qspvak2l3*acc25(11)
      acc25(37)=Qspvak5k1*acc25(4)
      acc25(38)=Qspk2*acc25(21)
      acc25(39)=Qspval3k1*acc25(6)
      acc25(40)=Qspvak2k1*acc25(15)
      acc25(35)=acc25(40)+acc25(39)+acc25(38)+acc25(37)+acc25(36)+acc25(19)+acc&
      &25(35)
      acc25(35)=Qspvak2k1*acc25(35)
      acc25(36)=Qspvak2l4*acc25(28)
      acc25(37)=Qspvak5k1*acc25(22)
      acc25(38)=Qspk2*acc25(12)
      acc25(36)=acc25(38)+acc25(37)+acc25(7)+acc25(36)
      acc25(36)=Qspval3k1*acc25(36)
      acc25(37)=Qspk1*acc25(29)
      acc25(38)=Qspval4k1*acc25(13)
      acc25(37)=acc25(38)+acc25(18)+acc25(37)
      acc25(37)=Qspvak2l3*acc25(37)
      acc25(38)=Qspk1*acc25(10)
      acc25(39)=Qspval4k1*acc25(16)
      acc25(38)=acc25(39)+acc25(25)+acc25(38)
      acc25(38)=Qspk2*acc25(38)
      acc25(39)=Qspvak2k5*acc25(23)
      acc25(40)=Qspk1*acc25(31)
      acc25(41)=Qspvak2l4*acc25(26)
      acc25(42)=Qspval4k1*acc25(33)
      acc25(43)=Qspvak2k5*acc25(24)
      acc25(43)=acc25(3)+acc25(43)
      acc25(43)=Qspvak5k1*acc25(43)
      brack=acc25(14)+acc25(34)+acc25(35)+acc25(36)+acc25(37)+acc25(38)+acc25(3&
      &9)+acc25(40)+acc25(41)+acc25(42)+acc25(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d25h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd25h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d25
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d25 = 0.0_ki
      d25 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d25, ki), aimag(d25), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d25h3l1
