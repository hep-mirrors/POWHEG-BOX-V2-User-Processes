module     p0_dbard_epnemumnmubarg_d37h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d37h1l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd37
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd37(1)=dotproduct(k7,ninjaE3)
      acd37(2)=dotproduct(ninjaE3,spvak4k3)
      acd37(3)=dotproduct(ninjaE3,spvak5k6)
      acd37(4)=abb37(20)
      acd37(5)=dotproduct(ninjaE3,spvak2k7)
      acd37(6)=abb37(17)
      acd37(7)=dotproduct(ninjaE3,spvak1k7)
      acd37(8)=abb37(31)
      acd37(9)=acd37(4)*acd37(1)
      acd37(10)=acd37(6)*acd37(5)
      acd37(11)=acd37(8)*acd37(7)
      acd37(9)=acd37(11)+acd37(9)+acd37(10)
      acd37(9)=acd37(9)*acd37(3)*acd37(2)
      brack(ninjaidxt1x0mu0)=acd37(9)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(55) :: acd37
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd37(1)=dotproduct(k7,ninjaA1)
      acd37(2)=dotproduct(ninjaE3,spvak4k3)
      acd37(3)=dotproduct(ninjaE3,spvak5k6)
      acd37(4)=abb37(20)
      acd37(5)=dotproduct(k7,ninjaE3)
      acd37(6)=dotproduct(ninjaA1,spvak4k3)
      acd37(7)=dotproduct(ninjaA1,spvak5k6)
      acd37(8)=dotproduct(ninjaA1,spvak2k7)
      acd37(9)=abb37(17)
      acd37(10)=dotproduct(ninjaE3,spvak2k7)
      acd37(11)=dotproduct(ninjaE3,spvak1k7)
      acd37(12)=abb37(31)
      acd37(13)=dotproduct(ninjaA1,spvak1k7)
      acd37(14)=dotproduct(k1,ninjaE3)
      acd37(15)=abb37(45)
      acd37(16)=abb37(25)
      acd37(17)=abb37(28)
      acd37(18)=dotproduct(ninjaE3,spvak1k3)
      acd37(19)=abb37(18)
      acd37(20)=abb37(53)
      acd37(21)=dotproduct(k2,ninjaE3)
      acd37(22)=dotproduct(k3,ninjaE3)
      acd37(23)=dotproduct(k4,ninjaE3)
      acd37(24)=dotproduct(k7,ninjaA0)
      acd37(25)=dotproduct(ninjaA0,ninjaE3)
      acd37(26)=abb37(29)
      acd37(27)=dotproduct(ninjaA0,spvak4k3)
      acd37(28)=dotproduct(ninjaA0,spvak5k6)
      acd37(29)=abb37(14)
      acd37(30)=abb37(52)
      acd37(31)=abb37(16)
      acd37(32)=abb37(23)
      acd37(33)=abb37(33)
      acd37(34)=dotproduct(ninjaA0,spvak2k7)
      acd37(35)=dotproduct(ninjaA0,spvak1k7)
      acd37(36)=abb37(9)
      acd37(37)=abb37(30)
      acd37(38)=abb37(13)
      acd37(39)=abb37(44)
      acd37(40)=dotproduct(ninjaE3,spvak1k6)
      acd37(41)=abb37(32)
      acd37(42)=dotproduct(ninjaE3,spvak1k4)
      acd37(43)=abb37(12)
      acd37(44)=acd37(1)*acd37(4)
      acd37(45)=acd37(8)*acd37(9)
      acd37(46)=acd37(13)*acd37(12)
      acd37(44)=acd37(46)+acd37(45)+acd37(44)
      acd37(45)=acd37(3)*acd37(2)
      acd37(44)=acd37(45)*acd37(44)
      acd37(46)=acd37(4)*acd37(5)
      acd37(47)=acd37(9)*acd37(10)
      acd37(48)=acd37(11)*acd37(12)
      acd37(46)=acd37(46)+acd37(47)+acd37(48)
      acd37(47)=acd37(3)*acd37(46)
      acd37(48)=acd37(6)*acd37(47)
      acd37(46)=acd37(2)*acd37(46)
      acd37(49)=acd37(7)*acd37(46)
      acd37(44)=acd37(48)+acd37(49)+acd37(44)
      acd37(48)=-acd37(21)+acd37(14)
      acd37(48)=acd37(17)*acd37(48)
      acd37(49)=acd37(29)*acd37(5)
      acd37(50)=2.0_ki*acd37(25)
      acd37(51)=acd37(32)*acd37(50)
      acd37(52)=acd37(36)*acd37(10)
      acd37(53)=acd37(38)*acd37(18)
      acd37(54)=acd37(41)*acd37(40)
      acd37(55)=acd37(42)*acd37(33)
      acd37(48)=acd37(55)+acd37(54)+acd37(53)+acd37(52)+acd37(51)+acd37(49)+acd&
      &37(48)
      acd37(48)=acd37(2)*acd37(48)
      acd37(49)=acd37(15)*acd37(5)
      acd37(51)=acd37(16)*acd37(10)
      acd37(52)=acd37(19)*acd37(18)
      acd37(49)=-acd37(52)+acd37(49)+acd37(51)
      acd37(51)=acd37(23)+acd37(22)
      acd37(51)=acd37(49)*acd37(51)
      acd37(52)=acd37(30)*acd37(5)
      acd37(53)=acd37(37)*acd37(10)
      acd37(54)=acd37(43)*acd37(18)
      acd37(52)=acd37(54)+acd37(53)+acd37(52)
      acd37(52)=acd37(3)*acd37(52)
      acd37(53)=-acd37(33)*acd37(18)
      acd37(54)=acd37(26)*acd37(5)
      acd37(55)=acd37(31)*acd37(10)
      acd37(53)=acd37(55)+acd37(54)+acd37(53)
      acd37(50)=acd37(50)*acd37(53)
      acd37(53)=acd37(20)*acd37(3)
      acd37(49)=acd37(53)-acd37(49)
      acd37(49)=acd37(14)*acd37(49)
      acd37(53)=acd37(24)*acd37(4)
      acd37(54)=acd37(34)*acd37(9)
      acd37(55)=acd37(35)*acd37(12)
      acd37(53)=acd37(39)+acd37(55)+acd37(54)+acd37(53)
      acd37(45)=acd37(45)*acd37(53)
      acd37(47)=acd37(27)*acd37(47)
      acd37(46)=acd37(28)*acd37(46)
      acd37(45)=acd37(46)+acd37(47)+acd37(48)+acd37(45)+acd37(49)+acd37(50)+acd&
      &37(52)+acd37(51)
      brack(ninjaidxt0x0mu0)=acd37(45)
      brack(ninjaidxt0x1mu0)=acd37(44)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d37h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd37h1
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
end module     p0_dbard_epnemumnmubarg_d37h1l132
