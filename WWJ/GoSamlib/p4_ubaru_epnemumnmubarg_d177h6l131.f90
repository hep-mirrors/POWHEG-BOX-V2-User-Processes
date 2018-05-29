module     p4_ubaru_epnemumnmubarg_d177h6l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity6d177h6l131.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd177h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd177(1)=dotproduct(k3,ninjaE3)
      acd177(2)=dotproduct(ninjaE3,spvak2k1)
      acd177(3)=abb177(15)
      acd177(4)=dotproduct(k4,ninjaE3)
      acd177(5)=dotproduct(k5,ninjaE3)
      acd177(6)=dotproduct(k6,ninjaE3)
      acd177(7)=dotproduct(ninjaE3,spvak5k6)
      acd177(8)=abb177(17)
      acd177(9)=dotproduct(ninjaE3,spvak5k3)
      acd177(10)=abb177(18)
      acd177(11)=dotproduct(ninjaE3,spvak4k6)
      acd177(12)=abb177(19)
      acd177(13)=dotproduct(ninjaE3,spvak4k3)
      acd177(14)=abb177(20)
      acd177(15)=-acd177(6)-acd177(5)+acd177(1)+acd177(4)
      acd177(15)=acd177(15)*acd177(3)
      acd177(16)=acd177(8)*acd177(7)
      acd177(17)=acd177(10)*acd177(9)
      acd177(18)=acd177(12)*acd177(11)
      acd177(19)=acd177(14)*acd177(13)
      acd177(15)=acd177(15)+acd177(19)+acd177(18)+acd177(17)+acd177(16)
      acd177(15)=acd177(2)*acd177(15)
      brack(ninjaidxt2mu0)=acd177(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd177h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(74) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd177(1)=dotproduct(k3,ninjaE3)
      acd177(2)=dotproduct(ninjaE4,spvak2k1)
      acd177(3)=abb177(15)
      acd177(4)=dotproduct(k3,ninjaE4)
      acd177(5)=dotproduct(ninjaE3,spvak2k1)
      acd177(6)=dotproduct(k4,ninjaE3)
      acd177(7)=dotproduct(k4,ninjaE4)
      acd177(8)=dotproduct(k5,ninjaE3)
      acd177(9)=dotproduct(k5,ninjaE4)
      acd177(10)=dotproduct(k6,ninjaE3)
      acd177(11)=dotproduct(k6,ninjaE4)
      acd177(12)=dotproduct(ninjaE4,spvak5k6)
      acd177(13)=abb177(17)
      acd177(14)=dotproduct(ninjaE4,spvak5k3)
      acd177(15)=abb177(18)
      acd177(16)=dotproduct(ninjaE4,spvak4k6)
      acd177(17)=abb177(19)
      acd177(18)=dotproduct(ninjaE4,spvak4k3)
      acd177(19)=abb177(20)
      acd177(20)=dotproduct(ninjaE3,spvak5k6)
      acd177(21)=dotproduct(ninjaE3,spvak5k3)
      acd177(22)=dotproduct(ninjaE3,spvak4k6)
      acd177(23)=dotproduct(ninjaE3,spvak4k3)
      acd177(24)=abb177(40)
      acd177(25)=dotproduct(k1,ninjaE3)
      acd177(26)=abb177(39)
      acd177(27)=dotproduct(k3,ninjaA)
      acd177(28)=dotproduct(ninjaA,spvak2k1)
      acd177(29)=dotproduct(k4,ninjaA)
      acd177(30)=dotproduct(k5,ninjaA)
      acd177(31)=dotproduct(k6,ninjaA)
      acd177(32)=dotproduct(ninjaA,ninjaE3)
      acd177(33)=dotproduct(ninjaA,spvak5k6)
      acd177(34)=dotproduct(ninjaA,spvak5k3)
      acd177(35)=dotproduct(ninjaA,spvak4k6)
      acd177(36)=dotproduct(ninjaA,spvak4k3)
      acd177(37)=abb177(13)
      acd177(38)=dotproduct(ninjaE3,spvak2k6)
      acd177(39)=abb177(14)
      acd177(40)=dotproduct(ninjaE3,spvak2k3)
      acd177(41)=abb177(16)
      acd177(42)=dotproduct(ninjaE3,spvak7k1)
      acd177(43)=abb177(25)
      acd177(44)=dotproduct(ninjaE3,spvak2k5)
      acd177(45)=abb177(26)
      acd177(46)=dotproduct(ninjaE3,spvak2k7)
      acd177(47)=abb177(27)
      acd177(48)=dotproduct(ninjaE3,spvak2k4)
      acd177(49)=abb177(33)
      acd177(50)=dotproduct(k1,ninjaA)
      acd177(51)=dotproduct(ninjaA,ninjaA)
      acd177(52)=dotproduct(ninjaA,spvak2k6)
      acd177(53)=dotproduct(ninjaA,spvak2k3)
      acd177(54)=dotproduct(ninjaA,spvak7k1)
      acd177(55)=dotproduct(ninjaA,spvak2k5)
      acd177(56)=dotproduct(ninjaA,spvak2k7)
      acd177(57)=dotproduct(ninjaA,spvak2k4)
      acd177(58)=abb177(31)
      acd177(59)=acd177(20)*acd177(13)
      acd177(60)=acd177(21)*acd177(15)
      acd177(61)=acd177(22)*acd177(17)
      acd177(62)=acd177(23)*acd177(19)
      acd177(59)=acd177(59)+acd177(60)+acd177(61)+acd177(62)
      acd177(60)=-acd177(1)-acd177(6)+acd177(10)+acd177(8)
      acd177(61)=acd177(60)*acd177(3)
      acd177(61)=acd177(61)-acd177(59)
      acd177(61)=acd177(61)*acd177(2)
      acd177(62)=acd177(12)*acd177(13)
      acd177(63)=acd177(14)*acd177(15)
      acd177(64)=acd177(16)*acd177(17)
      acd177(65)=acd177(18)*acd177(19)
      acd177(62)=acd177(63)+acd177(62)+acd177(64)+acd177(65)
      acd177(62)=acd177(62)*acd177(5)
      acd177(63)=-acd177(11)-acd177(9)+acd177(7)+acd177(4)
      acd177(64)=acd177(5)*acd177(3)
      acd177(63)=acd177(63)*acd177(64)
      acd177(61)=acd177(61)-acd177(62)-acd177(63)-acd177(24)
      acd177(59)=acd177(28)*acd177(59)
      acd177(62)=acd177(33)*acd177(13)
      acd177(63)=acd177(34)*acd177(15)
      acd177(65)=acd177(35)*acd177(17)
      acd177(66)=acd177(36)*acd177(19)
      acd177(62)=acd177(65)+acd177(62)+acd177(63)+acd177(66)+acd177(37)
      acd177(63)=acd177(5)*acd177(62)
      acd177(65)=-acd177(31)-acd177(30)+acd177(29)+acd177(27)
      acd177(64)=acd177(64)*acd177(65)
      acd177(66)=acd177(28)*acd177(3)
      acd177(60)=-acd177(66)*acd177(60)
      acd177(67)=acd177(25)*acd177(26)
      acd177(68)=acd177(32)*acd177(24)
      acd177(69)=acd177(38)*acd177(39)
      acd177(70)=acd177(40)*acd177(41)
      acd177(71)=acd177(42)*acd177(43)
      acd177(72)=acd177(44)*acd177(45)
      acd177(73)=acd177(46)*acd177(47)
      acd177(74)=acd177(48)*acd177(49)
      acd177(59)=acd177(74)+acd177(73)+acd177(72)+acd177(71)+acd177(70)+acd177(&
      &69)+2.0_ki*acd177(68)+acd177(67)+acd177(63)+acd177(60)+acd177(64)+acd177&
      &(59)
      acd177(60)=-ninjaP*acd177(61)
      acd177(62)=acd177(28)*acd177(62)
      acd177(63)=acd177(66)*acd177(65)
      acd177(64)=acd177(50)*acd177(26)
      acd177(65)=acd177(51)*acd177(24)
      acd177(66)=acd177(52)*acd177(39)
      acd177(67)=acd177(53)*acd177(41)
      acd177(68)=acd177(54)*acd177(43)
      acd177(69)=acd177(55)*acd177(45)
      acd177(70)=acd177(56)*acd177(47)
      acd177(71)=acd177(57)*acd177(49)
      acd177(60)=acd177(58)+acd177(71)+acd177(70)+acd177(69)+acd177(68)+acd177(&
      &67)+acd177(66)+acd177(65)+acd177(64)+acd177(62)+acd177(63)+acd177(60)
      brack(ninjaidxt1mu0)=acd177(59)
      brack(ninjaidxt0mu0)=acd177(60)
      brack(ninjaidxt0mu2)=-acd177(61)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d177h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd177h6
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
end module     p4_ubaru_epnemumnmubarg_d177h6l131
