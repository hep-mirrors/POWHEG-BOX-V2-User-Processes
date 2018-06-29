module     p0_dbard_epnemumnmubarg_d573h3l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity3d573h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd573h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd573
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd573h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(31) :: acd573
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd573(1)=dotproduct(ninjaE3,spvak2k7)
      acd573(2)=abb573(12)
      acd573(3)=dotproduct(k1,ninjaE3)
      acd573(4)=abb573(15)
      acd573(5)=dotproduct(k2,ninjaE3)
      acd573(6)=abb573(14)
      acd573(7)=dotproduct(k7,ninjaE3)
      acd573(8)=abb573(13)
      acd573(9)=dotproduct(ninjaA,ninjaE3)
      acd573(10)=dotproduct(ninjaE3,spvak1k7)
      acd573(11)=abb573(6)
      acd573(12)=abb573(7)
      acd573(13)=dotproduct(k1,ninjaA)
      acd573(14)=dotproduct(ninjaA,spvak2k7)
      acd573(15)=dotproduct(k2,ninjaA)
      acd573(16)=abb573(8)
      acd573(17)=dotproduct(k7,ninjaA)
      acd573(18)=dotproduct(ninjaA,ninjaA)
      acd573(19)=abb573(9)
      acd573(20)=dotproduct(ninjaA,spvak1k7)
      acd573(21)=abb573(10)
      acd573(22)=acd573(1)*acd573(2)
      acd573(23)=2.0_ki*acd573(9)
      acd573(24)=acd573(23)*acd573(2)
      acd573(25)=acd573(11)*acd573(10)
      acd573(26)=acd573(7)*acd573(8)
      acd573(27)=acd573(5)*acd573(6)
      acd573(28)=acd573(4)*acd573(3)
      acd573(24)=acd573(24)-acd573(25)+acd573(26)+acd573(27)+acd573(28)
      acd573(25)=acd573(1)*acd573(12)
      acd573(25)=acd573(25)+acd573(24)
      acd573(25)=acd573(1)*acd573(25)
      acd573(26)=-acd573(11)*acd573(20)
      acd573(27)=acd573(8)*acd573(17)
      acd573(28)=acd573(6)*acd573(15)
      acd573(29)=acd573(4)*acd573(13)
      acd573(30)=ninjaP+acd573(18)
      acd573(30)=acd573(2)*acd573(30)
      acd573(31)=acd573(14)*acd573(12)
      acd573(26)=2.0_ki*acd573(31)+acd573(30)+acd573(29)+acd573(28)+acd573(27)+&
      &acd573(21)+acd573(26)
      acd573(26)=acd573(1)*acd573(26)
      acd573(24)=acd573(14)*acd573(24)
      acd573(27)=-acd573(5)-acd573(7)
      acd573(27)=acd573(16)*acd573(27)
      acd573(23)=acd573(19)*acd573(23)
      acd573(23)=acd573(26)+acd573(24)+acd573(23)+acd573(27)
      brack(ninjaidxt1mu0)=acd573(25)
      brack(ninjaidxt0mu0)=acd573(23)
      brack(ninjaidxt0mu2)=acd573(22)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d573h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd573h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d573h3l131
