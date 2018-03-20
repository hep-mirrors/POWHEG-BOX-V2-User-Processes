module     p0_gg_hhg_d15h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d15h0l131.f90
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
      use p0_gg_hhg_abbrevd15h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd15
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd15(1)=dotproduct(k2,ninjaE3)
      acd15(2)=dotproduct(ninjaA,ninjaE3)
      acd15(3)=dotproduct(ninjaE3,spvak2k5)
      acd15(4)=abb15(72)
      acd15(5)=dotproduct(ninjaE3,spvak1k2)
      acd15(6)=abb15(29)
      acd15(7)=dotproduct(ninjaE3,spvak1k5)
      acd15(8)=dotproduct(ninjaE3,spvak2k1)
      acd15(9)=abb15(61)
      acd15(10)=acd15(4)*acd15(1)
      acd15(11)=acd15(6)*acd15(5)
      acd15(10)=acd15(10)+acd15(11)
      acd15(10)=acd15(10)*acd15(3)
      acd15(11)=-acd15(9)*acd15(8)*acd15(7)
      acd15(10)=acd15(11)+acd15(10)
      acd15(10)=2.0_ki*acd15(2)*acd15(10)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd15(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(91) :: acd15
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd15(1)=dotproduct(k2,ninjaA)
      acd15(2)=dotproduct(ninjaE3,spvak2k5)
      acd15(3)=abb15(72)
      acd15(4)=dotproduct(k2,ninjaE3)
      acd15(5)=dotproduct(ninjaA,ninjaE3)
      acd15(6)=dotproduct(ninjaE4,spvak2k5)
      acd15(7)=dotproduct(ninjaA,ninjaE4)
      acd15(8)=dotproduct(ninjaA,spvak2k5)
      acd15(9)=abb15(26)
      acd15(10)=dotproduct(k2,ninjaE4)
      acd15(11)=dotproduct(ninjaE3,spvak1k5)
      acd15(12)=dotproduct(ninjaE4,spvak2k1)
      acd15(13)=abb15(61)
      acd15(14)=dotproduct(ninjaE3,spvak2k1)
      acd15(15)=dotproduct(ninjaE4,spvak1k5)
      acd15(16)=dotproduct(ninjaE4,spvak1k2)
      acd15(17)=abb15(29)
      acd15(18)=dotproduct(ninjaE3,spvak1k2)
      acd15(19)=abb15(16)
      acd15(20)=dotproduct(ninjaA,spvak1k5)
      acd15(21)=dotproduct(ninjaA,spvak2k1)
      acd15(22)=dotproduct(ninjaA,spvak1k2)
      acd15(23)=abb15(21)
      acd15(24)=abb15(18)
      acd15(25)=abb15(32)
      acd15(26)=abb15(66)
      acd15(27)=dotproduct(ninjaA,ninjaA)
      acd15(28)=dotproduct(ninjaE3,spval4k2)
      acd15(29)=abb15(30)
      acd15(30)=abb15(13)
      acd15(31)=abb15(70)
      acd15(32)=dotproduct(ninjaE3,spval4l3)
      acd15(33)=abb15(25)
      acd15(34)=dotproduct(ninjaE3,spvak2l3)
      acd15(35)=abb15(39)
      acd15(36)=abb15(15)
      acd15(37)=dotproduct(ninjaE3,spvak2l4)
      acd15(38)=abb15(12)
      acd15(39)=abb15(33)
      acd15(40)=dotproduct(ninjaE3,spval3l4)
      acd15(41)=abb15(24)
      acd15(42)=abb15(37)
      acd15(43)=abb15(35)
      acd15(44)=abb15(69)
      acd15(45)=abb15(28)
      acd15(46)=dotproduct(ninjaA,spval4k2)
      acd15(47)=dotproduct(ninjaA,spval4l3)
      acd15(48)=dotproduct(ninjaA,spvak2l3)
      acd15(49)=abb15(60)
      acd15(50)=abb15(20)
      acd15(51)=dotproduct(ninjaA,spvak2l4)
      acd15(52)=dotproduct(ninjaA,spval3l4)
      acd15(53)=abb15(11)
      acd15(54)=abb15(23)
      acd15(55)=abb15(58)
      acd15(56)=abb15(22)
      acd15(57)=dotproduct(ninjaE3,spvak1l4)
      acd15(58)=abb15(14)
      acd15(59)=abb15(19)
      acd15(60)=abb15(47)
      acd15(61)=abb15(31)
      acd15(62)=abb15(45)
      acd15(63)=dotproduct(ninjaE3,spval4k1)
      acd15(64)=abb15(48)
      acd15(65)=dotproduct(ninjaE3,spval3k5)
      acd15(66)=abb15(65)
      acd15(67)=acd15(4)*acd15(3)
      acd15(68)=acd15(17)*acd15(18)
      acd15(69)=acd15(67)+acd15(68)
      acd15(70)=acd15(6)*acd15(69)
      acd15(71)=acd15(17)*acd15(16)
      acd15(72)=acd15(3)*acd15(10)
      acd15(71)=acd15(71)+acd15(72)
      acd15(71)=acd15(71)*acd15(2)
      acd15(72)=acd15(15)*acd15(14)*acd15(13)
      acd15(73)=acd15(11)*acd15(13)
      acd15(74)=acd15(73)*acd15(12)
      acd15(75)=2.0_ki*acd15(19)
      acd15(70)=-acd15(72)+acd15(71)+acd15(75)-acd15(74)+acd15(70)
      acd15(71)=2.0_ki*acd15(5)
      acd15(72)=acd15(70)*acd15(71)
      acd15(74)=2.0_ki*acd15(7)
      acd15(67)=acd15(67)*acd15(74)
      acd15(76)=acd15(74)*acd15(18)
      acd15(76)=acd15(76)+acd15(22)
      acd15(76)=acd15(76)*acd15(17)
      acd15(77)=acd15(3)*acd15(1)
      acd15(77)=acd15(77)+acd15(25)
      acd15(67)=acd15(67)+acd15(76)+acd15(77)
      acd15(76)=acd15(2)*acd15(67)
      acd15(78)=acd15(13)*acd15(21)
      acd15(78)=acd15(78)-acd15(23)
      acd15(79)=acd15(78)*acd15(11)
      acd15(80)=acd15(68)*acd15(8)
      acd15(79)=acd15(79)-acd15(80)
      acd15(81)=acd15(3)*acd15(8)
      acd15(81)=acd15(81)+acd15(9)
      acd15(82)=acd15(81)*acd15(4)
      acd15(82)=acd15(82)-acd15(79)
      acd15(74)=acd15(74)*acd15(73)
      acd15(83)=acd15(13)*acd15(20)
      acd15(83)=acd15(83)-acd15(24)
      acd15(74)=acd15(74)+acd15(83)
      acd15(84)=-acd15(14)*acd15(74)
      acd15(72)=acd15(72)+acd15(76)+acd15(84)+acd15(82)
      acd15(76)=acd15(17)*acd15(22)
      acd15(77)=acd15(77)+acd15(76)
      acd15(84)=acd15(2)*acd15(77)
      acd15(85)=-acd15(14)*acd15(83)
      acd15(86)=acd15(19)*acd15(71)
      acd15(82)=acd15(86)+acd15(84)+acd15(85)+acd15(82)
      acd15(82)=acd15(82)*acd15(71)
      acd15(84)=acd15(34)*acd15(43)
      acd15(85)=acd15(32)*acd15(42)
      acd15(86)=acd15(28)*acd15(36)
      acd15(84)=acd15(86)+acd15(84)+acd15(85)
      acd15(85)=-acd15(13)*acd15(27)
      acd15(85)=acd15(39)+acd15(85)
      acd15(85)=acd15(11)*acd15(85)
      acd15(86)=-ninjaP*acd15(73)
      acd15(85)=acd15(86)+acd15(85)+acd15(84)
      acd15(85)=acd15(14)*acd15(85)
      acd15(86)=acd15(34)*acd15(35)
      acd15(87)=acd15(32)*acd15(33)
      acd15(88)=acd15(28)*acd15(29)
      acd15(86)=acd15(86)+acd15(87)+acd15(88)
      acd15(87)=acd15(14)*acd15(30)
      acd15(88)=acd15(4)*acd15(26)
      acd15(87)=acd15(88)+acd15(87)+acd15(86)
      acd15(87)=acd15(4)*acd15(87)
      acd15(88)=acd15(40)*acd15(44)
      acd15(89)=acd15(18)*acd15(45)
      acd15(88)=acd15(88)+acd15(89)
      acd15(89)=ninjaP+acd15(27)
      acd15(68)=acd15(68)*acd15(89)
      acd15(90)=acd15(3)*acd15(89)
      acd15(90)=acd15(31)+acd15(90)
      acd15(90)=acd15(4)*acd15(90)
      acd15(68)=acd15(90)+acd15(68)+acd15(88)
      acd15(68)=acd15(2)*acd15(68)
      acd15(90)=acd15(37)*acd15(38)
      acd15(91)=acd15(40)*acd15(41)
      acd15(90)=acd15(90)+acd15(91)
      acd15(91)=acd15(11)*acd15(90)
      acd15(68)=acd15(82)+acd15(68)+acd15(87)+acd15(91)+acd15(85)
      acd15(69)=acd15(2)*acd15(69)
      acd15(73)=-acd15(14)*acd15(73)
      acd15(69)=acd15(73)+acd15(69)
      acd15(73)=-ninjaP*acd15(74)
      acd15(74)=-acd15(27)*acd15(83)
      acd15(82)=acd15(43)*acd15(48)
      acd15(83)=acd15(42)*acd15(47)
      acd15(85)=acd15(36)*acd15(46)
      acd15(87)=acd15(20)*acd15(39)
      acd15(91)=acd15(1)*acd15(30)
      acd15(73)=acd15(73)+acd15(91)+acd15(87)+acd15(85)+acd15(83)+acd15(56)+acd&
      &15(82)+acd15(74)
      acd15(73)=acd15(14)*acd15(73)
      acd15(74)=acd15(81)*acd15(89)
      acd15(82)=acd15(35)*acd15(48)
      acd15(83)=acd15(33)*acd15(47)
      acd15(85)=acd15(29)*acd15(46)
      acd15(87)=acd15(21)*acd15(30)
      acd15(89)=acd15(1)*acd15(26)
      acd15(91)=acd15(8)*acd15(31)
      acd15(74)=acd15(91)+2.0_ki*acd15(89)+acd15(87)+acd15(85)+acd15(83)+acd15(&
      &49)+acd15(82)+acd15(74)
      acd15(74)=acd15(4)*acd15(74)
      acd15(70)=ninjaP*acd15(70)
      acd15(76)=acd15(76)+acd15(25)
      acd15(76)=acd15(8)*acd15(76)
      acd15(82)=-acd15(20)*acd15(78)
      acd15(81)=acd15(1)*acd15(81)
      acd15(83)=acd15(21)*acd15(24)
      acd15(75)=acd15(27)*acd15(75)
      acd15(70)=acd15(75)+acd15(83)+acd15(50)+acd15(70)+acd15(81)+acd15(82)+acd&
      &15(76)
      acd15(70)=acd15(70)*acd15(71)
      acd15(67)=ninjaP*acd15(67)
      acd15(71)=acd15(27)*acd15(77)
      acd15(75)=acd15(44)*acd15(52)
      acd15(76)=acd15(22)*acd15(45)
      acd15(77)=acd15(1)*acd15(31)
      acd15(67)=acd15(77)+acd15(76)+acd15(59)+acd15(75)+acd15(71)+acd15(67)
      acd15(67)=acd15(2)*acd15(67)
      acd15(71)=-acd15(27)*acd15(78)
      acd15(75)=acd15(41)*acd15(52)
      acd15(76)=acd15(38)*acd15(51)
      acd15(77)=acd15(21)*acd15(39)
      acd15(71)=acd15(77)+acd15(76)+acd15(54)+acd15(75)+acd15(71)
      acd15(71)=acd15(11)*acd15(71)
      acd15(75)=acd15(21)*acd15(84)
      acd15(76)=acd15(1)*acd15(86)
      acd15(77)=acd15(20)*acd15(90)
      acd15(78)=acd15(8)*acd15(88)
      acd15(79)=-ninjaP*acd15(79)
      acd15(81)=acd15(65)*acd15(66)
      acd15(82)=acd15(63)*acd15(64)
      acd15(83)=acd15(57)*acd15(58)
      acd15(84)=acd15(37)*acd15(55)
      acd15(85)=acd15(40)*acd15(60)
      acd15(86)=acd15(34)*acd15(62)
      acd15(87)=acd15(32)*acd15(61)
      acd15(88)=acd15(28)*acd15(53)
      acd15(80)=acd15(27)*acd15(80)
      acd15(67)=acd15(70)+acd15(67)+acd15(74)+acd15(73)+acd15(79)+acd15(71)+acd&
      &15(80)+acd15(78)+acd15(76)+acd15(75)+acd15(77)+acd15(88)+acd15(87)+acd15&
      &(86)+acd15(85)+acd15(84)+acd15(83)+acd15(81)+acd15(82)
      brack(ninjaidxt1mu0)=acd15(68)
      brack(ninjaidxt1mu2)=acd15(69)
      brack(ninjaidxt0mu0)=acd15(67)
      brack(ninjaidxt0mu2)=acd15(72)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d15h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd15h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d15h0l131
