module p0_gg_hhg_d63h0l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d63h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(117) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd63(1)=dotproduct(k1,ninjaE3)
      acd63(2)=dotproduct(ninjaE3,spvak2k5)
      acd63(3)=abb63(109)
      acd63(4)=dotproduct(k2,ninjaE3)
      acd63(5)=abb63(36)
      acd63(6)=dotproduct(ninjaE3,spvak1k2)
      acd63(7)=abb63(25)
      acd63(8)=dotproduct(ninjaE3,spvak1k5)
      acd63(9)=abb63(14)
      acd63(10)=dotproduct(ninjaE3,spvak1l4)
      acd63(11)=abb63(112)
      acd63(12)=dotproduct(ninjaE3,spval4k2)
      acd63(13)=abb63(74)
      acd63(14)=abb63(111)
      acd63(15)=dotproduct(l4,ninjaE3)
      acd63(16)=abb63(110)
      acd63(17)=dotproduct(ninjaA,ninjaE3)
      acd63(18)=abb63(106)
      acd63(19)=abb63(15)
      acd63(20)=abb63(98)
      acd63(21)=abb63(115)
      acd63(22)=abb63(108)
      acd63(23)=abb63(67)
      acd63(24)=dotproduct(k5,ninjaE3)
      acd63(25)=abb63(107)
      acd63(26)=abb63(18)
      acd63(27)=abb63(56)
      acd63(28)=abb63(92)
      acd63(29)=abb63(101)
      acd63(30)=abb63(118)
      acd63(31)=abb63(21)
      acd63(32)=abb63(95)
      acd63(33)=abb63(8)
      acd63(34)=dotproduct(ninjaE3,spvak2l4)
      acd63(35)=abb63(16)
      acd63(36)=abb63(29)
      acd63(37)=abb63(33)
      acd63(38)=abb63(116)
      acd63(39)=dotproduct(ninjaE3,spvak5k2)
      acd63(40)=abb63(58)
      acd63(41)=dotproduct(k1,ninjaA)
      acd63(42)=dotproduct(k2,ninjaA)
      acd63(43)=dotproduct(ninjaA,spvak2k5)
      acd63(44)=abb63(76)
      acd63(45)=dotproduct(l4,ninjaA)
      acd63(46)=abb63(54)
      acd63(47)=dotproduct(ninjaA,ninjaA)
      acd63(48)=abb63(32)
      acd63(49)=dotproduct(ninjaA,spvak1k5)
      acd63(50)=dotproduct(ninjaA,spvak1l4)
      acd63(51)=dotproduct(ninjaA,spval4k2)
      acd63(52)=abb63(42)
      acd63(53)=abb63(100)
      acd63(54)=abb63(64)
      acd63(55)=abb63(90)
      acd63(56)=abb63(68)
      acd63(57)=abb63(69)
      acd63(58)=dotproduct(k5,ninjaA)
      acd63(59)=abb63(66)
      acd63(60)=abb63(30)
      acd63(61)=dotproduct(ninjaA,spvak1k2)
      acd63(62)=abb63(60)
      acd63(63)=abb63(35)
      acd63(64)=abb63(85)
      acd63(65)=abb63(52)
      acd63(66)=abb63(55)
      acd63(67)=dotproduct(ninjaE3,spval4k5)
      acd63(68)=abb63(83)
      acd63(69)=abb63(20)
      acd63(70)=abb63(104)
      acd63(71)=abb63(105)
      acd63(72)=abb63(96)
      acd63(73)=abb63(91)
      acd63(74)=abb63(84)
      acd63(75)=abb63(102)
      acd63(76)=abb63(122)
      acd63(77)=abb63(37)
      acd63(78)=abb63(57)
      acd63(79)=abb63(94)
      acd63(80)=abb63(44)
      acd63(81)=abb63(97)
      acd63(82)=abb63(19)
      acd63(83)=abb63(89)
      acd63(84)=abb63(86)
      acd63(85)=dotproduct(ninjaA,spvak2l4)
      acd63(86)=dotproduct(ninjaA,spvak5k2)
      acd63(87)=abb63(12)
      acd63(88)=abb63(9)
      acd63(89)=abb63(24)
      acd63(90)=dotproduct(ninjaE3,spvak2k1)
      acd63(91)=abb63(17)
      acd63(92)=abb63(99)
      acd63(93)=abb63(119)
      acd63(94)=abb63(13)
      acd63(95)=abb63(71)
      acd63(96)=abb63(27)
      acd63(97)=abb63(113)
      acd63(98)=abb63(114)
      acd63(99)=acd63(6)*acd63(7)
      acd63(100)=acd63(12)*acd63(13)
      acd63(101)=acd63(10)*acd63(11)
      acd63(102)=acd63(8)*acd63(9)
      acd63(99)=acd63(102)+acd63(99)+acd63(100)+acd63(101)
      acd63(100)=acd63(1)*acd63(3)
      acd63(101)=acd63(4)*acd63(5)
      acd63(100)=acd63(101)+acd63(100)+acd63(99)
      acd63(100)=acd63(2)*acd63(100)
      acd63(101)=acd63(24)*acd63(25)
      acd63(102)=acd63(6)*acd63(26)
      acd63(103)=acd63(12)*acd63(30)
      acd63(104)=acd63(10)*acd63(29)
      acd63(105)=acd63(8)*acd63(28)
      acd63(106)=acd63(15)*acd63(23)
      acd63(107)=acd63(1)*acd63(14)
      acd63(108)=2.0_ki*acd63(17)
      acd63(109)=acd63(108)*acd63(5)
      acd63(101)=acd63(102)+acd63(105)-acd63(106)+acd63(107)+acd63(109)+acd63(1&
      &01)+acd63(103)+acd63(104)
      acd63(102)=acd63(4)*acd63(22)
      acd63(102)=acd63(102)+acd63(101)
      acd63(102)=acd63(4)*acd63(102)
      acd63(103)=acd63(39)*acd63(40)
      acd63(104)=acd63(6)*acd63(33)
      acd63(105)=acd63(12)*acd63(38)
      acd63(106)=acd63(10)*acd63(37)
      acd63(107)=acd63(8)*acd63(36)
      acd63(109)=acd63(1)*acd63(18)
      acd63(103)=acd63(109)+acd63(103)+acd63(106)+acd63(107)+acd63(104)+acd63(1&
      &05)
      acd63(104)=acd63(4)*acd63(27)
      acd63(104)=acd63(104)+acd63(103)
      acd63(104)=acd63(2)*acd63(104)
      acd63(99)=acd63(99)*acd63(108)
      acd63(105)=acd63(12)*acd63(21)
      acd63(106)=acd63(10)*acd63(20)
      acd63(105)=acd63(105)-acd63(106)
      acd63(106)=acd63(8)*acd63(19)
      acd63(106)=acd63(105)-acd63(106)
      acd63(107)=acd63(15)*acd63(16)
      acd63(109)=acd63(108)*acd63(3)
      acd63(107)=-acd63(106)+acd63(107)+acd63(109)
      acd63(107)=acd63(107)*acd63(1)
      acd63(109)=acd63(6)*acd63(31)
      acd63(110)=acd63(8)*acd63(32)
      acd63(105)=acd63(109)+acd63(110)+acd63(105)
      acd63(105)=acd63(105)*acd63(15)
      acd63(106)=acd63(106)*acd63(24)
      acd63(109)=acd63(35)*acd63(6)*acd63(34)
      acd63(99)=acd63(105)+acd63(107)+acd63(109)+acd63(99)+acd63(106)
      acd63(102)=acd63(104)+acd63(102)+acd63(99)
      acd63(102)=acd63(2)*acd63(102)
      acd63(104)=acd63(25)*acd63(58)
      acd63(105)=acd63(61)*acd63(26)
      acd63(106)=acd63(51)*acd63(30)
      acd63(107)=acd63(50)*acd63(29)
      acd63(109)=acd63(49)*acd63(28)
      acd63(110)=-acd63(45)*acd63(23)
      acd63(111)=acd63(47)+ninjaP
      acd63(112)=acd63(5)*acd63(111)
      acd63(113)=acd63(41)*acd63(14)
      acd63(114)=acd63(42)*acd63(22)
      acd63(115)=2.0_ki*acd63(43)
      acd63(116)=acd63(27)*acd63(115)
      acd63(104)=acd63(116)+2.0_ki*acd63(114)+acd63(113)+acd63(112)+acd63(110)+&
      &acd63(109)+acd63(107)+acd63(106)+acd63(105)+acd63(63)+acd63(104)
      acd63(104)=acd63(4)*acd63(104)
      acd63(105)=acd63(40)*acd63(86)
      acd63(106)=acd63(61)*acd63(33)
      acd63(107)=acd63(51)*acd63(38)
      acd63(109)=acd63(50)*acd63(37)
      acd63(110)=acd63(49)*acd63(36)
      acd63(112)=acd63(41)*acd63(18)
      acd63(113)=acd63(42)*acd63(27)
      acd63(105)=acd63(113)+acd63(112)+acd63(110)+acd63(109)+acd63(107)+acd63(1&
      &06)+acd63(92)+acd63(105)
      acd63(105)=acd63(2)*acd63(105)
      acd63(106)=acd63(13)*acd63(51)
      acd63(107)=acd63(11)*acd63(50)
      acd63(109)=acd63(9)*acd63(49)
      acd63(110)=acd63(7)*acd63(61)
      acd63(112)=acd63(41)*acd63(3)
      acd63(113)=acd63(42)*acd63(5)
      acd63(106)=acd63(113)+acd63(112)+acd63(110)+acd63(109)+acd63(107)+acd63(7&
      &9)+acd63(106)
      acd63(106)=acd63(106)*acd63(108)
      acd63(103)=acd63(103)*acd63(115)
      acd63(107)=acd63(21)*acd63(51)
      acd63(109)=acd63(20)*acd63(50)
      acd63(107)=acd63(107)-acd63(109)
      acd63(109)=acd63(61)*acd63(31)
      acd63(110)=acd63(49)*acd63(32)
      acd63(112)=acd63(41)*acd63(16)
      acd63(113)=-acd63(42)*acd63(23)
      acd63(109)=acd63(113)+acd63(112)+acd63(110)+acd63(70)+acd63(109)+acd63(10&
      &7)
      acd63(109)=acd63(15)*acd63(109)
      acd63(110)=acd63(35)*acd63(85)
      acd63(112)=acd63(45)*acd63(31)
      acd63(113)=acd63(7)*acd63(111)
      acd63(114)=acd63(42)*acd63(26)
      acd63(110)=acd63(114)+acd63(113)+acd63(112)+acd63(87)+acd63(110)
      acd63(110)=acd63(6)*acd63(110)
      acd63(112)=acd63(45)*acd63(32)
      acd63(113)=acd63(9)*acd63(111)
      acd63(114)=acd63(41)-acd63(58)
      acd63(115)=acd63(19)*acd63(114)
      acd63(116)=acd63(42)*acd63(28)
      acd63(112)=acd63(116)+acd63(115)+acd63(113)+acd63(94)+acd63(112)
      acd63(112)=acd63(8)*acd63(112)
      acd63(113)=acd63(19)*acd63(49)
      acd63(107)=acd63(113)-acd63(107)
      acd63(113)=acd63(45)*acd63(16)
      acd63(115)=acd63(3)*acd63(111)
      acd63(116)=acd63(42)*acd63(14)
      acd63(113)=acd63(116)+acd63(115)+acd63(53)+acd63(113)+acd63(107)
      acd63(113)=acd63(1)*acd63(113)
      acd63(115)=acd63(13)*acd63(111)
      acd63(116)=acd63(42)*acd63(30)
      acd63(114)=acd63(114)-acd63(45)
      acd63(117)=-acd63(21)*acd63(114)
      acd63(115)=acd63(117)+acd63(116)+acd63(96)+acd63(115)
      acd63(115)=acd63(12)*acd63(115)
      acd63(111)=acd63(11)*acd63(111)
      acd63(116)=acd63(42)*acd63(29)
      acd63(114)=acd63(20)*acd63(114)
      acd63(111)=acd63(114)+acd63(116)+acd63(95)+acd63(111)
      acd63(111)=acd63(10)*acd63(111)
      acd63(114)=acd63(42)*acd63(25)
      acd63(107)=acd63(114)+acd63(75)-acd63(107)
      acd63(107)=acd63(24)*acd63(107)
      acd63(114)=acd63(39)*acd63(97)
      acd63(116)=acd63(67)*acd63(98)
      acd63(117)=acd63(61)*acd63(35)
      acd63(117)=acd63(93)+acd63(117)
      acd63(117)=acd63(34)*acd63(117)
      acd63(103)=acd63(105)+acd63(104)+acd63(103)+acd63(113)+acd63(106)+acd63(1&
      &09)+acd63(112)+acd63(111)+acd63(115)+acd63(110)+acd63(107)+acd63(117)+ac&
      &d63(114)+acd63(116)
      acd63(103)=acd63(2)*acd63(103)
      acd63(101)=acd63(43)*acd63(101)
      acd63(104)=acd63(67)*acd63(68)
      acd63(105)=acd63(24)*acd63(59)
      acd63(106)=acd63(6)*acd63(62)
      acd63(107)=acd63(12)*acd63(66)
      acd63(109)=acd63(10)*acd63(65)
      acd63(110)=acd63(8)*acd63(64)
      acd63(111)=acd63(15)*acd63(57)
      acd63(112)=acd63(60)*acd63(108)
      acd63(113)=acd63(1)*acd63(44)
      acd63(114)=acd63(43)*acd63(22)
      acd63(114)=acd63(56)+acd63(114)
      acd63(114)=acd63(4)*acd63(114)
      acd63(101)=acd63(114)+acd63(101)+acd63(113)+acd63(112)+acd63(111)+acd63(1&
      &10)+acd63(109)+acd63(107)+acd63(106)+acd63(104)+acd63(105)
      acd63(101)=acd63(4)*acd63(101)
      acd63(104)=acd63(15)*acd63(46)
      acd63(105)=acd63(67)*acd63(84)
      acd63(106)=acd63(34)*acd63(80)
      acd63(107)=acd63(6)*acd63(78)
      acd63(109)=acd63(12)*acd63(83)
      acd63(110)=acd63(10)*acd63(82)
      acd63(111)=acd63(8)*acd63(81)
      acd63(112)=acd63(77)*acd63(108)
      acd63(105)=acd63(112)-acd63(104)+acd63(111)+acd63(110)+acd63(109)+acd63(1&
      &07)+acd63(105)+acd63(106)
      acd63(105)=acd63(105)*acd63(108)
      acd63(106)=acd63(67)*acd63(74)
      acd63(107)=acd63(6)*acd63(69)
      acd63(109)=acd63(12)*acd63(73)
      acd63(110)=acd63(10)*acd63(72)
      acd63(111)=acd63(8)*acd63(71)
      acd63(106)=acd63(111)+acd63(110)+acd63(109)+acd63(106)+acd63(107)
      acd63(106)=acd63(15)*acd63(106)
      acd63(99)=acd63(43)*acd63(99)
      acd63(107)=acd63(12)*acd63(55)
      acd63(109)=acd63(10)*acd63(54)
      acd63(107)=acd63(107)-acd63(109)
      acd63(109)=acd63(6)*acd63(52)
      acd63(108)=acd63(48)*acd63(108)
      acd63(104)=acd63(108)+acd63(104)+acd63(109)-acd63(107)
      acd63(104)=acd63(1)*acd63(104)
      acd63(107)=acd63(24)*acd63(107)
      acd63(108)=acd63(90)*acd63(91)
      acd63(109)=acd63(34)*acd63(88)
      acd63(108)=acd63(108)+acd63(109)
      acd63(108)=acd63(6)*acd63(108)
      acd63(109)=acd63(24)*acd63(76)
      acd63(110)=acd63(6)*acd63(89)
      acd63(109)=acd63(109)+acd63(110)
      acd63(109)=acd63(8)*acd63(109)
      acd63(99)=acd63(103)+acd63(101)+acd63(99)+acd63(104)+acd63(105)+acd63(106&
      &)+acd63(109)+acd63(108)+acd63(107)
      brack(ninjaidxt1mu0)=acd63(102)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd63(99)
      brack(ninjaidxt0mu2)=acd63(100)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d63h0_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2-k4
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
end module p0_gg_hhg_d63h0l131_qp
