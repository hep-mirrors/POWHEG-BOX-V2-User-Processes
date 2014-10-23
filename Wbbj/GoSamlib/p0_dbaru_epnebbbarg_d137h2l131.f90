module     p0_dbaru_epnebbbarg_d137h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d137h2l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd137h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(7) :: acd137
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd137(1)=dotproduct(k2,ninjaE3)
      acd137(2)=dotproduct(ninjaE3,spvak2k7)
      acd137(3)=abb137(12)
      acd137(4)=dotproduct(ninjaE3,spvak7k2)
      acd137(5)=abb137(13)
      acd137(6)=acd137(3)*acd137(1)
      acd137(7)=acd137(5)*acd137(4)
      acd137(6)=acd137(6)+acd137(7)
      acd137(6)=acd137(2)*acd137(6)
      brack(ninjaidxt2mu0)=acd137(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd137h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd137
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd137(1)=dotproduct(k2,ninjaE3)
      acd137(2)=dotproduct(ninjaE4,spvak2k7)
      acd137(3)=abb137(12)
      acd137(4)=dotproduct(k2,ninjaE4)
      acd137(5)=dotproduct(ninjaE3,spvak2k7)
      acd137(6)=dotproduct(ninjaE4,spvak7k2)
      acd137(7)=abb137(13)
      acd137(8)=dotproduct(ninjaE3,spvak7k2)
      acd137(9)=abb137(22)
      acd137(10)=dotproduct(k2,ninjaA)
      acd137(11)=dotproduct(ninjaA,spvak2k7)
      acd137(12)=abb137(32)
      acd137(13)=dotproduct(k7,ninjaE3)
      acd137(14)=abb137(31)
      acd137(15)=dotproduct(ninjaA,ninjaE3)
      acd137(16)=dotproduct(ninjaA,spvak7k2)
      acd137(17)=abb137(15)
      acd137(18)=dotproduct(k7,ninjaA)
      acd137(19)=dotproduct(ninjaA,ninjaA)
      acd137(20)=abb137(29)
      acd137(21)=acd137(1)*acd137(3)
      acd137(22)=acd137(8)*acd137(7)
      acd137(21)=acd137(21)+acd137(22)
      acd137(22)=acd137(21)*acd137(2)
      acd137(23)=acd137(7)*acd137(5)
      acd137(24)=acd137(23)*acd137(6)
      acd137(25)=acd137(5)*acd137(3)
      acd137(26)=acd137(25)*acd137(4)
      acd137(22)=acd137(9)+acd137(22)+acd137(24)+acd137(26)
      acd137(21)=acd137(11)*acd137(21)
      acd137(24)=acd137(10)*acd137(25)
      acd137(25)=acd137(12)*acd137(1)
      acd137(23)=acd137(16)*acd137(23)
      acd137(26)=acd137(17)*acd137(5)
      acd137(27)=acd137(13)*acd137(14)
      acd137(28)=acd137(15)*acd137(9)
      acd137(21)=2.0_ki*acd137(28)+acd137(27)+acd137(26)+acd137(23)+acd137(25)+&
      &acd137(24)+acd137(21)
      acd137(23)=ninjaP*acd137(22)
      acd137(24)=acd137(10)*acd137(3)
      acd137(25)=acd137(16)*acd137(7)
      acd137(24)=acd137(17)+acd137(25)+acd137(24)
      acd137(24)=acd137(11)*acd137(24)
      acd137(25)=acd137(12)*acd137(10)
      acd137(26)=acd137(18)*acd137(14)
      acd137(27)=acd137(19)*acd137(9)
      acd137(23)=acd137(20)+acd137(27)+acd137(26)+acd137(25)+acd137(23)+acd137(&
      &24)
      brack(ninjaidxt1mu0)=acd137(21)
      brack(ninjaidxt0mu0)=acd137(23)
      brack(ninjaidxt0mu2)=acd137(22)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d137h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd137h2
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
end module     p0_dbaru_epnebbbarg_d137h2l131
