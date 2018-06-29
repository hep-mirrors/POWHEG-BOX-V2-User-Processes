module     p12_sbars_epnemumnmubarg_d477h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity5d477h5l132.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd477h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd477
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd477(1)=dotproduct(ninjaE3,spvak1k2)
      acd477(2)=dotproduct(ninjaE3,spvak4k3)
      acd477(3)=dotproduct(ninjaE3,spvak5k6)
      acd477(4)=dotproduct(ninjaE3,spvak7k2)
      acd477(5)=abb477(27)
      acd477(6)=-acd477(5)*acd477(4)*acd477(3)*acd477(2)*acd477(1)
      brack(ninjaidxt1x0mu0)=acd477(6)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd477h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(64) :: acd477
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd477(1)=dotproduct(ninjaA1,spvak5k6)
      acd477(2)=dotproduct(ninjaE3,spvak7k2)
      acd477(3)=dotproduct(ninjaE3,spvak4k3)
      acd477(4)=dotproduct(ninjaE3,spvak1k2)
      acd477(5)=abb477(27)
      acd477(6)=dotproduct(ninjaA1,spvak7k2)
      acd477(7)=dotproduct(ninjaE3,spvak5k6)
      acd477(8)=dotproduct(ninjaA1,spvak4k3)
      acd477(9)=dotproduct(ninjaA1,spvak1k2)
      acd477(10)=dotproduct(k1,ninjaE3)
      acd477(11)=abb477(16)
      acd477(12)=dotproduct(k3,ninjaE3)
      acd477(13)=dotproduct(ninjaE3,spvak1k3)
      acd477(14)=abb477(15)
      acd477(15)=dotproduct(ninjaE3,spvak5k2)
      acd477(16)=abb477(35)
      acd477(17)=dotproduct(ninjaE3,spvak4k2)
      acd477(18)=abb477(44)
      acd477(19)=dotproduct(k4,ninjaE3)
      acd477(20)=dotproduct(k7,ninjaE3)
      acd477(21)=abb477(31)
      acd477(22)=abb477(22)
      acd477(23)=abb477(30)
      acd477(24)=dotproduct(ninjaA0,ninjaE3)
      acd477(25)=abb477(49)
      acd477(26)=abb477(33)
      acd477(27)=abb477(46)
      acd477(28)=abb477(45)
      acd477(29)=abb477(41)
      acd477(30)=abb477(32)
      acd477(31)=abb477(21)
      acd477(32)=dotproduct(ninjaA0,spvak5k6)
      acd477(33)=dotproduct(ninjaA0,spvak7k2)
      acd477(34)=dotproduct(ninjaA0,spvak4k3)
      acd477(35)=dotproduct(ninjaA0,spvak1k2)
      acd477(36)=abb477(7)
      acd477(37)=abb477(11)
      acd477(38)=abb477(36)
      acd477(39)=abb477(34)
      acd477(40)=dotproduct(ninjaE3,spvak1k7)
      acd477(41)=abb477(42)
      acd477(42)=abb477(10)
      acd477(43)=abb477(20)
      acd477(44)=abb477(39)
      acd477(45)=dotproduct(ninjaE3,spvak3k2)
      acd477(46)=abb477(47)
      acd477(47)=dotproduct(ninjaE3,spvak1k6)
      acd477(48)=abb477(48)
      acd477(49)=dotproduct(ninjaE3,spvak1k4)
      acd477(50)=acd477(4)*acd477(5)
      acd477(51)=-acd477(1)*acd477(50)
      acd477(52)=acd477(7)*acd477(5)
      acd477(53)=-acd477(9)*acd477(52)
      acd477(51)=acd477(51)+acd477(53)
      acd477(51)=acd477(3)*acd477(51)
      acd477(53)=acd477(52)*acd477(4)
      acd477(54)=-acd477(8)*acd477(53)
      acd477(51)=acd477(54)+acd477(51)
      acd477(51)=acd477(2)*acd477(51)
      acd477(53)=acd477(3)*acd477(53)
      acd477(54)=-acd477(6)*acd477(53)
      acd477(51)=acd477(54)+acd477(51)
      acd477(54)=acd477(47)*acd477(48)
      acd477(55)=acd477(10)*acd477(11)
      acd477(56)=acd477(40)*acd477(46)
      acd477(57)=acd477(31)*acd477(45)
      acd477(58)=-acd477(25)*acd477(49)
      acd477(59)=acd477(15)*acd477(42)
      acd477(60)=acd477(13)*acd477(37)
      acd477(61)=2.0_ki*acd477(24)
      acd477(62)=acd477(29)*acd477(61)
      acd477(63)=acd477(17)*acd477(44)
      acd477(64)=-acd477(5)*acd477(32)
      acd477(64)=acd477(43)+acd477(64)
      acd477(64)=acd477(4)*acd477(64)
      acd477(52)=-acd477(35)*acd477(52)
      acd477(52)=acd477(52)+acd477(64)+acd477(63)+acd477(62)+acd477(60)+acd477(&
      &59)+acd477(58)+acd477(57)+acd477(56)+acd477(54)+acd477(55)
      acd477(52)=acd477(3)*acd477(52)
      acd477(54)=acd477(27)*acd477(40)
      acd477(55)=acd477(20)*acd477(21)
      acd477(56)=acd477(13)*acd477(36)
      acd477(57)=acd477(26)*acd477(61)
      acd477(58)=acd477(17)*acd477(39)
      acd477(50)=-acd477(34)*acd477(50)
      acd477(50)=acd477(50)+acd477(58)+acd477(57)+acd477(56)+acd477(54)+acd477(&
      &55)
      acd477(50)=acd477(7)*acd477(50)
      acd477(54)=acd477(15)*acd477(16)
      acd477(55)=acd477(13)*acd477(14)
      acd477(54)=acd477(55)+acd477(54)
      acd477(55)=acd477(20)+acd477(12)+acd477(19)
      acd477(54)=acd477(55)*acd477(54)
      acd477(56)=acd477(15)*acd477(30)
      acd477(57)=-acd477(13)*acd477(25)
      acd477(56)=acd477(56)+acd477(57)
      acd477(56)=acd477(56)*acd477(61)
      acd477(55)=-acd477(18)*acd477(55)
      acd477(57)=acd477(31)*acd477(61)
      acd477(55)=acd477(57)+acd477(55)
      acd477(55)=acd477(17)*acd477(55)
      acd477(57)=acd477(7)*acd477(38)
      acd477(58)=acd477(3)*acd477(41)
      acd477(57)=acd477(57)+acd477(58)
      acd477(57)=acd477(2)*acd477(57)
      acd477(50)=acd477(57)+acd477(52)+acd477(50)+acd477(55)+acd477(56)+acd477(&
      &54)
      acd477(50)=acd477(2)*acd477(50)
      acd477(52)=acd477(20)*acd477(23)
      acd477(54)=acd477(28)*acd477(61)
      acd477(52)=acd477(52)+acd477(54)
      acd477(52)=acd477(17)*acd477(52)
      acd477(54)=acd477(20)*acd477(22)
      acd477(55)=acd477(27)*acd477(61)
      acd477(54)=acd477(54)+acd477(55)
      acd477(54)=acd477(4)*acd477(54)
      acd477(52)=acd477(52)+acd477(54)
      acd477(52)=acd477(7)*acd477(52)
      acd477(53)=-acd477(33)*acd477(53)
      acd477(50)=acd477(50)+acd477(52)+acd477(53)
      brack(ninjaidxt0x0mu0)=acd477(50)
      brack(ninjaidxt0x1mu0)=acd477(51)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d477h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd477h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
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
end module     p12_sbars_epnemumnmubarg_d477h5l132
