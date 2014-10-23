module     p0_dbaru_epnebbbarg_d109h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d109h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd109h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd109
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd109h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(68) :: acd109
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd109(1)=dotproduct(k7,ninjaE3)
      acd109(2)=dotproduct(ninjaE3,spvak1k2)
      acd109(3)=abb109(21)
      acd109(4)=dotproduct(ninjaE3,spval6k2)
      acd109(5)=abb109(40)
      acd109(6)=dotproduct(ninjaE3,spvak4k2)
      acd109(7)=abb109(38)
      acd109(8)=dotproduct(ninjaE3,spval6k7)
      acd109(9)=abb109(11)
      acd109(10)=dotproduct(ninjaE3,spvak2k7)
      acd109(11)=abb109(12)
      acd109(12)=dotproduct(ninjaE3,spval5k7)
      acd109(13)=abb109(16)
      acd109(14)=abb109(13)
      acd109(15)=dotproduct(ninjaE3,spvak1k7)
      acd109(16)=dotproduct(ninjaE3,spval5k2)
      acd109(17)=abb109(43)
      acd109(18)=dotproduct(ninjaE3,spvak4k7)
      acd109(19)=abb109(23)
      acd109(20)=abb109(20)
      acd109(21)=dotproduct(k7,ninjaA)
      acd109(22)=dotproduct(ninjaA,spvak1k2)
      acd109(23)=dotproduct(ninjaA,spval6k2)
      acd109(24)=dotproduct(ninjaA,spvak4k2)
      acd109(25)=abb109(28)
      acd109(26)=dotproduct(ninjaA,spval6k7)
      acd109(27)=dotproduct(ninjaA,spvak1k7)
      acd109(28)=dotproduct(ninjaA,spvak2k7)
      acd109(29)=dotproduct(ninjaA,spvak4k7)
      acd109(30)=dotproduct(ninjaA,spval5k7)
      acd109(31)=dotproduct(ninjaA,spval5k2)
      acd109(32)=abb109(18)
      acd109(33)=abb109(36)
      acd109(34)=abb109(14)
      acd109(35)=abb109(39)
      acd109(36)=abb109(25)
      acd109(37)=abb109(35)
      acd109(38)=abb109(41)
      acd109(39)=abb109(30)
      acd109(40)=dotproduct(ninjaE3,spvak1l5)
      acd109(41)=abb109(17)
      acd109(42)=dotproduct(ninjaE3,spvak4l5)
      acd109(43)=abb109(34)
      acd109(44)=dotproduct(ninjaE3,spval6l5)
      acd109(45)=abb109(37)
      acd109(46)=acd109(15)*acd109(9)
      acd109(47)=acd109(18)*acd109(14)
      acd109(48)=acd109(5)*acd109(1)
      acd109(49)=acd109(17)*acd109(10)
      acd109(46)=-acd109(46)-acd109(47)+acd109(48)+acd109(49)
      acd109(47)=acd109(4)*acd109(46)
      acd109(48)=acd109(3)*acd109(1)
      acd109(49)=acd109(11)*acd109(10)
      acd109(48)=acd109(48)+acd109(49)
      acd109(49)=acd109(2)*acd109(48)
      acd109(50)=acd109(7)*acd109(1)
      acd109(51)=acd109(19)*acd109(10)
      acd109(50)=acd109(50)+acd109(51)
      acd109(51)=acd109(6)*acd109(50)
      acd109(52)=acd109(9)*acd109(2)
      acd109(53)=acd109(14)*acd109(6)
      acd109(52)=acd109(52)+acd109(53)
      acd109(53)=acd109(8)*acd109(52)
      acd109(54)=acd109(13)*acd109(2)
      acd109(55)=acd109(20)*acd109(6)
      acd109(54)=acd109(54)+acd109(55)
      acd109(55)=-acd109(12)*acd109(54)
      acd109(56)=acd109(15)*acd109(13)
      acd109(57)=acd109(18)*acd109(20)
      acd109(56)=acd109(56)+acd109(57)
      acd109(57)=acd109(16)*acd109(56)
      acd109(47)=acd109(57)+acd109(53)+acd109(55)+acd109(47)+acd109(51)+acd109(&
      &49)
      acd109(46)=acd109(23)*acd109(46)
      acd109(49)=acd109(8)*acd109(9)
      acd109(51)=-acd109(12)*acd109(13)
      acd109(48)=acd109(48)+acd109(49)+acd109(51)
      acd109(48)=acd109(22)*acd109(48)
      acd109(49)=acd109(8)*acd109(14)
      acd109(51)=-acd109(12)*acd109(20)
      acd109(49)=acd109(50)+acd109(49)+acd109(51)
      acd109(49)=acd109(24)*acd109(49)
      acd109(50)=acd109(3)*acd109(2)
      acd109(51)=acd109(5)*acd109(4)
      acd109(53)=acd109(7)*acd109(6)
      acd109(50)=acd109(53)+acd109(50)+acd109(51)
      acd109(50)=acd109(21)*acd109(50)
      acd109(51)=acd109(11)*acd109(2)
      acd109(53)=acd109(17)*acd109(4)
      acd109(55)=acd109(19)*acd109(6)
      acd109(51)=acd109(55)+acd109(51)+acd109(53)
      acd109(51)=acd109(28)*acd109(51)
      acd109(52)=acd109(26)*acd109(52)
      acd109(53)=acd109(9)*acd109(4)
      acd109(55)=acd109(16)*acd109(13)
      acd109(53)=-acd109(53)+acd109(55)
      acd109(53)=acd109(27)*acd109(53)
      acd109(55)=acd109(14)*acd109(4)
      acd109(57)=acd109(16)*acd109(20)
      acd109(55)=-acd109(55)+acd109(57)
      acd109(55)=acd109(29)*acd109(55)
      acd109(54)=-acd109(30)*acd109(54)
      acd109(56)=acd109(31)*acd109(56)
      acd109(57)=acd109(25)*acd109(1)
      acd109(58)=acd109(32)*acd109(2)
      acd109(59)=acd109(33)*acd109(8)
      acd109(60)=acd109(34)*acd109(15)
      acd109(61)=acd109(35)*acd109(4)
      acd109(62)=acd109(36)*acd109(10)
      acd109(63)=acd109(37)*acd109(6)
      acd109(64)=acd109(38)*acd109(18)
      acd109(65)=acd109(39)*acd109(12)
      acd109(66)=acd109(41)*acd109(40)
      acd109(67)=acd109(43)*acd109(42)
      acd109(68)=acd109(45)*acd109(44)
      acd109(46)=acd109(68)+acd109(67)+acd109(66)+acd109(65)+acd109(64)+acd109(&
      &63)+acd109(62)+acd109(61)+acd109(60)+acd109(59)+acd109(58)+acd109(57)+ac&
      &d109(56)+acd109(54)+acd109(55)+acd109(53)+acd109(52)+acd109(51)+acd109(5&
      &0)+acd109(49)+acd109(46)+acd109(48)
      brack(ninjaidxt1mu0)=acd109(47)
      brack(ninjaidxt0mu0)=acd109(46)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d109h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd109h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k5
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
end module     p0_dbaru_epnebbbarg_d109h0l131
