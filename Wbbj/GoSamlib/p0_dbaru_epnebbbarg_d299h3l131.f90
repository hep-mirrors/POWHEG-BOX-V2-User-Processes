module     p0_dbaru_epnebbbarg_d299h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d299h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd299h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd299
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd299h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(61) :: acd299
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd299(1)=dotproduct(ninjaE3,spvak2k7)
      acd299(2)=dotproduct(ninjaE3,spvak4k3)
      acd299(3)=dotproduct(ninjaE3,spvak1k2)
      acd299(4)=dotproduct(ninjaE3,spvak2l5)
      acd299(5)=abb299(52)
      acd299(6)=dotproduct(k2,ninjaE3)
      acd299(7)=abb299(58)
      acd299(8)=dotproduct(l6,ninjaE3)
      acd299(9)=abb299(43)
      acd299(10)=dotproduct(k7,ninjaE3)
      acd299(11)=abb299(126)
      acd299(12)=dotproduct(ninjaA,ninjaE3)
      acd299(13)=abb299(16)
      acd299(14)=abb299(125)
      acd299(15)=dotproduct(ninjaE3,spvak4k2)
      acd299(16)=abb299(10)
      acd299(17)=abb299(15)
      acd299(18)=abb299(30)
      acd299(19)=dotproduct(ninjaE3,spvak4l6)
      acd299(20)=abb299(38)
      acd299(21)=abb299(50)
      acd299(22)=abb299(49)
      acd299(23)=abb299(34)
      acd299(24)=abb299(40)
      acd299(25)=dotproduct(ninjaE3,spvak2l6)
      acd299(26)=abb299(36)
      acd299(27)=abb299(12)
      acd299(28)=abb299(22)
      acd299(29)=abb299(39)
      acd299(30)=abb299(33)
      acd299(31)=dotproduct(ninjaA,spvak2k7)
      acd299(32)=dotproduct(ninjaA,spvak4k3)
      acd299(33)=dotproduct(ninjaA,spvak1k2)
      acd299(34)=dotproduct(ninjaA,spvak2l5)
      acd299(35)=abb299(57)
      acd299(36)=abb299(56)
      acd299(37)=abb299(53)
      acd299(38)=dotproduct(ninjaE3,spvak7l6)
      acd299(39)=dotproduct(ninjaE3,spvak7k2)
      acd299(40)=abb299(46)
      acd299(41)=dotproduct(ninjaE3,spval6k2)
      acd299(42)=abb299(47)
      acd299(43)=dotproduct(ninjaE3,spvak1l6)
      acd299(44)=abb299(62)
      acd299(45)=abb299(54)
      acd299(46)=dotproduct(ninjaE3,spvak2k3)
      acd299(47)=abb299(51)
      acd299(48)=acd299(5)*acd299(4)
      acd299(49)=acd299(48)*acd299(3)
      acd299(50)=acd299(1)*acd299(2)*acd299(49)
      acd299(51)=acd299(43)*acd299(44)
      acd299(52)=acd299(41)*acd299(42)
      acd299(53)=acd299(39)*acd299(40)
      acd299(54)=acd299(26)*acd299(38)
      acd299(55)=acd299(8)*acd299(22)
      acd299(56)=acd299(33)*acd299(48)
      acd299(57)=2.0_ki*acd299(12)
      acd299(58)=acd299(28)*acd299(57)
      acd299(59)=acd299(10)*acd299(24)
      acd299(60)=acd299(5)*acd299(34)
      acd299(60)=acd299(37)+acd299(60)
      acd299(60)=acd299(3)*acd299(60)
      acd299(61)=acd299(6)*acd299(17)
      acd299(51)=acd299(61)+acd299(60)+acd299(59)+acd299(58)+acd299(56)+acd299(&
      &55)+acd299(54)+acd299(53)+acd299(51)+acd299(52)
      acd299(51)=acd299(2)*acd299(51)
      acd299(52)=acd299(10)+acd299(8)
      acd299(53)=acd299(9)*acd299(52)
      acd299(54)=acd299(19)*acd299(20)
      acd299(55)=acd299(15)*acd299(16)
      acd299(56)=acd299(13)*acd299(57)
      acd299(58)=acd299(3)*acd299(18)
      acd299(59)=acd299(6)*acd299(7)
      acd299(53)=acd299(59)+acd299(58)+acd299(56)+acd299(54)+acd299(55)+acd299(&
      &53)
      acd299(53)=acd299(6)*acd299(53)
      acd299(54)=acd299(46)*acd299(47)
      acd299(55)=acd299(25)*acd299(45)
      acd299(48)=acd299(32)*acd299(48)
      acd299(48)=acd299(48)+acd299(54)+acd299(55)
      acd299(48)=acd299(3)*acd299(48)
      acd299(54)=acd299(19)*acd299(23)
      acd299(55)=acd299(15)*acd299(21)
      acd299(54)=acd299(54)+acd299(55)
      acd299(52)=-acd299(54)*acd299(52)
      acd299(54)=acd299(19)*acd299(29)
      acd299(55)=acd299(15)*acd299(27)
      acd299(54)=acd299(54)+acd299(55)
      acd299(54)=acd299(54)*acd299(57)
      acd299(55)=acd299(3)*acd299(36)
      acd299(56)=acd299(2)*acd299(35)
      acd299(55)=acd299(55)+acd299(56)
      acd299(55)=acd299(1)*acd299(55)
      acd299(48)=acd299(55)+acd299(51)+acd299(53)+acd299(48)+acd299(54)+acd299(&
      &52)
      acd299(48)=acd299(1)*acd299(48)
      acd299(51)=acd299(30)*acd299(57)
      acd299(52)=-acd299(10)*acd299(26)
      acd299(51)=acd299(51)+acd299(52)
      acd299(51)=acd299(25)*acd299(51)
      acd299(52)=acd299(14)*acd299(57)
      acd299(53)=acd299(10)*acd299(11)
      acd299(52)=acd299(52)+acd299(53)
      acd299(52)=acd299(6)*acd299(52)
      acd299(49)=acd299(31)*acd299(49)
      acd299(49)=acd299(52)+acd299(49)+acd299(51)
      acd299(49)=acd299(2)*acd299(49)
      acd299(48)=acd299(49)+acd299(48)
      brack(ninjaidxt1mu0)=acd299(50)
      brack(ninjaidxt0mu0)=acd299(48)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d299h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd299h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d299h3l131
