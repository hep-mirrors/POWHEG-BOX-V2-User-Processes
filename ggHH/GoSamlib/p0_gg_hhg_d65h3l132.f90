module     p0_gg_hhg_d65h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d65h3l132.f90
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
      use p0_gg_hhg_abbrevd65h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd65(1)=dotproduct(k2,ninjaE3)
      acd65(2)=dotproduct(k5,ninjaE3)
      acd65(3)=dotproduct(ninjaE3,spvak2k1)
      acd65(4)=abb65(47)
      acd65(5)=dotproduct(ninjaE3,spvak2k5)
      acd65(6)=dotproduct(ninjaE3,spvak5k2)
      acd65(7)=abb65(12)
      acd65(8)=dotproduct(ninjaE3,spval4k1)
      acd65(9)=dotproduct(ninjaE3,spvak5l4)
      acd65(10)=abb65(63)
      acd65(11)=dotproduct(ninjaE3,spvak2l4)
      acd65(12)=dotproduct(ninjaE3,spval4k2)
      acd65(13)=dotproduct(ninjaA0,ninjaE3)
      acd65(14)=acd65(7)*acd65(1)
      acd65(15)=acd65(13)*acd65(10)
      acd65(14)=-2.0_ki*acd65(15)+acd65(14)
      acd65(14)=acd65(6)*acd65(3)*acd65(14)
      acd65(15)=acd65(9)*acd65(8)*acd65(1)*acd65(10)
      acd65(14)=acd65(15)+acd65(14)
      acd65(14)=acd65(5)*acd65(14)
      acd65(15)=acd65(4)*acd65(1)**2
      acd65(16)=acd65(12)*acd65(11)*acd65(10)
      acd65(15)=acd65(16)+acd65(15)
      acd65(15)=acd65(15)*acd65(2)*acd65(3)
      acd65(14)=acd65(15)+acd65(14)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd65(14)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(77) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd65(1)=dotproduct(ninjaE3,spvak2k1)
      acd65(2)=dotproduct(ninjaE3,spvak2k5)
      acd65(3)=dotproduct(ninjaE3,spvak5k2)
      acd65(4)=abb65(63)
      acd65(5)=dotproduct(k2,ninjaA1)
      acd65(6)=dotproduct(k2,ninjaE3)
      acd65(7)=dotproduct(k5,ninjaE3)
      acd65(8)=abb65(47)
      acd65(9)=abb65(12)
      acd65(10)=dotproduct(ninjaE3,spval4k1)
      acd65(11)=dotproduct(ninjaE3,spvak5l4)
      acd65(12)=dotproduct(k5,ninjaA1)
      acd65(13)=dotproduct(ninjaA1,spvak2k1)
      acd65(14)=dotproduct(ninjaA1,spvak2k5)
      acd65(15)=dotproduct(ninjaA1,spvak5k2)
      acd65(16)=dotproduct(ninjaA1,spval4k1)
      acd65(17)=dotproduct(ninjaA1,spvak5l4)
      acd65(18)=dotproduct(ninjaE3,spvak2l4)
      acd65(19)=dotproduct(ninjaE3,spval4k2)
      acd65(20)=dotproduct(ninjaA1,spvak2l4)
      acd65(21)=dotproduct(ninjaA1,spval4k2)
      acd65(22)=dotproduct(ninjaA0,ninjaA1)
      acd65(23)=dotproduct(ninjaA0,ninjaE3)
      acd65(24)=dotproduct(ninjaA1,ninjaA1)
      acd65(25)=dotproduct(k2,ninjaA0)
      acd65(26)=dotproduct(k5,ninjaA0)
      acd65(27)=dotproduct(ninjaA0,spvak2k1)
      acd65(28)=abb65(31)
      acd65(29)=abb65(30)
      acd65(30)=abb65(53)
      acd65(31)=abb65(34)
      acd65(32)=dotproduct(ninjaE3,spvak5k1)
      acd65(33)=abb65(51)
      acd65(34)=dotproduct(ninjaA0,spvak2k5)
      acd65(35)=dotproduct(ninjaA0,spvak5k2)
      acd65(36)=dotproduct(ninjaA0,spval4k1)
      acd65(37)=dotproduct(ninjaA0,spvak5l4)
      acd65(38)=abb65(19)
      acd65(39)=abb65(20)
      acd65(40)=abb65(52)
      acd65(41)=abb65(49)
      acd65(42)=dotproduct(ninjaA0,spvak2l4)
      acd65(43)=dotproduct(ninjaA0,spval4k2)
      acd65(44)=abb65(33)
      acd65(45)=dotproduct(ninjaA0,ninjaA0)
      acd65(46)=abb65(55)
      acd65(47)=abb65(13)
      acd65(48)=abb65(65)
      acd65(49)=abb65(9)
      acd65(50)=abb65(38)
      acd65(51)=acd65(3)*acd65(1)
      acd65(52)=acd65(4)*acd65(2)
      acd65(53)=acd65(51)*acd65(52)
      acd65(54)=2.0_ki*acd65(23)
      acd65(55)=acd65(54)*acd65(52)
      acd65(56)=acd65(9)*acd65(6)
      acd65(57)=acd65(56)*acd65(2)
      acd65(57)=acd65(57)-acd65(55)
      acd65(57)=acd65(3)*acd65(57)
      acd65(58)=acd65(19)*acd65(18)
      acd65(59)=acd65(58)*acd65(4)
      acd65(60)=acd65(6)**2
      acd65(61)=acd65(60)*acd65(8)
      acd65(59)=acd65(59)+acd65(61)
      acd65(59)=acd65(59)*acd65(7)
      acd65(57)=acd65(59)+acd65(57)
      acd65(59)=acd65(13)*acd65(57)
      acd65(62)=acd65(11)*acd65(10)
      acd65(63)=acd65(62)*acd65(52)
      acd65(64)=acd65(6)*acd65(1)
      acd65(65)=acd65(64)*acd65(7)
      acd65(66)=acd65(8)*acd65(65)
      acd65(67)=acd65(2)*acd65(51)*acd65(9)
      acd65(63)=2.0_ki*acd65(66)+acd65(63)+acd65(67)
      acd65(66)=acd65(5)*acd65(63)
      acd65(67)=acd65(56)*acd65(51)
      acd65(68)=acd65(4)*acd65(1)
      acd65(69)=acd65(68)*acd65(54)*acd65(3)
      acd65(70)=acd65(62)*acd65(6)
      acd65(71)=acd65(70)*acd65(4)
      acd65(67)=-acd65(69)+acd65(67)+acd65(71)
      acd65(69)=acd65(14)*acd65(67)
      acd65(71)=acd65(2)*acd65(1)
      acd65(56)=acd65(56)*acd65(71)
      acd65(55)=acd65(55)*acd65(1)
      acd65(55)=acd65(56)-acd65(55)
      acd65(56)=acd65(15)*acd65(55)
      acd65(72)=acd65(11)*acd65(6)
      acd65(73)=acd65(16)*acd65(72)
      acd65(74)=acd65(10)*acd65(6)
      acd65(75)=acd65(17)*acd65(74)
      acd65(73)=acd65(75)+acd65(73)
      acd65(73)=acd65(52)*acd65(73)
      acd65(75)=-ninjaP1-2.0_ki*acd65(22)
      acd65(75)=acd65(53)*acd65(75)
      acd65(76)=acd65(20)*acd65(19)
      acd65(77)=acd65(21)*acd65(18)
      acd65(76)=acd65(77)+acd65(76)
      acd65(77)=acd65(68)*acd65(7)
      acd65(76)=acd65(77)*acd65(76)
      acd65(68)=acd65(58)*acd65(68)
      acd65(61)=acd65(61)*acd65(1)
      acd65(61)=acd65(68)+acd65(61)
      acd65(68)=acd65(12)*acd65(61)
      acd65(56)=acd65(56)+acd65(68)+acd65(69)+acd65(59)+acd65(66)+acd65(76)+acd&
      &65(75)+acd65(73)
      acd65(59)=-acd65(24)-ninjaP2
      acd65(59)=acd65(53)*acd65(59)
      acd65(64)=acd65(30)*acd65(64)
      acd65(66)=acd65(6)*acd65(2)
      acd65(68)=acd65(31)*acd65(66)
      acd65(69)=acd65(7)*acd65(1)
      acd65(73)=acd65(41)*acd65(69)
      acd65(64)=acd65(73)+acd65(68)+acd65(64)
      acd65(64)=acd65(54)*acd65(64)
      acd65(57)=acd65(27)*acd65(57)
      acd65(63)=acd65(25)*acd65(63)
      acd65(67)=acd65(34)*acd65(67)
      acd65(55)=acd65(35)*acd65(55)
      acd65(60)=acd65(28)*acd65(60)
      acd65(58)=acd65(50)*acd65(58)
      acd65(58)=acd65(58)+acd65(60)
      acd65(58)=acd65(1)*acd65(58)
      acd65(60)=acd65(36)*acd65(72)
      acd65(68)=acd65(37)*acd65(74)
      acd65(60)=acd65(68)+acd65(60)
      acd65(52)=acd65(52)*acd65(60)
      acd65(60)=acd65(39)*acd65(6)
      acd65(68)=acd65(49)*acd65(2)
      acd65(60)=acd65(68)+acd65(60)
      acd65(51)=acd65(51)*acd65(60)
      acd65(60)=-ninjaP0-acd65(45)
      acd65(60)=acd65(53)*acd65(60)
      acd65(68)=acd65(42)*acd65(19)
      acd65(72)=acd65(43)*acd65(18)
      acd65(68)=acd65(72)+acd65(68)
      acd65(68)=acd65(77)*acd65(68)
      acd65(72)=acd65(46)*acd65(1)
      acd65(73)=acd65(47)*acd65(2)
      acd65(72)=acd65(72)+acd65(73)
      acd65(72)=4.0_ki*acd65(72)
      acd65(72)=acd65(72)*acd65(23)**2
      acd65(61)=acd65(26)*acd65(61)
      acd65(54)=acd65(54)*acd65(32)
      acd65(73)=acd65(6)*acd65(54)
      acd65(70)=-acd65(70)+acd65(73)
      acd65(70)=acd65(33)*acd65(70)
      acd65(54)=acd65(62)-acd65(54)
      acd65(54)=acd65(48)*acd65(2)*acd65(54)
      acd65(62)=acd65(29)*acd65(65)
      acd65(65)=acd65(38)*acd65(6)*acd65(71)
      acd65(66)=acd65(40)*acd65(10)*acd65(66)
      acd65(69)=acd65(44)*acd65(18)*acd65(69)
      acd65(51)=acd65(69)+acd65(66)+acd65(65)+acd65(62)+acd65(54)+acd65(55)+acd&
      &65(70)+acd65(61)+acd65(67)+acd65(57)+acd65(63)+acd65(64)+acd65(72)+acd65&
      &(68)+acd65(60)+acd65(51)+acd65(52)+acd65(58)
      brack(ninjaidxt0x0mu0)=acd65(51)
      brack(ninjaidxt0x0mu2)=-acd65(53)
      brack(ninjaidxt0x1mu0)=acd65(56)
      brack(ninjaidxt0x2mu0)=acd65(59)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d65h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k4
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
end module     p0_gg_hhg_d65h3l132
