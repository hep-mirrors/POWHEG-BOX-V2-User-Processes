module     p4_ubaru_epnemumnmubarg_d603h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5d603h5l131.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd603(1)=dotproduct(ninjaE3,spvak1k2)
      acd603(2)=dotproduct(ninjaE3,spvak4k3)
      acd603(3)=dotproduct(ninjaE3,spvak7k2)
      acd603(4)=abb603(12)
      acd603(5)=dotproduct(ninjaE3,spvak5k2)
      acd603(6)=abb603(22)
      acd603(7)=acd603(4)*acd603(1)
      acd603(8)=acd603(6)*acd603(5)
      acd603(7)=acd603(7)+acd603(8)
      acd603(7)=acd603(7)*acd603(3)*acd603(2)
      brack(ninjaidxt2mu0)=acd603(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(57) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd603(1)=dotproduct(ninjaE3,spvak4k2)
      acd603(2)=abb603(6)
      acd603(3)=dotproduct(ninjaE3,spvak7k2)
      acd603(4)=dotproduct(ninjaE3,spvak4k3)
      acd603(5)=dotproduct(ninjaE4,spvak1k2)
      acd603(6)=abb603(12)
      acd603(7)=dotproduct(ninjaE4,spvak5k2)
      acd603(8)=abb603(22)
      acd603(9)=dotproduct(ninjaE3,spvak1k2)
      acd603(10)=dotproduct(ninjaE4,spvak4k3)
      acd603(11)=dotproduct(ninjaE3,spvak5k2)
      acd603(12)=abb603(15)
      acd603(13)=dotproduct(ninjaE4,spvak7k2)
      acd603(14)=dotproduct(k2,ninjaE3)
      acd603(15)=abb603(23)
      acd603(16)=abb603(19)
      acd603(17)=dotproduct(ninjaA,ninjaE3)
      acd603(18)=dotproduct(ninjaA,spvak7k2)
      acd603(19)=dotproduct(ninjaA,spvak4k3)
      acd603(20)=dotproduct(ninjaA,spvak1k2)
      acd603(21)=dotproduct(ninjaA,spvak5k2)
      acd603(22)=abb603(10)
      acd603(23)=abb603(11)
      acd603(24)=abb603(14)
      acd603(25)=dotproduct(ninjaE3,spvak1k3)
      acd603(26)=abb603(17)
      acd603(27)=abb603(20)
      acd603(28)=dotproduct(ninjaE3,spvak5k3)
      acd603(29)=abb603(21)
      acd603(30)=dotproduct(k2,ninjaA)
      acd603(31)=dotproduct(ninjaA,spvak4k2)
      acd603(32)=abb603(16)
      acd603(33)=dotproduct(k7,ninjaE3)
      acd603(34)=abb603(8)
      acd603(35)=dotproduct(ninjaA,ninjaA)
      acd603(36)=abb603(13)
      acd603(37)=dotproduct(ninjaA,spvak1k3)
      acd603(38)=dotproduct(ninjaA,spvak5k3)
      acd603(39)=abb603(7)
      acd603(40)=acd603(8)*acd603(11)
      acd603(41)=acd603(6)*acd603(9)
      acd603(40)=acd603(40)+acd603(41)
      acd603(41)=acd603(10)*acd603(40)
      acd603(42)=acd603(8)*acd603(7)
      acd603(43)=acd603(6)*acd603(5)
      acd603(42)=acd603(42)+acd603(43)
      acd603(43)=acd603(4)*acd603(42)
      acd603(41)=acd603(43)+acd603(12)+acd603(41)
      acd603(41)=acd603(3)*acd603(41)
      acd603(43)=acd603(40)*acd603(13)
      acd603(44)=acd603(4)*acd603(43)
      acd603(45)=acd603(1)*acd603(2)
      acd603(41)=acd603(41)+acd603(45)+acd603(44)
      acd603(44)=acd603(40)*acd603(19)
      acd603(45)=acd603(29)*acd603(28)
      acd603(46)=acd603(26)*acd603(25)
      acd603(47)=acd603(14)*acd603(16)
      acd603(48)=acd603(1)*acd603(22)
      acd603(49)=acd603(11)*acd603(27)
      acd603(50)=acd603(9)*acd603(24)
      acd603(51)=2.0_ki*acd603(17)
      acd603(52)=acd603(51)*acd603(12)
      acd603(44)=acd603(52)+acd603(47)+acd603(48)+acd603(49)+acd603(50)+acd603(&
      &44)+acd603(45)+acd603(46)
      acd603(45)=acd603(8)*acd603(21)
      acd603(46)=acd603(6)*acd603(20)
      acd603(45)=acd603(23)+acd603(45)+acd603(46)
      acd603(46)=acd603(4)*acd603(45)
      acd603(46)=acd603(46)+acd603(44)
      acd603(46)=acd603(3)*acd603(46)
      acd603(47)=acd603(14)*acd603(15)
      acd603(48)=acd603(2)*acd603(51)
      acd603(47)=acd603(47)+acd603(48)
      acd603(47)=acd603(1)*acd603(47)
      acd603(40)=acd603(4)*acd603(18)*acd603(40)
      acd603(40)=acd603(46)+acd603(47)+acd603(40)
      acd603(46)=acd603(19)*acd603(21)
      acd603(47)=ninjaP*acd603(10)
      acd603(48)=acd603(11)*acd603(47)
      acd603(46)=acd603(46)+acd603(48)
      acd603(46)=acd603(8)*acd603(46)
      acd603(48)=acd603(19)*acd603(20)
      acd603(47)=acd603(9)*acd603(47)
      acd603(47)=acd603(48)+acd603(47)
      acd603(47)=acd603(6)*acd603(47)
      acd603(42)=acd603(4)*ninjaP*acd603(42)
      acd603(48)=ninjaP+acd603(35)
      acd603(49)=acd603(12)*acd603(48)
      acd603(50)=acd603(29)*acd603(38)
      acd603(52)=acd603(26)*acd603(37)
      acd603(53)=acd603(22)*acd603(31)
      acd603(54)=acd603(16)*acd603(30)
      acd603(55)=acd603(21)*acd603(27)
      acd603(56)=acd603(20)*acd603(24)
      acd603(57)=acd603(19)*acd603(23)
      acd603(42)=acd603(42)+acd603(47)+acd603(46)+acd603(57)+acd603(56)+acd603(&
      &55)+acd603(54)+acd603(53)+acd603(52)+acd603(39)+acd603(50)+acd603(49)
      acd603(42)=acd603(3)*acd603(42)
      acd603(44)=acd603(18)*acd603(44)
      acd603(43)=ninjaP*acd603(43)
      acd603(45)=acd603(18)*acd603(45)
      acd603(43)=acd603(45)+acd603(43)
      acd603(43)=acd603(4)*acd603(43)
      acd603(45)=acd603(2)*acd603(31)
      acd603(45)=acd603(45)+acd603(36)
      acd603(45)=acd603(51)*acd603(45)
      acd603(46)=acd603(2)*acd603(48)
      acd603(47)=acd603(15)*acd603(30)
      acd603(46)=acd603(47)+acd603(46)
      acd603(46)=acd603(1)*acd603(46)
      acd603(47)=acd603(33)*acd603(34)
      acd603(48)=acd603(15)*acd603(31)
      acd603(48)=acd603(32)+acd603(48)
      acd603(48)=acd603(14)*acd603(48)
      acd603(42)=acd603(42)+acd603(43)+acd603(44)+acd603(46)+acd603(48)+acd603(&
      &47)+acd603(45)
      brack(ninjaidxt1mu0)=acd603(40)
      brack(ninjaidxt0mu0)=acd603(42)
      brack(ninjaidxt0mu2)=acd603(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d603h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd603h5
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
end module     p4_ubaru_epnemumnmubarg_d603h5l131
