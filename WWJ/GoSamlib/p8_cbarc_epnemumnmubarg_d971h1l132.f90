module     p8_cbarc_epnemumnmubarg_d971h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity1d971h1l132.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd971
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd971(1)=dotproduct(k2,ninjaE3)
      acd971(2)=dotproduct(ninjaE3,spvak2k7)
      acd971(3)=abb971(12)
      acd971(4)=dotproduct(k3,ninjaE3)
      acd971(5)=dotproduct(k4,ninjaE3)
      acd971(6)=dotproduct(ninjaE3,spvak1k3)
      acd971(7)=abb971(10)
      acd971(8)=dotproduct(ninjaE3,spvak4k2)
      acd971(9)=abb971(11)
      acd971(10)=dotproduct(ninjaE3,spvak1k2)
      acd971(11)=abb971(13)
      acd971(12)=dotproduct(ninjaE3,spvak5k2)
      acd971(13)=abb971(17)
      acd971(14)=dotproduct(ninjaE3,spvak5k3)
      acd971(15)=abb971(22)
      acd971(16)=dotproduct(ninjaE3,spvak4k3)
      acd971(17)=abb971(24)
      acd971(18)=-acd971(5)+acd971(1)-acd971(4)
      acd971(18)=acd971(18)*acd971(3)
      acd971(19)=acd971(7)*acd971(6)
      acd971(20)=acd971(9)*acd971(8)
      acd971(21)=acd971(11)*acd971(10)
      acd971(22)=acd971(13)*acd971(12)
      acd971(23)=acd971(15)*acd971(14)
      acd971(24)=acd971(17)*acd971(16)
      acd971(18)=acd971(18)+acd971(24)+acd971(23)+acd971(22)+acd971(21)+acd971(&
      &20)+acd971(19)
      acd971(18)=acd971(2)*acd971(18)
      brack(ninjaidxt1x0mu0)=acd971(18)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(59) :: acd971
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd971(1)=dotproduct(k2,ninjaA1)
      acd971(2)=dotproduct(ninjaE3,spvak2k7)
      acd971(3)=abb971(12)
      acd971(4)=dotproduct(k2,ninjaE3)
      acd971(5)=dotproduct(ninjaA1,spvak2k7)
      acd971(6)=dotproduct(k3,ninjaA1)
      acd971(7)=dotproduct(k3,ninjaE3)
      acd971(8)=dotproduct(k4,ninjaA1)
      acd971(9)=dotproduct(k4,ninjaE3)
      acd971(10)=dotproduct(ninjaA1,spvak4k3)
      acd971(11)=abb971(24)
      acd971(12)=dotproduct(ninjaA1,spvak1k3)
      acd971(13)=abb971(10)
      acd971(14)=dotproduct(ninjaE3,spvak4k3)
      acd971(15)=dotproduct(ninjaE3,spvak1k3)
      acd971(16)=dotproduct(ninjaE3,spvak4k2)
      acd971(17)=abb971(11)
      acd971(18)=dotproduct(ninjaE3,spvak1k2)
      acd971(19)=abb971(13)
      acd971(20)=dotproduct(ninjaE3,spvak5k2)
      acd971(21)=abb971(17)
      acd971(22)=dotproduct(ninjaE3,spvak5k3)
      acd971(23)=abb971(22)
      acd971(24)=dotproduct(ninjaA1,spvak4k2)
      acd971(25)=dotproduct(ninjaA1,spvak1k2)
      acd971(26)=dotproduct(ninjaA1,spvak5k2)
      acd971(27)=dotproduct(ninjaA1,spvak5k3)
      acd971(28)=dotproduct(k2,ninjaA0)
      acd971(29)=dotproduct(ninjaA0,spvak2k7)
      acd971(30)=abb971(29)
      acd971(31)=dotproduct(k3,ninjaA0)
      acd971(32)=dotproduct(k4,ninjaA0)
      acd971(33)=dotproduct(k7,ninjaE3)
      acd971(34)=abb971(25)
      acd971(35)=dotproduct(ninjaA0,ninjaE3)
      acd971(36)=abb971(16)
      acd971(37)=dotproduct(ninjaA0,spvak4k3)
      acd971(38)=dotproduct(ninjaA0,spvak1k3)
      acd971(39)=dotproduct(ninjaA0,spvak4k2)
      acd971(40)=dotproduct(ninjaA0,spvak1k2)
      acd971(41)=dotproduct(ninjaA0,spvak5k2)
      acd971(42)=dotproduct(ninjaA0,spvak5k3)
      acd971(43)=dotproduct(ninjaE3,spvak1k7)
      acd971(44)=abb971(8)
      acd971(45)=abb971(9)
      acd971(46)=abb971(19)
      acd971(47)=abb971(14)
      acd971(48)=dotproduct(ninjaE3,spvak5k7)
      acd971(49)=abb971(35)
      acd971(50)=-acd971(9)+acd971(4)-acd971(7)
      acd971(51)=acd971(50)*acd971(3)
      acd971(52)=acd971(23)*acd971(22)
      acd971(53)=acd971(21)*acd971(20)
      acd971(54)=acd971(19)*acd971(18)
      acd971(55)=acd971(17)*acd971(16)
      acd971(56)=acd971(13)*acd971(15)
      acd971(57)=acd971(11)*acd971(14)
      acd971(51)=acd971(51)+acd971(52)+acd971(53)+acd971(54)+acd971(55)+acd971(&
      &56)+acd971(57)
      acd971(52)=acd971(5)*acd971(51)
      acd971(53)=acd971(23)*acd971(27)
      acd971(54)=acd971(21)*acd971(26)
      acd971(55)=acd971(19)*acd971(25)
      acd971(56)=acd971(17)*acd971(24)
      acd971(57)=acd971(13)*acd971(12)
      acd971(58)=acd971(11)*acd971(10)
      acd971(59)=acd971(1)-acd971(8)-acd971(6)
      acd971(59)=acd971(3)*acd971(59)
      acd971(53)=acd971(59)+acd971(58)+acd971(57)+acd971(56)+acd971(55)+acd971(&
      &53)+acd971(54)
      acd971(53)=acd971(2)*acd971(53)
      acd971(52)=acd971(53)+acd971(52)
      acd971(51)=acd971(29)*acd971(51)
      acd971(53)=acd971(23)*acd971(42)
      acd971(54)=acd971(21)*acd971(41)
      acd971(55)=acd971(19)*acd971(40)
      acd971(56)=acd971(17)*acd971(39)
      acd971(57)=acd971(13)*acd971(38)
      acd971(58)=acd971(11)*acd971(37)
      acd971(59)=acd971(28)-acd971(32)-acd971(31)
      acd971(59)=acd971(3)*acd971(59)
      acd971(53)=acd971(59)+acd971(58)+acd971(57)+acd971(56)+acd971(55)+acd971(&
      &54)+acd971(46)+acd971(53)
      acd971(53)=acd971(2)*acd971(53)
      acd971(50)=acd971(30)*acd971(50)
      acd971(54)=acd971(48)*acd971(49)
      acd971(55)=acd971(43)*acd971(44)
      acd971(56)=acd971(35)*acd971(36)
      acd971(57)=acd971(33)*acd971(34)
      acd971(58)=acd971(16)*acd971(47)
      acd971(59)=acd971(14)*acd971(45)
      acd971(50)=acd971(53)+acd971(59)+acd971(58)+acd971(57)+2.0_ki*acd971(56)+&
      &acd971(54)+acd971(55)+acd971(50)+acd971(51)
      brack(ninjaidxt0x0mu0)=acd971(50)
      brack(ninjaidxt0x1mu0)=acd971(52)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d971h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p8_cbarc_epnemumnmubarg_d971h1l132
