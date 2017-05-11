module     pb_gg_hh_d10h1l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d10h1l1.f90
   ! generator: buildfortran.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc10(17)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      acc10(1)=abb10(8)
      acc10(2)=abb10(9)
      acc10(3)=abb10(10)
      acc10(4)=abb10(11)
      acc10(5)=abb10(12)
      acc10(6)=abb10(13)
      acc10(7)=abb10(14)
      acc10(8)=abb10(16)
      acc10(9)=abb10(18)
      acc10(10)=abb10(19)
      acc10(11)=acc10(10)*Qspvak2l4
      acc10(12)=acc10(9)*Qspvak2l3
      acc10(13)=acc10(4)*Qspval3l4
      acc10(14)=acc10(2)*Qspval4l3
      acc10(15)=acc10(1)*Qspval3k1
      acc10(16)=Qspk1*acc10(6)
      acc10(17)=Qspvak2k1*acc10(3)
      acc10(11)=acc10(17)+acc10(16)+acc10(15)+acc10(14)+acc10(13)+acc10(5)+acc1&
      &0(11)+acc10(12)
      acc10(11)=Qspvak2k1*acc10(11)
      acc10(12)=QspQ-Qspk1
      acc10(12)=acc10(7)*acc10(12)
      brack=acc10(8)+acc10(11)+acc10(12)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d10
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d10 = 0.0_ki
      d10 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d10, ki), aimag(d10), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="pb_gg_hh_d10h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d10
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d10 = 0.0_ki
      d10 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d10, ki), aimag(d10), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module pb_gg_hh_d10h1l1
