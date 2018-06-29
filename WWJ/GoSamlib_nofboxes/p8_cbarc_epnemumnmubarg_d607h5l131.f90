module     p8_cbarc_epnemumnmubarg_d607h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity5d607h5l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd607h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd607
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd607(1)=dotproduct(ninjaE3,spvak1k2)
      acd607(2)=dotproduct(ninjaE3,spvak4k3)
      acd607(3)=dotproduct(ninjaE3,spvak7k2)
      acd607(4)=abb607(8)
      acd607(5)=dotproduct(ninjaE3,spvak5k2)
      acd607(6)=abb607(20)
      acd607(7)=acd607(4)*acd607(1)
      acd607(8)=acd607(6)*acd607(5)
      acd607(7)=acd607(7)+acd607(8)
      acd607(7)=acd607(7)*acd607(3)*acd607(2)
      brack(ninjaidxt2mu0)=acd607(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd607h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(58) :: acd607
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd607(1)=dotproduct(ninjaE3,spvak4k2)
      acd607(2)=abb607(21)
      acd607(3)=dotproduct(ninjaE3,spvak7k2)
      acd607(4)=dotproduct(ninjaE3,spvak1k2)
      acd607(5)=dotproduct(ninjaE4,spvak4k3)
      acd607(6)=abb607(8)
      acd607(7)=dotproduct(ninjaE3,spvak4k3)
      acd607(8)=dotproduct(ninjaE4,spvak1k2)
      acd607(9)=dotproduct(ninjaE4,spvak5k2)
      acd607(10)=abb607(20)
      acd607(11)=dotproduct(ninjaE3,spvak5k2)
      acd607(12)=abb607(16)
      acd607(13)=dotproduct(ninjaE4,spvak7k2)
      acd607(14)=dotproduct(k7,ninjaE3)
      acd607(15)=abb607(13)
      acd607(16)=abb607(15)
      acd607(17)=dotproduct(ninjaA,ninjaE3)
      acd607(18)=dotproduct(ninjaA,spvak7k2)
      acd607(19)=dotproduct(ninjaA,spvak1k2)
      acd607(20)=dotproduct(ninjaA,spvak4k3)
      acd607(21)=dotproduct(ninjaA,spvak5k2)
      acd607(22)=abb607(7)
      acd607(23)=abb607(14)
      acd607(24)=dotproduct(ninjaE3,spvak1k3)
      acd607(25)=abb607(9)
      acd607(26)=dotproduct(ninjaE3,spvak1k7)
      acd607(27)=abb607(12)
      acd607(28)=dotproduct(ninjaE3,spvak5k3)
      acd607(29)=abb607(18)
      acd607(30)=dotproduct(ninjaE3,spvak5k7)
      acd607(31)=abb607(19)
      acd607(32)=dotproduct(k7,ninjaA)
      acd607(33)=dotproduct(ninjaA,spvak4k2)
      acd607(34)=dotproduct(ninjaA,ninjaA)
      acd607(35)=abb607(10)
      acd607(36)=dotproduct(ninjaA,spvak1k3)
      acd607(37)=dotproduct(ninjaA,spvak1k7)
      acd607(38)=dotproduct(ninjaA,spvak5k3)
      acd607(39)=dotproduct(ninjaA,spvak5k7)
      acd607(40)=acd607(10)*acd607(11)
      acd607(41)=acd607(6)*acd607(4)
      acd607(40)=acd607(40)+acd607(41)
      acd607(41)=acd607(5)*acd607(40)
      acd607(42)=acd607(10)*acd607(9)
      acd607(43)=acd607(6)*acd607(8)
      acd607(42)=acd607(42)+acd607(43)
      acd607(43)=acd607(7)*acd607(42)
      acd607(41)=acd607(43)+acd607(12)+acd607(41)
      acd607(41)=acd607(3)*acd607(41)
      acd607(43)=acd607(40)*acd607(13)
      acd607(44)=acd607(7)*acd607(43)
      acd607(45)=acd607(1)*acd607(2)
      acd607(41)=acd607(41)+acd607(45)+acd607(44)
      acd607(44)=acd607(40)*acd607(20)
      acd607(45)=acd607(31)*acd607(30)
      acd607(46)=acd607(29)*acd607(28)
      acd607(47)=acd607(27)*acd607(26)
      acd607(48)=acd607(25)*acd607(24)
      acd607(49)=acd607(14)*acd607(16)
      acd607(50)=acd607(1)*acd607(22)
      acd607(51)=2.0_ki*acd607(17)
      acd607(52)=acd607(51)*acd607(12)
      acd607(44)=acd607(44)+acd607(48)+acd607(49)+acd607(50)+acd607(52)+acd607(&
      &45)+acd607(46)+acd607(47)
      acd607(45)=acd607(10)*acd607(21)
      acd607(46)=acd607(6)*acd607(19)
      acd607(45)=acd607(45)+acd607(46)
      acd607(46)=acd607(7)*acd607(45)
      acd607(47)=acd607(3)*acd607(23)
      acd607(46)=acd607(47)+acd607(46)+acd607(44)
      acd607(46)=acd607(3)*acd607(46)
      acd607(47)=acd607(14)*acd607(15)
      acd607(48)=acd607(2)*acd607(51)
      acd607(48)=acd607(47)+acd607(48)
      acd607(48)=acd607(1)*acd607(48)
      acd607(40)=acd607(7)*acd607(18)*acd607(40)
      acd607(40)=acd607(46)+acd607(48)+acd607(40)
      acd607(46)=acd607(20)*acd607(21)
      acd607(48)=ninjaP*acd607(5)
      acd607(49)=acd607(11)*acd607(48)
      acd607(46)=acd607(46)+acd607(49)
      acd607(46)=acd607(10)*acd607(46)
      acd607(49)=acd607(20)*acd607(19)
      acd607(48)=acd607(4)*acd607(48)
      acd607(48)=acd607(49)+acd607(48)
      acd607(48)=acd607(6)*acd607(48)
      acd607(42)=acd607(7)*ninjaP*acd607(42)
      acd607(49)=ninjaP+acd607(34)
      acd607(50)=acd607(12)*acd607(49)
      acd607(52)=acd607(31)*acd607(39)
      acd607(53)=acd607(29)*acd607(38)
      acd607(54)=acd607(27)*acd607(37)
      acd607(55)=acd607(25)*acd607(36)
      acd607(56)=acd607(22)*acd607(33)
      acd607(57)=acd607(16)*acd607(32)
      acd607(58)=acd607(18)*acd607(23)
      acd607(42)=acd607(42)+2.0_ki*acd607(58)+acd607(48)+acd607(46)+acd607(57)+&
      &acd607(56)+acd607(55)+acd607(54)+acd607(52)+acd607(53)+acd607(50)
      acd607(42)=acd607(3)*acd607(42)
      acd607(44)=acd607(18)*acd607(44)
      acd607(43)=ninjaP*acd607(43)
      acd607(45)=acd607(18)*acd607(45)
      acd607(43)=acd607(45)+acd607(43)
      acd607(43)=acd607(7)*acd607(43)
      acd607(45)=acd607(2)*acd607(33)
      acd607(45)=acd607(45)+acd607(35)
      acd607(45)=acd607(51)*acd607(45)
      acd607(46)=acd607(2)*acd607(49)
      acd607(48)=acd607(15)*acd607(32)
      acd607(46)=acd607(48)+acd607(46)
      acd607(46)=acd607(1)*acd607(46)
      acd607(47)=acd607(33)*acd607(47)
      acd607(42)=acd607(42)+acd607(43)+acd607(44)+acd607(46)+acd607(47)+acd607(&
      &45)
      brack(ninjaidxt1mu0)=acd607(40)
      brack(ninjaidxt0mu0)=acd607(42)
      brack(ninjaidxt0mu2)=acd607(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d607h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd607h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p8_cbarc_epnemumnmubarg_d607h5l131
