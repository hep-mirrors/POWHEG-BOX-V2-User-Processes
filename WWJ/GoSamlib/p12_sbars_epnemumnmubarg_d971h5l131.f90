module     p12_sbars_epnemumnmubarg_d971h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d971h5l131.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd971h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd971
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd971(1)=dotproduct(k2,ninjaE3)
      acd971(2)=dotproduct(ninjaE3,spvak7k2)
      acd971(3)=abb971(23)
      acd971(4)=dotproduct(k5,ninjaE3)
      acd971(5)=dotproduct(k6,ninjaE3)
      acd971(6)=dotproduct(ninjaE3,spvak5k2)
      acd971(7)=abb971(11)
      acd971(8)=dotproduct(ninjaE3,spvak1k2)
      acd971(9)=abb971(12)
      acd971(10)=dotproduct(ninjaE3,spvak4k2)
      acd971(11)=abb971(13)
      acd971(12)=dotproduct(ninjaE3,spvak1k6)
      acd971(13)=abb971(14)
      acd971(14)=dotproduct(ninjaE3,spvak4k6)
      acd971(15)=abb971(15)
      acd971(16)=dotproduct(ninjaE3,spvak5k6)
      acd971(17)=abb971(18)
      acd971(18)=-acd971(5)+acd971(1)-acd971(4)
      acd971(18)=acd971(18)*acd971(3)
      acd971(19)=acd971(7)*acd971(6)
      acd971(20)=acd971(9)*acd971(8)
      acd971(21)=acd971(11)*acd971(10)
      acd971(22)=acd971(13)*acd971(12)
      acd971(23)=acd971(15)*acd971(14)
      acd971(24)=acd971(17)*acd971(16)
      acd971(18)=acd971(18)+acd971(24)+acd971(23)+acd971(22)+acd971(21)+acd971(&
      &20)+acd971(19)
      acd971(18)=acd971(2)*acd971(18)
      brack(ninjaidxt2mu0)=acd971(18)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd971h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(71) :: acd971
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd971(1)=dotproduct(k2,ninjaE3)
      acd971(2)=dotproduct(ninjaE4,spvak7k2)
      acd971(3)=abb971(23)
      acd971(4)=dotproduct(k2,ninjaE4)
      acd971(5)=dotproduct(ninjaE3,spvak7k2)
      acd971(6)=dotproduct(k5,ninjaE3)
      acd971(7)=dotproduct(k5,ninjaE4)
      acd971(8)=dotproduct(k6,ninjaE3)
      acd971(9)=dotproduct(k6,ninjaE4)
      acd971(10)=dotproduct(ninjaE3,spvak5k2)
      acd971(11)=abb971(11)
      acd971(12)=dotproduct(ninjaE3,spvak5k6)
      acd971(13)=abb971(18)
      acd971(14)=dotproduct(ninjaE4,spvak5k2)
      acd971(15)=dotproduct(ninjaE4,spvak5k6)
      acd971(16)=dotproduct(ninjaE4,spvak1k2)
      acd971(17)=abb971(12)
      acd971(18)=dotproduct(ninjaE4,spvak4k2)
      acd971(19)=abb971(13)
      acd971(20)=dotproduct(ninjaE4,spvak1k6)
      acd971(21)=abb971(14)
      acd971(22)=dotproduct(ninjaE4,spvak4k6)
      acd971(23)=abb971(15)
      acd971(24)=dotproduct(ninjaE3,spvak1k2)
      acd971(25)=dotproduct(ninjaE3,spvak4k2)
      acd971(26)=dotproduct(ninjaE3,spvak1k6)
      acd971(27)=dotproduct(ninjaE3,spvak4k6)
      acd971(28)=abb971(24)
      acd971(29)=dotproduct(k1,ninjaE3)
      acd971(30)=abb971(17)
      acd971(31)=dotproduct(k2,ninjaA)
      acd971(32)=dotproduct(ninjaA,spvak7k2)
      acd971(33)=abb971(32)
      acd971(34)=dotproduct(k3,ninjaE3)
      acd971(35)=dotproduct(k4,ninjaE3)
      acd971(36)=dotproduct(k5,ninjaA)
      acd971(37)=dotproduct(k6,ninjaA)
      acd971(38)=dotproduct(k7,ninjaE3)
      acd971(39)=abb971(16)
      acd971(40)=dotproduct(ninjaA,ninjaE3)
      acd971(41)=dotproduct(ninjaA,spvak5k2)
      acd971(42)=dotproduct(ninjaA,spvak5k6)
      acd971(43)=dotproduct(ninjaA,spvak1k2)
      acd971(44)=dotproduct(ninjaA,spvak4k2)
      acd971(45)=dotproduct(ninjaA,spvak1k6)
      acd971(46)=dotproduct(ninjaA,spvak4k6)
      acd971(47)=abb971(8)
      acd971(48)=abb971(9)
      acd971(49)=abb971(10)
      acd971(50)=dotproduct(k1,ninjaA)
      acd971(51)=dotproduct(k3,ninjaA)
      acd971(52)=dotproduct(k4,ninjaA)
      acd971(53)=dotproduct(k7,ninjaA)
      acd971(54)=dotproduct(ninjaA,ninjaA)
      acd971(55)=abb971(21)
      acd971(56)=acd971(10)*acd971(11)
      acd971(57)=acd971(12)*acd971(13)
      acd971(58)=acd971(24)*acd971(17)
      acd971(59)=acd971(25)*acd971(19)
      acd971(60)=acd971(26)*acd971(21)
      acd971(61)=acd971(27)*acd971(23)
      acd971(56)=acd971(58)+acd971(59)+acd971(60)+acd971(61)+acd971(56)+acd971(&
      &57)
      acd971(57)=-acd971(1)+acd971(8)+acd971(6)
      acd971(58)=acd971(57)*acd971(3)
      acd971(58)=acd971(58)-acd971(56)
      acd971(58)=acd971(58)*acd971(2)
      acd971(59)=acd971(14)*acd971(11)
      acd971(60)=acd971(15)*acd971(13)
      acd971(61)=acd971(16)*acd971(17)
      acd971(62)=acd971(18)*acd971(19)
      acd971(63)=acd971(20)*acd971(21)
      acd971(64)=acd971(22)*acd971(23)
      acd971(59)=acd971(59)+acd971(60)+acd971(61)+acd971(62)+acd971(63)+acd971(&
      &64)
      acd971(60)=acd971(5)*acd971(59)
      acd971(61)=-acd971(4)+acd971(9)+acd971(7)
      acd971(62)=acd971(3)*acd971(5)
      acd971(63)=-acd971(62)*acd971(61)
      acd971(60)=acd971(28)+acd971(60)+acd971(63)-acd971(58)
      acd971(56)=acd971(32)*acd971(56)
      acd971(63)=acd971(41)*acd971(11)
      acd971(64)=acd971(42)*acd971(13)
      acd971(65)=acd971(43)*acd971(17)
      acd971(66)=acd971(44)*acd971(19)
      acd971(67)=acd971(45)*acd971(21)
      acd971(68)=acd971(46)*acd971(23)
      acd971(63)=acd971(49)+acd971(65)+acd971(66)+acd971(67)+acd971(68)+acd971(&
      &63)+acd971(64)
      acd971(64)=acd971(5)*acd971(63)
      acd971(65)=acd971(32)*acd971(3)
      acd971(65)=acd971(65)-acd971(33)
      acd971(57)=-acd971(65)*acd971(57)
      acd971(66)=-acd971(31)+acd971(37)+acd971(36)
      acd971(62)=-acd971(62)*acd971(66)
      acd971(67)=acd971(35)+acd971(34)-acd971(29)
      acd971(67)=acd971(30)*acd971(67)
      acd971(68)=acd971(47)*acd971(10)
      acd971(69)=acd971(48)*acd971(12)
      acd971(70)=acd971(38)*acd971(39)
      acd971(71)=acd971(40)*acd971(28)
      acd971(56)=2.0_ki*acd971(71)+acd971(70)+acd971(69)+acd971(68)+acd971(64)+&
      &acd971(56)+acd971(62)+acd971(67)+acd971(57)
      acd971(57)=-acd971(3)*acd971(61)
      acd971(57)=acd971(57)+acd971(59)
      acd971(57)=acd971(57)*acd971(5)
      acd971(57)=acd971(57)-acd971(58)
      acd971(57)=ninjaP*acd971(57)
      acd971(58)=acd971(32)*acd971(63)
      acd971(59)=-acd971(65)*acd971(66)
      acd971(61)=acd971(54)+ninjaP
      acd971(61)=acd971(28)*acd971(61)
      acd971(62)=acd971(52)+acd971(51)-acd971(50)
      acd971(62)=acd971(30)*acd971(62)
      acd971(63)=acd971(47)*acd971(41)
      acd971(64)=acd971(48)*acd971(42)
      acd971(65)=acd971(53)*acd971(39)
      acd971(57)=acd971(55)+acd971(65)+acd971(64)+acd971(63)+acd971(58)+acd971(&
      &62)+acd971(59)+acd971(61)+acd971(57)
      brack(ninjaidxt1mu0)=acd971(56)
      brack(ninjaidxt0mu0)=acd971(57)
      brack(ninjaidxt0mu2)=acd971(60)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d971h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd971h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d971h5l131
