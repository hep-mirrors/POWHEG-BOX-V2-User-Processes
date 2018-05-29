module     p4_ubaru_epnemumnmubarg_d607h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d607h1l132.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd607
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd607(1)=dotproduct(ninjaE3,spvak1k2)
      acd607(2)=dotproduct(ninjaE3,spvak2k7)
      acd607(3)=dotproduct(ninjaE3,spvak4k3)
      acd607(4)=abb607(12)
      acd607(5)=dotproduct(ninjaE3,spvak5k2)
      acd607(6)=abb607(23)
      acd607(7)=-acd607(4)*acd607(1)
      acd607(8)=acd607(6)*acd607(5)
      acd607(7)=acd607(7)+acd607(8)
      acd607(7)=acd607(7)*acd607(3)*acd607(2)
      brack(ninjaidxt1x0mu0)=acd607(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(49) :: acd607
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd607(1)=dotproduct(ninjaA1,spvak2k7)
      acd607(2)=dotproduct(ninjaE3,spvak1k2)
      acd607(3)=dotproduct(ninjaE3,spvak4k3)
      acd607(4)=abb607(12)
      acd607(5)=dotproduct(ninjaE3,spvak5k2)
      acd607(6)=abb607(23)
      acd607(7)=dotproduct(ninjaA1,spvak1k2)
      acd607(8)=dotproduct(ninjaE3,spvak2k7)
      acd607(9)=dotproduct(ninjaA1,spvak4k3)
      acd607(10)=dotproduct(ninjaA1,spvak5k2)
      acd607(11)=dotproduct(k2,ninjaE3)
      acd607(12)=dotproduct(k7,ninjaE3)
      acd607(13)=abb607(13)
      acd607(14)=dotproduct(ninjaA0,ninjaE3)
      acd607(15)=abb607(11)
      acd607(16)=dotproduct(ninjaE3,spvak4k2)
      acd607(17)=abb607(30)
      acd607(18)=dotproduct(ninjaE3,spvak1k3)
      acd607(19)=abb607(9)
      acd607(20)=dotproduct(ninjaE3,spvak5k3)
      acd607(21)=abb607(27)
      acd607(22)=abb607(14)
      acd607(23)=abb607(26)
      acd607(24)=abb607(20)
      acd607(25)=abb607(28)
      acd607(26)=dotproduct(ninjaA0,spvak2k7)
      acd607(27)=dotproduct(ninjaA0,spvak1k2)
      acd607(28)=dotproduct(ninjaA0,spvak4k3)
      acd607(29)=dotproduct(ninjaA0,spvak5k2)
      acd607(30)=abb607(7)
      acd607(31)=abb607(15)
      acd607(32)=dotproduct(ninjaE3,spvak7k2)
      acd607(33)=abb607(16)
      acd607(34)=dotproduct(ninjaE3,spvak1k7)
      acd607(35)=abb607(19)
      acd607(36)=dotproduct(ninjaE3,spvak5k7)
      acd607(37)=abb607(31)
      acd607(38)=abb607(21)
      acd607(39)=abb607(29)
      acd607(40)=acd607(6)*acd607(5)
      acd607(41)=acd607(4)*acd607(2)
      acd607(40)=acd607(40)-acd607(41)
      acd607(41)=acd607(9)*acd607(40)
      acd607(42)=acd607(6)*acd607(10)
      acd607(43)=-acd607(4)*acd607(7)
      acd607(42)=acd607(42)+acd607(43)
      acd607(42)=acd607(3)*acd607(42)
      acd607(41)=acd607(42)+acd607(41)
      acd607(41)=acd607(8)*acd607(41)
      acd607(42)=acd607(3)*acd607(1)*acd607(40)
      acd607(41)=acd607(42)+acd607(41)
      acd607(42)=acd607(28)*acd607(40)
      acd607(43)=acd607(6)*acd607(29)
      acd607(44)=-acd607(4)*acd607(27)
      acd607(43)=acd607(43)+acd607(44)
      acd607(43)=acd607(3)*acd607(43)
      acd607(44)=acd607(36)*acd607(37)
      acd607(45)=acd607(34)*acd607(35)
      acd607(46)=acd607(15)*acd607(32)
      acd607(47)=acd607(20)*acd607(33)
      acd607(48)=acd607(18)*acd607(31)
      acd607(49)=acd607(16)*acd607(30)
      acd607(42)=acd607(43)+acd607(49)+acd607(48)+acd607(47)+acd607(46)+acd607(&
      &44)+acd607(45)+acd607(42)
      acd607(42)=acd607(8)*acd607(42)
      acd607(43)=acd607(11)*acd607(13)
      acd607(44)=acd607(20)*acd607(21)
      acd607(45)=acd607(18)*acd607(19)
      acd607(46)=acd607(16)*acd607(17)
      acd607(43)=acd607(46)+acd607(45)+acd607(43)+acd607(44)
      acd607(43)=acd607(12)*acd607(43)
      acd607(44)=-acd607(11)*acd607(15)
      acd607(45)=acd607(20)*acd607(25)
      acd607(46)=acd607(18)*acd607(23)
      acd607(47)=acd607(16)*acd607(22)
      acd607(44)=acd607(47)+acd607(46)+acd607(44)+acd607(45)
      acd607(45)=2.0_ki*acd607(14)
      acd607(44)=acd607(44)*acd607(45)
      acd607(40)=acd607(26)*acd607(40)
      acd607(46)=acd607(36)*acd607(39)
      acd607(47)=-acd607(34)*acd607(38)
      acd607(45)=acd607(24)*acd607(45)
      acd607(40)=acd607(45)+acd607(46)+acd607(47)+acd607(40)
      acd607(40)=acd607(3)*acd607(40)
      acd607(40)=acd607(42)+acd607(40)+acd607(43)+acd607(44)
      brack(ninjaidxt0x0mu0)=acd607(40)
      brack(ninjaidxt0x1mu0)=acd607(41)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d607h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p4_ubaru_epnemumnmubarg_d607h1l132
