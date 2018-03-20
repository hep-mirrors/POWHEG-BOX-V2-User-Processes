module     p0_gg_hhg_d23h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d23h4l1.f90
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
      use p0_gg_hhg_abbrevd23h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(45)
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      acc23(1)=abb23(10)
      acc23(2)=abb23(11)
      acc23(3)=abb23(12)
      acc23(4)=abb23(13)
      acc23(5)=abb23(14)
      acc23(6)=abb23(15)
      acc23(7)=abb23(16)
      acc23(8)=abb23(18)
      acc23(9)=abb23(19)
      acc23(10)=abb23(20)
      acc23(11)=abb23(21)
      acc23(12)=abb23(22)
      acc23(13)=abb23(23)
      acc23(14)=abb23(24)
      acc23(15)=abb23(25)
      acc23(16)=abb23(26)
      acc23(17)=abb23(27)
      acc23(18)=abb23(28)
      acc23(19)=abb23(29)
      acc23(20)=abb23(30)
      acc23(21)=abb23(31)
      acc23(22)=abb23(32)
      acc23(23)=abb23(33)
      acc23(24)=abb23(34)
      acc23(25)=abb23(35)
      acc23(26)=abb23(36)
      acc23(27)=abb23(37)
      acc23(28)=abb23(38)
      acc23(29)=abb23(41)
      acc23(30)=abb23(42)
      acc23(31)=abb23(43)
      acc23(32)=abb23(44)
      acc23(33)=abb23(46)
      acc23(34)=acc23(2)*Qspvak1l4
      acc23(35)=-acc23(32)*Qspvak5l4
      acc23(34)=acc23(35)+acc23(5)+acc23(34)
      acc23(34)=Qspval4k5*acc23(34)
      acc23(35)=Qspvak1k2*acc23(19)
      acc23(36)=Qspvak5k2*acc23(6)
      acc23(35)=acc23(36)+acc23(11)+acc23(35)
      acc23(35)=Qspvak2k5*acc23(35)
      acc23(36)=Qspk5*acc23(28)
      acc23(37)=Qspvak1k5*acc23(18)
      acc23(36)=acc23(37)+acc23(16)+acc23(36)
      acc23(36)=Qspk2*acc23(36)
      acc23(37)=Qspk5*acc23(15)
      acc23(38)=Qspvak1k5*acc23(14)
      acc23(39)=QspQ*acc23(29)
      acc23(34)=acc23(36)+acc23(35)+acc23(39)+acc23(38)+acc23(37)+acc23(4)+acc2&
      &3(34)
      acc23(34)=Qspk2*acc23(34)
      acc23(35)=Qspval4k2*acc23(7)
      acc23(36)=-Qspval4k2*acc23(32)
      acc23(36)=acc23(20)+acc23(36)
      acc23(36)=Qspk5*acc23(36)
      acc23(37)=Qspval4k2*acc23(23)
      acc23(37)=acc23(22)+acc23(37)
      acc23(37)=Qspvak1k5*acc23(37)
      acc23(35)=acc23(37)+acc23(36)+acc23(8)+acc23(35)
      acc23(35)=Qspvak2l4*acc23(35)
      acc23(36)=Qspk5*acc23(12)
      acc23(37)=Qspvak1k5*acc23(21)
      acc23(38)=QspQ*acc23(30)
      acc23(36)=acc23(38)+acc23(37)+acc23(31)+acc23(36)
      acc23(36)=QspQ*acc23(36)
      acc23(37)=Qspvak1k2*acc23(2)
      acc23(38)=-acc23(32)*Qspvak5k2
      acc23(37)=acc23(37)+acc23(38)
      acc23(37)=QspQ*acc23(37)
      acc23(38)=Qspvak1k2*acc23(27)
      acc23(39)=Qspvak5k2*acc23(13)
      acc23(37)=acc23(37)+acc23(38)+acc23(39)
      acc23(37)=Qspvak2k5*acc23(37)
      acc23(38)=acc23(9)*Qspval3k5
      acc23(39)=acc23(1)*Qspvak2l3
      acc23(40)=Qspvak1l4*acc23(24)
      acc23(41)=Qspvak5l4*acc23(25)
      acc23(42)=Qspval4k2*acc23(17)
      acc23(43)=Qspval4k5*acc23(33)
      acc23(44)=Qspk5*acc23(26)
      acc23(45)=Qspvak1k5*acc23(3)
      brack=acc23(10)+acc23(34)+acc23(35)+acc23(36)+acc23(37)+acc23(38)+acc23(3&
      &9)+acc23(40)+acc23(41)+acc23(42)+acc23(43)+acc23(44)+acc23(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d23h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd23h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d23h4l1
