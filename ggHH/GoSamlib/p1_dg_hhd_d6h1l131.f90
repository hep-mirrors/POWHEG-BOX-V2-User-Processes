module     p1_dg_hhd_d6h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity1d6h1l131.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(18) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(k2,ninjaE3)
      acd6(3)=dotproduct(ninjaE3,spvak5k2)
      acd6(4)=abb6(10)
      acd6(5)=dotproduct(ninjaE3,spval3k2)
      acd6(6)=dotproduct(ninjaE3,spvak5l3)
      acd6(7)=abb6(32)
      acd6(8)=dotproduct(ninjaA,ninjaE3)
      acd6(9)=dotproduct(ninjaE3,spvak1k2)
      acd6(10)=dotproduct(ninjaE3,spvak5k1)
      acd6(11)=dotproduct(ninjaE3,spvak2k1)
      acd6(12)=abb6(17)
      acd6(13)=dotproduct(ninjaE3,spvak1l3)
      acd6(14)=dotproduct(ninjaE3,spval3k1)
      acd6(15)=abb6(24)
      acd6(16)=acd6(4)*acd6(2)*acd6(1)
      acd6(17)=acd6(12)*acd6(11)*acd6(9)
      acd6(18)=acd6(15)*acd6(14)*acd6(13)
      acd6(16)=acd6(18)+acd6(17)+acd6(16)
      acd6(16)=acd6(3)*acd6(16)
      acd6(17)=acd6(6)*acd6(5)*acd6(1)
      acd6(18)=acd6(10)*acd6(8)*acd6(9)
      acd6(17)=2.0_ki*acd6(18)+acd6(17)
      acd6(17)=acd6(7)*acd6(17)
      acd6(16)=acd6(16)+acd6(17)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd6(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(k2,ninjaE3)
      acd6(3)=dotproduct(ninjaE4,spvak5k2)
      acd6(4)=abb6(10)
      acd6(5)=dotproduct(k2,ninjaE4)
      acd6(6)=dotproduct(ninjaE3,spvak5k2)
      acd6(7)=dotproduct(ninjaE3,spval3k2)
      acd6(8)=dotproduct(ninjaE4,spvak5l3)
      acd6(9)=abb6(32)
      acd6(10)=dotproduct(ninjaE3,spvak5l3)
      acd6(11)=dotproduct(ninjaE4,spval3k2)
      acd6(12)=abb6(18)
      acd6(13)=dotproduct(k1,ninjaE4)
      acd6(14)=dotproduct(ninjaA,ninjaE3)
      acd6(15)=dotproduct(ninjaE3,spvak1k2)
      acd6(16)=dotproduct(ninjaE4,spvak5k1)
      acd6(17)=dotproduct(ninjaE3,spvak5k1)
      acd6(18)=dotproduct(ninjaE4,spvak1k2)
      acd6(19)=abb6(9)
      acd6(20)=dotproduct(ninjaA,ninjaE4)
      acd6(21)=dotproduct(ninjaA,spvak1k2)
      acd6(22)=dotproduct(ninjaA,spvak5k1)
      acd6(23)=dotproduct(ninjaE3,spvak1l3)
      acd6(24)=dotproduct(ninjaE4,spval3k1)
      acd6(25)=abb6(24)
      acd6(26)=dotproduct(ninjaE4,spvak2k1)
      acd6(27)=abb6(17)
      acd6(28)=dotproduct(ninjaE3,spvak2k1)
      acd6(29)=dotproduct(ninjaE3,spval3k1)
      acd6(30)=dotproduct(ninjaE4,spvak1l3)
      acd6(31)=abb6(36)
      acd6(32)=dotproduct(k1,ninjaA)
      acd6(33)=dotproduct(k2,ninjaA)
      acd6(34)=dotproduct(ninjaA,spvak5k2)
      acd6(35)=abb6(19)
      acd6(36)=dotproduct(ninjaA,spval3k2)
      acd6(37)=dotproduct(ninjaA,spvak5l3)
      acd6(38)=abb6(14)
      acd6(39)=abb6(39)
      acd6(40)=dotproduct(ninjaA,ninjaA)
      acd6(41)=dotproduct(ninjaA,spvak1l3)
      acd6(42)=dotproduct(ninjaA,spvak2k1)
      acd6(43)=dotproduct(ninjaA,spval3k1)
      acd6(44)=abb6(12)
      acd6(45)=abb6(26)
      acd6(46)=abb6(27)
      acd6(47)=abb6(30)
      acd6(48)=abb6(28)
      acd6(49)=abb6(21)
      acd6(50)=abb6(35)
      acd6(51)=abb6(38)
      acd6(52)=abb6(25)
      acd6(53)=abb6(16)
      acd6(54)=abb6(15)
      acd6(55)=abb6(22)
      acd6(56)=abb6(20)
      acd6(57)=dotproduct(ninjaE3,spvak1l4)
      acd6(58)=abb6(23)
      acd6(59)=dotproduct(ninjaE3,spval4k2)
      acd6(60)=abb6(37)
      acd6(61)=acd6(29)*acd6(30)
      acd6(62)=acd6(23)*acd6(24)
      acd6(61)=acd6(61)+acd6(62)
      acd6(61)=acd6(61)*acd6(25)
      acd6(62)=acd6(27)*acd6(28)
      acd6(63)=acd6(62)*acd6(18)
      acd6(64)=acd6(2)*acd6(4)
      acd6(65)=acd6(64)*acd6(13)
      acd6(66)=acd6(1)*acd6(4)
      acd6(67)=acd6(66)*acd6(5)
      acd6(68)=acd6(26)*acd6(15)*acd6(27)
      acd6(61)=acd6(67)+acd6(68)+acd6(61)+acd6(31)+acd6(63)+acd6(65)
      acd6(63)=acd6(6)*acd6(61)
      acd6(65)=2.0_ki*acd6(14)
      acd6(67)=acd6(18)*acd6(65)*acd6(17)
      acd6(68)=acd6(7)*acd6(10)
      acd6(69)=acd6(68)*acd6(13)
      acd6(70)=acd6(17)*acd6(21)
      acd6(67)=acd6(67)+acd6(69)+acd6(70)
      acd6(69)=acd6(65)*acd6(16)
      acd6(71)=2.0_ki*acd6(17)
      acd6(71)=acd6(71)*acd6(20)
      acd6(69)=acd6(69)+acd6(71)+acd6(22)
      acd6(71)=acd6(15)*acd6(69)
      acd6(72)=acd6(10)*acd6(11)
      acd6(73)=acd6(7)*acd6(8)
      acd6(72)=acd6(72)+acd6(73)
      acd6(73)=acd6(1)*acd6(72)
      acd6(71)=acd6(73)+acd6(71)+acd6(67)
      acd6(71)=acd6(9)*acd6(71)
      acd6(73)=acd6(29)*acd6(25)*acd6(23)
      acd6(74)=acd6(15)*acd6(62)
      acd6(74)=acd6(74)+acd6(73)
      acd6(74)=acd6(3)*acd6(74)
      acd6(75)=4.0_ki*acd6(19)
      acd6(76)=acd6(75)*acd6(14)
      acd6(77)=acd6(64)*acd6(3)
      acd6(77)=acd6(77)+acd6(12)
      acd6(78)=acd6(1)*acd6(77)
      acd6(63)=acd6(63)+acd6(71)+acd6(78)+acd6(76)+acd6(74)
      acd6(71)=acd6(7)*acd6(38)
      acd6(74)=acd6(2)*acd6(35)
      acd6(64)=acd6(34)*acd6(64)
      acd6(78)=acd6(12)*acd6(65)
      acd6(64)=acd6(78)+acd6(64)+acd6(71)+acd6(74)
      acd6(64)=acd6(1)*acd6(64)
      acd6(71)=acd6(65)*acd6(70)
      acd6(74)=acd6(65)*acd6(22)
      acd6(78)=ninjaP+acd6(40)
      acd6(78)=acd6(17)*acd6(78)
      acd6(78)=acd6(74)+acd6(78)
      acd6(78)=acd6(15)*acd6(78)
      acd6(79)=acd6(10)*acd6(36)
      acd6(80)=acd6(7)*acd6(37)
      acd6(79)=acd6(79)+acd6(80)
      acd6(80)=acd6(1)*acd6(79)
      acd6(81)=acd6(32)*acd6(68)
      acd6(71)=acd6(80)+acd6(78)+acd6(81)+acd6(71)
      acd6(71)=acd6(9)*acd6(71)
      acd6(78)=acd6(29)*acd6(41)
      acd6(80)=acd6(23)*acd6(43)
      acd6(78)=acd6(78)+acd6(80)
      acd6(78)=acd6(78)*acd6(25)
      acd6(80)=acd6(23)*acd6(44)
      acd6(81)=acd6(4)*acd6(32)
      acd6(81)=acd6(81)+acd6(39)
      acd6(82)=acd6(81)*acd6(2)
      acd6(83)=acd6(62)*acd6(21)
      acd6(78)=acd6(78)+acd6(83)+acd6(80)+acd6(82)
      acd6(80)=acd6(31)*acd6(65)
      acd6(82)=acd6(27)*acd6(42)
      acd6(82)=acd6(82)+acd6(45)
      acd6(83)=acd6(15)*acd6(82)
      acd6(66)=acd6(33)*acd6(66)
      acd6(66)=acd6(66)+acd6(83)+acd6(80)+acd6(78)
      acd6(66)=acd6(6)*acd6(66)
      acd6(80)=acd6(34)*acd6(62)
      acd6(83)=acd6(17)*acd6(47)
      acd6(80)=acd6(80)+acd6(83)
      acd6(80)=acd6(15)*acd6(80)
      acd6(68)=acd6(46)*acd6(68)
      acd6(83)=acd6(34)*acd6(73)
      acd6(75)=acd6(14)**2*acd6(75)
      acd6(64)=acd6(66)+acd6(71)+acd6(64)+acd6(80)+acd6(75)+acd6(68)+acd6(83)
      acd6(66)=acd6(9)*acd6(15)*acd6(17)
      acd6(67)=ninjaP*acd6(67)
      acd6(68)=acd6(32)*acd6(79)
      acd6(69)=ninjaP*acd6(69)
      acd6(71)=acd6(22)*acd6(40)
      acd6(69)=acd6(71)+acd6(69)
      acd6(69)=acd6(15)*acd6(69)
      acd6(71)=ninjaP*acd6(72)
      acd6(72)=acd6(36)*acd6(37)
      acd6(71)=acd6(72)+acd6(71)
      acd6(71)=acd6(1)*acd6(71)
      acd6(72)=acd6(40)*acd6(70)
      acd6(74)=acd6(21)*acd6(74)
      acd6(67)=acd6(71)+acd6(69)+acd6(67)+acd6(74)+acd6(72)+acd6(68)
      acd6(67)=acd6(9)*acd6(67)
      acd6(61)=ninjaP*acd6(61)
      acd6(68)=acd6(25)*acd6(43)
      acd6(68)=acd6(68)+acd6(44)
      acd6(68)=acd6(41)*acd6(68)
      acd6(69)=acd6(33)*acd6(81)
      acd6(71)=acd6(21)*acd6(82)
      acd6(72)=acd6(40)*acd6(31)
      acd6(61)=acd6(72)+acd6(51)+acd6(61)+acd6(71)+acd6(69)+acd6(68)
      acd6(61)=acd6(6)*acd6(61)
      acd6(68)=acd6(34)*acd6(78)
      acd6(69)=acd6(34)*acd6(4)
      acd6(69)=acd6(69)+acd6(35)
      acd6(69)=acd6(33)*acd6(69)
      acd6(71)=acd6(36)*acd6(38)
      acd6(72)=acd6(40)*acd6(12)
      acd6(74)=ninjaP*acd6(77)
      acd6(69)=acd6(74)+acd6(72)+acd6(48)+acd6(71)+acd6(69)
      acd6(69)=acd6(1)*acd6(69)
      acd6(71)=acd6(40)*acd6(19)
      acd6(72)=acd6(32)*acd6(12)
      acd6(74)=acd6(34)*acd6(31)
      acd6(71)=acd6(74)+acd6(72)+acd6(50)+2.0_ki*acd6(71)
      acd6(65)=acd6(71)*acd6(65)
      acd6(71)=acd6(22)*acd6(47)
      acd6(72)=acd6(34)*acd6(82)
      acd6(62)=ninjaP*acd6(3)*acd6(62)
      acd6(62)=acd6(62)+acd6(72)+acd6(55)+acd6(71)
      acd6(62)=acd6(15)*acd6(62)
      acd6(71)=acd6(37)*acd6(46)
      acd6(72)=acd6(32)*acd6(38)
      acd6(71)=acd6(72)+acd6(53)+acd6(71)
      acd6(71)=acd6(7)*acd6(71)
      acd6(72)=acd6(3)*acd6(73)
      acd6(72)=acd6(72)+acd6(76)
      acd6(72)=ninjaP*acd6(72)
      acd6(73)=acd6(59)*acd6(60)
      acd6(74)=acd6(57)*acd6(58)
      acd6(75)=acd6(29)*acd6(56)
      acd6(76)=acd6(23)*acd6(52)
      acd6(77)=acd6(36)*acd6(46)
      acd6(77)=acd6(54)+acd6(77)
      acd6(77)=acd6(10)*acd6(77)
      acd6(78)=acd6(32)*acd6(35)
      acd6(78)=acd6(49)+acd6(78)
      acd6(78)=acd6(2)*acd6(78)
      acd6(70)=acd6(47)*acd6(70)
      acd6(61)=acd6(61)+acd6(67)+acd6(69)+acd6(62)+acd6(72)+acd6(65)+acd6(70)+a&
      &cd6(68)+acd6(78)+acd6(71)+acd6(77)+acd6(76)+acd6(75)+acd6(73)+acd6(74)
      brack(ninjaidxt1mu0)=acd6(64)
      brack(ninjaidxt1mu2)=acd6(66)
      brack(ninjaidxt0mu0)=acd6(61)
      brack(ninjaidxt0mu2)=acd6(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d6h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd6h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p1_dg_hhd_d6h1l131
