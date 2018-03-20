module     p0_gg_hhg_d17h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d17h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(ninjaE3,spvak2l3)
      acd17(2)=abb17(20)
      acd17(3)=dotproduct(ninjaE3,spvak2l4)
      acd17(4)=abb17(24)
      acd17(5)=dotproduct(k5,ninjaE3)
      acd17(6)=abb17(23)
      acd17(7)=dotproduct(ninjaA,ninjaE3)
      acd17(8)=dotproduct(ninjaE3,spvak2k5)
      acd17(9)=abb17(11)
      acd17(10)=dotproduct(ninjaE3,spval4k5)
      acd17(11)=abb17(12)
      acd17(12)=dotproduct(ninjaE3,spvak2k1)
      acd17(13)=abb17(15)
      acd17(14)=abb17(28)
      acd17(15)=dotproduct(ninjaE3,spval3k5)
      acd17(16)=abb17(26)
      acd17(17)=dotproduct(k5,ninjaA)
      acd17(18)=dotproduct(ninjaA,spvak2l3)
      acd17(19)=dotproduct(ninjaA,ninjaA)
      acd17(20)=dotproduct(ninjaA,spvak2l4)
      acd17(21)=abb17(25)
      acd17(22)=dotproduct(ninjaA,spvak2k5)
      acd17(23)=dotproduct(ninjaA,spval4k5)
      acd17(24)=dotproduct(ninjaA,spvak2k1)
      acd17(25)=dotproduct(ninjaA,spval3k5)
      acd17(26)=abb17(13)
      acd17(27)=abb17(18)
      acd17(28)=abb17(14)
      acd17(29)=abb17(29)
      acd17(30)=abb17(27)
      acd17(31)=acd17(2)*acd17(1)
      acd17(32)=acd17(4)*acd17(3)
      acd17(31)=acd17(31)+acd17(32)
      acd17(32)=acd17(9)*acd17(8)
      acd17(33)=acd17(5)*acd17(6)
      acd17(34)=acd17(10)*acd17(11)
      acd17(32)=acd17(32)+acd17(33)+acd17(34)
      acd17(33)=acd17(1)*acd17(32)
      acd17(34)=acd17(14)*acd17(8)
      acd17(35)=acd17(16)*acd17(15)
      acd17(34)=acd17(34)+acd17(35)
      acd17(35)=acd17(3)*acd17(34)
      acd17(36)=2.0_ki*acd17(7)
      acd17(37)=acd17(31)*acd17(36)
      acd17(38)=acd17(13)*acd17(12)
      acd17(39)=acd17(8)*acd17(38)
      acd17(33)=acd17(39)+acd17(37)+acd17(33)+acd17(35)
      acd17(35)=acd17(2)*acd17(36)
      acd17(32)=acd17(35)+acd17(32)
      acd17(32)=acd17(18)*acd17(32)
      acd17(35)=acd17(14)*acd17(3)
      acd17(37)=acd17(9)*acd17(1)
      acd17(35)=acd17(35)+acd17(37)+acd17(38)
      acd17(35)=acd17(22)*acd17(35)
      acd17(37)=ninjaP+acd17(19)
      acd17(37)=acd17(31)*acd17(37)
      acd17(38)=acd17(17)*acd17(6)
      acd17(39)=acd17(23)*acd17(11)
      acd17(38)=acd17(26)+acd17(39)+acd17(38)
      acd17(38)=acd17(1)*acd17(38)
      acd17(39)=acd17(4)*acd17(36)
      acd17(34)=acd17(39)+acd17(34)
      acd17(34)=acd17(20)*acd17(34)
      acd17(39)=acd17(25)*acd17(16)
      acd17(39)=acd17(29)+acd17(39)
      acd17(39)=acd17(3)*acd17(39)
      acd17(40)=acd17(24)*acd17(13)
      acd17(40)=acd17(27)+acd17(40)
      acd17(40)=acd17(8)*acd17(40)
      acd17(36)=acd17(21)*acd17(36)
      acd17(41)=acd17(28)*acd17(12)
      acd17(42)=acd17(30)*acd17(15)
      acd17(32)=acd17(42)+acd17(41)+acd17(36)+acd17(35)+acd17(34)+acd17(32)+acd&
      &17(38)+acd17(40)+acd17(37)+acd17(39)
      brack(ninjaidxt1mu0)=acd17(33)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd17(32)
      brack(ninjaidxt0mu2)=acd17(31)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d17h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd17h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d17h1l131
