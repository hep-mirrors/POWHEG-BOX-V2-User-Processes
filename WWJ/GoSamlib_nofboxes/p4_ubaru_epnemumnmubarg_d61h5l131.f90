module     p4_ubaru_epnemumnmubarg_d61h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5d61h5l131.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd61h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd61(1)=dotproduct(k1,ninjaE3)
      acd61(2)=dotproduct(ninjaE3,spvak5k6)
      acd61(3)=abb61(12)
      acd61(4)=dotproduct(k2,ninjaE3)
      acd61(5)=abb61(21)
      acd61(6)=dotproduct(k3,ninjaE3)
      acd61(7)=dotproduct(k4,ninjaE3)
      acd61(8)=dotproduct(k5,ninjaE3)
      acd61(9)=abb61(15)
      acd61(10)=dotproduct(k6,ninjaE3)
      acd61(11)=dotproduct(ninjaE3,spvak4k2)
      acd61(12)=abb61(11)
      acd61(13)=dotproduct(ninjaE3,spvak1k5)
      acd61(14)=abb61(13)
      acd61(15)=dotproduct(ninjaE3,spvak7k2)
      acd61(16)=abb61(14)
      acd61(17)=dotproduct(ninjaE3,spvak1k6)
      acd61(18)=abb61(16)
      acd61(19)=dotproduct(ninjaE3,spvak4k3)
      acd61(20)=abb61(19)
      acd61(21)=-acd61(10)-acd61(8)
      acd61(21)=acd61(21)*acd61(9)
      acd61(22)=acd61(7)+acd61(6)-acd61(4)
      acd61(22)=acd61(22)*acd61(5)
      acd61(23)=acd61(3)*acd61(1)
      acd61(24)=acd61(12)*acd61(11)
      acd61(25)=acd61(14)*acd61(13)
      acd61(26)=acd61(16)*acd61(15)
      acd61(27)=acd61(18)*acd61(17)
      acd61(28)=acd61(20)*acd61(19)
      acd61(21)=acd61(22)+acd61(21)+acd61(28)+acd61(27)+acd61(26)+acd61(25)+acd&
      &61(24)+acd61(23)
      acd61(21)=acd61(2)*acd61(21)
      brack(ninjaidxt2mu0)=acd61(21)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd61h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(62) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd61(1)=dotproduct(k1,ninjaE3)
      acd61(2)=dotproduct(ninjaE4,spvak5k6)
      acd61(3)=abb61(12)
      acd61(4)=dotproduct(k1,ninjaE4)
      acd61(5)=dotproduct(ninjaE3,spvak5k6)
      acd61(6)=dotproduct(k2,ninjaE3)
      acd61(7)=abb61(21)
      acd61(8)=dotproduct(k2,ninjaE4)
      acd61(9)=dotproduct(k3,ninjaE3)
      acd61(10)=dotproduct(k3,ninjaE4)
      acd61(11)=dotproduct(k4,ninjaE3)
      acd61(12)=dotproduct(k4,ninjaE4)
      acd61(13)=dotproduct(k5,ninjaE3)
      acd61(14)=abb61(15)
      acd61(15)=dotproduct(k5,ninjaE4)
      acd61(16)=dotproduct(k6,ninjaE3)
      acd61(17)=dotproduct(k6,ninjaE4)
      acd61(18)=dotproduct(ninjaE4,spvak1k6)
      acd61(19)=abb61(16)
      acd61(20)=dotproduct(ninjaE4,spvak4k2)
      acd61(21)=abb61(11)
      acd61(22)=dotproduct(ninjaE4,spvak1k5)
      acd61(23)=abb61(13)
      acd61(24)=dotproduct(ninjaE4,spvak7k2)
      acd61(25)=abb61(14)
      acd61(26)=dotproduct(ninjaE4,spvak4k3)
      acd61(27)=abb61(19)
      acd61(28)=dotproduct(ninjaE3,spvak1k6)
      acd61(29)=dotproduct(ninjaE3,spvak4k2)
      acd61(30)=dotproduct(ninjaE3,spvak1k5)
      acd61(31)=dotproduct(ninjaE3,spvak7k2)
      acd61(32)=dotproduct(ninjaE3,spvak4k3)
      acd61(33)=abb61(10)
      acd61(34)=dotproduct(k1,ninjaA)
      acd61(35)=dotproduct(ninjaA,spvak5k6)
      acd61(36)=dotproduct(k2,ninjaA)
      acd61(37)=dotproduct(k3,ninjaA)
      acd61(38)=dotproduct(k4,ninjaA)
      acd61(39)=dotproduct(k5,ninjaA)
      acd61(40)=abb61(18)
      acd61(41)=dotproduct(k6,ninjaA)
      acd61(42)=dotproduct(ninjaA,ninjaE3)
      acd61(43)=dotproduct(ninjaA,spvak1k6)
      acd61(44)=dotproduct(ninjaA,spvak4k2)
      acd61(45)=dotproduct(ninjaA,spvak1k5)
      acd61(46)=dotproduct(ninjaA,spvak7k2)
      acd61(47)=dotproduct(ninjaA,spvak4k3)
      acd61(48)=abb61(8)
      acd61(49)=abb61(9)
      acd61(50)=dotproduct(ninjaA,ninjaA)
      acd61(51)=-acd61(12)+acd61(8)-acd61(10)
      acd61(51)=acd61(51)*acd61(7)
      acd61(52)=acd61(15)+acd61(17)
      acd61(52)=acd61(52)*acd61(14)
      acd61(53)=acd61(27)*acd61(26)
      acd61(54)=acd61(25)*acd61(24)
      acd61(55)=acd61(23)*acd61(22)
      acd61(56)=acd61(21)*acd61(20)
      acd61(57)=acd61(19)*acd61(18)
      acd61(58)=acd61(3)*acd61(4)
      acd61(51)=acd61(53)+acd61(54)-acd61(51)-acd61(52)+acd61(55)+acd61(56)+acd&
      &61(57)+acd61(58)
      acd61(51)=acd61(51)*acd61(5)
      acd61(52)=-acd61(11)+acd61(6)-acd61(9)
      acd61(52)=acd61(52)*acd61(7)
      acd61(53)=acd61(13)+acd61(16)
      acd61(54)=acd61(53)*acd61(14)
      acd61(55)=acd61(27)*acd61(32)
      acd61(56)=acd61(25)*acd61(31)
      acd61(57)=acd61(23)*acd61(30)
      acd61(58)=acd61(21)*acd61(29)
      acd61(59)=acd61(19)*acd61(28)
      acd61(60)=acd61(3)*acd61(1)
      acd61(52)=-acd61(52)-acd61(54)+acd61(55)+acd61(56)+acd61(57)+acd61(58)+ac&
      &d61(59)+acd61(60)
      acd61(54)=acd61(52)*acd61(2)
      acd61(51)=acd61(51)+acd61(54)+acd61(33)
      acd61(52)=acd61(35)*acd61(52)
      acd61(54)=-acd61(38)+acd61(36)-acd61(37)
      acd61(54)=acd61(54)*acd61(7)
      acd61(55)=acd61(27)*acd61(47)
      acd61(56)=acd61(25)*acd61(46)
      acd61(57)=acd61(23)*acd61(45)
      acd61(58)=acd61(21)*acd61(44)
      acd61(59)=acd61(39)+acd61(41)
      acd61(60)=acd61(59)*acd61(14)
      acd61(61)=acd61(19)*acd61(43)
      acd61(62)=acd61(3)*acd61(34)
      acd61(54)=acd61(48)-acd61(54)+acd61(58)-acd61(60)+acd61(61)+acd61(62)+acd&
      &61(55)+acd61(56)+acd61(57)
      acd61(55)=acd61(5)*acd61(54)
      acd61(53)=-acd61(40)*acd61(53)
      acd61(56)=acd61(33)*acd61(42)
      acd61(57)=acd61(28)*acd61(49)
      acd61(52)=acd61(55)+acd61(52)+2.0_ki*acd61(56)+acd61(57)+acd61(53)
      acd61(53)=ninjaP*acd61(51)
      acd61(54)=acd61(35)*acd61(54)
      acd61(55)=acd61(43)*acd61(49)
      acd61(56)=-acd61(40)*acd61(59)
      acd61(57)=acd61(33)*acd61(50)
      acd61(53)=acd61(54)+acd61(57)+acd61(55)+acd61(56)+acd61(53)
      brack(ninjaidxt1mu0)=acd61(52)
      brack(ninjaidxt0mu0)=acd61(53)
      brack(ninjaidxt0mu2)=acd61(51)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d61h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd61h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p4_ubaru_epnemumnmubarg_d61h5l131
