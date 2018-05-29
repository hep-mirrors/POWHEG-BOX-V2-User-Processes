module     p0_dbard_epnemumnmubarg_d587h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d587h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd587h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd587
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd587(1)=dotproduct(ninjaE3,spvak1k2)
      acd587(2)=dotproduct(ninjaE3,spvak2k7)
      acd587(3)=dotproduct(ninjaE3,spvak5k6)
      acd587(4)=abb587(15)
      acd587(5)=dotproduct(ninjaE3,spvak4k2)
      acd587(6)=abb587(25)
      acd587(7)=acd587(4)*acd587(1)
      acd587(8)=acd587(6)*acd587(5)
      acd587(7)=acd587(7)+acd587(8)
      acd587(7)=acd587(7)*acd587(3)*acd587(2)
      brack(ninjaidxt2mu0)=acd587(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd587h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(88) :: acd587
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd587(1)=dotproduct(k2,ninjaE3)
      acd587(2)=abb587(18)
      acd587(3)=dotproduct(ninjaE3,spvak2k7)
      acd587(4)=dotproduct(ninjaE3,spvak5k6)
      acd587(5)=dotproduct(ninjaE4,spvak1k2)
      acd587(6)=abb587(15)
      acd587(7)=dotproduct(ninjaE4,spvak4k2)
      acd587(8)=abb587(25)
      acd587(9)=dotproduct(ninjaE3,spvak1k2)
      acd587(10)=dotproduct(ninjaE4,spvak5k6)
      acd587(11)=dotproduct(ninjaE3,spvak4k2)
      acd587(12)=abb587(7)
      acd587(13)=dotproduct(ninjaE3,spvak1k7)
      acd587(14)=abb587(22)
      acd587(15)=dotproduct(ninjaE4,spvak2k7)
      acd587(16)=dotproduct(ninjaE3,spvak5k2)
      acd587(17)=abb587(19)
      acd587(18)=dotproduct(ninjaE3,spvak4k7)
      acd587(19)=abb587(27)
      acd587(20)=dotproduct(k5,ninjaE3)
      acd587(21)=abb587(11)
      acd587(22)=dotproduct(k6,ninjaE3)
      acd587(23)=dotproduct(ninjaA,ninjaE3)
      acd587(24)=abb587(9)
      acd587(25)=abb587(8)
      acd587(26)=abb587(17)
      acd587(27)=abb587(24)
      acd587(28)=dotproduct(ninjaA,spvak2k7)
      acd587(29)=dotproduct(ninjaA,spvak5k6)
      acd587(30)=dotproduct(ninjaA,spvak1k2)
      acd587(31)=dotproduct(ninjaA,spvak4k2)
      acd587(32)=dotproduct(ninjaE3,spvak1k6)
      acd587(33)=abb587(34)
      acd587(34)=dotproduct(ninjaE3,spvak4k6)
      acd587(35)=abb587(35)
      acd587(36)=abb587(14)
      acd587(37)=abb587(16)
      acd587(38)=dotproduct(ninjaE3,spvak6k2)
      acd587(39)=dotproduct(ninjaE3,spvak1k5)
      acd587(40)=abb587(28)
      acd587(41)=abb587(29)
      acd587(42)=abb587(36)
      acd587(43)=abb587(32)
      acd587(44)=dotproduct(ninjaE3,spvak4k5)
      acd587(45)=abb587(31)
      acd587(46)=dotproduct(k2,ninjaA)
      acd587(47)=dotproduct(k5,ninjaA)
      acd587(48)=dotproduct(k6,ninjaA)
      acd587(49)=dotproduct(ninjaA,ninjaA)
      acd587(50)=dotproduct(ninjaA,spvak1k7)
      acd587(51)=dotproduct(ninjaA,spvak5k2)
      acd587(52)=dotproduct(ninjaA,spvak4k7)
      acd587(53)=abb587(13)
      acd587(54)=dotproduct(ninjaA,spvak6k2)
      acd587(55)=dotproduct(ninjaA,spvak1k5)
      acd587(56)=dotproduct(ninjaA,spvak1k6)
      acd587(57)=dotproduct(ninjaA,spvak4k6)
      acd587(58)=dotproduct(ninjaA,spvak4k5)
      acd587(59)=abb587(21)
      acd587(60)=abb587(10)
      acd587(61)=abb587(12)
      acd587(62)=abb587(20)
      acd587(63)=abb587(23)
      acd587(64)=abb587(26)
      acd587(65)=abb587(30)
      acd587(66)=abb587(33)
      acd587(67)=acd587(8)*acd587(11)
      acd587(68)=acd587(6)*acd587(9)
      acd587(67)=acd587(67)+acd587(68)
      acd587(68)=acd587(15)*acd587(67)
      acd587(69)=acd587(6)*acd587(5)
      acd587(70)=acd587(8)*acd587(7)
      acd587(69)=acd587(69)+acd587(70)
      acd587(70)=acd587(3)*acd587(69)
      acd587(68)=acd587(70)+acd587(68)
      acd587(68)=acd587(4)*acd587(68)
      acd587(70)=acd587(67)*acd587(10)
      acd587(70)=acd587(70)+acd587(12)
      acd587(71)=acd587(3)*acd587(70)
      acd587(72)=acd587(1)*acd587(2)
      acd587(73)=acd587(18)*acd587(19)
      acd587(74)=acd587(16)*acd587(17)
      acd587(75)=acd587(13)*acd587(14)
      acd587(68)=acd587(68)+acd587(71)+acd587(75)+acd587(74)+acd587(72)+acd587(&
      &73)
      acd587(71)=acd587(67)*acd587(28)
      acd587(73)=acd587(44)*acd587(45)
      acd587(74)=acd587(39)*acd587(40)
      acd587(75)=acd587(34)*acd587(43)
      acd587(76)=acd587(32)*acd587(42)
      acd587(77)=acd587(26)*acd587(38)
      acd587(78)=acd587(1)*acd587(24)
      acd587(79)=acd587(18)*acd587(41)
      acd587(80)=acd587(16)*acd587(37)
      acd587(81)=acd587(13)*acd587(36)
      acd587(71)=acd587(75)+acd587(76)-acd587(77)+acd587(71)+acd587(78)+acd587(&
      &79)+acd587(80)+acd587(81)+acd587(73)+acd587(74)
      acd587(73)=acd587(8)*acd587(31)
      acd587(74)=acd587(6)*acd587(30)
      acd587(73)=acd587(73)+acd587(74)
      acd587(74)=acd587(3)*acd587(73)
      acd587(74)=acd587(74)+acd587(71)
      acd587(74)=acd587(4)*acd587(74)
      acd587(75)=acd587(34)*acd587(35)
      acd587(76)=acd587(32)*acd587(33)
      acd587(75)=acd587(75)+acd587(76)
      acd587(67)=acd587(29)*acd587(67)
      acd587(76)=2.0_ki*acd587(23)
      acd587(77)=acd587(12)*acd587(76)
      acd587(67)=acd587(67)+acd587(77)+acd587(75)
      acd587(67)=acd587(3)*acd587(67)
      acd587(77)=acd587(76)*acd587(72)
      acd587(78)=acd587(20)+acd587(22)
      acd587(79)=-acd587(27)*acd587(78)
      acd587(80)=acd587(19)*acd587(76)
      acd587(79)=acd587(80)+acd587(79)
      acd587(79)=acd587(18)*acd587(79)
      acd587(80)=acd587(78)*acd587(26)
      acd587(81)=acd587(17)*acd587(76)
      acd587(81)=acd587(80)+acd587(81)
      acd587(81)=acd587(16)*acd587(81)
      acd587(82)=-acd587(25)*acd587(78)
      acd587(83)=acd587(14)*acd587(76)
      acd587(82)=acd587(83)+acd587(82)
      acd587(82)=acd587(13)*acd587(82)
      acd587(83)=-acd587(1)*acd587(21)*acd587(78)
      acd587(67)=acd587(74)+acd587(67)+acd587(82)+acd587(81)+acd587(79)+acd587(&
      &83)+acd587(77)
      acd587(74)=acd587(28)*acd587(31)
      acd587(77)=ninjaP*acd587(15)
      acd587(79)=acd587(11)*acd587(77)
      acd587(74)=acd587(74)+acd587(79)
      acd587(74)=acd587(8)*acd587(74)
      acd587(79)=acd587(28)*acd587(30)
      acd587(77)=acd587(9)*acd587(77)
      acd587(77)=acd587(79)+acd587(77)
      acd587(77)=acd587(6)*acd587(77)
      acd587(69)=acd587(3)*ninjaP*acd587(69)
      acd587(79)=acd587(45)*acd587(58)
      acd587(81)=acd587(43)*acd587(57)
      acd587(82)=acd587(42)*acd587(56)
      acd587(83)=acd587(40)*acd587(55)
      acd587(84)=acd587(52)*acd587(41)
      acd587(85)=acd587(51)*acd587(37)
      acd587(86)=acd587(50)*acd587(36)
      acd587(87)=acd587(46)*acd587(24)
      acd587(88)=-acd587(26)*acd587(54)
      acd587(69)=acd587(69)+acd587(77)+acd587(74)+acd587(88)+acd587(87)+acd587(&
      &86)+acd587(85)+acd587(84)+acd587(83)+acd587(82)+acd587(79)+acd587(81)
      acd587(69)=acd587(4)*acd587(69)
      acd587(71)=acd587(29)*acd587(71)
      acd587(74)=acd587(19)*acd587(52)
      acd587(77)=acd587(17)*acd587(51)
      acd587(79)=acd587(14)*acd587(50)
      acd587(81)=acd587(2)*acd587(46)
      acd587(82)=acd587(28)*acd587(12)
      acd587(74)=acd587(82)+acd587(81)+acd587(79)+acd587(77)+acd587(53)+acd587(&
      &74)
      acd587(74)=acd587(74)*acd587(76)
      acd587(70)=ninjaP*acd587(70)
      acd587(73)=acd587(29)*acd587(73)
      acd587(76)=acd587(35)*acd587(57)
      acd587(77)=acd587(33)*acd587(56)
      acd587(79)=acd587(12)*acd587(49)
      acd587(70)=acd587(73)+acd587(79)+acd587(76)+acd587(77)+acd587(70)
      acd587(70)=acd587(3)*acd587(70)
      acd587(73)=acd587(27)*acd587(52)
      acd587(76)=acd587(25)*acd587(50)
      acd587(77)=acd587(21)*acd587(46)
      acd587(73)=acd587(77)+acd587(73)+acd587(76)
      acd587(73)=-acd587(73)*acd587(78)
      acd587(75)=acd587(28)*acd587(75)
      acd587(76)=acd587(2)*acd587(49)
      acd587(77)=acd587(47)+acd587(48)
      acd587(78)=-acd587(21)*acd587(77)
      acd587(76)=acd587(76)+acd587(78)
      acd587(76)=acd587(1)*acd587(76)
      acd587(78)=ninjaP+acd587(49)
      acd587(79)=acd587(19)*acd587(78)
      acd587(81)=-acd587(27)*acd587(77)
      acd587(79)=acd587(81)+acd587(63)+acd587(79)
      acd587(79)=acd587(18)*acd587(79)
      acd587(81)=acd587(17)*acd587(78)
      acd587(82)=acd587(26)*acd587(77)
      acd587(81)=acd587(82)+acd587(60)+acd587(81)
      acd587(81)=acd587(16)*acd587(81)
      acd587(78)=acd587(14)*acd587(78)
      acd587(77)=-acd587(25)*acd587(77)
      acd587(77)=acd587(77)+acd587(59)+acd587(78)
      acd587(77)=acd587(13)*acd587(77)
      acd587(78)=acd587(44)*acd587(66)
      acd587(82)=acd587(39)*acd587(62)
      acd587(83)=acd587(38)*acd587(61)
      acd587(84)=acd587(34)*acd587(65)
      acd587(85)=acd587(32)*acd587(64)
      acd587(80)=acd587(51)*acd587(80)
      acd587(72)=ninjaP*acd587(72)
      acd587(69)=acd587(69)+acd587(70)+acd587(71)+acd587(77)+acd587(81)+acd587(&
      &79)+acd587(74)+acd587(72)+acd587(76)+acd587(80)+acd587(75)+acd587(85)+ac&
      &d587(84)+acd587(83)+acd587(78)+acd587(82)+acd587(73)
      brack(ninjaidxt1mu0)=acd587(67)
      brack(ninjaidxt0mu0)=acd587(69)
      brack(ninjaidxt0mu2)=acd587(68)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d587h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd587h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d587h1l131
