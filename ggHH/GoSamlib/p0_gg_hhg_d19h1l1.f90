module     p0_gg_hhg_d19h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d19h1l1.f90
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
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc19(18)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval4k5
      complex(ki) :: QspQ
      complex(ki) :: Qspval3k5
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      QspQ = dotproduct(Q,Q)
      Qspval3k5 = dotproduct(Q,spval3k5)
      acc19(1)=abb19(11)
      acc19(2)=abb19(12)
      acc19(3)=abb19(13)
      acc19(4)=abb19(14)
      acc19(5)=abb19(15)
      acc19(6)=abb19(16)
      acc19(7)=abb19(18)
      acc19(8)=abb19(19)
      acc19(9)=abb19(20)
      acc19(10)=abb19(21)
      acc19(11)=abb19(22)
      acc19(12)=abb19(27)
      acc19(13)=abb19(30)
      acc19(14)=abb19(31)
      acc19(15)=Qspvak2k1*acc19(8)
      acc19(16)=Qspvak2l4*acc19(12)
      acc19(17)=Qspvak2l3*acc19(6)
      acc19(18)=Qspvak2k5*acc19(3)
      acc19(15)=acc19(18)+acc19(17)+acc19(16)+acc19(11)+acc19(15)
      acc19(15)=Qspvak2k5*acc19(15)
      acc19(16)=acc19(4)*Qspval4k5
      acc19(17)=QspQ*acc19(1)
      acc19(18)=Qspvak2k1*acc19(5)
      acc19(16)=acc19(18)+acc19(17)+acc19(16)+acc19(2)
      acc19(16)=Qspvak2l3*acc19(16)
      acc19(17)=acc19(10)*Qspval3k5
      acc19(18)=-QspQ*acc19(13)
      acc19(17)=acc19(18)+acc19(14)+acc19(17)
      acc19(17)=Qspvak2l4*acc19(17)
      acc19(18)=Qspvak2k1*acc19(7)
      brack=acc19(9)+acc19(15)+acc19(16)+acc19(17)+acc19(18)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d19h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd19h1
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
end module p0_gg_hhg_d19h1l1
