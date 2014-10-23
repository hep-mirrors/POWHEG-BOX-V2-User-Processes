module     p0_dbaru_epnebbbarg_d294h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d294h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd294h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd294
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd294h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(57) :: acd294
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd294(1)=dotproduct(ninjaE3,spvak1k2)
      acd294(2)=dotproduct(ninjaE3,spvak2k7)
      acd294(3)=dotproduct(ninjaE3,spvak4k3)
      acd294(4)=dotproduct(ninjaE3,spvak2l5)
      acd294(5)=abb294(59)
      acd294(6)=dotproduct(k1,ninjaE3)
      acd294(7)=dotproduct(k2,ninjaE3)
      acd294(8)=dotproduct(ninjaE3,spvak2k3)
      acd294(9)=abb294(12)
      acd294(10)=abb294(89)
      acd294(11)=abb294(16)
      acd294(12)=dotproduct(l5,ninjaE3)
      acd294(13)=dotproduct(l6,ninjaE3)
      acd294(14)=abb294(103)
      acd294(15)=dotproduct(k7,ninjaE3)
      acd294(16)=dotproduct(ninjaA,ninjaE3)
      acd294(17)=abb294(50)
      acd294(18)=abb294(33)
      acd294(19)=abb294(133)
      acd294(20)=abb294(11)
      acd294(21)=abb294(25)
      acd294(22)=dotproduct(ninjaE3,spvak4l6)
      acd294(23)=abb294(79)
      acd294(24)=dotproduct(ninjaE3,spvak4k2)
      acd294(25)=abb294(49)
      acd294(26)=abb294(102)
      acd294(27)=abb294(30)
      acd294(28)=abb294(117)
      acd294(29)=abb294(97)
      acd294(30)=abb294(112)
      acd294(31)=dotproduct(ninjaE3,spvak2l6)
      acd294(32)=abb294(61)
      acd294(33)=abb294(73)
      acd294(34)=dotproduct(ninjaA,spvak1k2)
      acd294(35)=dotproduct(ninjaA,spvak2k7)
      acd294(36)=dotproduct(ninjaA,spvak4k3)
      acd294(37)=dotproduct(ninjaA,spvak2l5)
      acd294(38)=abb294(56)
      acd294(39)=abb294(19)
      acd294(40)=abb294(44)
      acd294(41)=abb294(48)
      acd294(42)=dotproduct(ninjaE3,spvak1l6)
      acd294(43)=abb294(42)
      acd294(44)=dotproduct(ninjaE3,spvak7k2)
      acd294(45)=abb294(47)
      acd294(46)=dotproduct(ninjaE3,spval6k2)
      acd294(47)=abb294(88)
      acd294(48)=acd294(4)*acd294(5)
      acd294(49)=acd294(2)*acd294(3)*acd294(1)*acd294(48)
      acd294(50)=2.0_ki*acd294(16)
      acd294(51)=acd294(50)-acd294(13)
      acd294(51)=acd294(26)*acd294(51)
      acd294(52)=acd294(46)*acd294(47)
      acd294(53)=acd294(44)*acd294(45)
      acd294(54)=acd294(42)*acd294(43)
      acd294(55)=acd294(34)*acd294(48)
      acd294(56)=acd294(5)*acd294(37)
      acd294(56)=acd294(39)+acd294(56)
      acd294(56)=acd294(1)*acd294(56)
      acd294(57)=acd294(7)*acd294(21)
      acd294(51)=acd294(57)+acd294(56)+acd294(55)+acd294(54)+acd294(52)+acd294(&
      &53)+acd294(51)
      acd294(51)=acd294(3)*acd294(51)
      acd294(52)=acd294(24)*acd294(25)
      acd294(53)=acd294(22)*acd294(23)
      acd294(54)=acd294(13)*acd294(14)
      acd294(55)=acd294(17)*acd294(50)
      acd294(56)=acd294(1)*acd294(20)
      acd294(57)=acd294(7)*acd294(10)
      acd294(52)=acd294(57)+acd294(56)+acd294(55)+acd294(54)+acd294(52)+acd294(&
      &53)
      acd294(52)=acd294(7)*acd294(52)
      acd294(53)=acd294(31)*acd294(40)
      acd294(54)=acd294(8)*acd294(38)
      acd294(48)=acd294(36)*acd294(48)
      acd294(48)=acd294(48)+acd294(53)+acd294(54)
      acd294(48)=acd294(1)*acd294(48)
      acd294(53)=acd294(24)*acd294(28)
      acd294(54)=acd294(22)*acd294(27)
      acd294(53)=acd294(53)+acd294(54)
      acd294(53)=acd294(13)*acd294(53)
      acd294(54)=acd294(24)*acd294(30)
      acd294(55)=acd294(22)*acd294(29)
      acd294(54)=acd294(54)+acd294(55)
      acd294(54)=acd294(54)*acd294(50)
      acd294(48)=acd294(51)+acd294(52)+acd294(48)+acd294(53)+acd294(54)
      acd294(48)=acd294(2)*acd294(48)
      acd294(51)=acd294(6)-acd294(15)-acd294(12)
      acd294(51)=acd294(9)*acd294(51)
      acd294(52)=acd294(18)*acd294(50)
      acd294(53)=acd294(7)*acd294(11)
      acd294(51)=acd294(53)+acd294(51)+acd294(52)
      acd294(51)=acd294(7)*acd294(8)*acd294(51)
      acd294(52)=acd294(31)*acd294(32)
      acd294(53)=acd294(4)*acd294(33)
      acd294(54)=acd294(7)*acd294(19)
      acd294(52)=acd294(54)+acd294(52)+acd294(53)
      acd294(50)=acd294(50)*acd294(52)
      acd294(52)=acd294(5)*acd294(35)
      acd294(52)=acd294(41)+acd294(52)
      acd294(52)=acd294(52)*acd294(1)*acd294(4)
      acd294(50)=acd294(52)+acd294(50)
      acd294(50)=acd294(3)*acd294(50)
      acd294(48)=acd294(48)+acd294(51)+acd294(50)
      brack(ninjaidxt1mu0)=acd294(49)
      brack(ninjaidxt0mu0)=acd294(48)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d294h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd294h3
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
end module     p0_dbaru_epnebbbarg_d294h3l131
