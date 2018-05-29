module     p8_cbarc_epnemumnmubarg_d485h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d485h5l132.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd485
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd485(1)=dotproduct(ninjaE3,spvak1k2)
      acd485(2)=dotproduct(ninjaE3,spvak4k3)
      acd485(3)=dotproduct(ninjaE3,spvak5k6)
      acd485(4)=dotproduct(ninjaE3,spvak7k2)
      acd485(5)=abb485(47)
      acd485(6)=acd485(5)*acd485(4)*acd485(3)*acd485(2)*acd485(1)
      brack(ninjaidxt1x0mu0)=acd485(6)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(60) :: acd485
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd485(1)=dotproduct(ninjaA1,spvak4k3)
      acd485(2)=dotproduct(ninjaE3,spvak7k2)
      acd485(3)=dotproduct(ninjaE3,spvak5k6)
      acd485(4)=dotproduct(ninjaE3,spvak1k2)
      acd485(5)=abb485(47)
      acd485(6)=dotproduct(ninjaA1,spvak7k2)
      acd485(7)=dotproduct(ninjaE3,spvak4k3)
      acd485(8)=dotproduct(ninjaA1,spvak5k6)
      acd485(9)=dotproduct(ninjaA1,spvak1k2)
      acd485(10)=dotproduct(k1,ninjaE3)
      acd485(11)=abb485(19)
      acd485(12)=dotproduct(k2,ninjaE3)
      acd485(13)=dotproduct(ninjaE3,spvak5k2)
      acd485(14)=abb485(57)
      acd485(15)=dotproduct(ninjaE3,spvak4k2)
      acd485(16)=abb485(13)
      acd485(17)=abb485(51)
      acd485(18)=dotproduct(ninjaE3,spvak1k6)
      acd485(19)=abb485(37)
      acd485(20)=abb485(11)
      acd485(21)=dotproduct(k3,ninjaE3)
      acd485(22)=dotproduct(k4,ninjaE3)
      acd485(23)=dotproduct(ninjaA0,ninjaE3)
      acd485(24)=abb485(58)
      acd485(25)=abb485(28)
      acd485(26)=abb485(54)
      acd485(27)=abb485(44)
      acd485(28)=abb485(7)
      acd485(29)=dotproduct(ninjaA0,spvak4k3)
      acd485(30)=dotproduct(ninjaA0,spvak7k2)
      acd485(31)=dotproduct(ninjaA0,spvak5k6)
      acd485(32)=dotproduct(ninjaA0,spvak1k2)
      acd485(33)=abb485(6)
      acd485(34)=abb485(40)
      acd485(35)=abb485(41)
      acd485(36)=abb485(18)
      acd485(37)=dotproduct(ninjaE3,spvak3k2)
      acd485(38)=abb485(30)
      acd485(39)=abb485(35)
      acd485(40)=dotproduct(ninjaE3,spvak1k7)
      acd485(41)=abb485(42)
      acd485(42)=abb485(31)
      acd485(43)=abb485(46)
      acd485(44)=dotproduct(ninjaE3,spvak1k3)
      acd485(45)=abb485(45)
      acd485(46)=acd485(3)*acd485(2)
      acd485(47)=acd485(1)*acd485(46)
      acd485(48)=acd485(7)*acd485(2)
      acd485(49)=acd485(8)*acd485(48)
      acd485(47)=acd485(49)+acd485(47)
      acd485(49)=acd485(5)*acd485(4)
      acd485(47)=acd485(49)*acd485(47)
      acd485(50)=acd485(5)*acd485(3)
      acd485(51)=acd485(9)*acd485(48)*acd485(50)
      acd485(52)=acd485(49)*acd485(3)
      acd485(53)=acd485(6)*acd485(7)*acd485(52)
      acd485(47)=acd485(51)+acd485(53)+acd485(47)
      acd485(51)=-acd485(10)-acd485(12)
      acd485(51)=acd485(11)*acd485(51)
      acd485(53)=acd485(31)*acd485(49)
      acd485(50)=acd485(32)*acd485(50)
      acd485(54)=acd485(33)*acd485(13)
      acd485(55)=acd485(35)*acd485(15)
      acd485(56)=acd485(36)*acd485(3)
      acd485(57)=acd485(37)*acd485(25)
      acd485(58)=acd485(38)*acd485(4)
      acd485(59)=acd485(39)*acd485(18)
      acd485(60)=acd485(41)*acd485(40)
      acd485(50)=acd485(60)+acd485(59)+acd485(58)+acd485(57)+acd485(56)+acd485(&
      &55)+acd485(54)+acd485(50)+acd485(53)+acd485(51)
      acd485(48)=acd485(48)*acd485(50)
      acd485(50)=acd485(17)*acd485(12)
      acd485(51)=2.0_ki*acd485(23)
      acd485(53)=acd485(26)*acd485(51)
      acd485(49)=acd485(29)*acd485(49)
      acd485(54)=acd485(42)*acd485(15)
      acd485(55)=acd485(43)*acd485(4)
      acd485(56)=acd485(45)*acd485(44)
      acd485(49)=acd485(56)+acd485(55)+acd485(54)+acd485(49)+acd485(53)+acd485(&
      &50)
      acd485(46)=acd485(46)*acd485(49)
      acd485(49)=acd485(15)*acd485(2)
      acd485(50)=acd485(25)*acd485(49)
      acd485(53)=acd485(13)*acd485(2)
      acd485(54)=acd485(24)*acd485(53)
      acd485(55)=acd485(18)*acd485(2)
      acd485(56)=acd485(27)*acd485(55)
      acd485(57)=acd485(15)*acd485(3)
      acd485(58)=acd485(28)*acd485(57)
      acd485(50)=acd485(58)+acd485(56)+acd485(54)+acd485(50)
      acd485(50)=acd485(51)*acd485(50)
      acd485(49)=acd485(49)*acd485(16)
      acd485(51)=acd485(55)*acd485(19)
      acd485(53)=acd485(53)*acd485(14)
      acd485(49)=-acd485(53)+acd485(49)+acd485(51)
      acd485(51)=-acd485(22)-acd485(21)
      acd485(51)=acd485(49)*acd485(51)
      acd485(53)=acd485(20)*acd485(57)
      acd485(49)=acd485(53)+acd485(49)
      acd485(49)=acd485(12)*acd485(49)
      acd485(52)=acd485(30)*acd485(52)
      acd485(53)=acd485(34)*acd485(2)**2
      acd485(52)=acd485(53)+acd485(52)
      acd485(52)=acd485(7)*acd485(52)
      acd485(46)=acd485(48)+acd485(46)+acd485(50)+acd485(49)+acd485(52)+acd485(&
      &51)
      brack(ninjaidxt0x0mu0)=acd485(46)
      brack(ninjaidxt0x1mu0)=acd485(47)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d485h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd485h5
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
end module     p8_cbarc_epnemumnmubarg_d485h5l132
