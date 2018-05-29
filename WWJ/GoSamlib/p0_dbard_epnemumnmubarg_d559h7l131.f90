module     p0_dbard_epnemumnmubarg_d559h7l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity7d559h7l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd559h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd559h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd559(1)=dotproduct(k2,ninjaE3)
      acd559(2)=abb559(16)
      acd559(3)=dotproduct(ninjaE3,spvak1k2)
      acd559(4)=abb559(18)
      acd559(5)=dotproduct(k1,ninjaE3)
      acd559(6)=dotproduct(ninjaE3,spvak7k2)
      acd559(7)=abb559(17)
      acd559(8)=abb559(15)
      acd559(9)=dotproduct(k7,ninjaE3)
      acd559(10)=dotproduct(ninjaA,ninjaE3)
      acd559(11)=abb559(10)
      acd559(12)=dotproduct(ninjaE3,spvak2k7)
      acd559(13)=abb559(11)
      acd559(14)=dotproduct(ninjaE3,spvak1k7)
      acd559(15)=dotproduct(k1,ninjaA)
      acd559(16)=dotproduct(ninjaA,spvak7k2)
      acd559(17)=abb559(8)
      acd559(18)=dotproduct(k2,ninjaA)
      acd559(19)=dotproduct(k7,ninjaA)
      acd559(20)=dotproduct(ninjaA,ninjaA)
      acd559(21)=dotproduct(ninjaA,spvak1k2)
      acd559(22)=abb559(12)
      acd559(23)=abb559(13)
      acd559(24)=dotproduct(ninjaA,spvak2k7)
      acd559(25)=dotproduct(ninjaA,spvak1k7)
      acd559(26)=abb559(7)
      acd559(27)=dotproduct(ninjaE3,spvak2k1)
      acd559(28)=abb559(9)
      acd559(29)=acd559(4)*acd559(3)
      acd559(30)=acd559(2)*acd559(1)
      acd559(29)=acd559(29)-acd559(30)
      acd559(30)=acd559(12)*acd559(13)
      acd559(31)=acd559(14)*acd559(4)
      acd559(30)=acd559(30)-acd559(31)
      acd559(31)=acd559(6)*acd559(30)
      acd559(32)=acd559(5)+acd559(1)
      acd559(33)=acd559(7)*acd559(6)
      acd559(34)=-acd559(33)*acd559(32)
      acd559(35)=2.0_ki*acd559(10)
      acd559(36)=acd559(29)*acd559(35)
      acd559(37)=acd559(8)*acd559(1)
      acd559(38)=acd559(11)*acd559(3)
      acd559(39)=acd559(37)-acd559(38)
      acd559(40)=-acd559(9)*acd559(39)
      acd559(41)=-acd559(1)*acd559(38)
      acd559(42)=acd559(8)*acd559(1)**2
      acd559(31)=acd559(40)+acd559(36)+acd559(42)+acd559(41)+acd559(34)+acd559(&
      &31)
      acd559(34)=-acd559(2)*acd559(35)
      acd559(36)=-acd559(9)*acd559(8)
      acd559(34)=acd559(36)+acd559(34)+2.0_ki*acd559(37)-acd559(33)-acd559(38)
      acd559(34)=acd559(18)*acd559(34)
      acd559(36)=acd559(24)*acd559(13)
      acd559(37)=-acd559(25)*acd559(4)
      acd559(36)=acd559(36)+acd559(26)+acd559(37)
      acd559(36)=acd559(6)*acd559(36)
      acd559(37)=ninjaP+acd559(20)
      acd559(37)=acd559(29)*acd559(37)
      acd559(32)=-acd559(7)*acd559(32)
      acd559(30)=acd559(32)+acd559(30)
      acd559(30)=acd559(16)*acd559(30)
      acd559(32)=acd559(9)-acd559(1)
      acd559(32)=acd559(11)*acd559(32)
      acd559(38)=acd559(4)*acd559(35)
      acd559(32)=acd559(38)+acd559(32)
      acd559(32)=acd559(21)*acd559(32)
      acd559(38)=-acd559(19)*acd559(39)
      acd559(33)=-acd559(15)*acd559(33)
      acd559(39)=acd559(17)*acd559(5)
      acd559(40)=acd559(22)*acd559(1)
      acd559(35)=acd559(23)*acd559(35)
      acd559(41)=acd559(28)*acd559(27)
      acd559(30)=acd559(41)+acd559(35)+acd559(40)+acd559(39)+acd559(33)+acd559(&
      &38)+acd559(32)+acd559(30)+acd559(34)+acd559(37)+acd559(36)
      brack(ninjaidxt1mu0)=acd559(31)
      brack(ninjaidxt0mu0)=acd559(30)
      brack(ninjaidxt0mu2)=acd559(29)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d559h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd559h7
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
end module     p0_dbard_epnemumnmubarg_d559h7l131
