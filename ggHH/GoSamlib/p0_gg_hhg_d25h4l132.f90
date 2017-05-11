module     p0_gg_hhg_d25h4l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d25h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd25
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=0.0_ki
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(75) :: acd25
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd25(1)=dotproduct(k1,ninjaE3)
      acd25(2)=dotproduct(k2,ninjaE3)
      acd25(3)=abb25(67)
      acd25(4)=dotproduct(k5,ninjaE3)
      acd25(5)=abb25(65)
      acd25(6)=dotproduct(ninjaA0,ninjaE3)
      acd25(7)=abb25(16)
      acd25(8)=dotproduct(ninjaE3,spvak1k2)
      acd25(9)=abb25(20)
      acd25(10)=dotproduct(ninjaE3,spvak1l3)
      acd25(11)=abb25(58)
      acd25(12)=dotproduct(ninjaE3,spval3k2)
      acd25(13)=abb25(82)
      acd25(14)=dotproduct(ninjaE3,spvak5l3)
      acd25(15)=abb25(71)
      acd25(16)=dotproduct(ninjaE3,spvak5k2)
      acd25(17)=abb25(72)
      acd25(18)=dotproduct(ninjaE3,spval3k5)
      acd25(19)=abb25(79)
      acd25(20)=abb25(47)
      acd25(21)=abb25(18)
      acd25(22)=dotproduct(l3,ninjaE3)
      acd25(23)=abb25(68)
      acd25(24)=dotproduct(l4,ninjaE3)
      acd25(25)=abb25(64)
      acd25(26)=abb25(19)
      acd25(27)=abb25(21)
      acd25(28)=abb25(15)
      acd25(29)=abb25(80)
      acd25(30)=dotproduct(ninjaE3,spval4k2)
      acd25(31)=abb25(77)
      acd25(32)=abb25(74)
      acd25(33)=dotproduct(ninjaE3,spvak1k5)
      acd25(34)=abb25(44)
      acd25(35)=dotproduct(ninjaE3,spvak1l4)
      acd25(36)=abb25(85)
      acd25(37)=abb25(27)
      acd25(38)=abb25(10)
      acd25(39)=abb25(12)
      acd25(40)=abb25(22)
      acd25(41)=dotproduct(ninjaE3,spvak2k5)
      acd25(42)=abb25(23)
      acd25(43)=abb25(24)
      acd25(44)=abb25(28)
      acd25(45)=dotproduct(ninjaE3,spval4l3)
      acd25(46)=abb25(29)
      acd25(47)=abb25(31)
      acd25(48)=dotproduct(ninjaE3,spval3l4)
      acd25(49)=abb25(32)
      acd25(50)=dotproduct(ninjaE3,spvak2l4)
      acd25(51)=abb25(33)
      acd25(52)=dotproduct(ninjaE3,spvak2l3)
      acd25(53)=abb25(34)
      acd25(54)=dotproduct(ninjaE3,spvak2k1)
      acd25(55)=abb25(66)
      acd25(56)=dotproduct(ninjaE3,spval3k1)
      acd25(57)=-acd25(54)*acd25(55)
      acd25(58)=acd25(52)*acd25(53)
      acd25(59)=acd25(50)*acd25(51)
      acd25(60)=acd25(48)*acd25(49)
      acd25(61)=acd25(45)*acd25(46)
      acd25(62)=acd25(41)*acd25(42)
      acd25(63)=acd25(30)*acd25(43)
      acd25(64)=-acd25(29)*acd25(56)
      acd25(65)=acd25(18)*acd25(47)
      acd25(66)=acd25(14)*acd25(40)
      acd25(67)=acd25(16)*acd25(44)
      acd25(68)=acd25(12)*acd25(39)
      acd25(69)=acd25(10)*acd25(38)
      acd25(70)=acd25(4)*acd25(26)
      acd25(71)=acd25(2)*acd25(21)
      acd25(72)=acd25(1)*acd25(9)
      acd25(73)=2.0_ki*acd25(6)
      acd25(74)=acd25(27)*acd25(73)
      acd25(75)=acd25(8)*acd25(37)
      acd25(57)=acd25(75)+acd25(74)+acd25(72)+acd25(71)+acd25(70)+acd25(69)+acd&
      &25(68)+acd25(67)+acd25(66)+acd25(65)+acd25(64)+acd25(63)+acd25(62)+acd25&
      &(61)+acd25(60)+acd25(59)+acd25(57)+acd25(58)
      acd25(57)=acd25(8)*acd25(57)
      acd25(58)=-acd25(73)-acd25(24)+acd25(22)
      acd25(58)=acd25(23)*acd25(58)
      acd25(59)=acd25(35)*acd25(36)
      acd25(60)=acd25(33)*acd25(34)
      acd25(61)=acd25(30)*acd25(31)
      acd25(62)=acd25(16)*acd25(32)
      acd25(63)=acd25(12)*acd25(29)
      acd25(64)=acd25(10)*acd25(28)
      acd25(65)=acd25(4)*acd25(25)
      acd25(66)=acd25(2)*acd25(20)
      acd25(67)=acd25(1)*acd25(7)
      acd25(58)=acd25(67)+acd25(66)+acd25(65)+acd25(64)+acd25(63)+acd25(62)+acd&
      &25(61)+acd25(59)+acd25(60)+acd25(58)
      acd25(58)=acd25(58)*acd25(73)
      acd25(59)=acd25(18)*acd25(19)
      acd25(60)=acd25(14)*acd25(15)
      acd25(61)=acd25(16)*acd25(17)
      acd25(62)=acd25(12)*acd25(13)
      acd25(63)=acd25(10)*acd25(11)
      acd25(64)=acd25(4)*acd25(5)
      acd25(65)=acd25(2)*acd25(3)
      acd25(59)=acd25(65)+acd25(64)+acd25(63)+acd25(62)+acd25(61)+acd25(59)+acd&
      &25(60)
      acd25(59)=acd25(1)*acd25(59)
      acd25(57)=acd25(57)+acd25(59)+acd25(58)
      brack(ninjaidxt0x0mu0)=acd25(57)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d25h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd25h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d25h4l132
