module     p0_dbaru_epnebbbarg_d312h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d312h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd312
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(114) :: acd312
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd312(1)=dotproduct(k2,ninjaE3)
      acd312(2)=dotproduct(ninjaE3,spvak2k7)
      acd312(3)=dotproduct(ninjaE3,spvak2l5)
      acd312(4)=abb312(143)
      acd312(5)=dotproduct(ninjaE3,spvak1l5)
      acd312(6)=abb312(60)
      acd312(7)=dotproduct(k3,ninjaE3)
      acd312(8)=dotproduct(ninjaE3,spvak1l6)
      acd312(9)=abb312(25)
      acd312(10)=abb312(51)
      acd312(11)=dotproduct(k4,ninjaE3)
      acd312(12)=dotproduct(ninjaE3,spvak4k3)
      acd312(13)=abb312(29)
      acd312(14)=abb312(144)
      acd312(15)=abb312(61)
      acd312(16)=dotproduct(ninjaE3,spvak4k2)
      acd312(17)=abb312(33)
      acd312(18)=dotproduct(ninjaE3,spvak2k3)
      acd312(19)=abb312(21)
      acd312(20)=abb312(37)
      acd312(21)=abb312(62)
      acd312(22)=dotproduct(ninjaE3,spvak1k3)
      acd312(23)=abb312(65)
      acd312(24)=dotproduct(ninjaE3,spvak2l6)
      acd312(25)=dotproduct(ninjaE3,spvak1k2)
      acd312(26)=abb312(59)
      acd312(27)=abb312(34)
      acd312(28)=dotproduct(k1,ninjaE3)
      acd312(29)=abb312(124)
      acd312(30)=dotproduct(k2,ninjaA)
      acd312(31)=abb312(118)
      acd312(32)=abb312(126)
      acd312(33)=dotproduct(l5,ninjaE3)
      acd312(34)=abb312(123)
      acd312(35)=dotproduct(k7,ninjaE3)
      acd312(36)=dotproduct(ninjaA,ninjaE3)
      acd312(37)=abb312(130)
      acd312(38)=dotproduct(ninjaA,spvak2k7)
      acd312(39)=dotproduct(ninjaA,spvak2l5)
      acd312(40)=dotproduct(ninjaA,spvak1l5)
      acd312(41)=dotproduct(ninjaE3,spvak1k7)
      acd312(42)=abb312(58)
      acd312(43)=abb312(56)
      acd312(44)=abb312(45)
      acd312(45)=abb312(54)
      acd312(46)=abb312(20)
      acd312(47)=abb312(133)
      acd312(48)=abb312(50)
      acd312(49)=abb312(32)
      acd312(50)=abb312(67)
      acd312(51)=dotproduct(ninjaE3,spvak2k1)
      acd312(52)=abb312(38)
      acd312(53)=dotproduct(k3,ninjaA)
      acd312(54)=abb312(110)
      acd312(55)=dotproduct(ninjaA,spvak1l6)
      acd312(56)=abb312(64)
      acd312(57)=abb312(69)
      acd312(58)=abb312(49)
      acd312(59)=dotproduct(k4,ninjaA)
      acd312(60)=abb312(153)
      acd312(61)=abb312(121)
      acd312(62)=abb312(53)
      acd312(63)=abb312(105)
      acd312(64)=abb312(41)
      acd312(65)=dotproduct(ninjaA,spvak4k3)
      acd312(66)=dotproduct(ninjaA,spvak4k2)
      acd312(67)=dotproduct(ninjaA,spvak1k3)
      acd312(68)=dotproduct(ninjaA,spvak2k3)
      acd312(69)=dotproduct(ninjaA,spvak1k2)
      acd312(70)=dotproduct(ninjaA,spvak2l6)
      acd312(71)=abb312(11)
      acd312(72)=abb312(24)
      acd312(73)=abb312(27)
      acd312(74)=abb312(31)
      acd312(75)=abb312(139)
      acd312(76)=abb312(47)
      acd312(77)=abb312(112)
      acd312(78)=abb312(39)
      acd312(79)=abb312(12)
      acd312(80)=abb312(13)
      acd312(81)=abb312(35)
      acd312(82)=abb312(26)
      acd312(83)=abb312(86)
      acd312(84)=abb312(55)
      acd312(85)=abb312(44)
      acd312(86)=abb312(48)
      acd312(87)=abb312(17)
      acd312(88)=abb312(16)
      acd312(89)=abb312(42)
      acd312(90)=abb312(18)
      acd312(91)=abb312(117)
      acd312(92)=abb312(14)
      acd312(93)=abb312(57)
      acd312(94)=abb312(19)
      acd312(95)=acd312(7)+acd312(11)
      acd312(96)=acd312(4)*acd312(95)
      acd312(97)=acd312(25)*acd312(26)
      acd312(98)=acd312(22)*acd312(23)
      acd312(99)=acd312(16)*acd312(20)
      acd312(100)=acd312(12)*acd312(14)
      acd312(96)=acd312(97)+acd312(98)+acd312(96)+acd312(99)+acd312(100)
      acd312(97)=-acd312(1)*acd312(4)
      acd312(97)=acd312(97)+acd312(96)
      acd312(97)=acd312(3)*acd312(97)
      acd312(98)=-acd312(9)*acd312(95)
      acd312(99)=acd312(18)*acd312(19)
      acd312(100)=acd312(16)*acd312(17)
      acd312(101)=acd312(12)*acd312(13)
      acd312(98)=-acd312(99)+acd312(100)+acd312(101)+acd312(98)
      acd312(99)=acd312(8)*acd312(98)
      acd312(100)=-acd312(10)*acd312(95)
      acd312(101)=acd312(18)*acd312(23)
      acd312(102)=acd312(16)*acd312(21)
      acd312(103)=acd312(12)*acd312(15)
      acd312(100)=-acd312(101)+acd312(102)+acd312(103)+acd312(100)
      acd312(101)=acd312(1)*acd312(6)
      acd312(101)=acd312(101)+acd312(100)
      acd312(101)=acd312(5)*acd312(101)
      acd312(102)=acd312(25)*acd312(27)
      acd312(103)=acd312(22)*acd312(19)
      acd312(102)=acd312(102)+acd312(103)
      acd312(103)=acd312(24)*acd312(102)
      acd312(97)=acd312(97)+acd312(101)+acd312(103)+acd312(99)
      acd312(97)=acd312(2)*acd312(97)
      acd312(99)=acd312(21)*acd312(66)
      acd312(101)=acd312(15)*acd312(65)
      acd312(103)=acd312(6)*acd312(30)
      acd312(104)=-acd312(23)*acd312(68)
      acd312(105)=acd312(53)+acd312(59)
      acd312(106)=-acd312(10)*acd312(105)
      acd312(99)=acd312(106)+acd312(104)+acd312(103)+acd312(101)+acd312(88)+acd&
      &312(99)
      acd312(99)=acd312(5)*acd312(99)
      acd312(101)=acd312(26)*acd312(69)
      acd312(103)=acd312(20)*acd312(66)
      acd312(104)=acd312(14)*acd312(65)
      acd312(106)=acd312(23)*acd312(67)
      acd312(107)=-acd312(30)+acd312(105)
      acd312(107)=acd312(4)*acd312(107)
      acd312(101)=acd312(107)+acd312(106)+acd312(104)+acd312(101)+acd312(103)
      acd312(101)=acd312(3)*acd312(101)
      acd312(103)=acd312(17)*acd312(66)
      acd312(104)=acd312(13)*acd312(65)
      acd312(106)=-acd312(19)*acd312(68)
      acd312(105)=-acd312(9)*acd312(105)
      acd312(103)=acd312(105)+acd312(106)+acd312(104)+acd312(80)+acd312(103)
      acd312(103)=acd312(8)*acd312(103)
      acd312(104)=acd312(10)*acd312(40)
      acd312(105)=acd312(9)*acd312(55)
      acd312(106)=acd312(4)*acd312(39)
      acd312(104)=-acd312(105)-acd312(104)+acd312(106)-acd312(57)
      acd312(104)=acd312(104)*acd312(95)
      acd312(105)=acd312(55)*acd312(17)
      acd312(107)=acd312(40)*acd312(21)
      acd312(108)=acd312(39)*acd312(20)
      acd312(105)=acd312(108)+acd312(107)+acd312(82)+acd312(105)
      acd312(105)=acd312(16)*acd312(105)
      acd312(107)=acd312(55)*acd312(13)
      acd312(108)=acd312(40)*acd312(15)
      acd312(109)=acd312(39)*acd312(14)
      acd312(107)=acd312(109)+acd312(108)+acd312(74)+acd312(107)
      acd312(107)=acd312(12)*acd312(107)
      acd312(108)=acd312(27)*acd312(70)
      acd312(109)=acd312(39)*acd312(26)
      acd312(108)=acd312(109)+acd312(90)+acd312(108)
      acd312(108)=acd312(25)*acd312(108)
      acd312(109)=acd312(23)*acd312(39)
      acd312(110)=acd312(19)*acd312(70)
      acd312(109)=acd312(110)+acd312(87)+acd312(109)
      acd312(109)=acd312(22)*acd312(109)
      acd312(110)=-acd312(23)*acd312(40)
      acd312(111)=-acd312(19)*acd312(55)
      acd312(110)=acd312(111)+acd312(89)+acd312(110)
      acd312(110)=acd312(18)*acd312(110)
      acd312(111)=acd312(27)*acd312(69)
      acd312(112)=acd312(19)*acd312(67)
      acd312(111)=acd312(112)+acd312(91)+acd312(111)
      acd312(111)=acd312(24)*acd312(111)
      acd312(112)=acd312(40)*acd312(6)
      acd312(106)=-acd312(106)+acd312(46)+acd312(112)
      acd312(106)=acd312(1)*acd312(106)
      acd312(112)=acd312(28)*acd312(29)
      acd312(113)=2.0_ki*acd312(36)
      acd312(114)=acd312(63)*acd312(113)
      acd312(99)=acd312(101)+acd312(99)+acd312(106)+acd312(103)+acd312(107)+acd&
      &312(105)+acd312(111)+acd312(110)+acd312(109)+acd312(108)+acd312(112)+acd&
      &312(114)+acd312(104)
      acd312(99)=acd312(2)*acd312(99)
      acd312(101)=acd312(51)*acd312(52)
      acd312(103)=acd312(41)*acd312(42)
      acd312(104)=acd312(24)*acd312(50)
      acd312(101)=acd312(104)+acd312(101)-acd312(103)
      acd312(103)=acd312(33)-acd312(35)
      acd312(104)=-acd312(34)*acd312(103)
      acd312(105)=-acd312(32)*acd312(95)
      acd312(106)=acd312(37)*acd312(113)
      acd312(107)=acd312(18)*acd312(49)
      acd312(108)=acd312(16)*acd312(45)
      acd312(109)=acd312(12)*acd312(43)
      acd312(110)=acd312(8)*acd312(44)
      acd312(111)=acd312(1)*acd312(31)
      acd312(104)=acd312(111)+acd312(110)+acd312(109)+acd312(108)+acd312(107)+a&
      &cd312(106)+acd312(105)+acd312(104)-acd312(101)
      acd312(104)=acd312(1)*acd312(104)
      acd312(96)=acd312(38)*acd312(96)
      acd312(105)=acd312(47)*acd312(95)
      acd312(106)=acd312(25)*acd312(93)
      acd312(107)=-acd312(22)*acd312(92)
      acd312(108)=acd312(16)*acd312(83)
      acd312(109)=acd312(12)*acd312(75)
      acd312(110)=-acd312(38)*acd312(4)
      acd312(110)=-acd312(47)+acd312(110)
      acd312(110)=acd312(1)*acd312(110)
      acd312(96)=acd312(110)+acd312(96)+acd312(109)+acd312(108)+acd312(106)+acd&
      &312(107)+acd312(105)
      acd312(96)=acd312(3)*acd312(96)
      acd312(100)=acd312(38)*acd312(100)
      acd312(105)=acd312(58)*acd312(95)
      acd312(106)=acd312(18)*acd312(92)
      acd312(107)=acd312(16)*acd312(84)
      acd312(108)=acd312(12)*acd312(76)
      acd312(109)=acd312(38)*acd312(6)
      acd312(109)=acd312(48)+acd312(109)
      acd312(109)=acd312(1)*acd312(109)
      acd312(100)=acd312(109)+acd312(100)+acd312(108)+acd312(106)+acd312(107)+a&
      &cd312(105)
      acd312(100)=acd312(5)*acd312(100)
      acd312(98)=acd312(38)*acd312(98)
      acd312(105)=-acd312(56)*acd312(95)
      acd312(106)=-acd312(18)*acd312(81)
      acd312(107)=acd312(16)*acd312(79)
      acd312(108)=acd312(12)*acd312(73)
      acd312(98)=acd312(98)+acd312(108)+acd312(106)+acd312(107)+acd312(105)
      acd312(98)=acd312(8)*acd312(98)
      acd312(105)=acd312(51)*acd312(86)
      acd312(106)=acd312(41)*acd312(72)
      acd312(107)=acd312(62)*acd312(113)
      acd312(108)=acd312(24)*acd312(85)
      acd312(105)=acd312(108)+acd312(107)+acd312(105)+acd312(106)
      acd312(105)=acd312(16)*acd312(105)
      acd312(106)=acd312(51)*acd312(78)
      acd312(107)=acd312(41)*acd312(71)
      acd312(108)=acd312(61)*acd312(113)
      acd312(109)=acd312(24)*acd312(77)
      acd312(106)=acd312(109)+acd312(108)+acd312(106)+acd312(107)
      acd312(106)=acd312(12)*acd312(106)
      acd312(107)=acd312(113)*acd312(54)
      acd312(101)=acd312(101)-acd312(107)
      acd312(95)=acd312(101)*acd312(95)
      acd312(101)=acd312(38)*acd312(102)
      acd312(102)=acd312(25)*acd312(94)
      acd312(107)=acd312(22)*acd312(81)
      acd312(101)=acd312(101)+acd312(102)+acd312(107)
      acd312(101)=acd312(24)*acd312(101)
      acd312(102)=acd312(60)*acd312(103)
      acd312(103)=acd312(64)*acd312(113)
      acd312(102)=acd312(103)+acd312(102)
      acd312(102)=acd312(18)*acd312(102)
      acd312(95)=acd312(99)+acd312(96)+acd312(100)+acd312(104)+acd312(98)+acd31&
      &2(106)+acd312(105)+acd312(102)+acd312(101)+acd312(95)
      brack(ninjaidxt1mu0)=acd312(97)
      brack(ninjaidxt0mu0)=acd312(95)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d312h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k5
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
end module     p0_dbaru_epnebbbarg_d312h3l131
