module     p0_gg_hhg_d49h0l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d49h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd49
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd49(1)=dotproduct(k1,ninjaE3)
      acd49(2)=dotproduct(ninjaE3,spvak1k2)
      acd49(3)=dotproduct(ninjaE3,spvak2k5)
      acd49(4)=abb49(14)
      acd49(5)=dotproduct(k2,ninjaE3)
      acd49(6)=abb49(19)
      acd49(7)=dotproduct(l4,ninjaE3)
      acd49(8)=dotproduct(ninjaA,ninjaE3)
      acd49(9)=abb49(24)
      acd49(10)=acd49(7)-acd49(1)
      acd49(10)=acd49(10)*acd49(4)
      acd49(11)=acd49(6)*acd49(5)
      acd49(12)=acd49(9)*acd49(8)
      acd49(10)=acd49(10)+2.0_ki*acd49(12)+acd49(11)
      acd49(10)=acd49(3)**2*acd49(2)*acd49(10)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd49(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(96) :: acd49
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd49(1)=dotproduct(k1,ninjaE3)
      acd49(2)=dotproduct(ninjaE3,spvak1k2)
      acd49(3)=dotproduct(ninjaE3,spvak2k5)
      acd49(4)=dotproduct(ninjaE4,spvak2k5)
      acd49(5)=abb49(14)
      acd49(6)=dotproduct(ninjaE4,spvak1k2)
      acd49(7)=abb49(23)
      acd49(8)=dotproduct(k1,ninjaE4)
      acd49(9)=dotproduct(k2,ninjaE3)
      acd49(10)=abb49(19)
      acd49(11)=abb49(31)
      acd49(12)=dotproduct(k2,ninjaE4)
      acd49(13)=dotproduct(l4,ninjaE3)
      acd49(14)=abb49(40)
      acd49(15)=dotproduct(l4,ninjaE4)
      acd49(16)=dotproduct(k5,ninjaE3)
      acd49(17)=abb49(39)
      acd49(18)=dotproduct(ninjaA,ninjaE3)
      acd49(19)=abb49(24)
      acd49(20)=abb49(37)
      acd49(21)=dotproduct(ninjaA,ninjaE4)
      acd49(22)=dotproduct(ninjaA,spvak1k2)
      acd49(23)=dotproduct(ninjaA,spvak2k5)
      acd49(24)=abb49(26)
      acd49(25)=abb49(46)
      acd49(26)=dotproduct(ninjaE3,spval4k5)
      acd49(27)=abb49(41)
      acd49(28)=dotproduct(ninjaE3,spvak1k5)
      acd49(29)=abb49(15)
      acd49(30)=dotproduct(ninjaE3,spvak2l4)
      acd49(31)=abb49(50)
      acd49(32)=dotproduct(k1,ninjaA)
      acd49(33)=abb49(36)
      acd49(34)=abb49(35)
      acd49(35)=abb49(48)
      acd49(36)=abb49(44)
      acd49(37)=abb49(33)
      acd49(38)=abb49(29)
      acd49(39)=dotproduct(k2,ninjaA)
      acd49(40)=abb49(22)
      acd49(41)=abb49(32)
      acd49(42)=dotproduct(l4,ninjaA)
      acd49(43)=abb49(27)
      acd49(44)=dotproduct(ninjaA,ninjaA)
      acd49(45)=abb49(9)
      acd49(46)=abb49(8)
      acd49(47)=dotproduct(ninjaE3,spvak2k1)
      acd49(48)=abb49(11)
      acd49(49)=abb49(20)
      acd49(50)=abb49(25)
      acd49(51)=dotproduct(k5,ninjaA)
      acd49(52)=dotproduct(ninjaA,spval4k5)
      acd49(53)=dotproduct(ninjaA,spvak1k5)
      acd49(54)=dotproduct(ninjaA,spvak2l4)
      acd49(55)=abb49(16)
      acd49(56)=abb49(13)
      acd49(57)=abb49(30)
      acd49(58)=abb49(10)
      acd49(59)=abb49(18)
      acd49(60)=dotproduct(ninjaA,spvak2k1)
      acd49(61)=abb49(12)
      acd49(62)=abb49(47)
      acd49(63)=abb49(42)
      acd49(64)=abb49(17)
      acd49(65)=abb49(51)
      acd49(66)=acd49(30)*acd49(31)
      acd49(67)=acd49(26)*acd49(27)
      acd49(68)=acd49(16)*acd49(17)
      acd49(66)=-acd49(68)+acd49(66)-acd49(67)
      acd49(67)=acd49(13)*acd49(14)
      acd49(68)=acd49(28)*acd49(29)
      acd49(69)=acd49(9)*acd49(11)
      acd49(67)=acd49(69)-acd49(66)+acd49(67)+acd49(68)
      acd49(68)=acd49(1)*acd49(7)
      acd49(68)=acd49(67)+acd49(68)
      acd49(69)=acd49(8)-acd49(15)
      acd49(69)=acd49(69)*acd49(5)
      acd49(70)=acd49(10)*acd49(12)
      acd49(71)=2.0_ki*acd49(19)
      acd49(72)=acd49(71)*acd49(21)
      acd49(69)=-acd49(69)+acd49(70)+acd49(72)
      acd49(69)=acd49(69)*acd49(2)
      acd49(70)=acd49(1)*acd49(5)
      acd49(72)=acd49(5)*acd49(13)
      acd49(73)=acd49(9)*acd49(10)
      acd49(74)=-acd49(73)+acd49(70)-acd49(72)
      acd49(75)=2.0_ki*acd49(18)
      acd49(76)=acd49(75)*acd49(19)
      acd49(77)=acd49(74)-acd49(76)
      acd49(78)=-acd49(6)*acd49(77)
      acd49(79)=acd49(22)*acd49(19)
      acd49(79)=acd49(79)+acd49(25)
      acd49(78)=acd49(69)+acd49(78)+acd49(79)
      acd49(78)=acd49(3)*acd49(78)
      acd49(80)=2.0_ki*acd49(4)
      acd49(74)=acd49(74)*acd49(80)
      acd49(80)=acd49(4)*acd49(18)*acd49(19)
      acd49(74)=acd49(74)-acd49(24)-4.0_ki*acd49(80)
      acd49(71)=acd49(23)*acd49(71)
      acd49(71)=acd49(71)-acd49(74)
      acd49(71)=acd49(2)*acd49(71)
      acd49(80)=acd49(18)*acd49(20)
      acd49(71)=acd49(78)+acd49(71)+4.0_ki*acd49(80)+acd49(68)
      acd49(71)=acd49(3)*acd49(71)
      acd49(78)=acd49(30)*acd49(38)
      acd49(80)=acd49(26)*acd49(36)
      acd49(81)=acd49(16)*acd49(34)
      acd49(82)=acd49(28)*acd49(37)
      acd49(83)=acd49(9)*acd49(33)
      acd49(78)=acd49(83)+acd49(78)+acd49(80)+acd49(81)+acd49(82)
      acd49(78)=acd49(78)*acd49(1)
      acd49(80)=acd49(75)*acd49(20)
      acd49(68)=acd49(80)+acd49(68)
      acd49(68)=acd49(68)*acd49(75)
      acd49(80)=acd49(13)*acd49(43)
      acd49(81)=acd49(9)*acd49(41)
      acd49(80)=acd49(80)+acd49(81)
      acd49(80)=acd49(80)*acd49(28)
      acd49(68)=acd49(78)+acd49(80)+acd49(68)
      acd49(78)=acd49(48)*acd49(47)
      acd49(80)=acd49(30)*acd49(50)
      acd49(81)=acd49(26)*acd49(46)
      acd49(82)=acd49(16)*acd49(24)
      acd49(83)=acd49(28)*acd49(49)
      acd49(78)=acd49(78)-acd49(82)+acd49(83)+acd49(80)+acd49(81)
      acd49(80)=acd49(9)*acd49(40)
      acd49(81)=acd49(75)*acd49(24)
      acd49(80)=acd49(80)+acd49(81)+acd49(78)
      acd49(81)=2.0_ki*acd49(23)
      acd49(82)=-acd49(77)*acd49(81)
      acd49(82)=acd49(82)+acd49(80)
      acd49(82)=acd49(2)*acd49(82)
      acd49(72)=acd49(73)+acd49(72)
      acd49(72)=acd49(22)*acd49(72)
      acd49(83)=acd49(79)*acd49(75)
      acd49(84)=acd49(5)*acd49(22)
      acd49(84)=acd49(84)-acd49(35)
      acd49(84)=acd49(84)*acd49(1)
      acd49(72)=-acd49(84)+acd49(72)+acd49(83)
      acd49(83)=acd49(10)*acd49(39)
      acd49(84)=acd49(19)*acd49(44)
      acd49(83)=acd49(45)+acd49(83)+acd49(84)
      acd49(84)=acd49(32)-acd49(42)
      acd49(85)=acd49(84)*acd49(5)
      acd49(86)=ninjaP*acd49(19)
      acd49(85)=-acd49(86)+acd49(85)-acd49(83)
      acd49(86)=-acd49(2)*acd49(85)
      acd49(86)=acd49(86)+acd49(72)
      acd49(86)=acd49(3)*acd49(86)
      acd49(82)=acd49(86)+acd49(82)+acd49(68)
      acd49(82)=acd49(3)*acd49(82)
      acd49(86)=acd49(2)*acd49(19)*acd49(3)**2
      acd49(87)=ninjaP+acd49(44)
      acd49(88)=2.0_ki*acd49(87)
      acd49(88)=acd49(20)*acd49(88)
      acd49(89)=-acd49(31)*acd49(54)
      acd49(90)=acd49(29)*acd49(53)
      acd49(91)=acd49(27)*acd49(52)
      acd49(92)=acd49(17)*acd49(51)
      acd49(93)=acd49(14)*acd49(42)
      acd49(94)=acd49(39)*acd49(11)
      acd49(95)=acd49(32)*acd49(7)
      acd49(96)=acd49(22)*acd49(24)
      acd49(88)=acd49(96)+acd49(95)+acd49(94)+acd49(93)+acd49(92)+acd49(91)+acd&
      &49(90)+acd49(59)+acd49(89)+acd49(88)
      acd49(75)=acd49(88)*acd49(75)
      acd49(74)=-ninjaP*acd49(74)
      acd49(85)=-acd49(85)*acd49(81)
      acd49(88)=acd49(44)-acd49(51)
      acd49(88)=acd49(24)*acd49(88)
      acd49(89)=acd49(50)*acd49(54)
      acd49(90)=acd49(48)*acd49(60)
      acd49(91)=acd49(46)*acd49(52)
      acd49(92)=acd49(53)*acd49(49)
      acd49(93)=acd49(39)*acd49(40)
      acd49(74)=acd49(85)+acd49(93)+acd49(92)+acd49(91)+acd49(90)+acd49(61)+acd&
      &49(89)+acd49(74)+acd49(88)
      acd49(74)=acd49(2)*acd49(74)
      acd49(85)=acd49(7)*acd49(87)
      acd49(87)=acd49(38)*acd49(54)
      acd49(88)=acd49(36)*acd49(52)
      acd49(89)=acd49(34)*acd49(51)
      acd49(90)=acd49(53)*acd49(37)
      acd49(91)=acd49(39)*acd49(33)
      acd49(85)=acd49(91)+acd49(90)+acd49(89)+acd49(88)+acd49(55)+acd49(87)+acd&
      &49(85)
      acd49(85)=acd49(1)*acd49(85)
      acd49(78)=acd49(22)*acd49(78)
      acd49(70)=acd49(73)+acd49(76)-acd49(70)
      acd49(70)=acd49(6)*acd49(70)
      acd49(69)=acd49(69)+acd49(79)+acd49(70)
      acd49(69)=ninjaP*acd49(69)
      acd49(70)=acd49(22)*acd49(83)
      acd49(73)=-acd49(22)*acd49(84)
      acd49(76)=ninjaP*acd49(13)*acd49(6)
      acd49(73)=acd49(73)+acd49(76)
      acd49(73)=acd49(5)*acd49(73)
      acd49(76)=acd49(32)*acd49(35)
      acd49(79)=acd49(44)*acd49(25)
      acd49(69)=acd49(73)+acd49(70)+acd49(79)+acd49(62)+acd49(76)+acd49(69)
      acd49(69)=acd49(3)*acd49(69)
      acd49(70)=acd49(42)*acd49(43)
      acd49(73)=acd49(39)*acd49(41)
      acd49(76)=acd49(32)*acd49(37)
      acd49(79)=acd49(44)*acd49(29)
      acd49(70)=acd49(79)+acd49(76)+acd49(73)+acd49(64)+acd49(70)
      acd49(70)=acd49(28)*acd49(70)
      acd49(73)=acd49(53)*acd49(41)
      acd49(76)=acd49(32)*acd49(33)
      acd49(79)=acd49(44)*acd49(11)
      acd49(83)=acd49(22)*acd49(40)
      acd49(73)=acd49(83)+acd49(79)+acd49(76)+acd49(56)+acd49(73)
      acd49(73)=acd49(9)*acd49(73)
      acd49(67)=ninjaP*acd49(67)
      acd49(66)=-acd49(44)*acd49(66)
      acd49(72)=acd49(72)*acd49(81)
      acd49(76)=acd49(53)*acd49(43)
      acd49(79)=acd49(44)*acd49(14)
      acd49(76)=acd49(79)+acd49(57)+acd49(76)
      acd49(76)=acd49(13)*acd49(76)
      acd49(79)=acd49(32)*acd49(38)
      acd49(79)=acd49(65)+acd49(79)
      acd49(79)=acd49(30)*acd49(79)
      acd49(81)=acd49(32)*acd49(36)
      acd49(81)=acd49(63)+acd49(81)
      acd49(81)=acd49(26)*acd49(81)
      acd49(83)=acd49(32)*acd49(34)
      acd49(83)=acd49(58)+acd49(83)
      acd49(83)=acd49(16)*acd49(83)
      acd49(66)=acd49(69)+acd49(74)+acd49(72)+acd49(75)+acd49(85)+acd49(67)+acd&
      &49(73)+acd49(78)+acd49(70)+acd49(76)+acd49(66)+acd49(83)+acd49(79)+acd49&
      &(81)
      acd49(66)=acd49(3)*acd49(66)
      acd49(67)=-acd49(23)*acd49(77)
      acd49(67)=acd49(67)+acd49(80)
      acd49(67)=acd49(2)*acd49(67)
      acd49(67)=acd49(68)+acd49(67)
      acd49(67)=acd49(23)*acd49(67)
      acd49(66)=acd49(66)+acd49(67)
      brack(ninjaidxt1mu0)=acd49(82)
      brack(ninjaidxt1mu2)=acd49(86)
      brack(ninjaidxt0mu0)=acd49(66)
      brack(ninjaidxt0mu2)=acd49(71)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d49h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d49h0l131
