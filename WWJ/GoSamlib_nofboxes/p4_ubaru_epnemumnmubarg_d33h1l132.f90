module     p4_ubaru_epnemumnmubarg_d33h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d33h1l132.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd33(1)=dotproduct(ninjaE3,spvak1k2)
      acd33(2)=dotproduct(ninjaE3,spvak4k3)
      acd33(3)=dotproduct(ninjaE3,spvak5k6)
      acd33(4)=abb33(31)
      acd33(5)=acd33(4)*acd33(3)*acd33(2)*acd33(1)
      brack(ninjaidxt1x0mu0)=acd33(5)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(50) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd33(1)=dotproduct(ninjaA1,spvak5k6)
      acd33(2)=dotproduct(ninjaE3,spvak4k3)
      acd33(3)=dotproduct(ninjaE3,spvak1k2)
      acd33(4)=abb33(31)
      acd33(5)=dotproduct(ninjaA1,spvak4k3)
      acd33(6)=dotproduct(ninjaE3,spvak5k6)
      acd33(7)=dotproduct(ninjaA1,spvak1k2)
      acd33(8)=dotproduct(k1,ninjaE3)
      acd33(9)=abb33(22)
      acd33(10)=dotproduct(k2,ninjaE3)
      acd33(11)=abb33(30)
      acd33(12)=dotproduct(ninjaE3,spvak5k2)
      acd33(13)=abb33(35)
      acd33(14)=dotproduct(ninjaE3,spvak4k2)
      acd33(15)=abb33(15)
      acd33(16)=dotproduct(ninjaE3,spvak1k6)
      acd33(17)=abb33(23)
      acd33(18)=dotproduct(k3,ninjaE3)
      acd33(19)=dotproduct(k4,ninjaE3)
      acd33(20)=dotproduct(ninjaA0,ninjaE3)
      acd33(21)=abb33(33)
      acd33(22)=abb33(34)
      acd33(23)=abb33(19)
      acd33(24)=abb33(18)
      acd33(25)=dotproduct(ninjaA0,spvak5k6)
      acd33(26)=dotproduct(ninjaA0,spvak4k3)
      acd33(27)=dotproduct(ninjaA0,spvak1k2)
      acd33(28)=dotproduct(ninjaE3,spvak1k3)
      acd33(29)=abb33(9)
      acd33(30)=abb33(17)
      acd33(31)=abb33(27)
      acd33(32)=dotproduct(ninjaE3,spvak1k7)
      acd33(33)=abb33(12)
      acd33(34)=abb33(14)
      acd33(35)=abb33(37)
      acd33(36)=abb33(26)
      acd33(37)=dotproduct(ninjaE3,spvak3k2)
      acd33(38)=abb33(25)
      acd33(39)=dotproduct(ninjaE3,spvak7k2)
      acd33(40)=abb33(38)
      acd33(41)=acd33(1)*acd33(2)
      acd33(42)=acd33(5)*acd33(6)
      acd33(41)=acd33(41)+acd33(42)
      acd33(42)=acd33(4)*acd33(3)
      acd33(41)=acd33(42)*acd33(41)
      acd33(43)=acd33(4)*acd33(6)
      acd33(44)=acd33(7)*acd33(2)*acd33(43)
      acd33(41)=acd33(44)+acd33(41)
      acd33(44)=acd33(25)*acd33(42)
      acd33(43)=acd33(27)*acd33(43)
      acd33(45)=acd33(33)*acd33(32)
      acd33(46)=acd33(34)*acd33(12)
      acd33(47)=acd33(35)*acd33(14)
      acd33(48)=acd33(36)*acd33(16)
      acd33(49)=acd33(37)*acd33(23)
      acd33(50)=acd33(40)*acd33(39)
      acd33(43)=acd33(50)+acd33(49)+acd33(48)+acd33(47)+acd33(46)+acd33(45)+acd&
      &33(43)+acd33(44)
      acd33(43)=acd33(2)*acd33(43)
      acd33(44)=-acd33(23)*acd33(14)
      acd33(45)=acd33(21)*acd33(6)
      acd33(46)=acd33(22)*acd33(12)
      acd33(47)=acd33(24)*acd33(16)
      acd33(44)=acd33(47)+acd33(46)+acd33(45)+acd33(44)
      acd33(45)=2.0_ki*acd33(20)
      acd33(44)=acd33(45)*acd33(44)
      acd33(45)=acd33(13)*acd33(12)
      acd33(46)=acd33(15)*acd33(14)
      acd33(47)=acd33(17)*acd33(16)
      acd33(45)=-acd33(47)+acd33(45)-acd33(46)
      acd33(46)=acd33(19)+acd33(18)
      acd33(46)=acd33(45)*acd33(46)
      acd33(42)=acd33(26)*acd33(42)
      acd33(47)=acd33(29)*acd33(28)
      acd33(48)=acd33(30)*acd33(14)
      acd33(42)=acd33(48)+acd33(47)+acd33(42)
      acd33(42)=acd33(6)*acd33(42)
      acd33(47)=acd33(9)*acd33(2)
      acd33(48)=acd33(11)*acd33(6)
      acd33(45)=acd33(48)-acd33(47)-acd33(45)
      acd33(45)=acd33(10)*acd33(45)
      acd33(48)=acd33(31)*acd33(6)
      acd33(49)=acd33(38)*acd33(2)
      acd33(48)=acd33(49)+acd33(48)
      acd33(48)=acd33(3)*acd33(48)
      acd33(47)=-acd33(8)*acd33(47)
      acd33(42)=acd33(47)+acd33(43)+acd33(45)+acd33(44)+acd33(42)+acd33(46)+acd&
      &33(48)
      brack(ninjaidxt0x0mu0)=acd33(42)
      brack(ninjaidxt0x1mu0)=acd33(41)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d33h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p4_ubaru_epnemumnmubarg_d33h1l132
