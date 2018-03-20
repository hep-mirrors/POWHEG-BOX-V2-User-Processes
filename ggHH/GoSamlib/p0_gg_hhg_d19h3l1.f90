module     p0_gg_hhg_d19h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d19h3l1.f90
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
      use p0_gg_hhg_abbrevd19h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc19(32)
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak5k1
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk5 = dotproduct(Q,k5)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      acc19(1)=abb19(10)
      acc19(2)=abb19(11)
      acc19(3)=abb19(12)
      acc19(4)=abb19(13)
      acc19(5)=abb19(14)
      acc19(6)=abb19(15)
      acc19(7)=abb19(16)
      acc19(8)=abb19(18)
      acc19(9)=abb19(19)
      acc19(10)=abb19(20)
      acc19(11)=abb19(21)
      acc19(12)=abb19(22)
      acc19(13)=abb19(24)
      acc19(14)=abb19(25)
      acc19(15)=abb19(26)
      acc19(16)=abb19(27)
      acc19(17)=abb19(28)
      acc19(18)=abb19(29)
      acc19(19)=abb19(31)
      acc19(20)=abb19(32)
      acc19(21)=abb19(35)
      acc19(22)=abb19(36)
      acc19(23)=abb19(37)
      acc19(24)=Qspval4k2*acc19(19)
      acc19(25)=Qspval3k2*acc19(1)
      acc19(26)=Qspvak5l3*acc19(2)
      acc19(27)=Qspvak5l4*acc19(23)
      acc19(28)=Qspk2*acc19(13)
      acc19(29)=-QspQ*acc19(7)
      acc19(24)=acc19(29)+acc19(28)+acc19(27)+acc19(26)+acc19(25)+acc19(3)+acc1&
      &9(24)
      acc19(24)=QspQ*acc19(24)
      acc19(25)=Qspval3k2*acc19(9)
      acc19(26)=Qspvak5l3*acc19(10)
      acc19(27)=Qspvak5l4*acc19(11)
      acc19(28)=Qspk2*acc19(17)
      acc19(25)=acc19(28)+acc19(27)+acc19(26)+acc19(14)+acc19(25)
      acc19(25)=Qspk2*acc19(25)
      acc19(26)=acc19(6)*Qspvak2k1
      acc19(27)=acc19(4)*Qspvak2k5
      acc19(26)=acc19(26)+acc19(27)
      acc19(26)=Qspvak5k2*acc19(26)
      acc19(27)=acc19(16)*Qspk5
      acc19(28)=acc19(15)*Qspvak5k1
      acc19(29)=Qspval4k2*acc19(22)
      acc19(30)=Qspval3k2*acc19(8)
      acc19(31)=Qspval4k2*acc19(20)
      acc19(31)=acc19(18)+acc19(31)
      acc19(31)=Qspvak5l3*acc19(31)
      acc19(32)=Qspval3k2*acc19(5)
      acc19(32)=acc19(21)+acc19(32)
      acc19(32)=Qspvak5l4*acc19(32)
      brack=acc19(12)+acc19(24)+acc19(25)+acc19(26)+acc19(27)+acc19(28)+acc19(2&
      &9)+acc19(30)+acc19(31)+acc19(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d19h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd19h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d19
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d19 = 0.0_ki
      d19 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d19, ki), aimag(d19), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d19h3l1
