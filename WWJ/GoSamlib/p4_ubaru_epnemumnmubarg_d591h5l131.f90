module     p4_ubaru_epnemumnmubarg_d591h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d591h5l131.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd591h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd591
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd591(1)=dotproduct(ninjaE3,spvak1k2)
      acd591(2)=dotproduct(ninjaE3,spvak4k3)
      acd591(3)=dotproduct(ninjaE3,spvak7k2)
      acd591(4)=abb591(13)
      acd591(5)=dotproduct(ninjaE3,spvak5k2)
      acd591(6)=abb591(25)
      acd591(7)=acd591(4)*acd591(1)
      acd591(8)=-acd591(6)*acd591(5)
      acd591(7)=acd591(7)+acd591(8)
      acd591(7)=acd591(7)*acd591(3)*acd591(2)
      brack(ninjaidxt2mu0)=acd591(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd591h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(66) :: acd591
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd591(1)=dotproduct(ninjaE3,spvak4k2)
      acd591(2)=abb591(29)
      acd591(3)=dotproduct(ninjaE3,spvak1k2)
      acd591(4)=dotproduct(ninjaE3,spvak4k3)
      acd591(5)=dotproduct(ninjaE4,spvak7k2)
      acd591(6)=abb591(13)
      acd591(7)=dotproduct(ninjaE3,spvak7k2)
      acd591(8)=dotproduct(ninjaE4,spvak4k3)
      acd591(9)=abb591(14)
      acd591(10)=dotproduct(ninjaE4,spvak1k2)
      acd591(11)=dotproduct(ninjaE4,spvak5k2)
      acd591(12)=abb591(25)
      acd591(13)=dotproduct(ninjaE3,spvak5k2)
      acd591(14)=abb591(16)
      acd591(15)=abb591(24)
      acd591(16)=dotproduct(k3,ninjaE3)
      acd591(17)=abb591(28)
      acd591(18)=abb591(15)
      acd591(19)=abb591(23)
      acd591(20)=dotproduct(k4,ninjaE3)
      acd591(21)=dotproduct(ninjaA,ninjaE3)
      acd591(22)=dotproduct(ninjaA,spvak1k2)
      acd591(23)=dotproduct(ninjaA,spvak4k3)
      acd591(24)=dotproduct(ninjaA,spvak7k2)
      acd591(25)=dotproduct(ninjaA,spvak5k2)
      acd591(26)=abb591(12)
      acd591(27)=dotproduct(ninjaE3,spvak3k2)
      acd591(28)=abb591(9)
      acd591(29)=abb591(11)
      acd591(30)=abb591(19)
      acd591(31)=dotproduct(ninjaE3,spvak1k3)
      acd591(32)=abb591(21)
      acd591(33)=dotproduct(ninjaE3,spvak5k3)
      acd591(34)=abb591(22)
      acd591(35)=dotproduct(k3,ninjaA)
      acd591(36)=dotproduct(ninjaA,spvak4k2)
      acd591(37)=dotproduct(k4,ninjaA)
      acd591(38)=dotproduct(ninjaA,ninjaA)
      acd591(39)=abb591(10)
      acd591(40)=dotproduct(ninjaA,spvak3k2)
      acd591(41)=dotproduct(ninjaA,spvak1k3)
      acd591(42)=dotproduct(ninjaA,spvak5k3)
      acd591(43)=abb591(7)
      acd591(44)=abb591(8)
      acd591(45)=abb591(17)
      acd591(46)=dotproduct(ninjaE3,spvak5k4)
      acd591(47)=abb591(18)
      acd591(48)=abb591(20)
      acd591(49)=dotproduct(ninjaE3,spvak1k4)
      acd591(50)=abb591(26)
      acd591(51)=acd591(13)*acd591(12)
      acd591(52)=acd591(3)*acd591(6)
      acd591(51)=acd591(51)-acd591(52)
      acd591(52)=-acd591(8)*acd591(51)
      acd591(53)=acd591(6)*acd591(10)
      acd591(54)=acd591(12)*acd591(11)
      acd591(53)=acd591(53)-acd591(54)
      acd591(54)=acd591(4)*acd591(53)
      acd591(52)=acd591(54)-acd591(14)+acd591(52)
      acd591(52)=acd591(7)*acd591(52)
      acd591(54)=-acd591(4)*acd591(5)*acd591(51)
      acd591(55)=acd591(1)*acd591(2)
      acd591(56)=acd591(13)*acd591(15)
      acd591(57)=acd591(3)*acd591(9)
      acd591(52)=acd591(52)+acd591(54)+acd591(57)+acd591(55)+acd591(56)
      acd591(54)=acd591(17)*acd591(27)
      acd591(55)=acd591(1)*acd591(26)
      acd591(56)=acd591(12)*acd591(24)
      acd591(56)=acd591(56)-acd591(30)
      acd591(57)=-acd591(13)*acd591(56)
      acd591(58)=acd591(6)*acd591(24)
      acd591(58)=acd591(58)+acd591(28)
      acd591(59)=acd591(3)*acd591(58)
      acd591(54)=acd591(59)+acd591(57)+acd591(54)+acd591(55)
      acd591(54)=acd591(4)*acd591(54)
      acd591(55)=acd591(16)+acd591(20)
      acd591(57)=2.0_ki*acd591(21)
      acd591(59)=acd591(55)-acd591(57)
      acd591(59)=acd591(59)*acd591(14)
      acd591(60)=acd591(33)*acd591(34)
      acd591(61)=acd591(31)*acd591(32)
      acd591(59)=acd591(59)+acd591(60)+acd591(61)
      acd591(60)=-acd591(23)*acd591(51)
      acd591(61)=acd591(12)*acd591(25)
      acd591(62)=acd591(6)*acd591(22)
      acd591(61)=-acd591(29)+acd591(61)-acd591(62)
      acd591(62)=-acd591(4)*acd591(61)
      acd591(60)=acd591(62)+acd591(60)+acd591(59)
      acd591(60)=acd591(7)*acd591(60)
      acd591(62)=acd591(2)*acd591(57)
      acd591(63)=-acd591(17)*acd591(55)
      acd591(62)=acd591(62)+acd591(63)
      acd591(62)=acd591(1)*acd591(62)
      acd591(63)=-acd591(19)*acd591(55)
      acd591(64)=acd591(15)*acd591(57)
      acd591(63)=acd591(64)+acd591(63)
      acd591(63)=acd591(13)*acd591(63)
      acd591(64)=acd591(18)*acd591(55)
      acd591(65)=acd591(9)*acd591(57)
      acd591(64)=acd591(65)+acd591(64)
      acd591(64)=acd591(3)*acd591(64)
      acd591(54)=acd591(60)+acd591(54)+acd591(64)+acd591(62)+acd591(63)
      acd591(51)=-ninjaP*acd591(51)
      acd591(60)=acd591(5)*acd591(51)
      acd591(62)=-acd591(25)*acd591(56)
      acd591(63)=acd591(22)*acd591(58)
      acd591(64)=acd591(36)*acd591(26)
      acd591(65)=acd591(17)*acd591(40)
      acd591(66)=acd591(24)*acd591(29)
      acd591(60)=acd591(66)+acd591(65)+acd591(64)+acd591(63)+acd591(62)+acd591(&
      &60)
      acd591(60)=acd591(4)*acd591(60)
      acd591(61)=-acd591(23)*acd591(61)
      acd591(51)=acd591(8)*acd591(51)
      acd591(62)=ninjaP+acd591(38)
      acd591(63)=acd591(35)+acd591(37)
      acd591(64)=acd591(63)-acd591(62)
      acd591(64)=acd591(14)*acd591(64)
      acd591(53)=acd591(4)*ninjaP*acd591(53)
      acd591(65)=acd591(34)*acd591(42)
      acd591(66)=acd591(32)*acd591(41)
      acd591(51)=acd591(53)+acd591(64)+acd591(65)+acd591(66)+acd591(51)+acd591(&
      &61)
      acd591(51)=acd591(7)*acd591(51)
      acd591(53)=acd591(2)*acd591(36)
      acd591(61)=acd591(25)*acd591(15)
      acd591(64)=acd591(22)*acd591(9)
      acd591(53)=acd591(64)+acd591(61)+acd591(39)+acd591(53)
      acd591(53)=acd591(53)*acd591(57)
      acd591(57)=acd591(2)*acd591(62)
      acd591(61)=-acd591(17)*acd591(63)
      acd591(64)=acd591(23)*acd591(26)
      acd591(57)=acd591(64)+acd591(61)+acd591(43)+acd591(57)
      acd591(57)=acd591(1)*acd591(57)
      acd591(59)=acd591(24)*acd591(59)
      acd591(61)=acd591(15)*acd591(62)
      acd591(56)=-acd591(23)*acd591(56)
      acd591(64)=-acd591(19)*acd591(63)
      acd591(56)=acd591(64)+acd591(56)+acd591(61)
      acd591(56)=acd591(13)*acd591(56)
      acd591(61)=acd591(9)*acd591(62)
      acd591(58)=acd591(23)*acd591(58)
      acd591(62)=acd591(18)*acd591(63)
      acd591(58)=acd591(62)+acd591(58)+acd591(61)
      acd591(58)=acd591(3)*acd591(58)
      acd591(61)=acd591(25)*acd591(19)
      acd591(62)=acd591(22)*acd591(18)
      acd591(61)=acd591(61)-acd591(62)
      acd591(61)=-acd591(61)*acd591(55)
      acd591(55)=-acd591(36)*acd591(55)
      acd591(62)=acd591(23)*acd591(27)
      acd591(55)=acd591(62)+acd591(55)
      acd591(55)=acd591(17)*acd591(55)
      acd591(62)=acd591(49)*acd591(50)
      acd591(63)=acd591(46)*acd591(47)
      acd591(64)=acd591(33)*acd591(48)
      acd591(65)=acd591(31)*acd591(45)
      acd591(66)=acd591(27)*acd591(44)
      acd591(51)=acd591(51)+acd591(60)+acd591(58)+acd591(56)+acd591(59)+acd591(&
      &57)+acd591(53)+acd591(66)+acd591(65)+acd591(64)+acd591(62)+acd591(63)+ac&
      &d591(55)+acd591(61)
      brack(ninjaidxt1mu0)=acd591(54)
      brack(ninjaidxt0mu0)=acd591(51)
      brack(ninjaidxt0mu2)=acd591(52)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d591h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd591h5
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
end module     p4_ubaru_epnemumnmubarg_d591h5l131
