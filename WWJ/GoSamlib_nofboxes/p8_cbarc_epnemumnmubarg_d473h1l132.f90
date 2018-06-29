module     p8_cbarc_epnemumnmubarg_d473h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d473h1l132.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd473h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd473
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd473(1)=dotproduct(ninjaE3,spvak1k2)
      acd473(2)=dotproduct(ninjaE3,spvak2k7)
      acd473(3)=dotproduct(ninjaE3,spvak4k3)
      acd473(4)=dotproduct(ninjaE3,spvak5k6)
      acd473(5)=abb473(6)
      acd473(6)=-acd473(5)*acd473(4)*acd473(3)*acd473(2)*acd473(1)
      brack(ninjaidxt1x0mu0)=acd473(6)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd473h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(66) :: acd473
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd473(1)=dotproduct(ninjaA1,spvak1k2)
      acd473(2)=dotproduct(ninjaE3,spvak2k7)
      acd473(3)=dotproduct(ninjaE3,spvak4k3)
      acd473(4)=dotproduct(ninjaE3,spvak5k6)
      acd473(5)=abb473(6)
      acd473(6)=dotproduct(ninjaA1,spvak2k7)
      acd473(7)=dotproduct(ninjaE3,spvak1k2)
      acd473(8)=dotproduct(ninjaA1,spvak4k3)
      acd473(9)=dotproduct(ninjaA1,spvak5k6)
      acd473(10)=dotproduct(k1,ninjaE3)
      acd473(11)=dotproduct(k2,ninjaE3)
      acd473(12)=abb473(41)
      acd473(13)=abb473(85)
      acd473(14)=abb473(70)
      acd473(15)=dotproduct(ninjaE3,spvak1k6)
      acd473(16)=abb473(58)
      acd473(17)=dotproduct(ninjaE3,spvak5k2)
      acd473(18)=abb473(76)
      acd473(19)=abb473(66)
      acd473(20)=dotproduct(k3,ninjaE3)
      acd473(21)=dotproduct(k4,ninjaE3)
      acd473(22)=dotproduct(k5,ninjaE3)
      acd473(23)=dotproduct(k6,ninjaE3)
      acd473(24)=dotproduct(ninjaA0,ninjaE3)
      acd473(25)=abb473(27)
      acd473(26)=abb473(55)
      acd473(27)=abb473(83)
      acd473(28)=abb473(40)
      acd473(29)=dotproduct(ninjaE3,spvak4k2)
      acd473(30)=abb473(51)
      acd473(31)=dotproduct(ninjaE3,spvak1k7)
      acd473(32)=abb473(87)
      acd473(33)=abb473(81)
      acd473(34)=abb473(36)
      acd473(35)=abb473(73)
      acd473(36)=abb473(60)
      acd473(37)=abb473(88)
      acd473(38)=dotproduct(ninjaA0,spvak1k2)
      acd473(39)=dotproduct(ninjaA0,spvak2k7)
      acd473(40)=dotproduct(ninjaA0,spvak4k3)
      acd473(41)=dotproduct(ninjaA0,spvak5k6)
      acd473(42)=abb473(16)
      acd473(43)=abb473(74)
      acd473(44)=abb473(42)
      acd473(45)=abb473(7)
      acd473(46)=dotproduct(ninjaE3,spvak1k3)
      acd473(47)=abb473(56)
      acd473(48)=abb473(25)
      acd473(49)=abb473(35)
      acd473(50)=dotproduct(ninjaE3,spvak1k5)
      acd473(51)=dotproduct(ninjaE3,spvak3k2)
      acd473(52)=abb473(78)
      acd473(53)=dotproduct(ninjaE3,spvak6k2)
      acd473(54)=abb473(89)
      acd473(55)=-acd473(6)*acd473(7)*acd473(5)
      acd473(56)=acd473(2)*acd473(5)
      acd473(57)=-acd473(1)*acd473(56)
      acd473(55)=acd473(55)+acd473(57)
      acd473(55)=acd473(3)*acd473(55)
      acd473(57)=acd473(56)*acd473(7)
      acd473(58)=-acd473(8)*acd473(57)
      acd473(55)=acd473(58)+acd473(55)
      acd473(55)=acd473(4)*acd473(55)
      acd473(57)=-acd473(3)*acd473(9)*acd473(57)
      acd473(55)=acd473(57)+acd473(55)
      acd473(57)=-acd473(36)*acd473(51)
      acd473(58)=acd473(35)*acd473(53)
      acd473(59)=acd473(34)*acd473(50)
      acd473(60)=acd473(31)*acd473(54)
      acd473(61)=acd473(17)*acd473(52)
      acd473(62)=acd473(10)*acd473(14)
      acd473(63)=acd473(29)*acd473(48)
      acd473(64)=acd473(15)*acd473(49)
      acd473(65)=-acd473(5)*acd473(39)
      acd473(65)=acd473(43)+acd473(65)
      acd473(65)=acd473(7)*acd473(65)
      acd473(66)=acd473(11)*acd473(28)
      acd473(56)=-acd473(38)*acd473(56)
      acd473(56)=acd473(56)+acd473(66)+acd473(65)+acd473(64)+acd473(63)+acd473(&
      &62)+acd473(61)+acd473(60)+acd473(59)+acd473(57)+acd473(58)
      acd473(56)=acd473(3)*acd473(56)
      acd473(57)=acd473(46)*acd473(47)
      acd473(58)=acd473(29)*acd473(45)
      acd473(59)=2.0_ki*acd473(24)
      acd473(60)=acd473(33)*acd473(59)
      acd473(61)=-acd473(5)*acd473(40)
      acd473(61)=-acd473(37)+acd473(61)
      acd473(61)=acd473(7)*acd473(61)
      acd473(62)=acd473(11)*acd473(27)
      acd473(57)=acd473(62)+acd473(61)+acd473(60)+acd473(57)+acd473(58)
      acd473(57)=acd473(2)*acd473(57)
      acd473(58)=acd473(31)*acd473(32)
      acd473(60)=acd473(29)*acd473(30)
      acd473(58)=acd473(58)-acd473(60)
      acd473(60)=acd473(20)+acd473(21)
      acd473(61)=acd473(11)-acd473(60)
      acd473(61)=acd473(19)*acd473(61)
      acd473(62)=acd473(26)*acd473(59)
      acd473(61)=acd473(62)+acd473(61)+acd473(58)
      acd473(61)=acd473(11)*acd473(61)
      acd473(58)=-acd473(60)*acd473(58)
      acd473(60)=-acd473(31)*acd473(37)
      acd473(62)=acd473(29)*acd473(36)
      acd473(60)=acd473(60)+acd473(62)
      acd473(60)=acd473(60)*acd473(59)
      acd473(56)=acd473(56)+acd473(57)+acd473(61)+acd473(60)+acd473(58)
      acd473(56)=acd473(4)*acd473(56)
      acd473(57)=acd473(10)*acd473(13)
      acd473(58)=acd473(15)*acd473(44)
      acd473(60)=-acd473(5)*acd473(41)
      acd473(60)=acd473(42)+acd473(60)
      acd473(60)=acd473(7)*acd473(60)
      acd473(57)=acd473(60)+acd473(57)+acd473(58)
      acd473(57)=acd473(2)*acd473(57)
      acd473(58)=-acd473(17)*acd473(18)
      acd473(60)=-acd473(15)*acd473(16)
      acd473(58)=acd473(60)+acd473(58)
      acd473(60)=-acd473(10)+acd473(22)+acd473(23)
      acd473(58)=acd473(60)*acd473(58)
      acd473(61)=acd473(17)*acd473(35)
      acd473(62)=acd473(15)*acd473(34)
      acd473(61)=acd473(61)+acd473(62)
      acd473(61)=acd473(61)*acd473(59)
      acd473(60)=acd473(12)*acd473(60)
      acd473(59)=acd473(25)*acd473(59)
      acd473(59)=acd473(59)+acd473(60)
      acd473(59)=acd473(11)*acd473(59)
      acd473(57)=acd473(57)+acd473(59)+acd473(61)+acd473(58)
      acd473(57)=acd473(3)*acd473(57)
      acd473(56)=acd473(57)+acd473(56)
      brack(ninjaidxt0x0mu0)=acd473(56)
      brack(ninjaidxt0x1mu0)=acd473(55)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d473h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd473h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
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
end module     p8_cbarc_epnemumnmubarg_d473h1l132
