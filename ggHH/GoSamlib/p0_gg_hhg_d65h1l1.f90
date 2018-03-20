module     p0_gg_hhg_d65h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d65h1l1.f90
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
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(34)
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      acc65(1)=abb65(10)
      acc65(2)=abb65(11)
      acc65(3)=abb65(12)
      acc65(4)=abb65(13)
      acc65(5)=abb65(14)
      acc65(6)=abb65(15)
      acc65(7)=abb65(16)
      acc65(8)=abb65(17)
      acc65(9)=abb65(18)
      acc65(10)=abb65(19)
      acc65(11)=abb65(20)
      acc65(12)=abb65(21)
      acc65(13)=abb65(22)
      acc65(14)=abb65(23)
      acc65(15)=abb65(24)
      acc65(16)=abb65(25)
      acc65(17)=abb65(26)
      acc65(18)=abb65(27)
      acc65(19)=abb65(28)
      acc65(20)=abb65(29)
      acc65(21)=abb65(30)
      acc65(22)=abb65(31)
      acc65(23)=abb65(32)
      acc65(24)=abb65(34)
      acc65(25)=abb65(35)
      acc65(26)=abb65(36)
      acc65(27)=abb65(37)
      acc65(28)=abb65(38)
      acc65(29)=Qspk2*acc65(27)
      acc65(30)=QspQ*acc65(4)
      acc65(31)=acc65(24)*Qspval4k5
      acc65(31)=acc65(2)+acc65(31)
      acc65(31)=Qspvak2l4*acc65(31)
      acc65(29)=acc65(31)+acc65(30)+acc65(11)+acc65(29)
      acc65(29)=Qspvak2k1*acc65(29)
      acc65(30)=Qspk2*acc65(3)
      acc65(31)=QspQ*acc65(25)
      acc65(30)=acc65(31)+acc65(10)+acc65(30)
      acc65(30)=Qspvak2k1*acc65(30)
      acc65(31)=Qspvak2l4*acc65(24)
      acc65(31)=acc65(31)+acc65(22)
      acc65(31)=Qspval4k1*acc65(31)
      acc65(32)=QspQ*acc65(17)
      acc65(30)=acc65(30)+acc65(14)+acc65(32)+acc65(31)
      acc65(30)=Qspvak2k5*acc65(30)
      acc65(31)=Qspvak2l3*acc65(28)
      acc65(32)=QspQ*acc65(21)
      acc65(33)=Qspval4k1*acc65(23)
      acc65(34)=Qspval4k1*acc65(20)
      acc65(34)=acc65(12)+acc65(34)
      acc65(34)=Qspvak2l4*acc65(34)
      acc65(29)=acc65(30)+acc65(29)+acc65(34)+acc65(33)+acc65(32)+acc65(9)+acc6&
      &5(31)
      acc65(29)=Qspvak2k5*acc65(29)
      acc65(30)=Qspk2*acc65(19)
      acc65(31)=QspQ*acc65(15)
      acc65(32)=Qspval4k5*acc65(18)
      acc65(32)=acc65(6)+acc65(32)
      acc65(32)=Qspvak2l4*acc65(32)
      acc65(30)=acc65(32)+acc65(31)+acc65(13)+acc65(30)
      acc65(30)=Qspvak2k1*acc65(30)
      acc65(31)=Qspvak2l3*acc65(1)
      acc65(32)=QspQ*acc65(16)
      acc65(33)=Qspval4k1*acc65(7)
      acc65(34)=Qspval4k1*acc65(5)
      acc65(34)=acc65(26)+acc65(34)
      acc65(34)=Qspvak2l4*acc65(34)
      brack=acc65(8)+acc65(29)+acc65(30)+acc65(31)+acc65(32)+acc65(33)+acc65(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d65h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d65h1l1
