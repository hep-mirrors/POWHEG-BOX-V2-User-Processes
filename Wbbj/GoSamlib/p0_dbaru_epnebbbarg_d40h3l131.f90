module     p0_dbaru_epnebbbarg_d40h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d40h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd40h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd40
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd40(1)=dotproduct(k7,ninjaE3)
      acd40(2)=dotproduct(ninjaE3,spvak2l5)
      acd40(3)=abb40(24)
      acd40(4)=dotproduct(ninjaE3,spvak2l6)
      acd40(5)=abb40(36)
      acd40(6)=dotproduct(ninjaE3,spvak2k7)
      acd40(7)=abb40(21)
      acd40(8)=dotproduct(ninjaE3,spvak4k7)
      acd40(9)=abb40(30)
      acd40(10)=dotproduct(ninjaE3,spvak1k7)
      acd40(11)=abb40(33)
      acd40(12)=abb40(23)
      acd40(13)=abb40(32)
      acd40(14)=abb40(31)
      acd40(15)=acd40(3)*acd40(1)
      acd40(16)=acd40(7)*acd40(6)
      acd40(17)=acd40(9)*acd40(8)
      acd40(18)=acd40(11)*acd40(10)
      acd40(15)=acd40(18)+acd40(17)+acd40(16)+acd40(15)
      acd40(15)=acd40(2)*acd40(15)
      acd40(16)=acd40(5)*acd40(1)
      acd40(17)=acd40(12)*acd40(6)
      acd40(18)=acd40(13)*acd40(8)
      acd40(19)=acd40(14)*acd40(10)
      acd40(16)=acd40(19)+acd40(18)+acd40(17)+acd40(16)
      acd40(16)=acd40(4)*acd40(16)
      acd40(15)=acd40(16)+acd40(15)
      brack(ninjaidxt2mu0)=acd40(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd40h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(68) :: acd40
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd40(1)=dotproduct(k7,ninjaE3)
      acd40(2)=dotproduct(ninjaE4,spvak2l5)
      acd40(3)=abb40(24)
      acd40(4)=dotproduct(ninjaE4,spvak2l6)
      acd40(5)=abb40(36)
      acd40(6)=dotproduct(k7,ninjaE4)
      acd40(7)=dotproduct(ninjaE3,spvak2l5)
      acd40(8)=dotproduct(ninjaE3,spvak2l6)
      acd40(9)=dotproduct(ninjaE4,spvak2k7)
      acd40(10)=abb40(21)
      acd40(11)=dotproduct(ninjaE4,spvak4k7)
      acd40(12)=abb40(30)
      acd40(13)=dotproduct(ninjaE4,spvak1k7)
      acd40(14)=abb40(33)
      acd40(15)=dotproduct(ninjaE3,spvak2k7)
      acd40(16)=abb40(23)
      acd40(17)=abb40(32)
      acd40(18)=abb40(31)
      acd40(19)=dotproduct(ninjaE3,spvak4k7)
      acd40(20)=dotproduct(ninjaE3,spvak1k7)
      acd40(21)=abb40(17)
      acd40(22)=dotproduct(k2,ninjaE3)
      acd40(23)=abb40(22)
      acd40(24)=dotproduct(l5,ninjaE3)
      acd40(25)=abb40(19)
      acd40(26)=dotproduct(l6,ninjaE3)
      acd40(27)=dotproduct(k7,ninjaA)
      acd40(28)=dotproduct(ninjaA,spvak2l5)
      acd40(29)=dotproduct(ninjaA,spvak2l6)
      acd40(30)=dotproduct(ninjaA,ninjaE3)
      acd40(31)=dotproduct(ninjaA,spvak2k7)
      acd40(32)=dotproduct(ninjaA,spvak4k7)
      acd40(33)=dotproduct(ninjaA,spvak1k7)
      acd40(34)=abb40(12)
      acd40(35)=dotproduct(ninjaE3,spvak1l5)
      acd40(36)=abb40(13)
      acd40(37)=dotproduct(ninjaE3,spvak1l6)
      acd40(38)=abb40(18)
      acd40(39)=dotproduct(ninjaE3,spvak4l5)
      acd40(40)=abb40(20)
      acd40(41)=abb40(39)
      acd40(42)=abb40(28)
      acd40(43)=dotproduct(ninjaE3,spvak4l6)
      acd40(44)=abb40(27)
      acd40(45)=dotproduct(k2,ninjaA)
      acd40(46)=dotproduct(l5,ninjaA)
      acd40(47)=dotproduct(l6,ninjaA)
      acd40(48)=dotproduct(ninjaA,ninjaA)
      acd40(49)=dotproduct(ninjaA,spvak1l5)
      acd40(50)=dotproduct(ninjaA,spvak1l6)
      acd40(51)=dotproduct(ninjaA,spvak4l5)
      acd40(52)=dotproduct(ninjaA,spvak4l6)
      acd40(53)=abb40(14)
      acd40(54)=acd40(14)*acd40(13)
      acd40(55)=acd40(12)*acd40(11)
      acd40(56)=acd40(10)*acd40(9)
      acd40(57)=acd40(3)*acd40(6)
      acd40(54)=acd40(54)+acd40(55)+acd40(56)+acd40(57)
      acd40(54)=acd40(54)*acd40(7)
      acd40(55)=acd40(18)*acd40(13)
      acd40(56)=acd40(17)*acd40(11)
      acd40(57)=acd40(16)*acd40(9)
      acd40(58)=acd40(5)*acd40(6)
      acd40(55)=acd40(55)+acd40(56)+acd40(57)+acd40(58)
      acd40(55)=acd40(55)*acd40(8)
      acd40(56)=acd40(14)*acd40(20)
      acd40(57)=acd40(12)*acd40(19)
      acd40(58)=acd40(10)*acd40(15)
      acd40(59)=acd40(1)*acd40(3)
      acd40(56)=acd40(59)+acd40(58)+acd40(56)+acd40(57)
      acd40(57)=acd40(56)*acd40(2)
      acd40(58)=acd40(18)*acd40(20)
      acd40(59)=acd40(17)*acd40(19)
      acd40(60)=acd40(15)*acd40(16)
      acd40(61)=acd40(1)*acd40(5)
      acd40(58)=acd40(58)+acd40(59)+acd40(60)+acd40(61)
      acd40(59)=acd40(58)*acd40(4)
      acd40(54)=acd40(57)+acd40(59)+acd40(21)+acd40(54)+acd40(55)
      acd40(55)=acd40(29)*acd40(58)
      acd40(56)=acd40(28)*acd40(56)
      acd40(57)=acd40(18)*acd40(33)
      acd40(58)=acd40(17)*acd40(32)
      acd40(59)=acd40(16)*acd40(31)
      acd40(60)=acd40(5)*acd40(27)
      acd40(57)=acd40(42)+acd40(57)+acd40(58)+acd40(59)+acd40(60)
      acd40(58)=acd40(8)*acd40(57)
      acd40(59)=acd40(14)*acd40(33)
      acd40(60)=acd40(12)*acd40(32)
      acd40(61)=acd40(10)*acd40(31)
      acd40(62)=acd40(3)*acd40(27)
      acd40(59)=acd40(34)+acd40(59)+acd40(60)+acd40(61)+acd40(62)
      acd40(60)=acd40(7)*acd40(59)
      acd40(61)=acd40(1)-acd40(26)-acd40(24)
      acd40(61)=acd40(25)*acd40(61)
      acd40(62)=acd40(44)*acd40(43)
      acd40(63)=acd40(40)*acd40(39)
      acd40(64)=acd40(38)*acd40(37)
      acd40(65)=acd40(36)*acd40(35)
      acd40(66)=acd40(23)*acd40(22)
      acd40(67)=acd40(21)*acd40(30)
      acd40(68)=acd40(15)*acd40(41)
      acd40(55)=acd40(60)+acd40(58)+acd40(56)+acd40(55)+acd40(68)+2.0_ki*acd40(&
      &67)+acd40(66)+acd40(65)+acd40(64)+acd40(62)+acd40(63)+acd40(61)
      acd40(56)=ninjaP*acd40(54)
      acd40(57)=acd40(29)*acd40(57)
      acd40(58)=acd40(28)*acd40(59)
      acd40(59)=acd40(44)*acd40(52)
      acd40(60)=acd40(40)*acd40(51)
      acd40(61)=acd40(38)*acd40(50)
      acd40(62)=acd40(36)*acd40(49)
      acd40(63)=acd40(23)*acd40(45)
      acd40(64)=acd40(21)*acd40(48)
      acd40(65)=acd40(31)*acd40(41)
      acd40(66)=acd40(27)-acd40(47)-acd40(46)
      acd40(66)=acd40(25)*acd40(66)
      acd40(56)=acd40(56)+acd40(58)+acd40(57)+acd40(66)+acd40(65)+acd40(64)+acd&
      &40(63)+acd40(62)+acd40(61)+acd40(60)+acd40(53)+acd40(59)
      brack(ninjaidxt1mu0)=acd40(55)
      brack(ninjaidxt0mu0)=acd40(56)
      brack(ninjaidxt0mu2)=acd40(54)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d40h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd40h3
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d40h3l131
