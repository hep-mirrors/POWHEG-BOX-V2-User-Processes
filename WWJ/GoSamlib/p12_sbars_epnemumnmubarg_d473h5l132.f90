module     p12_sbars_epnemumnmubarg_d473h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d473h5l132.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd473h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd473
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd473(1)=dotproduct(ninjaE3,spvak1k2)
      acd473(2)=dotproduct(ninjaE3,spvak4k3)
      acd473(3)=dotproduct(ninjaE3,spvak5k6)
      acd473(4)=dotproduct(ninjaE3,spvak7k2)
      acd473(5)=abb473(8)
      acd473(6)=-acd473(5)*acd473(4)*acd473(3)*acd473(2)*acd473(1)
      brack(ninjaidxt1x0mu0)=acd473(6)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd473h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(54) :: acd473
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd473(1)=dotproduct(ninjaA1,spvak5k6)
      acd473(2)=dotproduct(ninjaE3,spvak7k2)
      acd473(3)=dotproduct(ninjaE3,spvak1k2)
      acd473(4)=dotproduct(ninjaE3,spvak4k3)
      acd473(5)=abb473(8)
      acd473(6)=dotproduct(ninjaA1,spvak7k2)
      acd473(7)=dotproduct(ninjaE3,spvak5k6)
      acd473(8)=dotproduct(ninjaA1,spvak1k2)
      acd473(9)=dotproduct(ninjaA1,spvak4k3)
      acd473(10)=dotproduct(k1,ninjaE3)
      acd473(11)=abb473(7)
      acd473(12)=dotproduct(ninjaE3,spvak4k2)
      acd473(13)=abb473(54)
      acd473(14)=dotproduct(k2,ninjaE3)
      acd473(15)=abb473(19)
      acd473(16)=dotproduct(ninjaE3,spvak5k2)
      acd473(17)=abb473(50)
      acd473(18)=dotproduct(k3,ninjaE3)
      acd473(19)=abb473(55)
      acd473(20)=dotproduct(k4,ninjaE3)
      acd473(21)=dotproduct(k5,ninjaE3)
      acd473(22)=abb473(43)
      acd473(23)=dotproduct(k6,ninjaE3)
      acd473(24)=dotproduct(ninjaA0,ninjaE3)
      acd473(25)=abb473(26)
      acd473(26)=abb473(66)
      acd473(27)=abb473(62)
      acd473(28)=abb473(49)
      acd473(29)=dotproduct(ninjaA0,spvak5k6)
      acd473(30)=dotproduct(ninjaA0,spvak7k2)
      acd473(31)=dotproduct(ninjaA0,spvak1k2)
      acd473(32)=dotproduct(ninjaA0,spvak4k3)
      acd473(33)=abb473(21)
      acd473(34)=abb473(42)
      acd473(35)=dotproduct(ninjaE3,spvak1k3)
      acd473(36)=abb473(45)
      acd473(37)=abb473(56)
      acd473(38)=abb473(63)
      acd473(39)=dotproduct(ninjaE3,spvak6k2)
      acd473(40)=abb473(60)
      acd473(41)=dotproduct(ninjaE3,spvak3k2)
      acd473(42)=abb473(35)
      acd473(43)=abb473(58)
      acd473(44)=dotproduct(ninjaE3,spvak1k6)
      acd473(45)=abb473(67)
      acd473(46)=-acd473(6)*acd473(3)*acd473(5)
      acd473(47)=acd473(2)*acd473(5)
      acd473(48)=-acd473(8)*acd473(47)
      acd473(46)=acd473(46)+acd473(48)
      acd473(46)=acd473(7)*acd473(46)
      acd473(47)=acd473(47)*acd473(3)
      acd473(48)=-acd473(1)*acd473(47)
      acd473(46)=acd473(48)+acd473(46)
      acd473(46)=acd473(4)*acd473(46)
      acd473(47)=-acd473(7)*acd473(9)*acd473(47)
      acd473(46)=acd473(47)+acd473(46)
      acd473(47)=-acd473(28)*acd473(39)
      acd473(48)=acd473(26)*acd473(41)
      acd473(49)=acd473(12)*acd473(40)
      acd473(50)=acd473(16)*acd473(38)
      acd473(51)=-acd473(5)*acd473(30)
      acd473(51)=acd473(37)+acd473(51)
      acd473(51)=acd473(3)*acd473(51)
      acd473(52)=-acd473(5)*acd473(31)
      acd473(52)=acd473(34)+acd473(52)
      acd473(52)=acd473(2)*acd473(52)
      acd473(47)=acd473(52)+acd473(51)+acd473(50)+acd473(49)+acd473(47)+acd473(&
      &48)
      acd473(47)=acd473(7)*acd473(47)
      acd473(48)=acd473(21)+acd473(23)
      acd473(49)=2.0_ki*acd473(24)
      acd473(50)=acd473(49)-acd473(48)
      acd473(50)=acd473(22)*acd473(50)
      acd473(51)=acd473(44)*acd473(45)
      acd473(52)=acd473(16)*acd473(43)
      acd473(53)=-acd473(5)*acd473(29)
      acd473(53)=acd473(42)+acd473(53)
      acd473(53)=acd473(3)*acd473(53)
      acd473(50)=acd473(53)+acd473(52)+acd473(51)+acd473(50)
      acd473(50)=acd473(2)*acd473(50)
      acd473(48)=acd473(48)-acd473(14)
      acd473(51)=acd473(17)*acd473(48)
      acd473(52)=-acd473(28)*acd473(49)
      acd473(51)=acd473(51)+acd473(52)
      acd473(51)=acd473(16)*acd473(51)
      acd473(48)=-acd473(15)*acd473(48)
      acd473(52)=acd473(27)*acd473(49)
      acd473(48)=acd473(48)+acd473(52)
      acd473(48)=acd473(3)*acd473(48)
      acd473(47)=acd473(47)+acd473(50)+acd473(51)+acd473(48)
      acd473(47)=acd473(4)*acd473(47)
      acd473(48)=acd473(18)+acd473(20)
      acd473(50)=acd473(19)*acd473(48)
      acd473(51)=acd473(35)*acd473(36)
      acd473(52)=-acd473(10)*acd473(11)
      acd473(53)=acd473(25)*acd473(49)
      acd473(54)=-acd473(5)*acd473(32)
      acd473(54)=acd473(33)+acd473(54)
      acd473(54)=acd473(3)*acd473(54)
      acd473(50)=acd473(54)+acd473(53)+acd473(52)+acd473(51)+acd473(50)
      acd473(50)=acd473(2)*acd473(50)
      acd473(48)=acd473(10)-acd473(48)
      acd473(48)=acd473(13)*acd473(48)
      acd473(49)=-acd473(26)*acd473(49)
      acd473(48)=acd473(48)+acd473(49)
      acd473(48)=acd473(12)*acd473(48)
      acd473(48)=acd473(48)+acd473(50)
      acd473(48)=acd473(7)*acd473(48)
      acd473(47)=acd473(48)+acd473(47)
      brack(ninjaidxt0x0mu0)=acd473(47)
      brack(ninjaidxt0x1mu0)=acd473(46)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d473h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd473h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p12_sbars_epnemumnmubarg_d473h5l132
