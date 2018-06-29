module     p12_sbars_epnemumnmubarg_d595h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity5d595h5l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd595h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd595(1)=dotproduct(ninjaE3,spvak1k2)
      acd595(2)=dotproduct(ninjaE3,spvak5k6)
      acd595(3)=dotproduct(ninjaE3,spvak7k2)
      acd595(4)=abb595(12)
      acd595(5)=dotproduct(ninjaE3,spvak4k2)
      acd595(6)=abb595(21)
      acd595(7)=acd595(4)*acd595(1)
      acd595(8)=acd595(6)*acd595(5)
      acd595(7)=acd595(7)+acd595(8)
      acd595(7)=acd595(7)*acd595(3)*acd595(2)
      brack(ninjaidxt2mu0)=acd595(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd595h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(57) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd595(1)=dotproduct(ninjaE3,spvak5k2)
      acd595(2)=abb595(6)
      acd595(3)=dotproduct(ninjaE3,spvak7k2)
      acd595(4)=dotproduct(ninjaE3,spvak5k6)
      acd595(5)=dotproduct(ninjaE4,spvak1k2)
      acd595(6)=abb595(12)
      acd595(7)=dotproduct(ninjaE4,spvak4k2)
      acd595(8)=abb595(21)
      acd595(9)=dotproduct(ninjaE3,spvak1k2)
      acd595(10)=dotproduct(ninjaE4,spvak5k6)
      acd595(11)=dotproduct(ninjaE3,spvak4k2)
      acd595(12)=abb595(15)
      acd595(13)=dotproduct(ninjaE4,spvak7k2)
      acd595(14)=dotproduct(k2,ninjaE3)
      acd595(15)=abb595(20)
      acd595(16)=abb595(19)
      acd595(17)=dotproduct(ninjaA,ninjaE3)
      acd595(18)=dotproduct(ninjaA,spvak7k2)
      acd595(19)=dotproduct(ninjaA,spvak5k6)
      acd595(20)=dotproduct(ninjaA,spvak1k2)
      acd595(21)=dotproduct(ninjaA,spvak4k2)
      acd595(22)=abb595(10)
      acd595(23)=abb595(11)
      acd595(24)=abb595(14)
      acd595(25)=abb595(17)
      acd595(26)=dotproduct(ninjaE3,spvak4k6)
      acd595(27)=abb595(18)
      acd595(28)=dotproduct(ninjaE3,spvak1k6)
      acd595(29)=abb595(22)
      acd595(30)=dotproduct(k2,ninjaA)
      acd595(31)=dotproduct(ninjaA,spvak5k2)
      acd595(32)=abb595(16)
      acd595(33)=dotproduct(k7,ninjaE3)
      acd595(34)=abb595(8)
      acd595(35)=dotproduct(ninjaA,ninjaA)
      acd595(36)=abb595(13)
      acd595(37)=dotproduct(ninjaA,spvak4k6)
      acd595(38)=dotproduct(ninjaA,spvak1k6)
      acd595(39)=abb595(7)
      acd595(40)=acd595(8)*acd595(11)
      acd595(41)=acd595(6)*acd595(9)
      acd595(40)=acd595(40)+acd595(41)
      acd595(41)=acd595(10)*acd595(40)
      acd595(42)=acd595(8)*acd595(7)
      acd595(43)=acd595(6)*acd595(5)
      acd595(42)=acd595(42)+acd595(43)
      acd595(43)=acd595(4)*acd595(42)
      acd595(41)=acd595(43)+acd595(12)+acd595(41)
      acd595(41)=acd595(3)*acd595(41)
      acd595(43)=acd595(40)*acd595(13)
      acd595(44)=acd595(4)*acd595(43)
      acd595(45)=acd595(1)*acd595(2)
      acd595(41)=acd595(41)+acd595(45)+acd595(44)
      acd595(44)=acd595(40)*acd595(19)
      acd595(45)=acd595(29)*acd595(28)
      acd595(46)=acd595(27)*acd595(26)
      acd595(47)=acd595(14)*acd595(16)
      acd595(48)=acd595(1)*acd595(22)
      acd595(49)=acd595(11)*acd595(25)
      acd595(50)=acd595(9)*acd595(24)
      acd595(51)=2.0_ki*acd595(17)
      acd595(52)=acd595(51)*acd595(12)
      acd595(44)=acd595(52)+acd595(47)+acd595(48)+acd595(49)+acd595(50)+acd595(&
      &44)+acd595(45)+acd595(46)
      acd595(45)=acd595(8)*acd595(21)
      acd595(46)=acd595(6)*acd595(20)
      acd595(45)=acd595(23)+acd595(45)+acd595(46)
      acd595(46)=acd595(4)*acd595(45)
      acd595(46)=acd595(46)+acd595(44)
      acd595(46)=acd595(3)*acd595(46)
      acd595(47)=acd595(14)*acd595(15)
      acd595(48)=acd595(2)*acd595(51)
      acd595(47)=acd595(47)+acd595(48)
      acd595(47)=acd595(1)*acd595(47)
      acd595(40)=acd595(4)*acd595(18)*acd595(40)
      acd595(40)=acd595(46)+acd595(47)+acd595(40)
      acd595(46)=acd595(19)*acd595(21)
      acd595(47)=ninjaP*acd595(10)
      acd595(48)=acd595(11)*acd595(47)
      acd595(46)=acd595(46)+acd595(48)
      acd595(46)=acd595(8)*acd595(46)
      acd595(48)=acd595(19)*acd595(20)
      acd595(47)=acd595(9)*acd595(47)
      acd595(47)=acd595(48)+acd595(47)
      acd595(47)=acd595(6)*acd595(47)
      acd595(42)=acd595(4)*ninjaP*acd595(42)
      acd595(48)=ninjaP+acd595(35)
      acd595(49)=acd595(12)*acd595(48)
      acd595(50)=acd595(29)*acd595(38)
      acd595(52)=acd595(27)*acd595(37)
      acd595(53)=acd595(22)*acd595(31)
      acd595(54)=acd595(16)*acd595(30)
      acd595(55)=acd595(21)*acd595(25)
      acd595(56)=acd595(20)*acd595(24)
      acd595(57)=acd595(19)*acd595(23)
      acd595(42)=acd595(42)+acd595(47)+acd595(46)+acd595(57)+acd595(56)+acd595(&
      &55)+acd595(54)+acd595(53)+acd595(52)+acd595(39)+acd595(50)+acd595(49)
      acd595(42)=acd595(3)*acd595(42)
      acd595(44)=acd595(18)*acd595(44)
      acd595(43)=ninjaP*acd595(43)
      acd595(45)=acd595(18)*acd595(45)
      acd595(43)=acd595(45)+acd595(43)
      acd595(43)=acd595(4)*acd595(43)
      acd595(45)=acd595(2)*acd595(31)
      acd595(45)=acd595(45)+acd595(36)
      acd595(45)=acd595(51)*acd595(45)
      acd595(46)=acd595(2)*acd595(48)
      acd595(47)=acd595(15)*acd595(30)
      acd595(46)=acd595(47)+acd595(46)
      acd595(46)=acd595(1)*acd595(46)
      acd595(47)=acd595(33)*acd595(34)
      acd595(48)=acd595(15)*acd595(31)
      acd595(48)=acd595(32)+acd595(48)
      acd595(48)=acd595(14)*acd595(48)
      acd595(42)=acd595(42)+acd595(43)+acd595(44)+acd595(46)+acd595(48)+acd595(&
      &47)+acd595(45)
      brack(ninjaidxt1mu0)=acd595(40)
      brack(ninjaidxt0mu0)=acd595(42)
      brack(ninjaidxt0mu2)=acd595(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d595h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd595h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d595h5l131
