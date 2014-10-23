module     p0_dbaru_epnebbbarg_d223h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d223h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd223h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd223
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd223(1)=dotproduct(k2,ninjaE3)
      acd223(2)=dotproduct(ninjaE3,spvak7k2)
      acd223(3)=abb223(45)
      acd223(4)=dotproduct(l5,ninjaE3)
      acd223(5)=abb223(33)
      acd223(6)=dotproduct(l6,ninjaE3)
      acd223(7)=dotproduct(ninjaE3,spvak1l5)
      acd223(8)=abb223(14)
      acd223(9)=dotproduct(ninjaE3,spval6k2)
      acd223(10)=abb223(17)
      acd223(11)=dotproduct(ninjaE3,spvak1k2)
      acd223(12)=abb223(18)
      acd223(13)=dotproduct(ninjaE3,spvak4k2)
      acd223(14)=abb223(19)
      acd223(15)=dotproduct(ninjaE3,spval6l5)
      acd223(16)=abb223(20)
      acd223(17)=dotproduct(ninjaE3,spvak4l5)
      acd223(18)=abb223(24)
      acd223(19)=acd223(6)+acd223(4)
      acd223(19)=acd223(19)*acd223(5)
      acd223(20)=acd223(3)*acd223(1)
      acd223(21)=acd223(8)*acd223(7)
      acd223(22)=acd223(10)*acd223(9)
      acd223(23)=acd223(12)*acd223(11)
      acd223(24)=acd223(14)*acd223(13)
      acd223(25)=acd223(16)*acd223(15)
      acd223(26)=acd223(18)*acd223(17)
      acd223(19)=acd223(19)+acd223(26)+acd223(25)+acd223(24)+acd223(23)+acd223(&
      &22)+acd223(21)+acd223(20)
      acd223(19)=acd223(2)*acd223(19)
      brack(ninjaidxt2mu0)=acd223(19)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd223h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(69) :: acd223
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd223(1)=dotproduct(k2,ninjaE3)
      acd223(2)=dotproduct(ninjaE4,spvak7k2)
      acd223(3)=abb223(45)
      acd223(4)=dotproduct(k2,ninjaE4)
      acd223(5)=dotproduct(ninjaE3,spvak7k2)
      acd223(6)=dotproduct(l5,ninjaE3)
      acd223(7)=abb223(33)
      acd223(8)=dotproduct(l5,ninjaE4)
      acd223(9)=dotproduct(l6,ninjaE3)
      acd223(10)=dotproduct(l6,ninjaE4)
      acd223(11)=dotproduct(ninjaE3,spval6l5)
      acd223(12)=abb223(20)
      acd223(13)=dotproduct(ninjaE3,spval6k2)
      acd223(14)=abb223(17)
      acd223(15)=dotproduct(ninjaE3,spvak1l5)
      acd223(16)=abb223(14)
      acd223(17)=dotproduct(ninjaE4,spval6l5)
      acd223(18)=dotproduct(ninjaE4,spval6k2)
      acd223(19)=dotproduct(ninjaE4,spvak1l5)
      acd223(20)=dotproduct(ninjaE4,spvak1k2)
      acd223(21)=abb223(18)
      acd223(22)=dotproduct(ninjaE4,spvak4k2)
      acd223(23)=abb223(19)
      acd223(24)=dotproduct(ninjaE4,spvak4l5)
      acd223(25)=abb223(24)
      acd223(26)=dotproduct(ninjaE3,spvak1k2)
      acd223(27)=dotproduct(ninjaE3,spvak4k2)
      acd223(28)=dotproduct(ninjaE3,spvak4l5)
      acd223(29)=abb223(21)
      acd223(30)=dotproduct(k1,ninjaE3)
      acd223(31)=abb223(16)
      acd223(32)=dotproduct(k2,ninjaA)
      acd223(33)=dotproduct(ninjaA,spvak7k2)
      acd223(34)=abb223(34)
      acd223(35)=dotproduct(k3,ninjaE3)
      acd223(36)=dotproduct(k4,ninjaE3)
      acd223(37)=dotproduct(l5,ninjaA)
      acd223(38)=abb223(49)
      acd223(39)=dotproduct(l6,ninjaA)
      acd223(40)=dotproduct(k7,ninjaE3)
      acd223(41)=abb223(22)
      acd223(42)=dotproduct(ninjaA,ninjaE3)
      acd223(43)=dotproduct(ninjaA,spval6l5)
      acd223(44)=dotproduct(ninjaA,spval6k2)
      acd223(45)=dotproduct(ninjaA,spvak1l5)
      acd223(46)=dotproduct(ninjaA,spvak1k2)
      acd223(47)=dotproduct(ninjaA,spvak4k2)
      acd223(48)=dotproduct(ninjaA,spvak4l5)
      acd223(49)=abb223(11)
      acd223(50)=abb223(13)
      acd223(51)=abb223(15)
      acd223(52)=dotproduct(k1,ninjaA)
      acd223(53)=dotproduct(k3,ninjaA)
      acd223(54)=dotproduct(k4,ninjaA)
      acd223(55)=dotproduct(k7,ninjaA)
      acd223(56)=dotproduct(ninjaA,ninjaA)
      acd223(57)=abb223(12)
      acd223(58)=acd223(8)+acd223(10)
      acd223(58)=acd223(58)*acd223(7)
      acd223(59)=acd223(25)*acd223(24)
      acd223(60)=acd223(23)*acd223(22)
      acd223(61)=acd223(21)*acd223(20)
      acd223(62)=acd223(16)*acd223(19)
      acd223(63)=acd223(14)*acd223(18)
      acd223(64)=acd223(12)*acd223(17)
      acd223(65)=acd223(3)*acd223(4)
      acd223(58)=acd223(58)+acd223(61)+acd223(62)+acd223(63)+acd223(64)+acd223(&
      &65)+acd223(59)+acd223(60)
      acd223(58)=acd223(58)*acd223(5)
      acd223(59)=acd223(6)+acd223(9)
      acd223(60)=acd223(59)*acd223(7)
      acd223(61)=acd223(25)*acd223(28)
      acd223(62)=acd223(23)*acd223(27)
      acd223(63)=acd223(21)*acd223(26)
      acd223(64)=acd223(16)*acd223(15)
      acd223(65)=acd223(14)*acd223(13)
      acd223(66)=acd223(12)*acd223(11)
      acd223(67)=acd223(3)*acd223(1)
      acd223(60)=acd223(63)+acd223(60)+acd223(61)+acd223(62)+acd223(64)+acd223(&
      &65)+acd223(66)+acd223(67)
      acd223(61)=acd223(60)*acd223(2)
      acd223(58)=acd223(58)+acd223(61)+acd223(29)
      acd223(60)=acd223(33)*acd223(60)
      acd223(61)=acd223(25)*acd223(48)
      acd223(62)=acd223(23)*acd223(47)
      acd223(63)=acd223(21)*acd223(46)
      acd223(64)=acd223(16)*acd223(45)
      acd223(65)=acd223(14)*acd223(44)
      acd223(66)=acd223(12)*acd223(43)
      acd223(67)=acd223(37)+acd223(39)
      acd223(68)=acd223(67)*acd223(7)
      acd223(69)=acd223(3)*acd223(32)
      acd223(61)=acd223(61)+acd223(66)+acd223(68)+acd223(69)+acd223(51)+acd223(&
      &62)+acd223(63)+acd223(64)+acd223(65)
      acd223(62)=acd223(5)*acd223(61)
      acd223(59)=-acd223(38)*acd223(59)
      acd223(63)=acd223(41)*acd223(40)
      acd223(64)=acd223(29)*acd223(42)
      acd223(65)=acd223(13)*acd223(50)
      acd223(66)=acd223(11)*acd223(49)
      acd223(68)=acd223(1)*acd223(34)
      acd223(69)=acd223(30)-acd223(36)-acd223(35)
      acd223(69)=acd223(31)*acd223(69)
      acd223(59)=acd223(62)+acd223(60)+acd223(69)+acd223(68)+acd223(66)+acd223(&
      &65)+acd223(63)+2.0_ki*acd223(64)+acd223(59)
      acd223(60)=ninjaP*acd223(58)
      acd223(61)=acd223(33)*acd223(61)
      acd223(62)=acd223(41)*acd223(55)
      acd223(63)=acd223(44)*acd223(50)
      acd223(64)=acd223(43)*acd223(49)
      acd223(65)=acd223(32)*acd223(34)
      acd223(66)=-acd223(38)*acd223(67)
      acd223(67)=acd223(29)*acd223(56)
      acd223(68)=acd223(52)-acd223(54)-acd223(53)
      acd223(68)=acd223(31)*acd223(68)
      acd223(60)=acd223(61)+acd223(68)+acd223(67)+acd223(66)+acd223(65)+acd223(&
      &64)+acd223(63)+acd223(57)+acd223(62)+acd223(60)
      brack(ninjaidxt1mu0)=acd223(59)
      brack(ninjaidxt0mu0)=acd223(60)
      brack(ninjaidxt0mu2)=acd223(58)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d223h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2+k7
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
end module     p0_dbaru_epnebbbarg_d223h5l131
