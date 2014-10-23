module     p0_dbaru_epnebbbarg_d292h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d292h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd292h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd292
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(45) :: acd292
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd292(1)=dotproduct(ninjaE3,spvak1k2)
      acd292(2)=dotproduct(ninjaE3,spvak7k2)
      acd292(3)=dotproduct(ninjaE3,spval5k2)
      acd292(4)=dotproduct(ninjaE3,spvak4k3)
      acd292(5)=abb292(16)
      acd292(6)=dotproduct(k2,ninjaE3)
      acd292(7)=abb292(27)
      acd292(8)=dotproduct(ninjaE3,spvak4k2)
      acd292(9)=abb292(36)
      acd292(10)=dotproduct(l5,ninjaE3)
      acd292(11)=abb292(22)
      acd292(12)=dotproduct(k7,ninjaE3)
      acd292(13)=abb292(25)
      acd292(14)=dotproduct(ninjaA,ninjaE3)
      acd292(15)=abb292(20)
      acd292(16)=abb292(15)
      acd292(17)=dotproduct(ninjaA,spvak1k2)
      acd292(18)=dotproduct(ninjaA,spvak7k2)
      acd292(19)=dotproduct(ninjaA,spval5k2)
      acd292(20)=dotproduct(ninjaA,spvak4k3)
      acd292(21)=dotproduct(ninjaE3,spval5k3)
      acd292(22)=abb292(11)
      acd292(23)=abb292(12)
      acd292(24)=dotproduct(ninjaE3,spval5l6)
      acd292(25)=abb292(17)
      acd292(26)=dotproduct(ninjaE3,spval5k1)
      acd292(27)=abb292(38)
      acd292(28)=abb292(37)
      acd292(29)=abb292(39)
      acd292(30)=abb292(19)
      acd292(31)=dotproduct(ninjaE3,spval6k2)
      acd292(32)=abb292(50)
      acd292(33)=acd292(4)*acd292(5)
      acd292(34)=acd292(33)*acd292(1)
      acd292(35)=acd292(2)*acd292(3)
      acd292(36)=acd292(35)*acd292(34)
      acd292(37)=acd292(31)*acd292(32)
      acd292(38)=2.0_ki*acd292(14)
      acd292(39)=acd292(15)*acd292(38)
      acd292(40)=acd292(12)*acd292(13)
      acd292(41)=acd292(6)*acd292(7)
      acd292(42)=acd292(8)*acd292(29)
      acd292(43)=acd292(5)*acd292(17)
      acd292(43)=acd292(30)+acd292(43)
      acd292(43)=acd292(4)*acd292(43)
      acd292(44)=acd292(5)*acd292(20)
      acd292(44)=acd292(23)+acd292(44)
      acd292(44)=acd292(1)*acd292(44)
      acd292(45)=acd292(3)*acd292(28)
      acd292(37)=acd292(45)+acd292(44)+acd292(43)+acd292(42)+acd292(41)+acd292(&
      &40)+acd292(37)+acd292(39)
      acd292(37)=acd292(3)*acd292(37)
      acd292(39)=acd292(24)*acd292(25)
      acd292(40)=acd292(21)*acd292(22)
      acd292(41)=acd292(10)*acd292(11)
      acd292(42)=-acd292(15)*acd292(26)
      acd292(33)=acd292(19)*acd292(33)
      acd292(33)=acd292(33)+acd292(42)+acd292(41)+acd292(39)+acd292(40)
      acd292(33)=acd292(1)*acd292(33)
      acd292(35)=acd292(27)*acd292(35)
      acd292(33)=acd292(35)+acd292(33)+acd292(37)
      acd292(33)=acd292(2)*acd292(33)
      acd292(35)=-acd292(6)+acd292(12)
      acd292(35)=acd292(9)*acd292(35)
      acd292(37)=acd292(16)*acd292(38)
      acd292(35)=acd292(37)+acd292(35)
      acd292(35)=acd292(8)*acd292(35)
      acd292(34)=acd292(18)*acd292(34)
      acd292(34)=acd292(35)+acd292(34)
      acd292(34)=acd292(3)*acd292(34)
      acd292(33)=acd292(34)+acd292(33)
      brack(ninjaidxt1mu0)=acd292(36)
      brack(ninjaidxt0mu0)=acd292(33)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d292h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d292h4l131
