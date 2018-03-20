module     p0_gg_hhg_d43h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d43h1l131.f90
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
      use p0_gg_hhg_abbrevd43h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd43
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
      use p0_gg_hhg_abbrevd43h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(38) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd43(1)=dotproduct(ninjaE3,spvak2k5)
      acd43(2)=dotproduct(ninjaE3,spvak2l4)
      acd43(3)=abb43(18)
      acd43(4)=dotproduct(k1,ninjaE3)
      acd43(5)=abb43(32)
      acd43(6)=dotproduct(ninjaA,ninjaE3)
      acd43(7)=dotproduct(ninjaE3,spvak2k1)
      acd43(8)=dotproduct(ninjaE3,spvak2l3)
      acd43(9)=abb43(10)
      acd43(10)=dotproduct(ninjaE3,spval4k5)
      acd43(11)=abb43(15)
      acd43(12)=abb43(13)
      acd43(13)=abb43(20)
      acd43(14)=dotproduct(ninjaE3,spval3k1)
      acd43(15)=abb43(30)
      acd43(16)=dotproduct(k1,ninjaA)
      acd43(17)=dotproduct(ninjaA,spvak2k5)
      acd43(18)=dotproduct(ninjaA,spvak2l4)
      acd43(19)=dotproduct(ninjaA,ninjaA)
      acd43(20)=dotproduct(ninjaA,spvak2k1)
      acd43(21)=dotproduct(ninjaA,spvak2l3)
      acd43(22)=dotproduct(ninjaA,spval4k5)
      acd43(23)=dotproduct(ninjaA,spval3k1)
      acd43(24)=abb43(23)
      acd43(25)=abb43(14)
      acd43(26)=abb43(12)
      acd43(27)=abb43(31)
      acd43(28)=abb43(22)
      acd43(29)=abb43(26)
      acd43(30)=acd43(1)*acd43(2)*acd43(3)
      acd43(31)=acd43(15)*acd43(14)
      acd43(32)=acd43(5)*acd43(4)
      acd43(33)=acd43(3)*acd43(6)
      acd43(31)=2.0_ki*acd43(33)+acd43(31)+acd43(32)
      acd43(32)=acd43(7)*acd43(13)
      acd43(32)=acd43(31)+acd43(32)
      acd43(32)=acd43(32)*acd43(2)
      acd43(33)=acd43(7)*acd43(8)
      acd43(34)=acd43(9)*acd43(33)
      acd43(35)=acd43(1)*acd43(7)*acd43(12)
      acd43(34)=acd43(35)+acd43(34)+acd43(32)
      acd43(34)=acd43(1)*acd43(34)
      acd43(35)=acd43(10)*acd43(11)
      acd43(33)=acd43(33)*acd43(35)
      acd43(33)=acd43(33)+acd43(34)
      acd43(34)=acd43(15)*acd43(23)
      acd43(36)=acd43(13)*acd43(20)
      acd43(37)=acd43(5)*acd43(16)
      acd43(38)=ninjaP+acd43(19)
      acd43(38)=acd43(3)*acd43(38)
      acd43(34)=acd43(38)+acd43(37)+acd43(36)+acd43(29)+acd43(34)
      acd43(34)=acd43(2)*acd43(34)
      acd43(31)=acd43(18)*acd43(31)
      acd43(36)=acd43(13)*acd43(18)
      acd43(37)=acd43(9)*acd43(21)
      acd43(38)=acd43(17)*acd43(12)
      acd43(36)=2.0_ki*acd43(38)+acd43(37)+acd43(25)+acd43(36)
      acd43(36)=acd43(7)*acd43(36)
      acd43(37)=acd43(9)*acd43(20)
      acd43(37)=acd43(27)+acd43(37)
      acd43(37)=acd43(8)*acd43(37)
      acd43(38)=acd43(20)*acd43(12)
      acd43(38)=acd43(28)+acd43(38)
      acd43(38)=acd43(1)*acd43(38)
      acd43(31)=acd43(38)+acd43(34)+acd43(36)+acd43(37)+acd43(31)
      acd43(31)=acd43(1)*acd43(31)
      acd43(32)=acd43(17)*acd43(32)
      acd43(34)=acd43(11)*acd43(22)
      acd43(36)=acd43(17)*acd43(9)
      acd43(34)=acd43(36)+acd43(24)+acd43(34)
      acd43(34)=acd43(8)*acd43(34)
      acd43(36)=acd43(11)*acd43(21)
      acd43(36)=acd43(26)+acd43(36)
      acd43(36)=acd43(10)*acd43(36)
      acd43(34)=acd43(36)+acd43(34)
      acd43(34)=acd43(7)*acd43(34)
      acd43(35)=acd43(20)*acd43(8)*acd43(35)
      acd43(31)=acd43(31)+acd43(32)+acd43(35)+acd43(34)
      brack(ninjaidxt1mu0)=acd43(33)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd43(31)
      brack(ninjaidxt0mu2)=acd43(30)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d43h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d43h1l131
