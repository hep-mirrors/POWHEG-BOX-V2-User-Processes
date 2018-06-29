module     p8_cbarc_epnemumnmubarg_d489h2l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity2d489h2l131.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd489h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(40) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd489(1)=dotproduct(k1,ninjaE3)
      acd489(2)=dotproduct(ninjaE3,spvak2k7)
      acd489(3)=abb489(14)
      acd489(4)=dotproduct(k3,ninjaE3)
      acd489(5)=abb489(36)
      acd489(6)=dotproduct(k4,ninjaE3)
      acd489(7)=dotproduct(k5,ninjaE3)
      acd489(8)=dotproduct(k6,ninjaE3)
      acd489(9)=dotproduct(k7,ninjaE3)
      acd489(10)=abb489(27)
      acd489(11)=dotproduct(ninjaE3,spvak2k3)
      acd489(12)=abb489(13)
      acd489(13)=dotproduct(ninjaE3,spvak7k1)
      acd489(14)=abb489(17)
      acd489(15)=dotproduct(ninjaE3,spvak2k6)
      acd489(16)=abb489(19)
      acd489(17)=dotproduct(ninjaE3,spvak5k6)
      acd489(18)=abb489(26)
      acd489(19)=dotproduct(ninjaE3,spvak4k3)
      acd489(20)=abb489(31)
      acd489(21)=dotproduct(ninjaE3,spvak2k4)
      acd489(22)=abb489(32)
      acd489(23)=dotproduct(ninjaE3,spvak2k5)
      acd489(24)=abb489(48)
      acd489(25)=dotproduct(ninjaE3,spvak5k3)
      acd489(26)=abb489(51)
      acd489(27)=dotproduct(ninjaE3,spvak4k6)
      acd489(28)=abb489(52)
      acd489(29)=-acd489(8)-acd489(7)+acd489(6)+acd489(4)
      acd489(29)=acd489(29)*acd489(5)
      acd489(30)=acd489(3)*acd489(1)
      acd489(31)=acd489(10)*acd489(9)
      acd489(32)=acd489(12)*acd489(11)
      acd489(33)=acd489(14)*acd489(13)
      acd489(34)=acd489(16)*acd489(15)
      acd489(35)=acd489(18)*acd489(17)
      acd489(36)=acd489(20)*acd489(19)
      acd489(37)=acd489(22)*acd489(21)
      acd489(38)=acd489(24)*acd489(23)
      acd489(39)=acd489(26)*acd489(25)
      acd489(40)=acd489(28)*acd489(27)
      acd489(29)=acd489(29)+acd489(40)+acd489(39)+acd489(38)+acd489(37)+acd489(&
      &36)+acd489(35)+acd489(34)+acd489(33)+acd489(32)+acd489(31)+acd489(30)
      acd489(29)=acd489(2)*acd489(29)
      brack(ninjaidxt2mu0)=acd489(29)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd489h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(93) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd489(1)=dotproduct(k1,ninjaE3)
      acd489(2)=dotproduct(ninjaE4,spvak2k7)
      acd489(3)=abb489(14)
      acd489(4)=dotproduct(k1,ninjaE4)
      acd489(5)=dotproduct(ninjaE3,spvak2k7)
      acd489(6)=dotproduct(k3,ninjaE3)
      acd489(7)=abb489(36)
      acd489(8)=dotproduct(k3,ninjaE4)
      acd489(9)=dotproduct(k4,ninjaE3)
      acd489(10)=dotproduct(k4,ninjaE4)
      acd489(11)=dotproduct(k5,ninjaE3)
      acd489(12)=dotproduct(k5,ninjaE4)
      acd489(13)=dotproduct(k6,ninjaE3)
      acd489(14)=dotproduct(k6,ninjaE4)
      acd489(15)=dotproduct(k7,ninjaE3)
      acd489(16)=abb489(27)
      acd489(17)=dotproduct(k7,ninjaE4)
      acd489(18)=dotproduct(ninjaE3,spvak2k3)
      acd489(19)=abb489(13)
      acd489(20)=dotproduct(ninjaE4,spvak2k3)
      acd489(21)=dotproduct(ninjaE4,spvak7k1)
      acd489(22)=abb489(17)
      acd489(23)=dotproduct(ninjaE4,spvak2k6)
      acd489(24)=abb489(19)
      acd489(25)=dotproduct(ninjaE4,spvak5k6)
      acd489(26)=abb489(26)
      acd489(27)=dotproduct(ninjaE4,spvak2k4)
      acd489(28)=abb489(32)
      acd489(29)=dotproduct(ninjaE4,spvak4k3)
      acd489(30)=abb489(31)
      acd489(31)=dotproduct(ninjaE4,spvak2k5)
      acd489(32)=abb489(48)
      acd489(33)=dotproduct(ninjaE4,spvak5k3)
      acd489(34)=abb489(51)
      acd489(35)=dotproduct(ninjaE4,spvak4k6)
      acd489(36)=abb489(52)
      acd489(37)=dotproduct(ninjaE3,spvak7k1)
      acd489(38)=dotproduct(ninjaE3,spvak2k6)
      acd489(39)=dotproduct(ninjaE3,spvak5k6)
      acd489(40)=dotproduct(ninjaE3,spvak2k4)
      acd489(41)=dotproduct(ninjaE3,spvak4k3)
      acd489(42)=dotproduct(ninjaE3,spvak2k5)
      acd489(43)=dotproduct(ninjaE3,spvak5k3)
      acd489(44)=dotproduct(ninjaE3,spvak4k6)
      acd489(45)=abb489(39)
      acd489(46)=dotproduct(k1,ninjaA)
      acd489(47)=dotproduct(ninjaA,spvak2k7)
      acd489(48)=abb489(18)
      acd489(49)=dotproduct(k3,ninjaA)
      acd489(50)=abb489(95)
      acd489(51)=dotproduct(k4,ninjaA)
      acd489(52)=dotproduct(k5,ninjaA)
      acd489(53)=dotproduct(k6,ninjaA)
      acd489(54)=dotproduct(k7,ninjaA)
      acd489(55)=abb489(16)
      acd489(56)=dotproduct(ninjaA,ninjaE3)
      acd489(57)=dotproduct(ninjaA,spvak2k3)
      acd489(58)=dotproduct(ninjaA,spvak7k1)
      acd489(59)=dotproduct(ninjaA,spvak2k6)
      acd489(60)=dotproduct(ninjaA,spvak5k6)
      acd489(61)=dotproduct(ninjaA,spvak2k4)
      acd489(62)=dotproduct(ninjaA,spvak4k3)
      acd489(63)=dotproduct(ninjaA,spvak2k5)
      acd489(64)=dotproduct(ninjaA,spvak5k3)
      acd489(65)=dotproduct(ninjaA,spvak4k6)
      acd489(66)=abb489(15)
      acd489(67)=abb489(24)
      acd489(68)=abb489(20)
      acd489(69)=abb489(41)
      acd489(70)=abb489(29)
      acd489(71)=abb489(94)
      acd489(72)=abb489(35)
      acd489(73)=abb489(86)
      acd489(74)=abb489(100)
      acd489(75)=dotproduct(ninjaA,ninjaA)
      acd489(76)=abb489(93)
      acd489(77)=-acd489(8)-acd489(10)+acd489(12)+acd489(14)
      acd489(77)=acd489(77)*acd489(7)
      acd489(78)=acd489(36)*acd489(35)
      acd489(79)=acd489(34)*acd489(33)
      acd489(80)=acd489(32)*acd489(31)
      acd489(81)=acd489(30)*acd489(29)
      acd489(82)=acd489(28)*acd489(27)
      acd489(83)=acd489(26)*acd489(25)
      acd489(84)=acd489(24)*acd489(23)
      acd489(85)=acd489(22)*acd489(21)
      acd489(86)=acd489(19)*acd489(20)
      acd489(87)=acd489(16)*acd489(17)
      acd489(88)=acd489(3)*acd489(4)
      acd489(77)=-acd489(77)+acd489(79)+acd489(80)+acd489(81)+acd489(88)+acd489&
      &(84)+acd489(85)+acd489(86)+acd489(87)+acd489(78)+acd489(82)+acd489(83)
      acd489(77)=acd489(77)*acd489(5)
      acd489(78)=-acd489(6)-acd489(9)+acd489(11)+acd489(13)
      acd489(79)=acd489(78)*acd489(7)
      acd489(80)=acd489(36)*acd489(44)
      acd489(81)=acd489(34)*acd489(43)
      acd489(82)=acd489(32)*acd489(42)
      acd489(83)=acd489(30)*acd489(41)
      acd489(84)=acd489(28)*acd489(40)
      acd489(85)=acd489(26)*acd489(39)
      acd489(86)=acd489(24)*acd489(38)
      acd489(87)=acd489(22)*acd489(37)
      acd489(88)=acd489(19)*acd489(18)
      acd489(89)=acd489(16)*acd489(15)
      acd489(90)=acd489(3)*acd489(1)
      acd489(79)=acd489(84)+acd489(83)+acd489(82)+acd489(81)-acd489(79)+acd489(&
      &80)+acd489(87)+acd489(88)+acd489(85)+acd489(86)+acd489(89)+acd489(90)
      acd489(80)=acd489(79)*acd489(2)
      acd489(77)=acd489(77)+acd489(80)+acd489(45)
      acd489(79)=acd489(47)*acd489(79)
      acd489(80)=acd489(36)*acd489(65)
      acd489(81)=acd489(34)*acd489(64)
      acd489(82)=acd489(32)*acd489(63)
      acd489(83)=acd489(30)*acd489(62)
      acd489(84)=-acd489(53)-acd489(52)+acd489(49)+acd489(51)
      acd489(85)=acd489(84)*acd489(7)
      acd489(86)=acd489(28)*acd489(61)
      acd489(87)=acd489(26)*acd489(60)
      acd489(88)=acd489(24)*acd489(59)
      acd489(89)=acd489(22)*acd489(58)
      acd489(90)=acd489(19)*acd489(57)
      acd489(91)=acd489(16)*acd489(54)
      acd489(92)=acd489(3)*acd489(46)
      acd489(80)=acd489(85)+acd489(80)+acd489(81)+acd489(82)+acd489(83)+acd489(&
      &90)+acd489(91)+acd489(92)+acd489(67)+acd489(86)+acd489(87)+acd489(88)+ac&
      &d489(89)
      acd489(81)=acd489(5)*acd489(80)
      acd489(82)=acd489(45)*acd489(56)
      acd489(83)=acd489(44)*acd489(74)
      acd489(85)=acd489(43)*acd489(73)
      acd489(86)=acd489(42)*acd489(72)
      acd489(87)=acd489(41)*acd489(71)
      acd489(88)=acd489(40)*acd489(70)
      acd489(89)=acd489(39)*acd489(69)
      acd489(90)=acd489(38)*acd489(68)
      acd489(91)=acd489(18)*acd489(66)
      acd489(92)=acd489(15)*acd489(55)
      acd489(93)=acd489(1)*acd489(48)
      acd489(78)=acd489(50)*acd489(78)
      acd489(78)=acd489(81)+acd489(79)+acd489(78)+acd489(93)+acd489(92)+acd489(&
      &91)+acd489(90)+acd489(89)+acd489(88)+acd489(87)+acd489(86)+acd489(85)+2.&
      &0_ki*acd489(82)+acd489(83)
      acd489(79)=ninjaP*acd489(77)
      acd489(80)=acd489(47)*acd489(80)
      acd489(81)=acd489(65)*acd489(74)
      acd489(82)=acd489(64)*acd489(73)
      acd489(83)=acd489(63)*acd489(72)
      acd489(85)=acd489(62)*acd489(71)
      acd489(86)=acd489(61)*acd489(70)
      acd489(87)=acd489(60)*acd489(69)
      acd489(88)=acd489(59)*acd489(68)
      acd489(89)=acd489(57)*acd489(66)
      acd489(90)=acd489(54)*acd489(55)
      acd489(91)=acd489(46)*acd489(48)
      acd489(92)=acd489(45)*acd489(75)
      acd489(84)=-acd489(50)*acd489(84)
      acd489(79)=acd489(80)+acd489(84)+acd489(92)+acd489(91)+acd489(90)+acd489(&
      &89)+acd489(88)+acd489(87)+acd489(86)+acd489(85)+acd489(83)+acd489(82)+ac&
      &d489(76)+acd489(81)+acd489(79)
      brack(ninjaidxt1mu0)=acd489(78)
      brack(ninjaidxt0mu0)=acd489(79)
      brack(ninjaidxt0mu2)=acd489(77)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d489h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd489h2
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
end module     p8_cbarc_epnemumnmubarg_d489h2l131
