module     p0_dbaru_epnebbbarg_d42h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d42h5l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd42h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd42
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd42(1)=dotproduct(k2,ninjaE3)
      acd42(2)=dotproduct(ninjaE3,spvak4k3)
      acd42(3)=abb42(18)
      acd42(4)=dotproduct(l5,ninjaE3)
      acd42(5)=abb42(29)
      acd42(6)=dotproduct(l6,ninjaE3)
      acd42(7)=dotproduct(ninjaE3,spval6k2)
      acd42(8)=abb42(11)
      acd42(9)=dotproduct(ninjaE3,spvak1l5)
      acd42(10)=abb42(12)
      acd42(11)=dotproduct(ninjaE3,spvak1k2)
      acd42(12)=abb42(14)
      acd42(13)=dotproduct(ninjaE3,spval6l5)
      acd42(14)=abb42(20)
      acd42(15)=dotproduct(ninjaE3,spvak7k2)
      acd42(16)=abb42(24)
      acd42(17)=dotproduct(ninjaE3,spvak7l5)
      acd42(18)=abb42(27)
      acd42(19)=acd42(6)+acd42(4)
      acd42(19)=acd42(19)*acd42(5)
      acd42(20)=acd42(3)*acd42(1)
      acd42(21)=acd42(8)*acd42(7)
      acd42(22)=acd42(10)*acd42(9)
      acd42(23)=acd42(12)*acd42(11)
      acd42(24)=acd42(14)*acd42(13)
      acd42(25)=acd42(16)*acd42(15)
      acd42(26)=acd42(18)*acd42(17)
      acd42(19)=acd42(19)+acd42(26)+acd42(25)+acd42(24)+acd42(23)+acd42(22)+acd&
      &42(21)+acd42(20)
      acd42(19)=acd42(2)*acd42(19)
      brack(ninjaidxt2mu0)=acd42(19)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd42h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd42
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd42(1)=dotproduct(k2,ninjaE3)
      acd42(2)=dotproduct(ninjaE4,spvak4k3)
      acd42(3)=abb42(18)
      acd42(4)=dotproduct(k2,ninjaE4)
      acd42(5)=dotproduct(ninjaE3,spvak4k3)
      acd42(6)=dotproduct(l5,ninjaE3)
      acd42(7)=abb42(29)
      acd42(8)=dotproduct(l5,ninjaE4)
      acd42(9)=dotproduct(l6,ninjaE3)
      acd42(10)=dotproduct(l6,ninjaE4)
      acd42(11)=dotproduct(ninjaE4,spval6k2)
      acd42(12)=abb42(11)
      acd42(13)=dotproduct(ninjaE4,spvak1l5)
      acd42(14)=abb42(12)
      acd42(15)=dotproduct(ninjaE4,spvak1k2)
      acd42(16)=abb42(14)
      acd42(17)=dotproduct(ninjaE4,spval6l5)
      acd42(18)=abb42(20)
      acd42(19)=dotproduct(ninjaE4,spvak7k2)
      acd42(20)=abb42(24)
      acd42(21)=dotproduct(ninjaE4,spvak7l5)
      acd42(22)=abb42(27)
      acd42(23)=dotproduct(ninjaE3,spval6k2)
      acd42(24)=dotproduct(ninjaE3,spvak1l5)
      acd42(25)=dotproduct(ninjaE3,spvak1k2)
      acd42(26)=dotproduct(ninjaE3,spval6l5)
      acd42(27)=dotproduct(ninjaE3,spvak7k2)
      acd42(28)=dotproduct(ninjaE3,spvak7l5)
      acd42(29)=abb42(25)
      acd42(30)=dotproduct(k2,ninjaA)
      acd42(31)=dotproduct(ninjaA,spvak4k3)
      acd42(32)=dotproduct(k3,ninjaE3)
      acd42(33)=abb42(31)
      acd42(34)=dotproduct(k4,ninjaE3)
      acd42(35)=dotproduct(l5,ninjaA)
      acd42(36)=dotproduct(l6,ninjaA)
      acd42(37)=dotproduct(ninjaA,ninjaE3)
      acd42(38)=dotproduct(ninjaA,spval6k2)
      acd42(39)=dotproduct(ninjaA,spvak1l5)
      acd42(40)=dotproduct(ninjaA,spvak1k2)
      acd42(41)=dotproduct(ninjaA,spval6l5)
      acd42(42)=dotproduct(ninjaA,spvak7k2)
      acd42(43)=dotproduct(ninjaA,spvak7l5)
      acd42(44)=abb42(22)
      acd42(45)=dotproduct(ninjaE3,spvak1k3)
      acd42(46)=abb42(13)
      acd42(47)=dotproduct(ninjaE3,spvak7k3)
      acd42(48)=abb42(33)
      acd42(49)=dotproduct(k3,ninjaA)
      acd42(50)=dotproduct(k4,ninjaA)
      acd42(51)=dotproduct(ninjaA,ninjaA)
      acd42(52)=dotproduct(ninjaA,spvak1k3)
      acd42(53)=dotproduct(ninjaA,spvak7k3)
      acd42(54)=acd42(8)+acd42(10)
      acd42(54)=acd42(54)*acd42(7)
      acd42(55)=acd42(22)*acd42(21)
      acd42(56)=acd42(20)*acd42(19)
      acd42(57)=acd42(18)*acd42(17)
      acd42(58)=acd42(16)*acd42(15)
      acd42(59)=acd42(14)*acd42(13)
      acd42(60)=acd42(12)*acd42(11)
      acd42(61)=acd42(3)*acd42(4)
      acd42(54)=acd42(54)+acd42(57)+acd42(58)+acd42(59)+acd42(60)+acd42(61)+acd&
      &42(55)+acd42(56)
      acd42(54)=acd42(54)*acd42(5)
      acd42(55)=acd42(6)+acd42(9)
      acd42(55)=acd42(55)*acd42(7)
      acd42(56)=acd42(22)*acd42(28)
      acd42(57)=acd42(20)*acd42(27)
      acd42(58)=acd42(18)*acd42(26)
      acd42(59)=acd42(16)*acd42(25)
      acd42(60)=acd42(14)*acd42(24)
      acd42(61)=acd42(12)*acd42(23)
      acd42(62)=acd42(3)*acd42(1)
      acd42(55)=acd42(58)+acd42(55)+acd42(56)+acd42(57)+acd42(59)+acd42(60)+acd&
      &42(61)+acd42(62)
      acd42(56)=acd42(55)*acd42(2)
      acd42(54)=acd42(54)+acd42(56)+acd42(29)
      acd42(55)=acd42(31)*acd42(55)
      acd42(56)=acd42(35)+acd42(36)
      acd42(56)=acd42(56)*acd42(7)
      acd42(57)=acd42(22)*acd42(43)
      acd42(58)=acd42(20)*acd42(42)
      acd42(59)=acd42(18)*acd42(41)
      acd42(60)=acd42(16)*acd42(40)
      acd42(61)=acd42(14)*acd42(39)
      acd42(62)=acd42(12)*acd42(38)
      acd42(63)=acd42(3)*acd42(30)
      acd42(56)=acd42(56)+acd42(58)+acd42(59)+acd42(60)+acd42(63)+acd42(44)+acd&
      &42(57)+acd42(61)+acd42(62)
      acd42(57)=acd42(5)*acd42(56)
      acd42(58)=acd42(48)*acd42(47)
      acd42(59)=acd42(46)*acd42(45)
      acd42(60)=acd42(34)+acd42(32)
      acd42(60)=acd42(33)*acd42(60)
      acd42(61)=acd42(29)*acd42(37)
      acd42(55)=acd42(57)+acd42(55)+2.0_ki*acd42(61)+acd42(60)+acd42(58)+acd42(&
      &59)
      acd42(57)=ninjaP*acd42(54)
      acd42(56)=acd42(31)*acd42(56)
      acd42(58)=acd42(48)*acd42(53)
      acd42(59)=acd42(46)*acd42(52)
      acd42(60)=acd42(50)+acd42(49)
      acd42(60)=acd42(33)*acd42(60)
      acd42(61)=acd42(29)*acd42(51)
      acd42(56)=acd42(56)+acd42(61)+acd42(60)+acd42(58)+acd42(59)+acd42(57)
      brack(ninjaidxt1mu0)=acd42(55)
      brack(ninjaidxt0mu0)=acd42(56)
      brack(ninjaidxt0mu2)=acd42(54)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d42h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd42h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d42h5l131
