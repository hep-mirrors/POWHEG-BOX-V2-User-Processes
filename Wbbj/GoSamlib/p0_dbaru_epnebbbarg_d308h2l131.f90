module     p0_dbaru_epnebbbarg_d308h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d308h2l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd308
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(44) :: acd308
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd308(1)=dotproduct(k2,ninjaE3)
      acd308(2)=dotproduct(ninjaE3,spvak1k2)
      acd308(3)=dotproduct(ninjaE3,spvak2k7)
      acd308(4)=abb308(10)
      acd308(5)=dotproduct(ninjaE3,spvak4k2)
      acd308(6)=abb308(11)
      acd308(7)=dotproduct(k2,ninjaA)
      acd308(8)=abb308(27)
      acd308(9)=dotproduct(l6,ninjaE3)
      acd308(10)=abb308(32)
      acd308(11)=dotproduct(k7,ninjaE3)
      acd308(12)=abb308(31)
      acd308(13)=dotproduct(ninjaA,ninjaE3)
      acd308(14)=abb308(29)
      acd308(15)=dotproduct(ninjaA,spvak1k2)
      acd308(16)=dotproduct(ninjaA,spvak2k7)
      acd308(17)=dotproduct(ninjaA,spvak4k2)
      acd308(18)=abb308(14)
      acd308(19)=dotproduct(ninjaE3,spvak2l6)
      acd308(20)=abb308(25)
      acd308(21)=dotproduct(ninjaE3,spvak1l6)
      acd308(22)=abb308(26)
      acd308(23)=dotproduct(ninjaE3,spvak4l6)
      acd308(24)=abb308(43)
      acd308(25)=abb308(17)
      acd308(26)=abb308(28)
      acd308(27)=abb308(15)
      acd308(28)=abb308(13)
      acd308(29)=abb308(24)
      acd308(30)=dotproduct(ninjaE3,spvak7l6)
      acd308(31)=abb308(18)
      acd308(32)=dotproduct(ninjaE3,spvak7k2)
      acd308(33)=abb308(20)
      acd308(34)=acd308(4)*acd308(2)
      acd308(35)=acd308(6)*acd308(5)
      acd308(34)=acd308(34)+acd308(35)
      acd308(35)=acd308(3)*acd308(1)
      acd308(36)=acd308(35)*acd308(34)
      acd308(37)=acd308(16)*acd308(34)
      acd308(38)=acd308(10)*acd308(9)
      acd308(39)=acd308(12)*acd308(11)
      acd308(40)=2.0_ki*acd308(13)
      acd308(41)=acd308(14)*acd308(40)
      acd308(42)=acd308(20)*acd308(19)
      acd308(43)=acd308(22)*acd308(21)
      acd308(44)=acd308(24)*acd308(23)
      acd308(37)=acd308(37)+acd308(44)+acd308(43)+acd308(42)+acd308(41)+acd308(&
      &39)+acd308(38)
      acd308(37)=acd308(1)*acd308(37)
      acd308(34)=acd308(7)*acd308(34)
      acd308(38)=acd308(11)+acd308(40)
      acd308(38)=acd308(25)*acd308(38)
      acd308(39)=acd308(9)*acd308(25)
      acd308(41)=acd308(28)*acd308(2)
      acd308(42)=acd308(29)*acd308(5)
      acd308(43)=acd308(31)*acd308(30)
      acd308(44)=acd308(33)*acd308(32)
      acd308(34)=acd308(42)+acd308(41)+acd308(38)+acd308(34)+acd308(44)+acd308(&
      &43)+acd308(39)
      acd308(34)=acd308(3)*acd308(34)
      acd308(38)=acd308(26)*acd308(11)
      acd308(39)=acd308(27)*acd308(40)
      acd308(38)=acd308(39)+acd308(38)
      acd308(38)=acd308(19)*acd308(38)
      acd308(39)=acd308(15)*acd308(4)
      acd308(40)=acd308(17)*acd308(6)
      acd308(39)=acd308(18)+acd308(40)+acd308(39)
      acd308(35)=acd308(35)*acd308(39)
      acd308(39)=acd308(8)*acd308(1)**2
      acd308(34)=acd308(39)+acd308(35)+acd308(38)+acd308(34)+acd308(37)
      brack(ninjaidxt1mu0)=acd308(36)
      brack(ninjaidxt0mu0)=acd308(34)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d308h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h2
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d308h2l131
