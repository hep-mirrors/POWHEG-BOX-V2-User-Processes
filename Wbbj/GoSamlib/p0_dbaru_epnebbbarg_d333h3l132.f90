module     p0_dbaru_epnebbbarg_d333h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d333h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd333h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd333
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd333(1)=dotproduct(k2,ninjaE3)
      acd333(2)=dotproduct(ninjaE3,spvak2k7)
      acd333(3)=abb333(14)
      acd333(4)=dotproduct(l6,ninjaE3)
      acd333(5)=abb333(25)
      acd333(6)=abb333(32)
      acd333(7)=dotproduct(ninjaE3,spvak7l6)
      acd333(8)=abb333(15)
      acd333(9)=dotproduct(ninjaE3,spvak1l6)
      acd333(10)=abb333(16)
      acd333(11)=dotproduct(ninjaE3,spvak2l6)
      acd333(12)=abb333(17)
      acd333(13)=dotproduct(ninjaE3,spvak4l6)
      acd333(14)=abb333(23)
      acd333(15)=dotproduct(ninjaE3,spvak2k3)
      acd333(16)=abb333(28)
      acd333(17)=acd333(15)*acd333(16)
      acd333(18)=acd333(13)*acd333(14)
      acd333(19)=acd333(11)*acd333(12)
      acd333(20)=acd333(9)*acd333(10)
      acd333(21)=acd333(7)*acd333(8)
      acd333(22)=acd333(4)*acd333(5)
      acd333(23)=acd333(1)*acd333(3)
      acd333(24)=acd333(2)*acd333(6)
      acd333(17)=acd333(24)+acd333(23)+acd333(22)+acd333(21)+acd333(20)+acd333(&
      &19)+acd333(17)+acd333(18)
      acd333(17)=acd333(2)*acd333(17)
      brack(ninjaidxt1x0mu0)=acd333(17)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd333h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(53) :: acd333
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd333(1)=dotproduct(k2,ninjaA1)
      acd333(2)=dotproduct(ninjaE3,spvak2k7)
      acd333(3)=abb333(14)
      acd333(4)=dotproduct(k2,ninjaE3)
      acd333(5)=dotproduct(ninjaA1,spvak2k7)
      acd333(6)=dotproduct(l6,ninjaA1)
      acd333(7)=abb333(25)
      acd333(8)=dotproduct(l6,ninjaE3)
      acd333(9)=abb333(32)
      acd333(10)=dotproduct(ninjaE3,spvak7l6)
      acd333(11)=abb333(15)
      acd333(12)=dotproduct(ninjaE3,spvak1l6)
      acd333(13)=abb333(16)
      acd333(14)=dotproduct(ninjaE3,spvak2l6)
      acd333(15)=abb333(17)
      acd333(16)=dotproduct(ninjaE3,spvak4l6)
      acd333(17)=abb333(23)
      acd333(18)=dotproduct(ninjaE3,spvak2k3)
      acd333(19)=abb333(28)
      acd333(20)=dotproduct(ninjaA1,spvak7l6)
      acd333(21)=dotproduct(ninjaA1,spvak1l6)
      acd333(22)=dotproduct(ninjaA1,spvak2l6)
      acd333(23)=dotproduct(ninjaA1,spvak4l6)
      acd333(24)=dotproduct(ninjaA1,spvak2k3)
      acd333(25)=dotproduct(k2,ninjaA0)
      acd333(26)=dotproduct(ninjaA0,spvak2k7)
      acd333(27)=dotproduct(l6,ninjaA0)
      acd333(28)=dotproduct(k7,ninjaE3)
      acd333(29)=abb333(20)
      acd333(30)=dotproduct(ninjaA0,ninjaE3)
      acd333(31)=abb333(24)
      acd333(32)=dotproduct(ninjaA0,spvak7l6)
      acd333(33)=dotproduct(ninjaA0,spvak1l6)
      acd333(34)=dotproduct(ninjaA0,spvak2l6)
      acd333(35)=dotproduct(ninjaA0,spvak4l6)
      acd333(36)=dotproduct(ninjaA0,spvak2k3)
      acd333(37)=abb333(13)
      acd333(38)=dotproduct(ninjaE3,spvak1k7)
      acd333(39)=abb333(18)
      acd333(40)=dotproduct(ninjaE3,spval6k7)
      acd333(41)=abb333(37)
      acd333(42)=dotproduct(ninjaE3,spvak4k7)
      acd333(43)=abb333(56)
      acd333(44)=acd333(19)*acd333(24)
      acd333(45)=acd333(17)*acd333(23)
      acd333(46)=acd333(15)*acd333(22)
      acd333(47)=acd333(13)*acd333(21)
      acd333(48)=acd333(11)*acd333(20)
      acd333(49)=acd333(7)*acd333(6)
      acd333(50)=acd333(3)*acd333(1)
      acd333(51)=2.0_ki*acd333(9)
      acd333(52)=acd333(5)*acd333(51)
      acd333(44)=acd333(52)+acd333(50)+acd333(49)+acd333(48)+acd333(47)+acd333(&
      &46)+acd333(44)+acd333(45)
      acd333(44)=acd333(2)*acd333(44)
      acd333(45)=acd333(19)*acd333(18)
      acd333(46)=acd333(17)*acd333(16)
      acd333(47)=acd333(15)*acd333(14)
      acd333(48)=acd333(13)*acd333(12)
      acd333(49)=acd333(11)*acd333(10)
      acd333(50)=acd333(7)*acd333(8)
      acd333(52)=acd333(3)*acd333(4)
      acd333(45)=acd333(47)+acd333(48)+acd333(49)+acd333(50)+acd333(52)+acd333(&
      &45)+acd333(46)
      acd333(46)=acd333(5)*acd333(45)
      acd333(44)=acd333(46)+acd333(44)
      acd333(46)=acd333(19)*acd333(36)
      acd333(47)=acd333(17)*acd333(35)
      acd333(48)=acd333(15)*acd333(34)
      acd333(49)=acd333(13)*acd333(33)
      acd333(50)=acd333(11)*acd333(32)
      acd333(52)=acd333(7)*acd333(27)
      acd333(53)=acd333(3)*acd333(25)
      acd333(51)=acd333(26)*acd333(51)
      acd333(46)=acd333(51)+acd333(53)+acd333(52)+acd333(50)+acd333(49)+acd333(&
      &48)+acd333(47)+acd333(37)+acd333(46)
      acd333(46)=acd333(2)*acd333(46)
      acd333(45)=acd333(26)*acd333(45)
      acd333(47)=acd333(42)*acd333(43)
      acd333(48)=acd333(40)*acd333(41)
      acd333(49)=acd333(38)*acd333(39)
      acd333(50)=acd333(30)*acd333(31)
      acd333(51)=acd333(28)*acd333(29)
      acd333(45)=acd333(46)+acd333(45)+acd333(51)+2.0_ki*acd333(50)+acd333(49)+&
      &acd333(47)+acd333(48)
      brack(ninjaidxt0x0mu0)=acd333(45)
      brack(ninjaidxt0x1mu0)=acd333(44)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d333h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd333h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
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
end module     p0_dbaru_epnebbbarg_d333h3l132
