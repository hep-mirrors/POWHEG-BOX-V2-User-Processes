module     p0_dbard_epnemumnmubarg_d33h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d33h5l132.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd33(1)=dotproduct(ninjaE3,spvak1k2)
      acd33(2)=dotproduct(ninjaE3,spvak4k3)
      acd33(3)=dotproduct(ninjaE3,spvak5k6)
      acd33(4)=abb33(27)
      acd33(5)=dotproduct(ninjaE3,spvak7k2)
      acd33(6)=abb33(47)
      acd33(7)=acd33(4)*acd33(1)
      acd33(8)=-acd33(6)*acd33(5)
      acd33(7)=acd33(7)+acd33(8)
      acd33(7)=acd33(7)*acd33(3)*acd33(2)
      brack(ninjaidxt1x0mu0)=acd33(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(71) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd33(1)=dotproduct(ninjaA1,spvak5k6)
      acd33(2)=dotproduct(ninjaE3,spvak1k2)
      acd33(3)=dotproduct(ninjaE3,spvak4k3)
      acd33(4)=abb33(27)
      acd33(5)=dotproduct(ninjaE3,spvak7k2)
      acd33(6)=abb33(47)
      acd33(7)=dotproduct(ninjaA1,spvak1k2)
      acd33(8)=dotproduct(ninjaE3,spvak5k6)
      acd33(9)=dotproduct(ninjaA1,spvak4k3)
      acd33(10)=dotproduct(ninjaA1,spvak7k2)
      acd33(11)=dotproduct(k1,ninjaE3)
      acd33(12)=abb33(21)
      acd33(13)=dotproduct(k2,ninjaE3)
      acd33(14)=dotproduct(ninjaE3,spvak4k2)
      acd33(15)=abb33(46)
      acd33(16)=abb33(14)
      acd33(17)=abb33(37)
      acd33(18)=dotproduct(ninjaE3,spvak5k2)
      acd33(19)=abb33(12)
      acd33(20)=dotproduct(ninjaE3,spvak7k3)
      acd33(21)=abb33(39)
      acd33(22)=dotproduct(ninjaE3,spvak1k3)
      acd33(23)=abb33(30)
      acd33(24)=dotproduct(k5,ninjaE3)
      acd33(25)=dotproduct(k6,ninjaE3)
      acd33(26)=dotproduct(k7,ninjaE3)
      acd33(27)=abb33(13)
      acd33(28)=dotproduct(ninjaA0,ninjaE3)
      acd33(29)=abb33(34)
      acd33(30)=abb33(32)
      acd33(31)=abb33(50)
      acd33(32)=abb33(43)
      acd33(33)=abb33(35)
      acd33(34)=dotproduct(ninjaA0,spvak5k6)
      acd33(35)=dotproduct(ninjaA0,spvak1k2)
      acd33(36)=dotproduct(ninjaA0,spvak4k3)
      acd33(37)=dotproduct(ninjaA0,spvak7k2)
      acd33(38)=abb33(7)
      acd33(39)=abb33(22)
      acd33(40)=abb33(17)
      acd33(41)=abb33(45)
      acd33(42)=abb33(26)
      acd33(43)=abb33(29)
      acd33(44)=dotproduct(ninjaE3,spvak1k7)
      acd33(45)=abb33(33)
      acd33(46)=dotproduct(ninjaE3,spvak7k1)
      acd33(47)=abb33(48)
      acd33(48)=dotproduct(ninjaE3,spvak6k2)
      acd33(49)=abb33(8)
      acd33(50)=abb33(51)
      acd33(51)=abb33(19)
      acd33(52)=dotproduct(ninjaE3,spvak1k6)
      acd33(53)=abb33(23)
      acd33(54)=dotproduct(ninjaE3,spvak7k6)
      acd33(55)=abb33(24)
      acd33(56)=acd33(4)*acd33(3)
      acd33(57)=acd33(7)*acd33(56)
      acd33(58)=acd33(6)*acd33(3)
      acd33(59)=-acd33(10)*acd33(58)
      acd33(57)=acd33(59)+acd33(57)
      acd33(57)=acd33(8)*acd33(57)
      acd33(59)=acd33(4)*acd33(2)
      acd33(60)=acd33(6)*acd33(5)
      acd33(59)=acd33(59)-acd33(60)
      acd33(60)=-acd33(3)*acd33(59)
      acd33(61)=-acd33(1)*acd33(60)
      acd33(59)=-acd33(8)*acd33(59)
      acd33(62)=-acd33(9)*acd33(59)
      acd33(57)=acd33(61)+acd33(62)+acd33(57)
      acd33(61)=acd33(12)*acd33(11)
      acd33(62)=acd33(16)*acd33(13)
      acd33(63)=acd33(27)*acd33(26)
      acd33(56)=acd33(35)*acd33(56)
      acd33(58)=-acd33(37)*acd33(58)
      acd33(64)=acd33(38)*acd33(14)
      acd33(65)=acd33(39)*acd33(2)
      acd33(66)=acd33(40)*acd33(18)
      acd33(67)=acd33(42)*acd33(20)
      acd33(68)=acd33(43)*acd33(22)
      acd33(69)=acd33(45)*acd33(44)
      acd33(70)=acd33(47)*acd33(46)
      acd33(71)=-acd33(48)*acd33(31)
      acd33(56)=acd33(71)+acd33(70)+acd33(69)+acd33(68)+acd33(67)+acd33(66)+acd&
      &33(65)+acd33(64)+acd33(58)+acd33(56)+acd33(63)+acd33(62)+acd33(61)
      acd33(56)=acd33(8)*acd33(56)
      acd33(58)=acd33(17)*acd33(13)
      acd33(61)=2.0_ki*acd33(28)
      acd33(62)=acd33(30)*acd33(61)
      acd33(63)=acd33(49)*acd33(2)
      acd33(64)=acd33(50)*acd33(18)
      acd33(65)=acd33(53)*acd33(52)
      acd33(66)=acd33(55)*acd33(54)
      acd33(58)=acd33(66)+acd33(65)+acd33(64)+acd33(63)+acd33(62)+acd33(58)
      acd33(58)=acd33(3)*acd33(58)
      acd33(62)=-acd33(15)*acd33(14)
      acd33(63)=acd33(19)*acd33(18)
      acd33(64)=-acd33(21)*acd33(20)
      acd33(65)=acd33(23)*acd33(22)
      acd33(62)=acd33(65)+acd33(64)+acd33(62)+acd33(63)
      acd33(63)=-acd33(13)+acd33(25)+acd33(24)
      acd33(62)=acd33(63)*acd33(62)
      acd33(63)=acd33(31)*acd33(18)
      acd33(64)=acd33(29)*acd33(14)
      acd33(65)=acd33(32)*acd33(20)
      acd33(66)=acd33(33)*acd33(22)
      acd33(63)=acd33(66)+acd33(65)+acd33(64)+acd33(63)
      acd33(61)=acd33(61)*acd33(63)
      acd33(63)=acd33(41)*acd33(8)
      acd33(64)=acd33(51)*acd33(3)
      acd33(63)=acd33(64)+acd33(63)
      acd33(63)=acd33(5)*acd33(63)
      acd33(60)=-acd33(34)*acd33(60)
      acd33(59)=-acd33(36)*acd33(59)
      acd33(56)=acd33(59)+acd33(60)+acd33(56)+acd33(58)+acd33(61)+acd33(62)+acd&
      &33(63)
      brack(ninjaidxt0x0mu0)=acd33(56)
      brack(ninjaidxt0x1mu0)=acd33(57)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d33h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd33h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_dbard_epnemumnmubarg_d33h5l132
