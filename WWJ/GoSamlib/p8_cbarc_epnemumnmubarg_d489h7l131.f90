module     p8_cbarc_epnemumnmubarg_d489h7l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity7d489h7l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd489h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd489(1)=dotproduct(k1,ninjaE3)
      acd489(2)=dotproduct(ninjaE3,spvak7k2)
      acd489(3)=abb489(20)
      acd489(4)=dotproduct(k7,ninjaE3)
      acd489(5)=abb489(21)
      acd489(6)=dotproduct(ninjaE3,spvak1k7)
      acd489(7)=abb489(9)
      acd489(8)=dotproduct(ninjaE3,spvak2k7)
      acd489(9)=abb489(17)
      acd489(10)=acd489(3)*acd489(1)
      acd489(11)=acd489(5)*acd489(4)
      acd489(12)=acd489(7)*acd489(6)
      acd489(13)=acd489(9)*acd489(8)
      acd489(10)=acd489(13)+acd489(12)+acd489(10)+acd489(11)
      acd489(10)=acd489(2)*acd489(10)
      brack(ninjaidxt2mu0)=acd489(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd489h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(39) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd489(1)=dotproduct(k1,ninjaE3)
      acd489(2)=dotproduct(ninjaE4,spvak7k2)
      acd489(3)=abb489(20)
      acd489(4)=dotproduct(k1,ninjaE4)
      acd489(5)=dotproduct(ninjaE3,spvak7k2)
      acd489(6)=dotproduct(k7,ninjaE3)
      acd489(7)=abb489(21)
      acd489(8)=dotproduct(k7,ninjaE4)
      acd489(9)=dotproduct(ninjaE3,spvak1k7)
      acd489(10)=abb489(9)
      acd489(11)=dotproduct(ninjaE4,spvak1k7)
      acd489(12)=dotproduct(ninjaE4,spvak2k7)
      acd489(13)=abb489(17)
      acd489(14)=dotproduct(ninjaE3,spvak2k7)
      acd489(15)=abb489(8)
      acd489(16)=dotproduct(k1,ninjaA)
      acd489(17)=dotproduct(ninjaA,spvak7k2)
      acd489(18)=abb489(16)
      acd489(19)=dotproduct(k7,ninjaA)
      acd489(20)=abb489(10)
      acd489(21)=dotproduct(ninjaA,ninjaE3)
      acd489(22)=dotproduct(ninjaA,spvak1k7)
      acd489(23)=dotproduct(ninjaA,spvak2k7)
      acd489(24)=abb489(18)
      acd489(25)=dotproduct(ninjaE3,spvak2k1)
      acd489(26)=abb489(11)
      acd489(27)=abb489(12)
      acd489(28)=dotproduct(ninjaA,ninjaA)
      acd489(29)=dotproduct(ninjaA,spvak2k1)
      acd489(30)=abb489(14)
      acd489(31)=acd489(13)*acd489(12)
      acd489(32)=acd489(10)*acd489(11)
      acd489(33)=acd489(7)*acd489(8)
      acd489(34)=acd489(3)*acd489(4)
      acd489(31)=acd489(34)+acd489(33)+acd489(31)+acd489(32)
      acd489(31)=acd489(31)*acd489(5)
      acd489(32)=acd489(13)*acd489(14)
      acd489(33)=acd489(10)*acd489(9)
      acd489(34)=acd489(7)*acd489(6)
      acd489(35)=acd489(3)*acd489(1)
      acd489(32)=acd489(32)+acd489(33)+acd489(34)+acd489(35)
      acd489(33)=acd489(32)*acd489(2)
      acd489(31)=acd489(31)+acd489(33)+acd489(15)
      acd489(32)=acd489(17)*acd489(32)
      acd489(33)=acd489(13)*acd489(23)
      acd489(34)=acd489(10)*acd489(22)
      acd489(35)=acd489(7)*acd489(19)
      acd489(36)=acd489(3)*acd489(16)
      acd489(33)=acd489(24)+acd489(36)+acd489(33)+acd489(34)+acd489(35)
      acd489(34)=acd489(5)*acd489(33)
      acd489(35)=acd489(26)*acd489(25)
      acd489(36)=acd489(15)*acd489(21)
      acd489(37)=acd489(14)*acd489(27)
      acd489(38)=acd489(6)*acd489(20)
      acd489(39)=acd489(1)*acd489(18)
      acd489(32)=acd489(34)+acd489(32)+acd489(39)+acd489(38)+acd489(37)+acd489(&
      &35)+2.0_ki*acd489(36)
      acd489(34)=ninjaP*acd489(31)
      acd489(33)=acd489(17)*acd489(33)
      acd489(35)=acd489(26)*acd489(29)
      acd489(36)=acd489(23)*acd489(27)
      acd489(37)=acd489(19)*acd489(20)
      acd489(38)=acd489(16)*acd489(18)
      acd489(39)=acd489(15)*acd489(28)
      acd489(33)=acd489(33)+acd489(39)+acd489(38)+acd489(37)+acd489(36)+acd489(&
      &30)+acd489(35)+acd489(34)
      brack(ninjaidxt1mu0)=acd489(32)
      brack(ninjaidxt0mu0)=acd489(33)
      brack(ninjaidxt0mu2)=acd489(31)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d489h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd489h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p8_cbarc_epnemumnmubarg_d489h7l131
