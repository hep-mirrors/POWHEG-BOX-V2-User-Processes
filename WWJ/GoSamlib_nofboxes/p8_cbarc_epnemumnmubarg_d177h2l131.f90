module     p8_cbarc_epnemumnmubarg_d177h2l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity2d177h2l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd177h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd177(1)=dotproduct(k3,ninjaE3)
      acd177(2)=dotproduct(ninjaE3,spvak2k1)
      acd177(3)=abb177(23)
      acd177(4)=dotproduct(ninjaE3,spvak2k7)
      acd177(5)=abb177(96)
      acd177(6)=dotproduct(k4,ninjaE3)
      acd177(7)=dotproduct(k5,ninjaE3)
      acd177(8)=dotproduct(k6,ninjaE3)
      acd177(9)=dotproduct(ninjaE3,spvak4k6)
      acd177(10)=abb177(17)
      acd177(11)=dotproduct(ninjaE3,spvak5k6)
      acd177(12)=abb177(24)
      acd177(13)=dotproduct(ninjaE3,spvak5k3)
      acd177(14)=abb177(26)
      acd177(15)=dotproduct(ninjaE3,spvak4k3)
      acd177(16)=abb177(29)
      acd177(17)=abb177(134)
      acd177(18)=abb177(114)
      acd177(19)=abb177(131)
      acd177(20)=abb177(115)
      acd177(21)=acd177(15)*acd177(20)
      acd177(22)=acd177(13)*acd177(19)
      acd177(23)=acd177(11)*acd177(18)
      acd177(24)=acd177(9)*acd177(17)
      acd177(25)=-acd177(1)-acd177(6)+acd177(7)+acd177(8)
      acd177(26)=-acd177(5)*acd177(25)
      acd177(21)=acd177(26)+acd177(24)+acd177(23)+acd177(21)+acd177(22)
      acd177(21)=acd177(4)*acd177(21)
      acd177(22)=acd177(15)*acd177(16)
      acd177(23)=acd177(13)*acd177(14)
      acd177(24)=acd177(11)*acd177(12)
      acd177(26)=acd177(9)*acd177(10)
      acd177(25)=-acd177(3)*acd177(25)
      acd177(22)=acd177(25)+acd177(26)+acd177(24)+acd177(22)+acd177(23)
      acd177(22)=acd177(2)*acd177(22)
      acd177(21)=acd177(21)+acd177(22)
      brack(ninjaidxt2mu0)=acd177(21)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd177h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(89) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd177(1)=dotproduct(k3,ninjaE3)
      acd177(2)=dotproduct(ninjaE4,spvak2k1)
      acd177(3)=abb177(23)
      acd177(4)=dotproduct(ninjaE4,spvak2k7)
      acd177(5)=abb177(96)
      acd177(6)=dotproduct(k3,ninjaE4)
      acd177(7)=dotproduct(ninjaE3,spvak2k1)
      acd177(8)=dotproduct(ninjaE3,spvak2k7)
      acd177(9)=dotproduct(k4,ninjaE3)
      acd177(10)=dotproduct(k4,ninjaE4)
      acd177(11)=dotproduct(k5,ninjaE3)
      acd177(12)=dotproduct(k5,ninjaE4)
      acd177(13)=dotproduct(k6,ninjaE3)
      acd177(14)=dotproduct(k6,ninjaE4)
      acd177(15)=dotproduct(ninjaE4,spvak4k6)
      acd177(16)=abb177(17)
      acd177(17)=dotproduct(ninjaE4,spvak5k6)
      acd177(18)=abb177(24)
      acd177(19)=dotproduct(ninjaE4,spvak5k3)
      acd177(20)=abb177(26)
      acd177(21)=dotproduct(ninjaE4,spvak4k3)
      acd177(22)=abb177(29)
      acd177(23)=dotproduct(ninjaE3,spvak4k6)
      acd177(24)=abb177(134)
      acd177(25)=abb177(114)
      acd177(26)=abb177(131)
      acd177(27)=abb177(115)
      acd177(28)=dotproduct(ninjaE3,spvak5k6)
      acd177(29)=dotproduct(ninjaE3,spvak5k3)
      acd177(30)=dotproduct(ninjaE3,spvak4k3)
      acd177(31)=abb177(40)
      acd177(32)=dotproduct(k1,ninjaE3)
      acd177(33)=abb177(18)
      acd177(34)=dotproduct(k3,ninjaA)
      acd177(35)=dotproduct(ninjaA,spvak2k1)
      acd177(36)=dotproduct(ninjaA,spvak2k7)
      acd177(37)=dotproduct(k4,ninjaA)
      acd177(38)=dotproduct(k5,ninjaA)
      acd177(39)=dotproduct(k6,ninjaA)
      acd177(40)=dotproduct(k7,ninjaE3)
      acd177(41)=abb177(39)
      acd177(42)=dotproduct(ninjaA,ninjaE3)
      acd177(43)=dotproduct(ninjaA,spvak4k6)
      acd177(44)=dotproduct(ninjaA,spvak5k6)
      acd177(45)=dotproduct(ninjaA,spvak5k3)
      acd177(46)=dotproduct(ninjaA,spvak4k3)
      acd177(47)=dotproduct(ninjaE3,spvak1k7)
      acd177(48)=abb177(13)
      acd177(49)=abb177(15)
      acd177(50)=abb177(19)
      acd177(51)=dotproduct(ninjaE3,spvak2k3)
      acd177(52)=abb177(21)
      acd177(53)=dotproduct(ninjaE3,spvak2k4)
      acd177(54)=abb177(25)
      acd177(55)=dotproduct(ninjaE3,spvak2k6)
      acd177(56)=abb177(28)
      acd177(57)=dotproduct(ninjaE3,spvak7k1)
      acd177(58)=abb177(41)
      acd177(59)=dotproduct(ninjaE3,spvak2k5)
      acd177(60)=abb177(109)
      acd177(61)=dotproduct(k1,ninjaA)
      acd177(62)=dotproduct(k7,ninjaA)
      acd177(63)=dotproduct(ninjaA,ninjaA)
      acd177(64)=dotproduct(ninjaA,spvak1k7)
      acd177(65)=dotproduct(ninjaA,spvak2k3)
      acd177(66)=dotproduct(ninjaA,spvak2k4)
      acd177(67)=dotproduct(ninjaA,spvak2k6)
      acd177(68)=dotproduct(ninjaA,spvak7k1)
      acd177(69)=dotproduct(ninjaA,spvak2k5)
      acd177(70)=abb177(14)
      acd177(71)=acd177(27)*acd177(21)
      acd177(72)=acd177(26)*acd177(19)
      acd177(73)=acd177(25)*acd177(17)
      acd177(74)=acd177(24)*acd177(15)
      acd177(71)=acd177(71)+acd177(72)+acd177(73)+acd177(74)
      acd177(71)=acd177(71)*acd177(8)
      acd177(72)=acd177(22)*acd177(21)
      acd177(73)=acd177(20)*acd177(19)
      acd177(74)=acd177(18)*acd177(17)
      acd177(75)=acd177(16)*acd177(15)
      acd177(72)=acd177(72)+acd177(73)+acd177(74)+acd177(75)
      acd177(72)=acd177(72)*acd177(7)
      acd177(73)=acd177(22)*acd177(30)
      acd177(74)=acd177(20)*acd177(29)
      acd177(75)=acd177(18)*acd177(28)
      acd177(76)=acd177(16)*acd177(23)
      acd177(73)=acd177(76)+acd177(75)+acd177(73)+acd177(74)
      acd177(74)=acd177(73)*acd177(2)
      acd177(75)=acd177(27)*acd177(30)
      acd177(76)=acd177(26)*acd177(29)
      acd177(77)=acd177(25)*acd177(28)
      acd177(78)=acd177(24)*acd177(23)
      acd177(75)=acd177(75)+acd177(76)+acd177(77)+acd177(78)
      acd177(76)=acd177(75)*acd177(4)
      acd177(77)=-acd177(1)-acd177(9)+acd177(11)+acd177(13)
      acd177(78)=acd177(77)*acd177(4)
      acd177(79)=-acd177(14)-acd177(12)+acd177(6)+acd177(10)
      acd177(80)=acd177(79)*acd177(8)
      acd177(78)=acd177(78)-acd177(80)
      acd177(78)=acd177(78)*acd177(5)
      acd177(80)=acd177(77)*acd177(2)
      acd177(79)=acd177(79)*acd177(7)
      acd177(79)=acd177(80)-acd177(79)
      acd177(79)=acd177(79)*acd177(3)
      acd177(71)=-acd177(79)+acd177(71)+acd177(72)-acd177(78)+acd177(74)+acd177&
      &(76)+acd177(31)
      acd177(72)=acd177(36)*acd177(75)
      acd177(73)=acd177(35)*acd177(73)
      acd177(74)=acd177(27)*acd177(46)
      acd177(75)=acd177(26)*acd177(45)
      acd177(76)=acd177(25)*acd177(44)
      acd177(78)=acd177(24)*acd177(43)
      acd177(74)=acd177(74)+acd177(78)+acd177(50)+acd177(75)+acd177(76)
      acd177(75)=acd177(8)*acd177(74)
      acd177(76)=acd177(22)*acd177(46)
      acd177(78)=acd177(20)*acd177(45)
      acd177(79)=acd177(18)*acd177(44)
      acd177(80)=acd177(16)*acd177(43)
      acd177(76)=acd177(49)+acd177(76)+acd177(78)+acd177(79)+acd177(80)
      acd177(78)=acd177(7)*acd177(76)
      acd177(79)=-acd177(36)*acd177(77)
      acd177(80)=-acd177(34)-acd177(37)+acd177(38)+acd177(39)
      acd177(81)=-acd177(8)*acd177(80)
      acd177(79)=acd177(79)+acd177(81)
      acd177(79)=acd177(5)*acd177(79)
      acd177(77)=-acd177(35)*acd177(77)
      acd177(81)=-acd177(7)*acd177(80)
      acd177(77)=acd177(77)+acd177(81)
      acd177(77)=acd177(3)*acd177(77)
      acd177(81)=acd177(60)*acd177(59)
      acd177(82)=acd177(58)*acd177(57)
      acd177(83)=acd177(56)*acd177(55)
      acd177(84)=acd177(54)*acd177(53)
      acd177(85)=acd177(52)*acd177(51)
      acd177(86)=acd177(48)*acd177(47)
      acd177(87)=acd177(41)*acd177(40)
      acd177(88)=acd177(33)*acd177(32)
      acd177(89)=acd177(31)*acd177(42)
      acd177(72)=acd177(77)+acd177(79)+acd177(78)+acd177(75)+acd177(73)+acd177(&
      &72)+2.0_ki*acd177(89)+acd177(88)+acd177(87)+acd177(86)+acd177(85)+acd177&
      &(84)+acd177(83)+acd177(81)+acd177(82)
      acd177(73)=ninjaP*acd177(71)
      acd177(74)=acd177(36)*acd177(74)
      acd177(75)=acd177(35)*acd177(76)
      acd177(76)=-acd177(5)*acd177(36)
      acd177(77)=-acd177(3)*acd177(35)
      acd177(76)=acd177(77)+acd177(76)
      acd177(76)=acd177(80)*acd177(76)
      acd177(77)=acd177(60)*acd177(69)
      acd177(78)=acd177(58)*acd177(68)
      acd177(79)=acd177(56)*acd177(67)
      acd177(80)=acd177(54)*acd177(66)
      acd177(81)=acd177(52)*acd177(65)
      acd177(82)=acd177(48)*acd177(64)
      acd177(83)=acd177(41)*acd177(62)
      acd177(84)=acd177(33)*acd177(61)
      acd177(85)=acd177(31)*acd177(63)
      acd177(73)=acd177(73)+acd177(75)+acd177(74)+acd177(85)+acd177(84)+acd177(&
      &83)+acd177(82)+acd177(81)+acd177(80)+acd177(79)+acd177(78)+acd177(70)+ac&
      &d177(77)+acd177(76)
      brack(ninjaidxt1mu0)=acd177(72)
      brack(ninjaidxt0mu0)=acd177(73)
      brack(ninjaidxt0mu2)=acd177(71)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d177h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd177h2
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
end module     p8_cbarc_epnemumnmubarg_d177h2l131
