module     p0_gg_hhg_d13h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d13h4l1.f90
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
      use p0_gg_hhg_abbrevd13h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc13(47)
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak1l3
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      acc13(1)=abb13(10)
      acc13(2)=abb13(11)
      acc13(3)=abb13(12)
      acc13(4)=abb13(13)
      acc13(5)=abb13(14)
      acc13(6)=abb13(16)
      acc13(7)=abb13(17)
      acc13(8)=abb13(18)
      acc13(9)=abb13(19)
      acc13(10)=abb13(21)
      acc13(11)=abb13(22)
      acc13(12)=abb13(23)
      acc13(13)=abb13(25)
      acc13(14)=abb13(26)
      acc13(15)=abb13(27)
      acc13(16)=abb13(29)
      acc13(17)=abb13(30)
      acc13(18)=abb13(31)
      acc13(19)=abb13(32)
      acc13(20)=abb13(33)
      acc13(21)=abb13(34)
      acc13(22)=abb13(35)
      acc13(23)=abb13(36)
      acc13(24)=abb13(40)
      acc13(25)=abb13(42)
      acc13(26)=abb13(43)
      acc13(27)=abb13(44)
      acc13(28)=abb13(46)
      acc13(29)=abb13(49)
      acc13(30)=abb13(51)
      acc13(31)=abb13(52)
      acc13(32)=abb13(55)
      acc13(33)=abb13(62)
      acc13(34)=abb13(67)
      acc13(35)=Qspvak2l3*acc13(5)
      acc13(36)=Qspval4k2*acc13(3)
      acc13(37)=Qspval4l3*acc13(22)
      acc13(38)=Qspvak5k1*acc13(21)
      acc13(39)=Qspk2*acc13(1)
      acc13(40)=-Qspvak5k1*acc13(30)
      acc13(40)=acc13(11)+acc13(40)
      acc13(40)=QspQ*acc13(40)
      acc13(41)=QspQ*acc13(4)
      acc13(41)=acc13(16)+acc13(41)
      acc13(41)=Qspvak5k2*acc13(41)
      acc13(35)=acc13(41)+acc13(40)+acc13(39)+acc13(38)+acc13(37)+acc13(36)+acc&
      &13(17)+acc13(35)
      acc13(35)=Qspvak1k2*acc13(35)
      acc13(36)=Qspval3k2*acc13(31)
      acc13(37)=Qspval3l4*acc13(14)
      acc13(38)=Qspk2*acc13(34)
      acc13(39)=Qspk2*acc13(24)
      acc13(39)=acc13(29)+acc13(39)
      acc13(39)=QspQ*acc13(39)
      acc13(36)=acc13(39)+acc13(38)+acc13(37)+acc13(20)+acc13(36)
      acc13(36)=Qspvak5k2*acc13(36)
      acc13(37)=Qspval3k2*acc13(18)
      acc13(38)=Qspval3l4*acc13(32)
      acc13(37)=acc13(38)+acc13(33)+acc13(37)
      acc13(37)=Qspvak5k1*acc13(37)
      acc13(38)=Qspval4k2*acc13(27)
      acc13(39)=Qspval4l3*acc13(26)
      acc13(38)=acc13(39)+acc13(23)+acc13(38)
      acc13(38)=Qspk2*acc13(38)
      acc13(39)=Qspvak5k1*acc13(2)
      acc13(40)=Qspk2*acc13(12)
      acc13(39)=acc13(40)+acc13(6)+acc13(39)
      acc13(39)=QspQ*acc13(39)
      acc13(40)=acc13(28)*Qspval3k1
      acc13(41)=acc13(25)*Qspvak5l4
      acc13(42)=acc13(15)*Qspvak1l3
      acc13(43)=Qspvak2l3*acc13(19)
      acc13(44)=Qspval3k2*acc13(7)
      acc13(45)=Qspval3l4*acc13(13)
      acc13(46)=Qspval4k2*acc13(9)
      acc13(47)=Qspval4l3*acc13(8)
      brack=acc13(10)+acc13(35)+acc13(36)+acc13(37)+acc13(38)+acc13(39)+acc13(4&
      &0)+acc13(41)+acc13(42)+acc13(43)+acc13(44)+acc13(45)+acc13(46)+acc13(47)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d13h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd13h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d13h4l1
