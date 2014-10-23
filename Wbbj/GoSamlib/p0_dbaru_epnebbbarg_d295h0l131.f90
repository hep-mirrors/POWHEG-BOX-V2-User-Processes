module     p0_dbaru_epnebbbarg_d295h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d295h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd295h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd295
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd295h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(55) :: acd295
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd295(1)=dotproduct(ninjaE3,spvak1k2)
      acd295(2)=dotproduct(ninjaE3,spvak2k7)
      acd295(3)=dotproduct(ninjaE3,spval5k2)
      acd295(4)=dotproduct(ninjaE3,spvak4k3)
      acd295(5)=abb295(86)
      acd295(6)=dotproduct(k1,ninjaE3)
      acd295(7)=dotproduct(k2,ninjaE3)
      acd295(8)=abb295(101)
      acd295(9)=dotproduct(ninjaE3,spval5k7)
      acd295(10)=abb295(35)
      acd295(11)=dotproduct(ninjaE3,spvak4k2)
      acd295(12)=abb295(32)
      acd295(13)=dotproduct(k7,ninjaE3)
      acd295(14)=dotproduct(ninjaA,ninjaE3)
      acd295(15)=abb295(103)
      acd295(16)=abb295(23)
      acd295(17)=abb295(81)
      acd295(18)=dotproduct(l5,ninjaE3)
      acd295(19)=abb295(11)
      acd295(20)=dotproduct(l6,ninjaE3)
      acd295(21)=abb295(28)
      acd295(22)=abb295(37)
      acd295(23)=abb295(51)
      acd295(24)=dotproduct(ninjaA,spvak1k2)
      acd295(25)=dotproduct(ninjaA,spvak2k7)
      acd295(26)=dotproduct(ninjaA,spval5k2)
      acd295(27)=dotproduct(ninjaA,spvak4k3)
      acd295(28)=abb295(46)
      acd295(29)=abb295(24)
      acd295(30)=dotproduct(ninjaE3,spval5k3)
      acd295(31)=abb295(25)
      acd295(32)=dotproduct(ninjaE3,spval5k1)
      acd295(33)=abb295(33)
      acd295(34)=abb295(45)
      acd295(35)=abb295(47)
      acd295(36)=abb295(50)
      acd295(37)=abb295(39)
      acd295(38)=abb295(20)
      acd295(39)=abb295(97)
      acd295(40)=abb295(42)
      acd295(41)=dotproduct(ninjaE3,spvak7k2)
      acd295(42)=abb295(84)
      acd295(43)=dotproduct(ninjaE3,spval6k2)
      acd295(44)=abb295(92)
      acd295(45)=acd295(2)*acd295(3)
      acd295(46)=-acd295(1)*acd295(4)*acd295(5)*acd295(45)
      acd295(47)=acd295(30)*acd295(31)
      acd295(48)=acd295(32)*acd295(33)
      acd295(49)=-acd295(20)-acd295(18)
      acd295(49)=acd295(19)*acd295(49)
      acd295(50)=2.0_ki*acd295(14)
      acd295(51)=acd295(21)*acd295(50)
      acd295(52)=acd295(9)*acd295(34)
      acd295(53)=acd295(7)*acd295(16)
      acd295(54)=-acd295(5)*acd295(26)
      acd295(54)=acd295(29)+acd295(54)
      acd295(54)=acd295(4)*acd295(54)
      acd295(55)=-acd295(5)*acd295(27)
      acd295(55)=acd295(28)+acd295(55)
      acd295(55)=acd295(3)*acd295(55)
      acd295(47)=acd295(55)+acd295(54)+acd295(53)+acd295(52)+acd295(51)+acd295(&
      &49)+acd295(47)+acd295(48)
      acd295(47)=acd295(2)*acd295(47)
      acd295(48)=acd295(32)*acd295(36)
      acd295(49)=acd295(9)*acd295(37)
      acd295(51)=-acd295(5)*acd295(25)
      acd295(51)=acd295(35)+acd295(51)
      acd295(51)=acd295(51)*acd295(3)
      acd295(48)=acd295(51)+acd295(48)+acd295(49)
      acd295(48)=acd295(4)*acd295(48)
      acd295(49)=acd295(6)-acd295(13)
      acd295(51)=-acd295(10)*acd295(49)
      acd295(52)=acd295(22)*acd295(50)
      acd295(51)=acd295(52)+acd295(51)
      acd295(51)=acd295(9)*acd295(51)
      acd295(47)=acd295(47)+acd295(51)+acd295(48)
      acd295(47)=acd295(1)*acd295(47)
      acd295(48)=acd295(43)*acd295(44)
      acd295(51)=acd295(41)*acd295(42)
      acd295(52)=acd295(11)*acd295(38)
      acd295(53)=acd295(7)*acd295(17)
      acd295(54)=-acd295(5)*acd295(24)
      acd295(54)=-acd295(40)+acd295(54)
      acd295(54)=acd295(4)*acd295(54)
      acd295(55)=acd295(3)*acd295(39)
      acd295(48)=acd295(55)+acd295(54)+acd295(53)+acd295(52)+acd295(48)+acd295(&
      &51)
      acd295(45)=acd295(48)*acd295(45)
      acd295(48)=-acd295(12)*acd295(49)
      acd295(51)=acd295(23)*acd295(50)
      acd295(48)=acd295(51)+acd295(48)
      acd295(48)=acd295(11)*acd295(48)
      acd295(49)=acd295(8)*acd295(49)
      acd295(50)=acd295(15)*acd295(50)
      acd295(49)=acd295(50)+acd295(49)
      acd295(49)=acd295(7)*acd295(49)
      acd295(48)=acd295(48)+acd295(49)
      acd295(48)=acd295(3)*acd295(48)
      acd295(45)=acd295(47)+acd295(48)+acd295(45)
      brack(ninjaidxt1mu0)=acd295(46)
      brack(ninjaidxt0mu0)=acd295(45)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d295h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd295h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
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
end module     p0_dbaru_epnebbbarg_d295h0l131
