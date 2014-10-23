module     p0_dbaru_epnebbbarg_d301h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d301h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd301h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd301
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd301h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(44) :: acd301
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd301(1)=dotproduct(k2,ninjaE3)
      acd301(2)=dotproduct(ninjaE3,spvak1k2)
      acd301(3)=dotproduct(ninjaE3,spvak7k2)
      acd301(4)=abb301(16)
      acd301(5)=dotproduct(ninjaE3,spvak4k2)
      acd301(6)=abb301(25)
      acd301(7)=dotproduct(ninjaE3,spval6l5)
      acd301(8)=abb301(10)
      acd301(9)=abb301(12)
      acd301(10)=dotproduct(ninjaE3,spvak1l5)
      acd301(11)=dotproduct(ninjaE3,spval6k2)
      acd301(12)=dotproduct(ninjaE3,spvak4l5)
      acd301(13)=dotproduct(k2,ninjaA)
      acd301(14)=dotproduct(ninjaA,spvak1k2)
      acd301(15)=dotproduct(ninjaA,spvak7k2)
      acd301(16)=dotproduct(ninjaA,spvak4k2)
      acd301(17)=abb301(27)
      acd301(18)=abb301(11)
      acd301(19)=abb301(21)
      acd301(20)=abb301(24)
      acd301(21)=dotproduct(l5,ninjaE3)
      acd301(22)=abb301(19)
      acd301(23)=dotproduct(ninjaA,ninjaE3)
      acd301(24)=abb301(26)
      acd301(25)=abb301(13)
      acd301(26)=abb301(23)
      acd301(27)=dotproduct(ninjaA,spval6l5)
      acd301(28)=dotproduct(ninjaA,spvak1l5)
      acd301(29)=dotproduct(ninjaA,spval6k2)
      acd301(30)=dotproduct(ninjaA,spvak4l5)
      acd301(31)=abb301(9)
      acd301(32)=abb301(22)
      acd301(33)=abb301(18)
      acd301(34)=acd301(9)*acd301(12)
      acd301(35)=acd301(8)*acd301(10)
      acd301(34)=acd301(34)+acd301(35)
      acd301(35)=-acd301(11)*acd301(34)
      acd301(36)=acd301(5)*acd301(6)
      acd301(37)=acd301(2)*acd301(4)
      acd301(36)=acd301(36)+acd301(37)
      acd301(36)=acd301(1)*acd301(36)
      acd301(37)=acd301(9)*acd301(7)
      acd301(38)=acd301(5)*acd301(37)
      acd301(39)=acd301(8)*acd301(7)
      acd301(40)=acd301(2)*acd301(39)
      acd301(35)=acd301(36)+acd301(40)+acd301(35)+acd301(38)
      acd301(35)=acd301(3)*acd301(35)
      acd301(36)=-acd301(12)*acd301(29)
      acd301(38)=acd301(7)*acd301(16)
      acd301(36)=acd301(36)+acd301(38)
      acd301(36)=acd301(9)*acd301(36)
      acd301(38)=-acd301(10)*acd301(29)
      acd301(40)=acd301(7)*acd301(14)
      acd301(38)=acd301(38)+acd301(40)
      acd301(38)=acd301(8)*acd301(38)
      acd301(40)=-acd301(9)*acd301(30)
      acd301(41)=-acd301(8)*acd301(28)
      acd301(40)=acd301(41)+acd301(32)+acd301(40)
      acd301(40)=acd301(11)*acd301(40)
      acd301(41)=acd301(6)*acd301(13)
      acd301(42)=acd301(9)*acd301(27)
      acd301(41)=acd301(42)+acd301(33)+acd301(41)
      acd301(41)=acd301(5)*acd301(41)
      acd301(42)=acd301(4)*acd301(13)
      acd301(43)=acd301(8)*acd301(27)
      acd301(42)=acd301(43)+acd301(31)+acd301(42)
      acd301(42)=acd301(2)*acd301(42)
      acd301(43)=acd301(6)*acd301(16)
      acd301(44)=acd301(4)*acd301(14)
      acd301(43)=acd301(44)+acd301(18)+acd301(43)
      acd301(43)=acd301(1)*acd301(43)
      acd301(44)=acd301(21)*acd301(22)
      acd301(36)=acd301(43)+acd301(42)+acd301(41)+acd301(40)+acd301(38)+acd301(&
      &44)+acd301(36)
      acd301(36)=acd301(3)*acd301(36)
      acd301(38)=acd301(11)*acd301(19)
      acd301(40)=acd301(15)*acd301(6)
      acd301(40)=acd301(20)+acd301(40)
      acd301(40)=acd301(5)*acd301(40)
      acd301(41)=acd301(15)*acd301(4)
      acd301(41)=acd301(17)+acd301(41)
      acd301(41)=acd301(2)*acd301(41)
      acd301(38)=acd301(41)+acd301(38)+acd301(40)
      acd301(38)=acd301(1)*acd301(38)
      acd301(34)=-acd301(15)*acd301(34)
      acd301(40)=2.0_ki*acd301(23)
      acd301(41)=acd301(25)*acd301(40)
      acd301(34)=acd301(41)+acd301(34)
      acd301(34)=acd301(11)*acd301(34)
      acd301(41)=acd301(26)*acd301(40)
      acd301(37)=acd301(15)*acd301(37)
      acd301(37)=acd301(41)+acd301(37)
      acd301(37)=acd301(5)*acd301(37)
      acd301(40)=acd301(24)*acd301(40)
      acd301(39)=acd301(15)*acd301(39)
      acd301(39)=acd301(40)+acd301(39)
      acd301(39)=acd301(2)*acd301(39)
      acd301(34)=acd301(36)+acd301(38)+acd301(39)+acd301(34)+acd301(37)
      brack(ninjaidxt1mu0)=acd301(35)
      brack(ninjaidxt0mu0)=acd301(34)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d301h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd301h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d301h5l131
