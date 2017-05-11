module     pb_gg_hh_d10h0l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity0d10h0l131.f90
   ! generator: buildfortran_tn3.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond_t, d => metric_tensor
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
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd10
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(93) :: acd10
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd10(1)=dotproduct(k1,ninjaE3)
      acd10(2)=abb10(12)
      acd10(3)=dotproduct(k2,ninjaE3)
      acd10(4)=abb10(24)
      acd10(5)=dotproduct(l3,ninjaE3)
      acd10(6)=abb10(10)
      acd10(7)=dotproduct(l4,ninjaE3)
      acd10(8)=dotproduct(ninjaA,ninjaE3)
      acd10(9)=dotproduct(ninjaE3,spvak2k1)
      acd10(10)=abb10(41)
      acd10(11)=dotproduct(ninjaE3,spvak1l3)
      acd10(12)=abb10(39)
      acd10(13)=dotproduct(ninjaE3,spval4k2)
      acd10(14)=abb10(33)
      acd10(15)=dotproduct(ninjaE3,spval3k2)
      acd10(16)=abb10(32)
      acd10(17)=dotproduct(ninjaE3,spvak1l4)
      acd10(18)=abb10(44)
      acd10(19)=abb10(26)
      acd10(20)=abb10(42)
      acd10(21)=dotproduct(ninjaE3,spvak2l3)
      acd10(22)=abb10(38)
      acd10(23)=abb10(45)
      acd10(24)=dotproduct(ninjaE3,spval3k1)
      acd10(25)=abb10(29)
      acd10(26)=abb10(36)
      acd10(27)=dotproduct(ninjaE3,spvak1k2)
      acd10(28)=abb10(7)
      acd10(29)=abb10(13)
      acd10(30)=dotproduct(ninjaE3,spvak2l4)
      acd10(31)=abb10(16)
      acd10(32)=dotproduct(ninjaE3,spval4l3)
      acd10(33)=abb10(19)
      acd10(34)=dotproduct(ninjaE3,spval3l4)
      acd10(35)=abb10(23)
      acd10(36)=dotproduct(k1,ninjaA)
      acd10(37)=dotproduct(k2,ninjaA)
      acd10(38)=dotproduct(ninjaA,ninjaA)
      acd10(39)=dotproduct(ninjaA,spvak2k1)
      acd10(40)=dotproduct(ninjaA,spvak2l3)
      acd10(41)=dotproduct(ninjaA,spvak1l3)
      acd10(42)=dotproduct(ninjaA,spval3k1)
      acd10(43)=dotproduct(ninjaA,spval3k2)
      acd10(44)=abb10(15)
      acd10(45)=abb10(28)
      acd10(46)=dotproduct(l3,ninjaA)
      acd10(47)=dotproduct(l4,ninjaA)
      acd10(48)=abb10(27)
      acd10(49)=dotproduct(ninjaA,spval4k2)
      acd10(50)=dotproduct(ninjaA,spvak1l4)
      acd10(51)=abb10(14)
      acd10(52)=dotproduct(ninjaA,spvak1k2)
      acd10(53)=dotproduct(ninjaA,spvak2l4)
      acd10(54)=dotproduct(ninjaA,spval4l3)
      acd10(55)=dotproduct(ninjaA,spval3l4)
      acd10(56)=abb10(9)
      acd10(57)=abb10(8)
      acd10(58)=abb10(31)
      acd10(59)=abb10(40)
      acd10(60)=abb10(21)
      acd10(61)=abb10(34)
      acd10(62)=abb10(30)
      acd10(63)=abb10(37)
      acd10(64)=dotproduct(ninjaE3,spval4k1)
      acd10(65)=abb10(35)
      acd10(66)=abb10(43)
      acd10(67)=acd10(4)*acd10(3)
      acd10(68)=acd10(10)*acd10(9)
      acd10(69)=acd10(12)*acd10(11)
      acd10(70)=acd10(14)*acd10(13)
      acd10(71)=acd10(16)*acd10(15)
      acd10(72)=acd10(18)*acd10(17)
      acd10(67)=acd10(67)+acd10(68)+acd10(69)+acd10(70)+acd10(71)+acd10(72)
      acd10(68)=acd10(5)-acd10(7)
      acd10(68)=acd10(68)*acd10(6)
      acd10(69)=acd10(2)*acd10(1)
      acd10(68)=acd10(68)+acd10(69)+acd10(67)
      acd10(69)=acd10(6)*acd10(8)
      acd10(69)=4.0_ki*acd10(69)
      acd10(70)=acd10(68)-acd10(69)
      acd10(71)=acd10(26)*acd10(15)
      acd10(72)=acd10(19)*acd10(3)
      acd10(73)=acd10(20)*acd10(9)
      acd10(74)=acd10(22)*acd10(21)
      acd10(75)=acd10(23)*acd10(11)
      acd10(76)=acd10(25)*acd10(24)
      acd10(71)=-acd10(72)-acd10(73)-acd10(74)-acd10(75)+acd10(71)-acd10(76)
      acd10(72)=-acd10(1)*acd10(71)
      acd10(73)=acd10(24)*acd10(26)
      acd10(74)=acd10(28)*acd10(9)
      acd10(75)=acd10(29)*acd10(21)
      acd10(76)=acd10(31)*acd10(30)
      acd10(77)=acd10(32)*acd10(33)
      acd10(78)=acd10(34)*acd10(35)
      acd10(73)=-acd10(73)+acd10(74)+acd10(75)+acd10(76)+acd10(77)+acd10(78)
      acd10(74)=acd10(27)*acd10(73)
      acd10(75)=2.0_ki*acd10(8)
      acd10(68)=acd10(75)*acd10(68)
      acd10(76)=acd10(6)*acd10(8)**2
      acd10(68)=-4.0_ki*acd10(76)+acd10(68)+acd10(74)+acd10(72)
      acd10(67)=acd10(67)-acd10(69)
      acd10(69)=ninjaP+acd10(38)
      acd10(67)=acd10(69)*acd10(67)
      acd10(71)=-acd10(36)*acd10(71)
      acd10(72)=acd10(52)*acd10(73)
      acd10(73)=acd10(53)*acd10(31)
      acd10(74)=acd10(54)*acd10(33)
      acd10(76)=acd10(55)*acd10(35)
      acd10(73)=acd10(56)+acd10(76)+acd10(74)+acd10(73)
      acd10(73)=acd10(27)*acd10(73)
      acd10(74)=-acd10(47)+acd10(46)
      acd10(74)=acd10(6)*acd10(74)
      acd10(76)=acd10(49)*acd10(14)
      acd10(77)=acd10(50)*acd10(18)
      acd10(74)=acd10(51)+acd10(77)+acd10(76)+acd10(74)
      acd10(74)=acd10(75)*acd10(74)
      acd10(76)=acd10(10)*acd10(75)
      acd10(77)=acd10(20)*acd10(1)
      acd10(78)=acd10(28)*acd10(27)
      acd10(76)=acd10(78)+acd10(76)+acd10(77)
      acd10(76)=acd10(39)*acd10(76)
      acd10(77)=acd10(1)*acd10(69)
      acd10(78)=acd10(36)*acd10(75)
      acd10(77)=acd10(78)+acd10(77)
      acd10(77)=acd10(2)*acd10(77)
      acd10(78)=acd10(4)*acd10(75)
      acd10(79)=acd10(19)*acd10(1)
      acd10(78)=acd10(78)+acd10(79)
      acd10(78)=acd10(37)*acd10(78)
      acd10(79)=acd10(22)*acd10(1)
      acd10(80)=acd10(29)*acd10(27)
      acd10(79)=acd10(79)+acd10(80)
      acd10(79)=acd10(40)*acd10(79)
      acd10(80)=acd10(12)*acd10(75)
      acd10(81)=acd10(23)*acd10(1)
      acd10(80)=acd10(80)+acd10(81)
      acd10(80)=acd10(41)*acd10(80)
      acd10(81)=-acd10(26)*acd10(27)
      acd10(82)=acd10(25)*acd10(1)
      acd10(81)=acd10(81)+acd10(82)
      acd10(81)=acd10(42)*acd10(81)
      acd10(82)=-acd10(26)*acd10(1)
      acd10(75)=acd10(16)*acd10(75)
      acd10(75)=acd10(82)+acd10(75)
      acd10(75)=acd10(43)*acd10(75)
      acd10(69)=acd10(69)*acd10(6)
      acd10(82)=acd10(48)-acd10(69)
      acd10(82)=acd10(7)*acd10(82)
      acd10(69)=acd10(5)*acd10(69)
      acd10(83)=acd10(44)*acd10(1)
      acd10(84)=acd10(45)*acd10(3)
      acd10(85)=acd10(57)*acd10(9)
      acd10(86)=acd10(58)*acd10(21)
      acd10(87)=acd10(59)*acd10(30)
      acd10(88)=acd10(60)*acd10(11)
      acd10(89)=acd10(61)*acd10(24)
      acd10(90)=acd10(62)*acd10(13)
      acd10(91)=acd10(63)*acd10(15)
      acd10(92)=acd10(65)*acd10(64)
      acd10(93)=acd10(66)*acd10(17)
      acd10(67)=acd10(93)+acd10(92)+acd10(91)+acd10(90)+acd10(89)+acd10(88)+acd&
      &10(87)+acd10(86)+acd10(85)+acd10(84)+acd10(83)+acd10(75)+acd10(81)+acd10&
      &(80)+acd10(79)+acd10(78)+acd10(76)+acd10(69)+acd10(77)+acd10(72)+acd10(7&
      &1)+acd10(74)+acd10(73)+acd10(82)+acd10(67)
      brack(ninjaidxt1mu0)=acd10(68)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd10(67)
      brack(ninjaidxt0mu2)=acd10(70)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d10h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h0
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
end module     pb_gg_hh_d10h0l131
