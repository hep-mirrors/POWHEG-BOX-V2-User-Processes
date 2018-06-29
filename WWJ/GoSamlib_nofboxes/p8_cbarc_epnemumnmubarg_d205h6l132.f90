module     p8_cbarc_epnemumnmubarg_d205h6l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity6d205h6l132.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd205h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(39) :: acd205
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd205(1)=dotproduct(k1,ninjaE3)
      acd205(2)=abb205(36)
      acd205(3)=dotproduct(k3,ninjaE3)
      acd205(4)=abb205(44)
      acd205(5)=dotproduct(k4,ninjaE3)
      acd205(6)=dotproduct(k5,ninjaE3)
      acd205(7)=dotproduct(k6,ninjaE3)
      acd205(8)=dotproduct(k7,ninjaE3)
      acd205(9)=abb205(40)
      acd205(10)=dotproduct(ninjaE3,spvak4k6)
      acd205(11)=abb205(13)
      acd205(12)=dotproduct(ninjaE3,spvak2k6)
      acd205(13)=abb205(14)
      acd205(14)=dotproduct(ninjaE3,spvak2k4)
      acd205(15)=abb205(15)
      acd205(16)=dotproduct(ninjaE3,spvak5k6)
      acd205(17)=abb205(16)
      acd205(18)=dotproduct(ninjaE3,spvak2k3)
      acd205(19)=abb205(17)
      acd205(20)=dotproduct(ninjaE3,spvak7k1)
      acd205(21)=abb205(21)
      acd205(22)=dotproduct(ninjaE3,spvak5k3)
      acd205(23)=abb205(22)
      acd205(24)=dotproduct(ninjaE3,spvak4k3)
      acd205(25)=abb205(23)
      acd205(26)=dotproduct(ninjaE3,spvak2k5)
      acd205(27)=abb205(24)
      acd205(28)=-acd205(7)-acd205(6)+acd205(5)+acd205(3)
      acd205(28)=acd205(4)*acd205(28)
      acd205(29)=acd205(2)*acd205(1)
      acd205(30)=acd205(9)*acd205(8)
      acd205(31)=acd205(11)*acd205(10)
      acd205(32)=acd205(13)*acd205(12)
      acd205(33)=acd205(15)*acd205(14)
      acd205(34)=acd205(17)*acd205(16)
      acd205(35)=acd205(19)*acd205(18)
      acd205(36)=acd205(21)*acd205(20)
      acd205(37)=acd205(23)*acd205(22)
      acd205(38)=acd205(25)*acd205(24)
      acd205(39)=acd205(27)*acd205(26)
      acd205(28)=acd205(39)+acd205(38)+acd205(37)+acd205(36)+acd205(35)+acd205(&
      &34)+acd205(33)+acd205(32)+acd205(31)+acd205(30)+acd205(29)+acd205(28)
      brack(ninjaidxt1x0mu0)=acd205(28)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd205h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(56) :: acd205
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd205(1)=dotproduct(k1,ninjaA1)
      acd205(2)=abb205(36)
      acd205(3)=dotproduct(k3,ninjaA1)
      acd205(4)=abb205(44)
      acd205(5)=dotproduct(k4,ninjaA1)
      acd205(6)=dotproduct(k5,ninjaA1)
      acd205(7)=dotproduct(k6,ninjaA1)
      acd205(8)=dotproduct(k7,ninjaA1)
      acd205(9)=abb205(40)
      acd205(10)=dotproduct(ninjaA1,spvak4k6)
      acd205(11)=abb205(13)
      acd205(12)=dotproduct(ninjaA1,spvak2k6)
      acd205(13)=abb205(14)
      acd205(14)=dotproduct(ninjaA1,spvak2k4)
      acd205(15)=abb205(15)
      acd205(16)=dotproduct(ninjaA1,spvak5k6)
      acd205(17)=abb205(16)
      acd205(18)=dotproduct(ninjaA1,spvak2k3)
      acd205(19)=abb205(17)
      acd205(20)=dotproduct(ninjaA1,spvak7k1)
      acd205(21)=abb205(21)
      acd205(22)=dotproduct(ninjaA1,spvak5k3)
      acd205(23)=abb205(22)
      acd205(24)=dotproduct(ninjaA1,spvak4k3)
      acd205(25)=abb205(23)
      acd205(26)=dotproduct(ninjaA1,spvak2k5)
      acd205(27)=abb205(24)
      acd205(28)=dotproduct(k1,ninjaA0)
      acd205(29)=dotproduct(k3,ninjaA0)
      acd205(30)=dotproduct(k4,ninjaA0)
      acd205(31)=dotproduct(k5,ninjaA0)
      acd205(32)=dotproduct(k6,ninjaA0)
      acd205(33)=dotproduct(k7,ninjaA0)
      acd205(34)=dotproduct(ninjaA0,spvak4k6)
      acd205(35)=dotproduct(ninjaA0,spvak2k6)
      acd205(36)=dotproduct(ninjaA0,spvak2k4)
      acd205(37)=dotproduct(ninjaA0,spvak5k6)
      acd205(38)=dotproduct(ninjaA0,spvak2k3)
      acd205(39)=dotproduct(ninjaA0,spvak7k1)
      acd205(40)=dotproduct(ninjaA0,spvak5k3)
      acd205(41)=dotproduct(ninjaA0,spvak4k3)
      acd205(42)=dotproduct(ninjaA0,spvak2k5)
      acd205(43)=abb205(19)
      acd205(44)=-acd205(7)-acd205(6)+acd205(5)+acd205(3)
      acd205(44)=acd205(4)*acd205(44)
      acd205(45)=acd205(1)*acd205(2)
      acd205(46)=acd205(8)*acd205(9)
      acd205(47)=acd205(10)*acd205(11)
      acd205(48)=acd205(12)*acd205(13)
      acd205(49)=acd205(14)*acd205(15)
      acd205(50)=acd205(16)*acd205(17)
      acd205(51)=acd205(18)*acd205(19)
      acd205(52)=acd205(20)*acd205(21)
      acd205(53)=acd205(22)*acd205(23)
      acd205(54)=acd205(24)*acd205(25)
      acd205(55)=acd205(26)*acd205(27)
      acd205(44)=acd205(55)+acd205(54)+acd205(53)+acd205(52)+acd205(51)+acd205(&
      &50)+acd205(49)+acd205(48)+acd205(47)+acd205(46)+acd205(45)+acd205(44)
      acd205(45)=-acd205(32)-acd205(31)+acd205(30)+acd205(29)
      acd205(45)=acd205(4)*acd205(45)
      acd205(46)=acd205(28)*acd205(2)
      acd205(47)=acd205(33)*acd205(9)
      acd205(48)=acd205(34)*acd205(11)
      acd205(49)=acd205(35)*acd205(13)
      acd205(50)=acd205(36)*acd205(15)
      acd205(51)=acd205(37)*acd205(17)
      acd205(52)=acd205(38)*acd205(19)
      acd205(53)=acd205(39)*acd205(21)
      acd205(54)=acd205(40)*acd205(23)
      acd205(55)=acd205(41)*acd205(25)
      acd205(56)=acd205(42)*acd205(27)
      acd205(45)=acd205(43)+acd205(56)+acd205(55)+acd205(54)+acd205(53)+acd205(&
      &52)+acd205(51)+acd205(50)+acd205(49)+acd205(48)+acd205(47)+acd205(46)+ac&
      &d205(45)
      brack(ninjaidxt0x0mu0)=acd205(45)
      brack(ninjaidxt0x1mu0)=acd205(44)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d205h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd205h6
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
end module     p8_cbarc_epnemumnmubarg_d205h6l132
