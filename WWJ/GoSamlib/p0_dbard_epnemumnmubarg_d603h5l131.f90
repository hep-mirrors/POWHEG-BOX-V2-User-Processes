module     p0_dbard_epnemumnmubarg_d603h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d603h5l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd603(1)=dotproduct(k2,ninjaE3)
      acd603(2)=dotproduct(ninjaE3,spvak4k3)
      acd603(3)=dotproduct(ninjaE3,spvak7k2)
      acd603(4)=abb603(38)
      acd603(5)=dotproduct(k5,ninjaE3)
      acd603(6)=dotproduct(k6,ninjaE3)
      acd603(7)=dotproduct(ninjaE3,spvak5k2)
      acd603(8)=abb603(16)
      acd603(9)=dotproduct(ninjaE3,spvak1k2)
      acd603(10)=abb603(19)
      acd603(11)=dotproduct(ninjaE3,spvak5k6)
      acd603(12)=abb603(21)
      acd603(13)=dotproduct(ninjaE3,spvak1k6)
      acd603(14)=abb603(22)
      acd603(15)=acd603(6)-acd603(1)+acd603(5)
      acd603(15)=acd603(4)*acd603(15)
      acd603(16)=acd603(8)*acd603(7)
      acd603(17)=acd603(10)*acd603(9)
      acd603(18)=acd603(12)*acd603(11)
      acd603(19)=acd603(14)*acd603(13)
      acd603(15)=acd603(19)+acd603(18)+acd603(17)+acd603(16)+acd603(15)
      acd603(15)=acd603(15)*acd603(3)*acd603(2)
      brack(ninjaidxt2mu0)=acd603(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(99) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd603(1)=dotproduct(k2,ninjaE3)
      acd603(2)=dotproduct(ninjaE3,spvak4k3)
      acd603(3)=dotproduct(ninjaE4,spvak7k2)
      acd603(4)=abb603(38)
      acd603(5)=dotproduct(ninjaE3,spvak7k2)
      acd603(6)=dotproduct(ninjaE4,spvak4k3)
      acd603(7)=abb603(18)
      acd603(8)=dotproduct(k2,ninjaE4)
      acd603(9)=dotproduct(k5,ninjaE3)
      acd603(10)=dotproduct(k5,ninjaE4)
      acd603(11)=dotproduct(k6,ninjaE3)
      acd603(12)=dotproduct(k6,ninjaE4)
      acd603(13)=dotproduct(ninjaE3,spvak5k2)
      acd603(14)=abb603(16)
      acd603(15)=dotproduct(ninjaE3,spvak5k6)
      acd603(16)=abb603(21)
      acd603(17)=dotproduct(ninjaE4,spvak5k2)
      acd603(18)=dotproduct(ninjaE4,spvak5k6)
      acd603(19)=dotproduct(ninjaE4,spvak1k2)
      acd603(20)=abb603(19)
      acd603(21)=dotproduct(ninjaE4,spvak1k6)
      acd603(22)=abb603(22)
      acd603(23)=dotproduct(ninjaE3,spvak1k2)
      acd603(24)=dotproduct(ninjaE3,spvak1k6)
      acd603(25)=abb603(14)
      acd603(26)=abb603(31)
      acd603(27)=abb603(54)
      acd603(28)=abb603(46)
      acd603(29)=dotproduct(k1,ninjaE3)
      acd603(30)=abb603(42)
      acd603(31)=abb603(37)
      acd603(32)=abb603(55)
      acd603(33)=abb603(50)
      acd603(34)=dotproduct(k2,ninjaA)
      acd603(35)=dotproduct(k3,ninjaE3)
      acd603(36)=abb603(41)
      acd603(37)=dotproduct(k4,ninjaE3)
      acd603(38)=dotproduct(ninjaA,ninjaE3)
      acd603(39)=dotproduct(ninjaA,spvak4k3)
      acd603(40)=dotproduct(ninjaA,spvak7k2)
      acd603(41)=abb603(13)
      acd603(42)=abb603(44)
      acd603(43)=abb603(32)
      acd603(44)=abb603(53)
      acd603(45)=abb603(48)
      acd603(46)=dotproduct(k5,ninjaA)
      acd603(47)=dotproduct(k6,ninjaA)
      acd603(48)=dotproduct(k7,ninjaE3)
      acd603(49)=abb603(10)
      acd603(50)=dotproduct(ninjaA,spvak5k2)
      acd603(51)=dotproduct(ninjaA,spvak5k6)
      acd603(52)=dotproduct(ninjaA,spvak1k2)
      acd603(53)=dotproduct(ninjaA,spvak1k6)
      acd603(54)=abb603(7)
      acd603(55)=abb603(8)
      acd603(56)=abb603(9)
      acd603(57)=abb603(17)
      acd603(58)=abb603(35)
      acd603(59)=dotproduct(ninjaE3,spvak1k3)
      acd603(60)=abb603(15)
      acd603(61)=dotproduct(k1,ninjaA)
      acd603(62)=abb603(36)
      acd603(63)=dotproduct(k3,ninjaA)
      acd603(64)=dotproduct(k4,ninjaA)
      acd603(65)=dotproduct(ninjaA,ninjaA)
      acd603(66)=abb603(34)
      acd603(67)=abb603(39)
      acd603(68)=dotproduct(k7,ninjaA)
      acd603(69)=abb603(28)
      acd603(70)=abb603(12)
      acd603(71)=dotproduct(ninjaA,spvak1k3)
      acd603(72)=abb603(6)
      acd603(73)=abb603(26)
      acd603(74)=abb603(25)
      acd603(75)=abb603(43)
      acd603(76)=-acd603(12)+acd603(8)-acd603(10)
      acd603(76)=acd603(76)*acd603(4)
      acd603(77)=acd603(22)*acd603(21)
      acd603(78)=acd603(20)*acd603(19)
      acd603(79)=acd603(16)*acd603(18)
      acd603(80)=acd603(14)*acd603(17)
      acd603(76)=acd603(76)-acd603(80)-acd603(79)-acd603(77)-acd603(78)
      acd603(76)=acd603(76)*acd603(2)
      acd603(77)=acd603(22)*acd603(24)
      acd603(78)=acd603(20)*acd603(23)
      acd603(79)=acd603(15)*acd603(16)
      acd603(80)=acd603(13)*acd603(14)
      acd603(77)=acd603(80)+acd603(79)+acd603(77)+acd603(78)
      acd603(78)=acd603(77)*acd603(6)
      acd603(76)=acd603(76)-acd603(78)-acd603(28)
      acd603(78)=-acd603(11)+acd603(1)-acd603(9)
      acd603(79)=acd603(78)*acd603(6)
      acd603(80)=-acd603(4)*acd603(79)
      acd603(80)=acd603(80)-acd603(76)
      acd603(80)=acd603(5)*acd603(80)
      acd603(81)=acd603(77)*acd603(3)
      acd603(81)=acd603(81)+acd603(25)
      acd603(82)=acd603(78)*acd603(3)
      acd603(83)=-acd603(4)*acd603(82)
      acd603(83)=acd603(83)+acd603(81)
      acd603(83)=acd603(2)*acd603(83)
      acd603(84)=acd603(15)*acd603(27)
      acd603(85)=acd603(13)*acd603(26)
      acd603(86)=acd603(78)*acd603(7)
      acd603(84)=-acd603(86)+acd603(84)+acd603(85)
      acd603(80)=acd603(80)+acd603(83)+acd603(84)
      acd603(83)=acd603(78)*acd603(4)
      acd603(77)=acd603(83)-acd603(77)
      acd603(83)=-acd603(39)*acd603(77)
      acd603(85)=acd603(60)*acd603(59)
      acd603(86)=acd603(29)*acd603(33)
      acd603(87)=acd603(15)*acd603(58)
      acd603(88)=acd603(13)*acd603(57)
      acd603(89)=2.0_ki*acd603(38)
      acd603(90)=acd603(89)*acd603(28)
      acd603(91)=acd603(78)*acd603(42)
      acd603(92)=acd603(35)+acd603(37)
      acd603(93)=acd603(92)*acd603(45)
      acd603(83)=acd603(88)+acd603(90)+acd603(91)-acd603(93)+acd603(87)+acd603(&
      &85)+acd603(86)+acd603(83)
      acd603(85)=acd603(22)*acd603(53)
      acd603(86)=acd603(20)*acd603(52)
      acd603(87)=acd603(16)*acd603(51)
      acd603(88)=acd603(14)*acd603(50)
      acd603(85)=acd603(56)+acd603(88)+acd603(87)+acd603(85)+acd603(86)
      acd603(86)=-acd603(34)+acd603(46)+acd603(47)
      acd603(87)=acd603(4)*acd603(86)
      acd603(87)=acd603(87)+acd603(85)
      acd603(87)=acd603(2)*acd603(87)
      acd603(87)=acd603(87)+acd603(83)
      acd603(87)=acd603(5)*acd603(87)
      acd603(88)=acd603(48)*acd603(49)
      acd603(90)=acd603(15)*acd603(55)
      acd603(91)=acd603(13)*acd603(54)
      acd603(93)=acd603(89)*acd603(25)
      acd603(94)=acd603(78)*acd603(41)
      acd603(88)=acd603(94)+acd603(88)+acd603(90)+acd603(91)+acd603(93)
      acd603(77)=-acd603(40)*acd603(77)
      acd603(77)=acd603(77)+acd603(88)
      acd603(77)=acd603(2)*acd603(77)
      acd603(90)=-acd603(44)*acd603(92)
      acd603(91)=acd603(29)*acd603(32)
      acd603(93)=acd603(27)*acd603(89)
      acd603(90)=acd603(93)+acd603(91)+acd603(90)
      acd603(90)=acd603(15)*acd603(90)
      acd603(91)=-acd603(43)*acd603(92)
      acd603(93)=acd603(29)*acd603(31)
      acd603(94)=acd603(26)*acd603(89)
      acd603(91)=acd603(94)+acd603(93)+acd603(91)
      acd603(91)=acd603(13)*acd603(91)
      acd603(93)=acd603(92)*acd603(36)
      acd603(94)=acd603(89)*acd603(7)
      acd603(93)=acd603(93)+acd603(94)
      acd603(94)=acd603(29)*acd603(30)
      acd603(94)=-acd603(94)+acd603(93)
      acd603(94)=-acd603(94)*acd603(78)
      acd603(77)=acd603(87)+acd603(77)+acd603(90)+acd603(91)+acd603(94)
      acd603(76)=-ninjaP*acd603(76)
      acd603(87)=acd603(39)*acd603(85)
      acd603(79)=-ninjaP*acd603(79)
      acd603(90)=acd603(39)*acd603(86)
      acd603(79)=acd603(79)+acd603(90)
      acd603(79)=acd603(4)*acd603(79)
      acd603(90)=-acd603(42)*acd603(86)
      acd603(91)=acd603(60)*acd603(71)
      acd603(94)=acd603(61)*acd603(33)
      acd603(95)=acd603(63)+acd603(64)
      acd603(96)=-acd603(45)*acd603(95)
      acd603(97)=acd603(65)*acd603(28)
      acd603(98)=acd603(51)*acd603(58)
      acd603(99)=acd603(50)*acd603(57)
      acd603(76)=acd603(79)+acd603(87)+acd603(99)+acd603(98)+acd603(97)+acd603(&
      &96)+acd603(94)+acd603(75)+acd603(91)+acd603(90)+acd603(76)
      acd603(76)=acd603(5)*acd603(76)
      acd603(79)=acd603(40)*acd603(83)
      acd603(81)=ninjaP*acd603(81)
      acd603(83)=acd603(40)*acd603(85)
      acd603(82)=-ninjaP*acd603(82)
      acd603(85)=acd603(40)*acd603(86)
      acd603(82)=acd603(82)+acd603(85)
      acd603(82)=acd603(4)*acd603(82)
      acd603(85)=-acd603(41)*acd603(86)
      acd603(87)=acd603(49)*acd603(68)
      acd603(90)=acd603(65)*acd603(25)
      acd603(91)=acd603(51)*acd603(55)
      acd603(94)=acd603(50)*acd603(54)
      acd603(81)=acd603(82)+acd603(83)+acd603(81)+acd603(94)+acd603(91)+acd603(&
      &90)+acd603(72)+acd603(87)+acd603(85)
      acd603(81)=acd603(2)*acd603(81)
      acd603(82)=acd603(39)*acd603(88)
      acd603(83)=acd603(30)*acd603(61)
      acd603(85)=acd603(7)*acd603(65)
      acd603(87)=acd603(95)*acd603(36)
      acd603(83)=-acd603(66)-acd603(87)+acd603(83)-acd603(85)
      acd603(78)=acd603(83)*acd603(78)
      acd603(83)=acd603(51)*acd603(32)
      acd603(85)=acd603(50)*acd603(31)
      acd603(87)=-acd603(30)*acd603(86)
      acd603(83)=acd603(87)+acd603(85)+acd603(62)+acd603(83)
      acd603(83)=acd603(29)*acd603(83)
      acd603(85)=acd603(61)*acd603(32)
      acd603(87)=-acd603(44)*acd603(95)
      acd603(88)=acd603(65)*acd603(27)
      acd603(85)=acd603(88)+acd603(87)+acd603(74)+acd603(85)
      acd603(85)=acd603(15)*acd603(85)
      acd603(87)=acd603(61)*acd603(31)
      acd603(88)=-acd603(43)*acd603(95)
      acd603(90)=acd603(65)*acd603(26)
      acd603(87)=acd603(90)+acd603(88)+acd603(73)+acd603(87)
      acd603(87)=acd603(13)*acd603(87)
      acd603(84)=ninjaP*acd603(84)
      acd603(86)=acd603(86)*acd603(93)
      acd603(88)=acd603(51)*acd603(44)
      acd603(90)=acd603(50)*acd603(43)
      acd603(88)=acd603(88)+acd603(90)-acd603(67)
      acd603(88)=-acd603(88)*acd603(92)
      acd603(90)=acd603(51)*acd603(27)
      acd603(91)=acd603(50)*acd603(26)
      acd603(90)=acd603(91)+acd603(70)+acd603(90)
      acd603(89)=acd603(90)*acd603(89)
      acd603(90)=acd603(48)*acd603(69)
      acd603(76)=acd603(76)+acd603(81)+acd603(82)+acd603(84)+acd603(87)+acd603(&
      &85)+acd603(89)+acd603(83)+acd603(90)+acd603(79)+acd603(78)+acd603(88)+ac&
      &d603(86)
      brack(ninjaidxt1mu0)=acd603(77)
      brack(ninjaidxt0mu0)=acd603(76)
      brack(ninjaidxt0mu2)=acd603(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d603h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd603h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d603h5l131
