module     p4_ubaru_epnemumnmubarg_d281h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d281h5l132.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd281h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd281
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd281(1)=dotproduct(k2,ninjaE3)
      acd281(2)=dotproduct(ninjaE3,spvak5k6)
      acd281(3)=abb281(21)
      acd281(4)=dotproduct(k3,ninjaE3)
      acd281(5)=dotproduct(k4,ninjaE3)
      acd281(6)=dotproduct(ninjaE3,spvak4k2)
      acd281(7)=abb281(8)
      acd281(8)=dotproduct(ninjaE3,spvak4k3)
      acd281(9)=abb281(10)
      acd281(10)=dotproduct(ninjaE3,spvak1k3)
      acd281(11)=abb281(11)
      acd281(12)=dotproduct(ninjaE3,spvak1k2)
      acd281(13)=abb281(14)
      acd281(14)=dotproduct(ninjaE3,spvak7k2)
      acd281(15)=abb281(24)
      acd281(16)=dotproduct(ninjaE3,spvak7k3)
      acd281(17)=abb281(25)
      acd281(18)=acd281(5)-acd281(1)+acd281(4)
      acd281(18)=acd281(18)*acd281(3)
      acd281(19)=acd281(7)*acd281(6)
      acd281(20)=acd281(9)*acd281(8)
      acd281(21)=acd281(11)*acd281(10)
      acd281(22)=acd281(13)*acd281(12)
      acd281(23)=acd281(15)*acd281(14)
      acd281(24)=acd281(17)*acd281(16)
      acd281(18)=acd281(18)+acd281(24)+acd281(23)+acd281(22)+acd281(21)+acd281(&
      &20)+acd281(19)
      acd281(18)=acd281(2)*acd281(18)
      brack(ninjaidxt1x0mu0)=acd281(18)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd281h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(56) :: acd281
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd281(1)=dotproduct(k2,ninjaA1)
      acd281(2)=dotproduct(ninjaE3,spvak5k6)
      acd281(3)=abb281(21)
      acd281(4)=dotproduct(k2,ninjaE3)
      acd281(5)=dotproduct(ninjaA1,spvak5k6)
      acd281(6)=dotproduct(k3,ninjaA1)
      acd281(7)=dotproduct(k3,ninjaE3)
      acd281(8)=dotproduct(k4,ninjaA1)
      acd281(9)=dotproduct(k4,ninjaE3)
      acd281(10)=dotproduct(ninjaA1,spvak4k2)
      acd281(11)=abb281(8)
      acd281(12)=dotproduct(ninjaE3,spvak4k2)
      acd281(13)=dotproduct(ninjaE3,spvak4k3)
      acd281(14)=abb281(10)
      acd281(15)=dotproduct(ninjaE3,spvak1k3)
      acd281(16)=abb281(11)
      acd281(17)=dotproduct(ninjaE3,spvak1k2)
      acd281(18)=abb281(14)
      acd281(19)=dotproduct(ninjaE3,spvak7k2)
      acd281(20)=abb281(24)
      acd281(21)=dotproduct(ninjaE3,spvak7k3)
      acd281(22)=abb281(25)
      acd281(23)=dotproduct(ninjaA1,spvak4k3)
      acd281(24)=dotproduct(ninjaA1,spvak1k3)
      acd281(25)=dotproduct(ninjaA1,spvak1k2)
      acd281(26)=dotproduct(ninjaA1,spvak7k2)
      acd281(27)=dotproduct(ninjaA1,spvak7k3)
      acd281(28)=dotproduct(k2,ninjaA0)
      acd281(29)=dotproduct(ninjaA0,spvak5k6)
      acd281(30)=dotproduct(k3,ninjaA0)
      acd281(31)=dotproduct(k4,ninjaA0)
      acd281(32)=dotproduct(k5,ninjaE3)
      acd281(33)=abb281(17)
      acd281(34)=dotproduct(k6,ninjaE3)
      acd281(35)=dotproduct(ninjaA0,ninjaE3)
      acd281(36)=abb281(13)
      acd281(37)=dotproduct(ninjaA0,spvak4k2)
      acd281(38)=dotproduct(ninjaA0,spvak4k3)
      acd281(39)=dotproduct(ninjaA0,spvak1k3)
      acd281(40)=dotproduct(ninjaA0,spvak1k2)
      acd281(41)=dotproduct(ninjaA0,spvak7k2)
      acd281(42)=dotproduct(ninjaA0,spvak7k3)
      acd281(43)=abb281(12)
      acd281(44)=dotproduct(ninjaE3,spvak1k6)
      acd281(45)=abb281(9)
      acd281(46)=dotproduct(ninjaE3,spvak7k6)
      acd281(47)=abb281(19)
      acd281(48)=-acd281(9)+acd281(4)-acd281(7)
      acd281(48)=acd281(48)*acd281(3)
      acd281(49)=acd281(22)*acd281(21)
      acd281(50)=acd281(20)*acd281(19)
      acd281(51)=acd281(18)*acd281(17)
      acd281(52)=acd281(16)*acd281(15)
      acd281(53)=acd281(14)*acd281(13)
      acd281(54)=acd281(11)*acd281(12)
      acd281(48)=-acd281(48)+acd281(49)+acd281(50)+acd281(51)+acd281(52)+acd281&
      &(53)+acd281(54)
      acd281(49)=acd281(5)*acd281(48)
      acd281(50)=acd281(22)*acd281(27)
      acd281(51)=acd281(20)*acd281(26)
      acd281(52)=acd281(18)*acd281(25)
      acd281(53)=acd281(16)*acd281(24)
      acd281(54)=acd281(14)*acd281(23)
      acd281(55)=acd281(11)*acd281(10)
      acd281(56)=-acd281(1)+acd281(8)+acd281(6)
      acd281(56)=acd281(3)*acd281(56)
      acd281(50)=acd281(56)+acd281(55)+acd281(54)+acd281(53)+acd281(52)+acd281(&
      &50)+acd281(51)
      acd281(50)=acd281(2)*acd281(50)
      acd281(49)=acd281(50)+acd281(49)
      acd281(48)=acd281(29)*acd281(48)
      acd281(50)=acd281(22)*acd281(42)
      acd281(51)=acd281(20)*acd281(41)
      acd281(52)=acd281(18)*acd281(40)
      acd281(53)=acd281(16)*acd281(39)
      acd281(54)=acd281(14)*acd281(38)
      acd281(55)=acd281(11)*acd281(37)
      acd281(56)=-acd281(28)+acd281(31)+acd281(30)
      acd281(56)=acd281(3)*acd281(56)
      acd281(50)=acd281(56)+acd281(55)+acd281(54)+acd281(53)+acd281(52)+acd281(&
      &51)+acd281(43)+acd281(50)
      acd281(50)=acd281(2)*acd281(50)
      acd281(51)=acd281(46)*acd281(47)
      acd281(52)=acd281(44)*acd281(45)
      acd281(53)=acd281(35)*acd281(36)
      acd281(54)=acd281(34)+acd281(32)
      acd281(54)=acd281(33)*acd281(54)
      acd281(48)=acd281(50)+acd281(54)+2.0_ki*acd281(53)+acd281(51)+acd281(52)+&
      &acd281(48)
      brack(ninjaidxt0x0mu0)=acd281(48)
      brack(ninjaidxt0x1mu0)=acd281(49)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d281h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd281h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k6-k5-k4
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p4_ubaru_epnemumnmubarg_d281h5l132
