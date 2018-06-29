module     p0_dbard_epnemumnmubarg_d545h7l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity7d545h7l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd545h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd545h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(39) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd545(1)=dotproduct(k2,ninjaE3)
      acd545(2)=abb545(14)
      acd545(3)=dotproduct(ninjaE3,spvak7k2)
      acd545(4)=abb545(17)
      acd545(5)=dotproduct(ninjaE3,spvak1k2)
      acd545(6)=abb545(16)
      acd545(7)=dotproduct(k1,ninjaE3)
      acd545(8)=abb545(7)
      acd545(9)=abb545(13)
      acd545(10)=dotproduct(k7,ninjaE3)
      acd545(11)=dotproduct(ninjaA,ninjaE3)
      acd545(12)=dotproduct(ninjaE3,spvak2k7)
      acd545(13)=abb545(10)
      acd545(14)=dotproduct(ninjaE3,spvak1k7)
      acd545(15)=dotproduct(k1,ninjaA)
      acd545(16)=dotproduct(k2,ninjaA)
      acd545(17)=dotproduct(ninjaA,spvak7k2)
      acd545(18)=dotproduct(ninjaA,spvak1k2)
      acd545(19)=abb545(9)
      acd545(20)=dotproduct(k7,ninjaA)
      acd545(21)=dotproduct(ninjaA,ninjaA)
      acd545(22)=abb545(15)
      acd545(23)=dotproduct(ninjaA,spvak2k7)
      acd545(24)=dotproduct(ninjaA,spvak1k7)
      acd545(25)=dotproduct(ninjaE3,spvak2k1)
      acd545(26)=abb545(8)
      acd545(27)=abb545(11)
      acd545(28)=acd545(6)*acd545(5)
      acd545(29)=acd545(2)*acd545(1)
      acd545(30)=acd545(4)*acd545(3)
      acd545(28)=-acd545(29)+acd545(28)+acd545(30)
      acd545(29)=2.0_ki*acd545(11)
      acd545(31)=acd545(29)*acd545(28)
      acd545(32)=acd545(12)*acd545(13)
      acd545(33)=acd545(14)*acd545(6)
      acd545(32)=acd545(32)-acd545(33)
      acd545(33)=acd545(3)*acd545(32)
      acd545(34)=acd545(8)*acd545(1)
      acd545(35)=acd545(9)*acd545(5)
      acd545(34)=acd545(34)-acd545(35)
      acd545(35)=acd545(34)-acd545(30)
      acd545(36)=acd545(7)*acd545(35)
      acd545(37)=-acd545(10)*acd545(34)
      acd545(38)=acd545(1)*acd545(30)
      acd545(31)=acd545(37)+acd545(38)+acd545(36)+acd545(31)+acd545(33)
      acd545(33)=ninjaP+acd545(21)
      acd545(33)=acd545(28)*acd545(33)
      acd545(36)=acd545(10)-acd545(7)
      acd545(37)=-acd545(8)*acd545(36)
      acd545(38)=-acd545(2)*acd545(29)
      acd545(30)=acd545(38)+acd545(30)+acd545(37)
      acd545(30)=acd545(16)*acd545(30)
      acd545(37)=acd545(23)*acd545(13)
      acd545(38)=-acd545(24)*acd545(6)
      acd545(37)=acd545(37)+acd545(27)+acd545(38)
      acd545(37)=acd545(3)*acd545(37)
      acd545(38)=acd545(29)+acd545(1)
      acd545(39)=-acd545(7)+acd545(38)
      acd545(39)=acd545(4)*acd545(39)
      acd545(32)=acd545(39)+acd545(32)
      acd545(32)=acd545(17)*acd545(32)
      acd545(35)=acd545(15)*acd545(35)
      acd545(36)=acd545(9)*acd545(36)
      acd545(29)=acd545(6)*acd545(29)
      acd545(29)=acd545(29)+acd545(36)
      acd545(29)=acd545(18)*acd545(29)
      acd545(34)=-acd545(20)*acd545(34)
      acd545(36)=-acd545(22)*acd545(38)
      acd545(38)=acd545(19)*acd545(7)
      acd545(39)=acd545(26)*acd545(25)
      acd545(29)=acd545(39)+acd545(38)+acd545(36)+acd545(34)+acd545(29)+acd545(&
      &35)+acd545(30)+acd545(32)+acd545(33)+acd545(37)
      brack(ninjaidxt1mu0)=acd545(31)
      brack(ninjaidxt0mu0)=acd545(29)
      brack(ninjaidxt0mu2)=acd545(28)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d545h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h7
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d545h7l131
