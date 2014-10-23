module     p0_dbaru_epnebbbarg_d107h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d107h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd107h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd107
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd107h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(59) :: acd107
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd107(1)=dotproduct(k2,ninjaE3)
      acd107(2)=dotproduct(ninjaE3,spval6k2)
      acd107(3)=abb107(15)
      acd107(4)=dotproduct(k3,ninjaE3)
      acd107(5)=dotproduct(ninjaE3,spvak4k2)
      acd107(6)=abb107(27)
      acd107(7)=dotproduct(k4,ninjaE3)
      acd107(8)=abb107(13)
      acd107(9)=dotproduct(ninjaE3,spvak4k3)
      acd107(10)=abb107(41)
      acd107(11)=abb107(24)
      acd107(12)=abb107(25)
      acd107(13)=dotproduct(ninjaE3,spvak3k2)
      acd107(14)=abb107(16)
      acd107(15)=dotproduct(k2,ninjaA)
      acd107(16)=dotproduct(ninjaA,spval6k2)
      acd107(17)=abb107(18)
      acd107(18)=dotproduct(k3,ninjaA)
      acd107(19)=dotproduct(ninjaA,spvak4k2)
      acd107(20)=abb107(28)
      acd107(21)=dotproduct(k4,ninjaA)
      acd107(22)=dotproduct(ninjaA,ninjaE3)
      acd107(23)=abb107(30)
      acd107(24)=dotproduct(ninjaA,spvak4k3)
      acd107(25)=dotproduct(ninjaA,spvak3k2)
      acd107(26)=abb107(11)
      acd107(27)=abb107(12)
      acd107(28)=abb107(14)
      acd107(29)=dotproduct(ninjaE3,spvak1k3)
      acd107(30)=abb107(19)
      acd107(31)=dotproduct(ninjaE3,spval5k3)
      acd107(32)=abb107(20)
      acd107(33)=dotproduct(ninjaE3,spvak1k2)
      acd107(34)=abb107(21)
      acd107(35)=dotproduct(ninjaE3,spvak7k3)
      acd107(36)=abb107(22)
      acd107(37)=dotproduct(ninjaE3,spval6k3)
      acd107(38)=abb107(23)
      acd107(39)=dotproduct(ninjaE3,spval5k2)
      acd107(40)=abb107(26)
      acd107(41)=dotproduct(ninjaE3,spvak7k2)
      acd107(42)=abb107(36)
      acd107(43)=acd107(4)+acd107(7)
      acd107(44)=acd107(43)*acd107(6)
      acd107(45)=acd107(9)*acd107(12)
      acd107(46)=acd107(5)*acd107(11)
      acd107(45)=acd107(46)+acd107(44)+acd107(45)
      acd107(45)=acd107(5)*acd107(45)
      acd107(46)=acd107(43)-acd107(1)
      acd107(46)=acd107(46)*acd107(3)
      acd107(47)=acd107(9)*acd107(10)
      acd107(48)=acd107(5)*acd107(8)
      acd107(47)=acd107(48)+acd107(47)+acd107(46)
      acd107(47)=acd107(2)*acd107(47)
      acd107(48)=acd107(14)*acd107(13)
      acd107(49)=acd107(9)*acd107(48)
      acd107(45)=acd107(47)+acd107(49)+acd107(45)
      acd107(47)=acd107(12)*acd107(24)
      acd107(49)=acd107(19)*acd107(11)
      acd107(50)=acd107(16)*acd107(8)
      acd107(51)=acd107(18)+acd107(21)
      acd107(52)=acd107(6)*acd107(51)
      acd107(47)=acd107(52)+acd107(50)+2.0_ki*acd107(49)+acd107(27)+acd107(47)
      acd107(47)=acd107(5)*acd107(47)
      acd107(49)=acd107(14)*acd107(25)
      acd107(50)=acd107(19)*acd107(12)
      acd107(52)=acd107(16)*acd107(10)
      acd107(49)=acd107(52)+acd107(50)+acd107(28)+acd107(49)
      acd107(49)=acd107(9)*acd107(49)
      acd107(50)=acd107(10)*acd107(24)
      acd107(52)=acd107(19)*acd107(8)
      acd107(51)=-acd107(15)+acd107(51)
      acd107(51)=acd107(3)*acd107(51)
      acd107(50)=acd107(51)+acd107(52)+acd107(26)+acd107(50)
      acd107(50)=acd107(2)*acd107(50)
      acd107(43)=-acd107(20)*acd107(43)
      acd107(51)=acd107(41)*acd107(42)
      acd107(52)=acd107(39)*acd107(40)
      acd107(53)=acd107(37)*acd107(38)
      acd107(54)=acd107(35)*acd107(36)
      acd107(55)=acd107(33)*acd107(34)
      acd107(56)=acd107(31)*acd107(32)
      acd107(57)=acd107(29)*acd107(30)
      acd107(58)=acd107(22)*acd107(23)
      acd107(48)=acd107(24)*acd107(48)
      acd107(59)=acd107(1)*acd107(17)
      acd107(44)=acd107(19)*acd107(44)
      acd107(46)=acd107(16)*acd107(46)
      acd107(43)=acd107(50)+acd107(47)+acd107(46)+acd107(49)+acd107(44)+acd107(&
      &59)+acd107(48)+2.0_ki*acd107(58)+acd107(57)+acd107(56)+acd107(55)+acd107&
      &(54)+acd107(53)+acd107(51)+acd107(52)+acd107(43)
      brack(ninjaidxt1mu0)=acd107(45)
      brack(ninjaidxt0mu0)=acd107(43)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d107h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd107h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d107h4l131
