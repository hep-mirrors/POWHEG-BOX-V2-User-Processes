module     p0_gg_hhg_d47h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d47h1l131.f90
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
      use p0_gg_hhg_abbrevd47h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd47
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
      use p0_gg_hhg_abbrevd47h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(38) :: acd47
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd47(1)=dotproduct(ninjaE3,spvak2k5)
      acd47(2)=dotproduct(ninjaE3,spvak2l3)
      acd47(3)=abb47(19)
      acd47(4)=dotproduct(k1,ninjaE3)
      acd47(5)=abb47(34)
      acd47(6)=dotproduct(ninjaA,ninjaE3)
      acd47(7)=dotproduct(ninjaE3,spvak2k1)
      acd47(8)=dotproduct(ninjaE3,spvak2l4)
      acd47(9)=dotproduct(ninjaE3,spval3k5)
      acd47(10)=abb47(10)
      acd47(11)=abb47(11)
      acd47(12)=abb47(14)
      acd47(13)=abb47(15)
      acd47(14)=dotproduct(ninjaE3,spval4k1)
      acd47(15)=abb47(33)
      acd47(16)=dotproduct(k1,ninjaA)
      acd47(17)=dotproduct(ninjaA,spvak2k5)
      acd47(18)=dotproduct(ninjaA,spvak2l3)
      acd47(19)=dotproduct(ninjaA,ninjaA)
      acd47(20)=dotproduct(ninjaA,spvak2k1)
      acd47(21)=dotproduct(ninjaA,spvak2l4)
      acd47(22)=dotproduct(ninjaA,spval3k5)
      acd47(23)=dotproduct(ninjaA,spval4k1)
      acd47(24)=abb47(16)
      acd47(25)=abb47(13)
      acd47(26)=abb47(12)
      acd47(27)=abb47(23)
      acd47(28)=abb47(24)
      acd47(29)=abb47(28)
      acd47(30)=acd47(1)*acd47(2)*acd47(3)
      acd47(31)=acd47(15)*acd47(14)
      acd47(32)=acd47(5)*acd47(4)
      acd47(33)=acd47(3)*acd47(6)
      acd47(31)=2.0_ki*acd47(33)+acd47(31)+acd47(32)
      acd47(32)=acd47(7)*acd47(13)
      acd47(32)=acd47(31)+acd47(32)
      acd47(32)=acd47(32)*acd47(2)
      acd47(33)=acd47(7)*acd47(8)
      acd47(34)=acd47(11)*acd47(33)
      acd47(35)=acd47(1)*acd47(7)*acd47(12)
      acd47(34)=acd47(35)+acd47(34)+acd47(32)
      acd47(34)=acd47(1)*acd47(34)
      acd47(35)=acd47(9)*acd47(10)
      acd47(33)=acd47(33)*acd47(35)
      acd47(33)=acd47(33)+acd47(34)
      acd47(34)=acd47(15)*acd47(23)
      acd47(36)=acd47(13)*acd47(20)
      acd47(37)=acd47(5)*acd47(16)
      acd47(38)=ninjaP+acd47(19)
      acd47(38)=acd47(3)*acd47(38)
      acd47(34)=acd47(38)+acd47(37)+acd47(36)+acd47(29)+acd47(34)
      acd47(34)=acd47(2)*acd47(34)
      acd47(31)=acd47(18)*acd47(31)
      acd47(36)=acd47(13)*acd47(18)
      acd47(37)=acd47(11)*acd47(21)
      acd47(38)=acd47(17)*acd47(12)
      acd47(36)=2.0_ki*acd47(38)+acd47(37)+acd47(26)+acd47(36)
      acd47(36)=acd47(7)*acd47(36)
      acd47(37)=acd47(11)*acd47(20)
      acd47(37)=acd47(27)+acd47(37)
      acd47(37)=acd47(8)*acd47(37)
      acd47(38)=acd47(20)*acd47(12)
      acd47(38)=acd47(28)+acd47(38)
      acd47(38)=acd47(1)*acd47(38)
      acd47(31)=acd47(38)+acd47(34)+acd47(36)+acd47(37)+acd47(31)
      acd47(31)=acd47(1)*acd47(31)
      acd47(32)=acd47(17)*acd47(32)
      acd47(34)=acd47(10)*acd47(22)
      acd47(36)=acd47(17)*acd47(11)
      acd47(34)=acd47(36)+acd47(24)+acd47(34)
      acd47(34)=acd47(8)*acd47(34)
      acd47(36)=acd47(10)*acd47(21)
      acd47(36)=acd47(25)+acd47(36)
      acd47(36)=acd47(9)*acd47(36)
      acd47(34)=acd47(36)+acd47(34)
      acd47(34)=acd47(7)*acd47(34)
      acd47(35)=acd47(20)*acd47(8)*acd47(35)
      acd47(31)=acd47(31)+acd47(32)+acd47(35)+acd47(34)
      brack(ninjaidxt1mu0)=acd47(33)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd47(31)
      brack(ninjaidxt0mu2)=acd47(30)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d47h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd47h1
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
end module     p0_gg_hhg_d47h1l131
