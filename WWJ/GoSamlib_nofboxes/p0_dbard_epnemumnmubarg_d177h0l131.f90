module     p0_dbard_epnemumnmubarg_d177h0l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity0d177h0l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd177h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd177h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd177(1)=abb177(13)
      acd177(2)=dotproduct(k1,ninjaE3)
      acd177(3)=abb177(15)
      acd177(4)=dotproduct(k2,ninjaE3)
      acd177(5)=dotproduct(k7,ninjaE3)
      acd177(6)=abb177(10)
      acd177(7)=dotproduct(ninjaA,ninjaE3)
      acd177(8)=dotproduct(ninjaE3,spvak1k7)
      acd177(9)=abb177(8)
      acd177(10)=dotproduct(ninjaE3,spvak1k2)
      acd177(11)=abb177(9)
      acd177(12)=dotproduct(ninjaE3,spvak7k1)
      acd177(13)=abb177(11)
      acd177(14)=dotproduct(ninjaE3,spvak7k2)
      acd177(15)=abb177(17)
      acd177(16)=dotproduct(k1,ninjaA)
      acd177(17)=dotproduct(k2,ninjaA)
      acd177(18)=dotproduct(k7,ninjaA)
      acd177(19)=dotproduct(ninjaA,ninjaA)
      acd177(20)=dotproduct(ninjaA,spvak1k7)
      acd177(21)=dotproduct(ninjaA,spvak1k2)
      acd177(22)=dotproduct(ninjaA,spvak7k1)
      acd177(23)=dotproduct(ninjaA,spvak7k2)
      acd177(24)=abb177(12)
      acd177(25)=-2.0_ki*acd177(7)+acd177(4)
      acd177(25)=acd177(1)*acd177(25)
      acd177(26)=acd177(2)*acd177(3)
      acd177(27)=acd177(5)*acd177(6)
      acd177(28)=acd177(8)*acd177(9)
      acd177(29)=acd177(10)*acd177(11)
      acd177(30)=acd177(12)*acd177(13)
      acd177(31)=acd177(14)*acd177(15)
      acd177(25)=acd177(31)+acd177(30)+acd177(29)+acd177(28)+acd177(27)+acd177(&
      &26)+acd177(25)
      acd177(26)=-ninjaP-acd177(19)+acd177(17)
      acd177(26)=acd177(1)*acd177(26)
      acd177(27)=acd177(16)*acd177(3)
      acd177(28)=acd177(18)*acd177(6)
      acd177(29)=acd177(20)*acd177(9)
      acd177(30)=acd177(21)*acd177(11)
      acd177(31)=acd177(22)*acd177(13)
      acd177(32)=acd177(23)*acd177(15)
      acd177(26)=acd177(24)+acd177(32)+acd177(31)+acd177(30)+acd177(29)+acd177(&
      &28)+acd177(27)+acd177(26)
      brack(ninjaidxt1mu0)=acd177(25)
      brack(ninjaidxt0mu0)=acd177(26)
      brack(ninjaidxt0mu2)=-acd177(1)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d177h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd177h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d177h0l131
