module     p0_dbaru_epnebbbarg_d314h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d314h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd314h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd314
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd314h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(116) :: acd314
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd314(1)=dotproduct(k2,ninjaE3)
      acd314(2)=dotproduct(ninjaE3,spvak2k7)
      acd314(3)=dotproduct(ninjaE3,spvak4l6)
      acd314(4)=abb314(106)
      acd314(5)=dotproduct(ninjaE3,spvak2l5)
      acd314(6)=abb314(49)
      acd314(7)=dotproduct(ninjaE3,spvak4l5)
      acd314(8)=abb314(112)
      acd314(9)=dotproduct(k3,ninjaE3)
      acd314(10)=dotproduct(k4,ninjaE3)
      acd314(11)=dotproduct(ninjaE3,spvak4k3)
      acd314(12)=abb314(22)
      acd314(13)=abb314(13)
      acd314(14)=abb314(14)
      acd314(15)=dotproduct(ninjaE3,spvak3l6)
      acd314(16)=abb314(39)
      acd314(17)=dotproduct(ninjaE3,spvak3l5)
      acd314(18)=abb314(45)
      acd314(19)=dotproduct(ninjaE3,spvak4k2)
      acd314(20)=abb314(17)
      acd314(21)=abb314(12)
      acd314(22)=abb314(37)
      acd314(23)=dotproduct(ninjaE3,spvak2l6)
      acd314(24)=dotproduct(k1,ninjaE3)
      acd314(25)=abb314(51)
      acd314(26)=dotproduct(ninjaE3,spvak2k3)
      acd314(27)=abb314(41)
      acd314(28)=dotproduct(k2,ninjaA)
      acd314(29)=abb314(94)
      acd314(30)=dotproduct(l5,ninjaE3)
      acd314(31)=abb314(113)
      acd314(32)=dotproduct(k7,ninjaE3)
      acd314(33)=dotproduct(ninjaA,ninjaE3)
      acd314(34)=abb314(59)
      acd314(35)=dotproduct(ninjaA,spvak2k7)
      acd314(36)=dotproduct(ninjaA,spvak4l6)
      acd314(37)=dotproduct(ninjaA,spvak2l5)
      acd314(38)=dotproduct(ninjaA,spvak4l5)
      acd314(39)=abb314(34)
      acd314(40)=abb314(98)
      acd314(41)=abb314(40)
      acd314(42)=abb314(109)
      acd314(43)=abb314(38)
      acd314(44)=abb314(18)
      acd314(45)=dotproduct(ninjaE3,spvak4k7)
      acd314(46)=abb314(89)
      acd314(47)=dotproduct(k3,ninjaA)
      acd314(48)=abb314(33)
      acd314(49)=abb314(55)
      acd314(50)=dotproduct(k4,ninjaA)
      acd314(51)=abb314(123)
      acd314(52)=abb314(50)
      acd314(53)=abb314(28)
      acd314(54)=abb314(74)
      acd314(55)=abb314(31)
      acd314(56)=abb314(108)
      acd314(57)=abb314(29)
      acd314(58)=abb314(23)
      acd314(59)=abb314(47)
      acd314(60)=abb314(48)
      acd314(61)=dotproduct(ninjaA,spvak4k3)
      acd314(62)=dotproduct(ninjaA,spvak4k2)
      acd314(63)=dotproduct(ninjaA,spvak2l6)
      acd314(64)=dotproduct(ninjaA,spvak3l6)
      acd314(65)=dotproduct(ninjaA,spvak3l5)
      acd314(66)=abb314(10)
      acd314(67)=abb314(16)
      acd314(68)=abb314(32)
      acd314(69)=abb314(52)
      acd314(70)=dotproduct(ninjaE3,spvak1k3)
      acd314(71)=abb314(27)
      acd314(72)=abb314(30)
      acd314(73)=dotproduct(ninjaE3,spvak7k2)
      acd314(74)=dotproduct(ninjaE3,spvak1k2)
      acd314(75)=abb314(43)
      acd314(76)=dotproduct(ninjaE3,spvak1l6)
      acd314(77)=abb314(54)
      acd314(78)=dotproduct(ninjaE3,spvak7l6)
      acd314(79)=dotproduct(ninjaE3,spvak7k3)
      acd314(80)=abb314(96)
      acd314(81)=dotproduct(ninjaE3,spval5l6)
      acd314(82)=abb314(99)
      acd314(83)=abb314(116)
      acd314(84)=abb314(66)
      acd314(85)=dotproduct(ninjaE3,spvak3k7)
      acd314(86)=abb314(53)
      acd314(87)=abb314(124)
      acd314(88)=abb314(11)
      acd314(89)=abb314(72)
      acd314(90)=acd314(16)*acd314(15)
      acd314(91)=acd314(7)*acd314(14)
      acd314(92)=acd314(5)*acd314(13)
      acd314(93)=acd314(18)*acd314(17)
      acd314(90)=acd314(92)+acd314(93)+acd314(90)+acd314(91)
      acd314(91)=acd314(3)*acd314(12)
      acd314(91)=acd314(91)+acd314(90)
      acd314(91)=acd314(11)*acd314(91)
      acd314(92)=acd314(7)*acd314(8)
      acd314(94)=acd314(5)*acd314(6)
      acd314(95)=acd314(3)*acd314(4)
      acd314(92)=acd314(95)+acd314(92)+acd314(94)
      acd314(92)=acd314(1)*acd314(92)
      acd314(94)=acd314(16)*acd314(23)
      acd314(95)=acd314(7)*acd314(22)
      acd314(94)=acd314(94)-acd314(95)
      acd314(95)=-acd314(19)*acd314(94)
      acd314(96)=acd314(9)+acd314(10)
      acd314(97)=acd314(96)*acd314(6)
      acd314(98)=acd314(19)*acd314(21)
      acd314(97)=acd314(97)-acd314(98)
      acd314(98)=-acd314(5)*acd314(97)
      acd314(99)=acd314(96)*acd314(4)
      acd314(100)=acd314(19)*acd314(20)
      acd314(100)=acd314(100)-acd314(99)
      acd314(100)=acd314(3)*acd314(100)
      acd314(101)=acd314(96)*acd314(8)
      acd314(102)=-acd314(7)*acd314(101)
      acd314(91)=acd314(92)+acd314(91)+acd314(100)+acd314(98)+acd314(102)+acd31&
      &4(95)
      acd314(91)=acd314(2)*acd314(91)
      acd314(92)=acd314(18)*acd314(65)
      acd314(95)=acd314(38)*acd314(14)
      acd314(98)=acd314(37)*acd314(13)
      acd314(100)=acd314(36)*acd314(12)
      acd314(102)=acd314(16)*acd314(64)
      acd314(92)=acd314(102)+acd314(100)+acd314(98)+acd314(95)+acd314(66)+acd31&
      &4(92)
      acd314(92)=acd314(11)*acd314(92)
      acd314(95)=acd314(38)*acd314(22)
      acd314(98)=acd314(37)*acd314(21)
      acd314(100)=acd314(36)*acd314(20)
      acd314(102)=-acd314(16)*acd314(63)
      acd314(95)=acd314(102)+acd314(100)+acd314(98)+acd314(67)+acd314(95)
      acd314(95)=acd314(19)*acd314(95)
      acd314(98)=acd314(8)*acd314(38)
      acd314(100)=acd314(6)*acd314(37)
      acd314(102)=acd314(4)*acd314(36)
      acd314(98)=acd314(102)+acd314(98)+acd314(100)
      acd314(100)=acd314(98)+acd314(49)
      acd314(100)=-acd314(100)*acd314(96)
      acd314(102)=acd314(22)*acd314(62)
      acd314(103)=acd314(61)*acd314(14)
      acd314(104)=-acd314(50)+acd314(28)-acd314(47)
      acd314(105)=acd314(8)*acd314(104)
      acd314(102)=acd314(105)+acd314(102)+acd314(103)
      acd314(102)=acd314(7)*acd314(102)
      acd314(103)=acd314(21)*acd314(62)
      acd314(105)=acd314(61)*acd314(13)
      acd314(106)=acd314(6)*acd314(104)
      acd314(103)=acd314(106)+acd314(105)+acd314(68)+acd314(103)
      acd314(103)=acd314(5)*acd314(103)
      acd314(105)=acd314(20)*acd314(62)
      acd314(106)=acd314(61)*acd314(12)
      acd314(104)=acd314(4)*acd314(104)
      acd314(104)=acd314(104)+acd314(105)+acd314(106)
      acd314(104)=acd314(3)*acd314(104)
      acd314(98)=acd314(39)+acd314(98)
      acd314(98)=acd314(1)*acd314(98)
      acd314(105)=acd314(61)*acd314(15)
      acd314(106)=-acd314(23)*acd314(62)
      acd314(105)=acd314(105)+acd314(106)
      acd314(105)=acd314(16)*acd314(105)
      acd314(106)=acd314(81)*acd314(82)
      acd314(107)=acd314(79)*acd314(80)
      acd314(108)=acd314(76)*acd314(77)
      acd314(109)=acd314(74)*acd314(75)
      acd314(110)=acd314(70)*acd314(71)
      acd314(111)=acd314(54)*acd314(78)
      acd314(112)=-acd314(48)*acd314(73)
      acd314(113)=acd314(26)*acd314(72)
      acd314(93)=acd314(61)*acd314(93)
      acd314(114)=acd314(23)*acd314(69)
      acd314(115)=2.0_ki*acd314(33)
      acd314(116)=acd314(55)*acd314(115)
      acd314(92)=acd314(98)+acd314(92)+acd314(104)+acd314(103)+acd314(95)+acd31&
      &4(102)+acd314(116)+acd314(105)+acd314(114)+acd314(93)+acd314(113)+acd314&
      &(112)+acd314(111)+acd314(110)+acd314(109)+acd314(108)+acd314(106)+acd314&
      &(107)+acd314(100)
      acd314(92)=acd314(2)*acd314(92)
      acd314(93)=acd314(45)*acd314(46)
      acd314(95)=acd314(30)*acd314(31)
      acd314(93)=acd314(93)-acd314(95)
      acd314(95)=acd314(24)-acd314(32)
      acd314(98)=acd314(25)*acd314(95)
      acd314(100)=-acd314(1)+acd314(96)
      acd314(100)=acd314(29)*acd314(100)
      acd314(102)=acd314(23)*acd314(44)
      acd314(103)=acd314(34)*acd314(115)
      acd314(104)=acd314(35)*acd314(7)
      acd314(105)=acd314(8)*acd314(104)
      acd314(106)=acd314(19)*acd314(41)
      acd314(107)=acd314(35)*acd314(6)
      acd314(107)=acd314(43)+acd314(107)
      acd314(107)=acd314(5)*acd314(107)
      acd314(108)=acd314(35)*acd314(4)
      acd314(108)=acd314(42)+acd314(108)
      acd314(108)=acd314(3)*acd314(108)
      acd314(109)=acd314(11)*acd314(40)
      acd314(98)=acd314(109)+acd314(108)+acd314(107)+acd314(106)+acd314(105)+ac&
      &d314(103)+acd314(102)+acd314(100)+acd314(93)+acd314(98)
      acd314(98)=acd314(1)*acd314(98)
      acd314(90)=acd314(35)*acd314(90)
      acd314(100)=acd314(85)*acd314(86)
      acd314(102)=acd314(15)*acd314(84)
      acd314(103)=acd314(45)*acd314(87)
      acd314(105)=acd314(30)*acd314(51)
      acd314(106)=acd314(56)*acd314(115)
      acd314(107)=acd314(35)*acd314(12)
      acd314(107)=acd314(83)+acd314(107)
      acd314(107)=acd314(3)*acd314(107)
      acd314(90)=acd314(107)+acd314(106)+acd314(105)+acd314(103)+acd314(100)+ac&
      &d314(102)+acd314(90)
      acd314(90)=acd314(11)*acd314(90)
      acd314(94)=-acd314(35)*acd314(94)
      acd314(100)=acd314(45)*acd314(89)
      acd314(102)=acd314(30)*acd314(52)
      acd314(103)=-acd314(23)*acd314(84)
      acd314(105)=acd314(57)*acd314(115)
      acd314(94)=acd314(94)+acd314(105)+acd314(103)+acd314(100)+acd314(102)
      acd314(94)=acd314(19)*acd314(94)
      acd314(97)=-acd314(35)*acd314(97)
      acd314(100)=acd314(30)*acd314(53)
      acd314(102)=acd314(58)*acd314(115)
      acd314(97)=acd314(100)+acd314(102)+acd314(97)
      acd314(97)=acd314(5)*acd314(97)
      acd314(100)=-acd314(42)*acd314(96)
      acd314(99)=-acd314(35)*acd314(99)
      acd314(102)=acd314(35)*acd314(20)
      acd314(102)=acd314(88)+acd314(102)
      acd314(102)=acd314(19)*acd314(102)
      acd314(99)=acd314(102)+acd314(99)+acd314(100)
      acd314(99)=acd314(3)*acd314(99)
      acd314(100)=acd314(115)*acd314(48)
      acd314(93)=acd314(100)-acd314(93)
      acd314(93)=acd314(93)*acd314(96)
      acd314(96)=acd314(26)*acd314(60)
      acd314(100)=acd314(23)*acd314(59)
      acd314(96)=acd314(96)+acd314(100)
      acd314(96)=acd314(96)*acd314(115)
      acd314(100)=-acd314(101)*acd314(104)
      acd314(95)=acd314(26)*acd314(27)*acd314(95)
      acd314(101)=acd314(23)*acd314(30)*acd314(54)
      acd314(90)=acd314(92)+acd314(98)+acd314(90)+acd314(99)+acd314(97)+acd314(&
      &94)+acd314(100)+acd314(96)+acd314(95)+acd314(101)+acd314(93)
      brack(ninjaidxt1mu0)=acd314(91)
      brack(ninjaidxt0mu0)=acd314(90)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d314h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd314h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d314h3l131
