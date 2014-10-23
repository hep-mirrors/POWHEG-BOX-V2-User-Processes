module     p0_dbaru_epnebbbarg_d139h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d139h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd139h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(27) :: acd139
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd139(1)=dotproduct(k1,ninjaE3)
      acd139(2)=dotproduct(ninjaE3,spvak7k2)
      acd139(3)=abb139(18)
      acd139(4)=dotproduct(k2,ninjaE3)
      acd139(5)=abb139(23)
      acd139(6)=dotproduct(k3,ninjaE3)
      acd139(7)=dotproduct(k4,ninjaE3)
      acd139(8)=dotproduct(k7,ninjaE3)
      acd139(9)=abb139(17)
      acd139(10)=dotproduct(ninjaE3,spvak1k7)
      acd139(11)=abb139(13)
      acd139(12)=dotproduct(ninjaE3,spvak4k2)
      acd139(13)=abb139(15)
      acd139(14)=dotproduct(ninjaE3,spval5k2)
      acd139(15)=abb139(25)
      acd139(16)=dotproduct(ninjaE3,spval6k2)
      acd139(17)=abb139(31)
      acd139(18)=dotproduct(ninjaE3,spvak4k3)
      acd139(19)=abb139(32)
      acd139(20)=acd139(7)+acd139(6)-acd139(4)
      acd139(20)=acd139(20)*acd139(5)
      acd139(21)=acd139(3)*acd139(1)
      acd139(22)=acd139(9)*acd139(8)
      acd139(23)=acd139(11)*acd139(10)
      acd139(24)=acd139(13)*acd139(12)
      acd139(25)=acd139(15)*acd139(14)
      acd139(26)=acd139(17)*acd139(16)
      acd139(27)=acd139(19)*acd139(18)
      acd139(20)=acd139(20)+acd139(27)+acd139(26)+acd139(25)+acd139(24)+acd139(&
      &23)+acd139(22)+acd139(21)
      acd139(20)=acd139(2)*acd139(20)
      brack(ninjaidxt1x0mu0)=acd139(20)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd139h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(62) :: acd139
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd139(1)=dotproduct(k1,ninjaA1)
      acd139(2)=dotproduct(ninjaE3,spvak7k2)
      acd139(3)=abb139(18)
      acd139(4)=dotproduct(k1,ninjaE3)
      acd139(5)=dotproduct(ninjaA1,spvak7k2)
      acd139(6)=dotproduct(k2,ninjaA1)
      acd139(7)=abb139(23)
      acd139(8)=dotproduct(k2,ninjaE3)
      acd139(9)=dotproduct(k3,ninjaA1)
      acd139(10)=dotproduct(k3,ninjaE3)
      acd139(11)=dotproduct(k4,ninjaA1)
      acd139(12)=dotproduct(k4,ninjaE3)
      acd139(13)=dotproduct(k7,ninjaA1)
      acd139(14)=abb139(17)
      acd139(15)=dotproduct(k7,ninjaE3)
      acd139(16)=dotproduct(ninjaA1,spval5k2)
      acd139(17)=abb139(25)
      acd139(18)=dotproduct(ninjaA1,spvak1k7)
      acd139(19)=abb139(13)
      acd139(20)=dotproduct(ninjaE3,spval5k2)
      acd139(21)=dotproduct(ninjaE3,spvak1k7)
      acd139(22)=dotproduct(ninjaE3,spvak4k2)
      acd139(23)=abb139(15)
      acd139(24)=dotproduct(ninjaE3,spval6k2)
      acd139(25)=abb139(31)
      acd139(26)=dotproduct(ninjaE3,spvak4k3)
      acd139(27)=abb139(32)
      acd139(28)=dotproduct(ninjaA1,spvak4k2)
      acd139(29)=dotproduct(ninjaA1,spval6k2)
      acd139(30)=dotproduct(ninjaA1,spvak4k3)
      acd139(31)=dotproduct(k1,ninjaA0)
      acd139(32)=dotproduct(ninjaA0,spvak7k2)
      acd139(33)=abb139(11)
      acd139(34)=dotproduct(k2,ninjaA0)
      acd139(35)=abb139(27)
      acd139(36)=dotproduct(k3,ninjaA0)
      acd139(37)=dotproduct(k4,ninjaA0)
      acd139(38)=dotproduct(k7,ninjaA0)
      acd139(39)=abb139(12)
      acd139(40)=dotproduct(ninjaA0,ninjaE3)
      acd139(41)=abb139(14)
      acd139(42)=dotproduct(ninjaA0,spval5k2)
      acd139(43)=dotproduct(ninjaA0,spvak1k7)
      acd139(44)=dotproduct(ninjaA0,spvak4k2)
      acd139(45)=dotproduct(ninjaA0,spval6k2)
      acd139(46)=dotproduct(ninjaA0,spvak4k3)
      acd139(47)=abb139(10)
      acd139(48)=abb139(21)
      acd139(49)=abb139(20)
      acd139(50)=abb139(19)
      acd139(51)=abb139(34)
      acd139(52)=-acd139(12)+acd139(8)-acd139(10)
      acd139(53)=acd139(52)*acd139(7)
      acd139(54)=acd139(27)*acd139(26)
      acd139(55)=acd139(25)*acd139(24)
      acd139(56)=acd139(23)*acd139(22)
      acd139(57)=acd139(19)*acd139(21)
      acd139(58)=acd139(17)*acd139(20)
      acd139(59)=acd139(14)*acd139(15)
      acd139(60)=acd139(3)*acd139(4)
      acd139(53)=-acd139(53)+acd139(56)+acd139(57)+acd139(58)+acd139(59)+acd139&
      &(60)+acd139(54)+acd139(55)
      acd139(54)=acd139(5)*acd139(53)
      acd139(55)=acd139(27)*acd139(30)
      acd139(56)=acd139(25)*acd139(29)
      acd139(57)=acd139(23)*acd139(28)
      acd139(58)=acd139(19)*acd139(18)
      acd139(59)=acd139(17)*acd139(16)
      acd139(60)=acd139(14)*acd139(13)
      acd139(61)=acd139(3)*acd139(1)
      acd139(62)=-acd139(6)+acd139(11)+acd139(9)
      acd139(62)=acd139(7)*acd139(62)
      acd139(55)=acd139(62)+acd139(61)+acd139(60)+acd139(59)+acd139(58)+acd139(&
      &57)+acd139(55)+acd139(56)
      acd139(55)=acd139(2)*acd139(55)
      acd139(54)=acd139(55)+acd139(54)
      acd139(53)=acd139(32)*acd139(53)
      acd139(55)=acd139(27)*acd139(46)
      acd139(56)=acd139(25)*acd139(45)
      acd139(57)=acd139(23)*acd139(44)
      acd139(58)=acd139(19)*acd139(43)
      acd139(59)=acd139(17)*acd139(42)
      acd139(60)=acd139(14)*acd139(38)
      acd139(61)=acd139(3)*acd139(31)
      acd139(62)=-acd139(34)+acd139(37)+acd139(36)
      acd139(62)=acd139(7)*acd139(62)
      acd139(55)=acd139(62)+acd139(61)+acd139(60)+acd139(59)+acd139(58)+acd139(&
      &57)+acd139(56)+acd139(48)+acd139(55)
      acd139(55)=acd139(2)*acd139(55)
      acd139(52)=acd139(35)*acd139(52)
      acd139(56)=acd139(40)*acd139(41)
      acd139(57)=acd139(26)*acd139(51)
      acd139(58)=acd139(24)*acd139(50)
      acd139(59)=acd139(22)*acd139(49)
      acd139(60)=acd139(20)*acd139(47)
      acd139(61)=acd139(15)*acd139(39)
      acd139(62)=acd139(4)*acd139(33)
      acd139(52)=acd139(55)+acd139(62)+acd139(61)+acd139(60)+acd139(59)+acd139(&
      &58)+2.0_ki*acd139(56)+acd139(57)+acd139(52)+acd139(53)
      brack(ninjaidxt0x0mu0)=acd139(52)
      brack(ninjaidxt0x1mu0)=acd139(54)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d139h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd139h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d139h4l132
