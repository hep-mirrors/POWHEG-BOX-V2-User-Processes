module p0_gg_hhg_d29h4l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d29h4l131.f90
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
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd29
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd29(1)=dotproduct(k2,ninjaE3)
      acd29(2)=dotproduct(ninjaE3,spvak1k2)
      acd29(3)=abb29(21)
      acd29(4)=dotproduct(l4,ninjaE3)
      acd29(5)=abb29(37)
      acd29(6)=dotproduct(k5,ninjaE3)
      acd29(7)=dotproduct(ninjaA,ninjaE3)
      acd29(8)=abb29(22)
      acd29(9)=acd29(7)*acd29(8)
      acd29(10)=acd29(4)*acd29(5)
      acd29(9)=acd29(10)+2.0_ki*acd29(9)
      acd29(10)=-acd29(6)*acd29(9)
      acd29(11)=acd29(1)+acd29(6)
      acd29(11)=acd29(3)*acd29(11)
      acd29(9)=acd29(11)-acd29(9)
      acd29(9)=acd29(1)*acd29(9)
      acd29(9)=acd29(10)+acd29(9)
      acd29(9)=acd29(2)*acd29(9)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd29(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(116) :: acd29
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd29(1)=dotproduct(k1,ninjaE3)
      acd29(2)=abb29(16)
      acd29(3)=dotproduct(k2,ninjaA)
      acd29(4)=dotproduct(ninjaE3,spvak1k2)
      acd29(5)=abb29(22)
      acd29(6)=dotproduct(k2,ninjaE3)
      acd29(7)=dotproduct(ninjaE4,spvak1k2)
      acd29(8)=abb29(21)
      acd29(9)=dotproduct(k2,ninjaE4)
      acd29(10)=dotproduct(l4,ninjaE3)
      acd29(11)=abb29(37)
      acd29(12)=dotproduct(l4,ninjaE4)
      acd29(13)=dotproduct(k5,ninjaE3)
      acd29(14)=dotproduct(k5,ninjaE4)
      acd29(15)=dotproduct(ninjaA,ninjaE3)
      acd29(16)=dotproduct(ninjaA,ninjaE4)
      acd29(17)=dotproduct(ninjaA,spvak1k2)
      acd29(18)=abb29(28)
      acd29(19)=dotproduct(l3,ninjaE3)
      acd29(20)=abb29(57)
      acd29(21)=dotproduct(k5,ninjaA)
      acd29(22)=abb29(11)
      acd29(23)=dotproduct(ninjaE3,spval3k2)
      acd29(24)=abb29(56)
      acd29(25)=dotproduct(ninjaE3,spvak1k5)
      acd29(26)=abb29(31)
      acd29(27)=dotproduct(ninjaE3,spvak5l3)
      acd29(28)=abb29(15)
      acd29(29)=dotproduct(ninjaE3,spvak5k2)
      acd29(30)=abb29(65)
      acd29(31)=dotproduct(ninjaE3,spval3k5)
      acd29(32)=abb29(70)
      acd29(33)=abb29(62)
      acd29(34)=dotproduct(l4,ninjaA)
      acd29(35)=dotproduct(ninjaA,ninjaA)
      acd29(36)=abb29(20)
      acd29(37)=abb29(23)
      acd29(38)=abb29(26)
      acd29(39)=abb29(19)
      acd29(40)=abb29(13)
      acd29(41)=abb29(33)
      acd29(42)=dotproduct(ninjaE3,spvak2k5)
      acd29(43)=abb29(24)
      acd29(44)=abb29(25)
      acd29(45)=dotproduct(ninjaE3,spvak5l4)
      acd29(46)=abb29(29)
      acd29(47)=dotproduct(ninjaE3,spvak2l4)
      acd29(48)=abb29(32)
      acd29(49)=dotproduct(ninjaE3,spval4k5)
      acd29(50)=abb29(34)
      acd29(51)=dotproduct(ninjaE3,spval4k2)
      acd29(52)=abb29(35)
      acd29(53)=abb29(38)
      acd29(54)=dotproduct(ninjaE3,spvak2l3)
      acd29(55)=abb29(39)
      acd29(56)=dotproduct(k1,ninjaA)
      acd29(57)=abb29(45)
      acd29(58)=abb29(48)
      acd29(59)=dotproduct(l3,ninjaA)
      acd29(60)=abb29(12)
      acd29(61)=abb29(53)
      acd29(62)=dotproduct(ninjaA,spval3k2)
      acd29(63)=dotproduct(ninjaA,spvak1k5)
      acd29(64)=dotproduct(ninjaA,spvak5l3)
      acd29(65)=dotproduct(ninjaA,spvak5k2)
      acd29(66)=dotproduct(ninjaA,spval3k5)
      acd29(67)=abb29(27)
      acd29(68)=dotproduct(ninjaA,spvak2k5)
      acd29(69)=dotproduct(ninjaA,spvak5l4)
      acd29(70)=dotproduct(ninjaA,spvak2l4)
      acd29(71)=dotproduct(ninjaA,spval4k5)
      acd29(72)=dotproduct(ninjaA,spval4k2)
      acd29(73)=dotproduct(ninjaA,spvak2l3)
      acd29(74)=abb29(10)
      acd29(75)=abb29(36)
      acd29(76)=abb29(14)
      acd29(77)=abb29(60)
      acd29(78)=abb29(30)
      acd29(79)=abb29(63)
      acd29(80)=abb29(67)
      acd29(81)=abb29(66)
      acd29(82)=abb29(69)
      acd29(83)=acd29(1)+acd29(19)
      acd29(83)=acd29(83)*acd29(2)
      acd29(84)=acd29(25)*acd29(26)
      acd29(85)=acd29(31)*acd29(32)
      acd29(86)=acd29(29)*acd29(30)
      acd29(87)=acd29(27)*acd29(28)
      acd29(88)=acd29(23)*acd29(24)
      acd29(83)=-acd29(84)-acd29(85)-acd29(86)-acd29(87)+acd29(83)+acd29(88)
      acd29(84)=acd29(10)*acd29(20)
      acd29(85)=acd29(83)+acd29(84)
      acd29(86)=acd29(5)*acd29(17)
      acd29(87)=acd29(86)*acd29(13)
      acd29(87)=acd29(85)+acd29(87)
      acd29(88)=acd29(14)+2.0_ki*acd29(9)
      acd29(88)=acd29(88)*acd29(8)
      acd29(89)=2.0_ki*acd29(5)
      acd29(89)=acd29(89)*acd29(16)
      acd29(90)=acd29(11)*acd29(12)
      acd29(88)=-acd29(89)+acd29(88)-acd29(90)
      acd29(88)=acd29(88)*acd29(6)
      acd29(89)=2.0_ki*acd29(15)
      acd29(91)=acd29(89)*acd29(5)
      acd29(92)=acd29(11)*acd29(10)
      acd29(93)=-acd29(91)-acd29(92)
      acd29(94)=acd29(9)+acd29(14)
      acd29(93)=acd29(94)*acd29(93)
      acd29(94)=acd29(8)*acd29(9)
      acd29(90)=acd29(94)-acd29(90)
      acd29(90)=acd29(90)*acd29(13)
      acd29(88)=acd29(88)+acd29(90)+acd29(22)+acd29(93)
      acd29(90)=acd29(13)*acd29(16)
      acd29(93)=acd29(3)+acd29(21)
      acd29(90)=acd29(93)+2.0_ki*acd29(90)
      acd29(94)=-acd29(5)*acd29(90)
      acd29(94)=acd29(94)+acd29(88)
      acd29(94)=acd29(4)*acd29(94)
      acd29(95)=acd29(6)*acd29(8)
      acd29(91)=-acd29(92)+acd29(95)-acd29(91)
      acd29(91)=acd29(91)*acd29(7)
      acd29(96)=acd29(13)*acd29(7)
      acd29(97)=acd29(96)*acd29(8)
      acd29(91)=acd29(91)+acd29(97)+acd29(18)
      acd29(97)=-acd29(86)+acd29(91)
      acd29(97)=acd29(6)*acd29(97)
      acd29(98)=acd29(96)*acd29(92)
      acd29(99)=2.0_ki*acd29(2)
      acd29(100)=-acd29(5)*acd29(96)
      acd29(100)=-acd29(99)+acd29(100)
      acd29(100)=acd29(100)*acd29(89)
      acd29(94)=acd29(94)+acd29(97)+acd29(100)-acd29(98)-acd29(87)
      acd29(97)=acd29(11)*acd29(34)
      acd29(100)=acd29(8)*acd29(3)
      acd29(100)=acd29(97)-acd29(100)
      acd29(101)=acd29(39)-acd29(100)
      acd29(101)=acd29(101)*acd29(13)
      acd29(102)=acd29(93)*acd29(92)
      acd29(103)=acd29(55)*acd29(54)
      acd29(104)=acd29(51)*acd29(52)
      acd29(105)=acd29(49)*acd29(50)
      acd29(106)=acd29(48)*acd29(47)
      acd29(107)=acd29(46)*acd29(45)
      acd29(108)=acd29(42)*acd29(43)
      acd29(109)=acd29(31)*acd29(53)
      acd29(110)=acd29(29)*acd29(44)
      acd29(111)=acd29(27)*acd29(41)
      acd29(112)=acd29(23)*acd29(40)
      acd29(113)=acd29(19)*acd29(37)
      acd29(114)=acd29(10)*acd29(38)
      acd29(101)=acd29(103)+acd29(104)+acd29(105)+acd29(106)-acd29(102)+acd29(1&
      &11)+acd29(112)+acd29(113)+acd29(114)+acd29(101)+acd29(107)+acd29(108)+ac&
      &d29(109)+acd29(110)
      acd29(102)=-acd29(5)*acd29(93)
      acd29(102)=acd29(22)+acd29(102)
      acd29(102)=acd29(102)*acd29(89)
      acd29(103)=acd29(21)+2.0_ki*acd29(3)
      acd29(103)=acd29(103)*acd29(8)
      acd29(97)=acd29(103)-acd29(97)+acd29(36)
      acd29(103)=ninjaP+acd29(35)
      acd29(104)=-acd29(5)*acd29(103)
      acd29(104)=acd29(104)+acd29(97)
      acd29(104)=acd29(6)*acd29(104)
      acd29(105)=acd29(103)*acd29(13)
      acd29(106)=-acd29(5)*acd29(105)
      acd29(102)=acd29(104)+acd29(102)+acd29(106)+acd29(101)
      acd29(102)=acd29(4)*acd29(102)
      acd29(104)=-acd29(2)*acd29(89)
      acd29(87)=acd29(104)-acd29(87)
      acd29(87)=acd29(87)*acd29(89)
      acd29(104)=acd29(13)*acd29(8)
      acd29(95)=acd29(95)-acd29(92)+acd29(104)
      acd29(95)=acd29(17)*acd29(95)
      acd29(104)=acd29(86)-acd29(18)
      acd29(104)=-acd29(104)*acd29(89)
      acd29(106)=acd29(1)*acd29(33)
      acd29(95)=acd29(104)+acd29(106)+acd29(95)
      acd29(95)=acd29(6)*acd29(95)
      acd29(84)=-acd29(1)*acd29(84)
      acd29(92)=-acd29(17)*acd29(13)*acd29(92)
      acd29(84)=acd29(102)+acd29(95)+acd29(87)+acd29(84)+acd29(92)
      acd29(87)=-acd29(13)-acd29(6)
      acd29(87)=acd29(4)*acd29(5)*acd29(87)
      acd29(88)=ninjaP*acd29(88)
      acd29(92)=-acd29(93)*acd29(100)
      acd29(90)=-ninjaP*acd29(90)
      acd29(95)=-acd29(35)*acd29(93)
      acd29(90)=acd29(90)+acd29(95)
      acd29(90)=acd29(5)*acd29(90)
      acd29(95)=acd29(55)*acd29(73)
      acd29(100)=acd29(53)*acd29(66)
      acd29(102)=acd29(52)*acd29(72)
      acd29(104)=acd29(50)*acd29(71)
      acd29(106)=acd29(48)*acd29(70)
      acd29(107)=acd29(46)*acd29(69)
      acd29(108)=acd29(44)*acd29(65)
      acd29(109)=acd29(43)*acd29(68)
      acd29(110)=acd29(41)*acd29(64)
      acd29(111)=acd29(40)*acd29(62)
      acd29(112)=acd29(37)*acd29(59)
      acd29(113)=acd29(34)*acd29(38)
      acd29(114)=acd29(21)*acd29(39)
      acd29(115)=acd29(35)*acd29(22)
      acd29(116)=acd29(3)*acd29(36)
      acd29(88)=acd29(90)+acd29(116)+acd29(115)+acd29(114)+acd29(113)+acd29(112&
      &)+acd29(111)+acd29(110)+acd29(109)+acd29(108)+acd29(107)+acd29(106)+acd2&
      &9(104)+acd29(102)+acd29(100)+acd29(74)+acd29(95)+acd29(92)+acd29(88)
      acd29(88)=acd29(4)*acd29(88)
      acd29(90)=acd29(17)*acd29(101)
      acd29(92)=-acd29(99)*acd29(103)
      acd29(95)=-ninjaP*acd29(96)
      acd29(93)=-acd29(17)*acd29(93)
      acd29(93)=acd29(95)+acd29(93)
      acd29(93)=acd29(5)*acd29(93)
      acd29(95)=acd29(34)*acd29(20)
      acd29(96)=acd29(32)*acd29(66)
      acd29(99)=acd29(30)*acd29(65)
      acd29(100)=acd29(28)*acd29(64)
      acd29(101)=acd29(26)*acd29(63)
      acd29(102)=-acd29(24)*acd29(62)
      acd29(104)=-acd29(59)-acd29(56)
      acd29(104)=acd29(2)*acd29(104)
      acd29(106)=acd29(3)*acd29(18)
      acd29(107)=acd29(17)*acd29(22)
      acd29(92)=acd29(93)+acd29(107)+acd29(106)+acd29(104)-acd29(95)+acd29(102)&
      &+acd29(101)+acd29(100)+acd29(99)+acd29(67)+acd29(96)+acd29(92)
      acd29(89)=acd29(92)*acd29(89)
      acd29(83)=-acd29(35)*acd29(83)
      acd29(85)=acd29(85)+acd29(98)
      acd29(85)=-ninjaP*acd29(85)
      acd29(91)=ninjaP*acd29(91)
      acd29(92)=acd29(17)*acd29(97)
      acd29(93)=-acd29(103)*acd29(86)
      acd29(96)=acd29(33)*acd29(56)
      acd29(97)=acd29(35)*acd29(18)
      acd29(91)=acd29(93)+acd29(92)+acd29(97)+acd29(58)+acd29(96)+acd29(91)
      acd29(91)=acd29(6)*acd29(91)
      acd29(92)=acd29(3)*acd29(33)
      acd29(92)=acd29(92)+acd29(57)-acd29(95)
      acd29(92)=acd29(1)*acd29(92)
      acd29(86)=-acd29(105)*acd29(86)
      acd29(93)=acd29(51)*acd29(81)
      acd29(95)=acd29(49)*acd29(80)
      acd29(96)=acd29(42)*acd29(78)
      acd29(97)=acd29(25)*acd29(76)
      acd29(98)=acd29(31)*acd29(82)
      acd29(99)=acd29(29)*acd29(79)
      acd29(100)=acd29(27)*acd29(77)
      acd29(101)=acd29(23)*acd29(75)
      acd29(102)=acd29(19)*acd29(60)
      acd29(103)=-acd29(35)-acd29(56)
      acd29(103)=acd29(20)*acd29(103)
      acd29(103)=acd29(61)+acd29(103)
      acd29(103)=acd29(10)*acd29(103)
      acd29(83)=acd29(88)+acd29(91)+acd29(89)+acd29(86)+acd29(90)+acd29(85)+acd&
      &29(103)+acd29(83)+acd29(102)+acd29(101)+acd29(100)+acd29(99)+acd29(98)+a&
      &cd29(97)+acd29(96)+acd29(93)+acd29(95)+acd29(92)
      brack(ninjaidxt1mu0)=acd29(84)
      brack(ninjaidxt1mu2)=acd29(87)
      brack(ninjaidxt0mu0)=acd29(83)
      brack(ninjaidxt0mu2)=acd29(94)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d29h4_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k5+k4
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
end module p0_gg_hhg_d29h4l131_qp
