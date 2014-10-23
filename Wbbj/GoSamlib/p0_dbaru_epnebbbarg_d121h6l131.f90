module     p0_dbaru_epnebbbarg_d121h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d121h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd121h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd121h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(43) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd121(1)=dotproduct(k2,ninjaE3)
      acd121(2)=dotproduct(ninjaE3,spval5k2)
      acd121(3)=abb121(20)
      acd121(4)=dotproduct(l6,ninjaE3)
      acd121(5)=abb121(16)
      acd121(6)=dotproduct(k7,ninjaE3)
      acd121(7)=dotproduct(ninjaE3,spvak7l6)
      acd121(8)=abb121(9)
      acd121(9)=dotproduct(ninjaE3,spvak1l6)
      acd121(10)=abb121(10)
      acd121(11)=dotproduct(ninjaE3,spvak7k2)
      acd121(12)=abb121(11)
      acd121(13)=dotproduct(ninjaE3,spvak4l6)
      acd121(14)=abb121(14)
      acd121(15)=dotproduct(ninjaE3,spvak1k2)
      acd121(16)=dotproduct(ninjaE3,spval5l6)
      acd121(17)=dotproduct(ninjaE3,spvak4k2)
      acd121(18)=dotproduct(k2,ninjaA)
      acd121(19)=dotproduct(ninjaA,spval5k2)
      acd121(20)=dotproduct(l5,ninjaE3)
      acd121(21)=abb121(22)
      acd121(22)=dotproduct(l6,ninjaA)
      acd121(23)=dotproduct(k7,ninjaA)
      acd121(24)=dotproduct(ninjaA,spvak7l6)
      acd121(25)=dotproduct(ninjaA,spvak1k2)
      acd121(26)=dotproduct(ninjaA,spval5l6)
      acd121(27)=dotproduct(ninjaA,spvak1l6)
      acd121(28)=dotproduct(ninjaA,spvak7k2)
      acd121(29)=dotproduct(ninjaA,spvak4k2)
      acd121(30)=dotproduct(ninjaA,spvak4l6)
      acd121(31)=abb121(13)
      acd121(32)=abb121(12)
      acd121(33)=abb121(17)
      acd121(34)=acd121(1)*acd121(3)
      acd121(35)=acd121(7)*acd121(8)
      acd121(36)=acd121(9)*acd121(10)
      acd121(37)=acd121(11)*acd121(12)
      acd121(38)=acd121(13)*acd121(14)
      acd121(34)=acd121(38)-acd121(34)-acd121(35)+acd121(36)-acd121(37)
      acd121(35)=-acd121(2)*acd121(34)
      acd121(36)=acd121(15)*acd121(10)
      acd121(37)=acd121(17)*acd121(14)
      acd121(36)=acd121(36)+acd121(37)
      acd121(37)=acd121(16)*acd121(36)
      acd121(38)=acd121(6)+acd121(4)
      acd121(39)=acd121(5)*acd121(2)
      acd121(40)=acd121(39)*acd121(38)
      acd121(35)=acd121(35)+acd121(40)+acd121(37)
      acd121(37)=acd121(18)*acd121(3)
      acd121(40)=acd121(24)*acd121(8)
      acd121(41)=-acd121(27)*acd121(10)
      acd121(42)=acd121(28)*acd121(12)
      acd121(43)=-acd121(30)*acd121(14)
      acd121(37)=acd121(31)+acd121(43)+acd121(42)+acd121(41)+acd121(40)+acd121(&
      &37)
      acd121(37)=acd121(2)*acd121(37)
      acd121(38)=acd121(5)*acd121(38)
      acd121(34)=acd121(38)-acd121(34)
      acd121(34)=acd121(19)*acd121(34)
      acd121(38)=acd121(25)*acd121(10)
      acd121(40)=acd121(29)*acd121(14)
      acd121(38)=acd121(40)+acd121(38)
      acd121(38)=acd121(16)*acd121(38)
      acd121(40)=acd121(23)+acd121(22)
      acd121(39)=acd121(39)*acd121(40)
      acd121(36)=acd121(26)*acd121(36)
      acd121(40)=acd121(21)*acd121(20)
      acd121(41)=acd121(32)*acd121(15)
      acd121(42)=acd121(33)*acd121(17)
      acd121(34)=acd121(42)+acd121(41)+acd121(40)+acd121(36)+acd121(34)+acd121(&
      &37)+acd121(39)+acd121(38)
      brack(ninjaidxt1mu0)=acd121(35)
      brack(ninjaidxt0mu0)=acd121(34)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d121h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h6
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
end module     p0_dbaru_epnebbbarg_d121h6l131
