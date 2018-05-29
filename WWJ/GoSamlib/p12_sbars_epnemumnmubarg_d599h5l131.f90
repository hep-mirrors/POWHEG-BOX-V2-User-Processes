module     p12_sbars_epnemumnmubarg_d599h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d599h5l131.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd599
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd599(1)=dotproduct(ninjaE3,spvak1k2)
      acd599(2)=dotproduct(ninjaE3,spvak5k6)
      acd599(3)=dotproduct(ninjaE3,spvak7k2)
      acd599(4)=abb599(8)
      acd599(5)=dotproduct(ninjaE3,spvak4k2)
      acd599(6)=abb599(20)
      acd599(7)=acd599(4)*acd599(1)
      acd599(8)=acd599(6)*acd599(5)
      acd599(7)=acd599(7)+acd599(8)
      acd599(7)=acd599(7)*acd599(3)*acd599(2)
      brack(ninjaidxt2mu0)=acd599(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(58) :: acd599
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd599(1)=dotproduct(ninjaE3,spvak5k2)
      acd599(2)=abb599(18)
      acd599(3)=dotproduct(ninjaE3,spvak7k2)
      acd599(4)=dotproduct(ninjaE3,spvak1k2)
      acd599(5)=dotproduct(ninjaE4,spvak5k6)
      acd599(6)=abb599(8)
      acd599(7)=dotproduct(ninjaE3,spvak5k6)
      acd599(8)=dotproduct(ninjaE4,spvak1k2)
      acd599(9)=dotproduct(ninjaE4,spvak4k2)
      acd599(10)=abb599(20)
      acd599(11)=dotproduct(ninjaE3,spvak4k2)
      acd599(12)=abb599(16)
      acd599(13)=dotproduct(ninjaE4,spvak7k2)
      acd599(14)=dotproduct(k7,ninjaE3)
      acd599(15)=abb599(13)
      acd599(16)=abb599(15)
      acd599(17)=dotproduct(ninjaA,ninjaE3)
      acd599(18)=dotproduct(ninjaA,spvak7k2)
      acd599(19)=dotproduct(ninjaA,spvak1k2)
      acd599(20)=dotproduct(ninjaA,spvak5k6)
      acd599(21)=dotproduct(ninjaA,spvak4k2)
      acd599(22)=abb599(7)
      acd599(23)=abb599(14)
      acd599(24)=dotproduct(ninjaE3,spvak1k6)
      acd599(25)=abb599(9)
      acd599(26)=dotproduct(ninjaE3,spvak1k7)
      acd599(27)=abb599(12)
      acd599(28)=dotproduct(ninjaE3,spvak4k6)
      acd599(29)=abb599(17)
      acd599(30)=dotproduct(ninjaE3,spvak4k7)
      acd599(31)=abb599(19)
      acd599(32)=dotproduct(k7,ninjaA)
      acd599(33)=dotproduct(ninjaA,spvak5k2)
      acd599(34)=dotproduct(ninjaA,ninjaA)
      acd599(35)=abb599(10)
      acd599(36)=dotproduct(ninjaA,spvak1k6)
      acd599(37)=dotproduct(ninjaA,spvak1k7)
      acd599(38)=dotproduct(ninjaA,spvak4k6)
      acd599(39)=dotproduct(ninjaA,spvak4k7)
      acd599(40)=acd599(10)*acd599(11)
      acd599(41)=acd599(6)*acd599(4)
      acd599(40)=acd599(40)+acd599(41)
      acd599(41)=acd599(5)*acd599(40)
      acd599(42)=acd599(10)*acd599(9)
      acd599(43)=acd599(6)*acd599(8)
      acd599(42)=acd599(42)+acd599(43)
      acd599(43)=acd599(7)*acd599(42)
      acd599(41)=acd599(43)+acd599(12)+acd599(41)
      acd599(41)=acd599(3)*acd599(41)
      acd599(43)=acd599(40)*acd599(13)
      acd599(44)=acd599(7)*acd599(43)
      acd599(45)=acd599(1)*acd599(2)
      acd599(41)=acd599(41)+acd599(45)+acd599(44)
      acd599(44)=acd599(40)*acd599(20)
      acd599(45)=acd599(31)*acd599(30)
      acd599(46)=acd599(29)*acd599(28)
      acd599(47)=acd599(27)*acd599(26)
      acd599(48)=acd599(25)*acd599(24)
      acd599(49)=acd599(14)*acd599(16)
      acd599(50)=acd599(1)*acd599(22)
      acd599(51)=2.0_ki*acd599(17)
      acd599(52)=acd599(51)*acd599(12)
      acd599(44)=acd599(44)+acd599(48)+acd599(49)+acd599(50)+acd599(52)+acd599(&
      &45)+acd599(46)+acd599(47)
      acd599(45)=acd599(10)*acd599(21)
      acd599(46)=acd599(6)*acd599(19)
      acd599(45)=acd599(45)+acd599(46)
      acd599(46)=acd599(7)*acd599(45)
      acd599(47)=acd599(3)*acd599(23)
      acd599(46)=acd599(47)+acd599(46)+acd599(44)
      acd599(46)=acd599(3)*acd599(46)
      acd599(47)=acd599(14)*acd599(15)
      acd599(48)=acd599(2)*acd599(51)
      acd599(48)=acd599(47)+acd599(48)
      acd599(48)=acd599(1)*acd599(48)
      acd599(40)=acd599(7)*acd599(18)*acd599(40)
      acd599(40)=acd599(46)+acd599(48)+acd599(40)
      acd599(46)=acd599(20)*acd599(21)
      acd599(48)=ninjaP*acd599(5)
      acd599(49)=acd599(11)*acd599(48)
      acd599(46)=acd599(46)+acd599(49)
      acd599(46)=acd599(10)*acd599(46)
      acd599(49)=acd599(20)*acd599(19)
      acd599(48)=acd599(4)*acd599(48)
      acd599(48)=acd599(49)+acd599(48)
      acd599(48)=acd599(6)*acd599(48)
      acd599(42)=acd599(7)*ninjaP*acd599(42)
      acd599(49)=ninjaP+acd599(34)
      acd599(50)=acd599(12)*acd599(49)
      acd599(52)=acd599(31)*acd599(39)
      acd599(53)=acd599(29)*acd599(38)
      acd599(54)=acd599(27)*acd599(37)
      acd599(55)=acd599(25)*acd599(36)
      acd599(56)=acd599(22)*acd599(33)
      acd599(57)=acd599(16)*acd599(32)
      acd599(58)=acd599(18)*acd599(23)
      acd599(42)=acd599(42)+2.0_ki*acd599(58)+acd599(48)+acd599(46)+acd599(57)+&
      &acd599(56)+acd599(55)+acd599(54)+acd599(52)+acd599(53)+acd599(50)
      acd599(42)=acd599(3)*acd599(42)
      acd599(44)=acd599(18)*acd599(44)
      acd599(43)=ninjaP*acd599(43)
      acd599(45)=acd599(18)*acd599(45)
      acd599(43)=acd599(45)+acd599(43)
      acd599(43)=acd599(7)*acd599(43)
      acd599(45)=acd599(2)*acd599(33)
      acd599(45)=acd599(45)+acd599(35)
      acd599(45)=acd599(51)*acd599(45)
      acd599(46)=acd599(2)*acd599(49)
      acd599(48)=acd599(15)*acd599(32)
      acd599(46)=acd599(48)+acd599(46)
      acd599(46)=acd599(1)*acd599(46)
      acd599(47)=acd599(33)*acd599(47)
      acd599(42)=acd599(42)+acd599(43)+acd599(44)+acd599(46)+acd599(47)+acd599(&
      &45)
      brack(ninjaidxt1mu0)=acd599(40)
      brack(ninjaidxt0mu0)=acd599(42)
      brack(ninjaidxt0mu2)=acd599(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d599h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd599h5
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
end module     p12_sbars_epnemumnmubarg_d599h5l131
