module     p0_dbaru_epnebbbarg_d43h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d43h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd43h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd43(1)=dotproduct(k7,ninjaE3)
      acd43(2)=dotproduct(ninjaE3,spvak4k3)
      acd43(3)=abb43(31)
      acd43(4)=dotproduct(ninjaE3,spvak2k7)
      acd43(5)=abb43(12)
      acd43(6)=dotproduct(ninjaE3,spvak1k7)
      acd43(7)=abb43(15)
      acd43(8)=dotproduct(ninjaE3,spval5k7)
      acd43(9)=abb43(37)
      acd43(10)=dotproduct(ninjaE3,spval6k7)
      acd43(11)=abb43(39)
      acd43(12)=acd43(3)*acd43(1)
      acd43(13)=acd43(5)*acd43(4)
      acd43(14)=acd43(7)*acd43(6)
      acd43(15)=acd43(9)*acd43(8)
      acd43(16)=acd43(11)*acd43(10)
      acd43(12)=acd43(16)+acd43(15)+acd43(14)+acd43(12)+acd43(13)
      acd43(12)=acd43(2)*acd43(12)
      brack(ninjaidxt2mu0)=acd43(12)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd43h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(47) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd43(1)=dotproduct(k7,ninjaE3)
      acd43(2)=dotproduct(ninjaE4,spvak4k3)
      acd43(3)=abb43(31)
      acd43(4)=dotproduct(k7,ninjaE4)
      acd43(5)=dotproduct(ninjaE3,spvak4k3)
      acd43(6)=dotproduct(ninjaE3,spvak2k7)
      acd43(7)=abb43(12)
      acd43(8)=dotproduct(ninjaE4,spvak2k7)
      acd43(9)=dotproduct(ninjaE4,spvak1k7)
      acd43(10)=abb43(15)
      acd43(11)=dotproduct(ninjaE4,spval5k7)
      acd43(12)=abb43(37)
      acd43(13)=dotproduct(ninjaE4,spval6k7)
      acd43(14)=abb43(39)
      acd43(15)=dotproduct(ninjaE3,spvak1k7)
      acd43(16)=dotproduct(ninjaE3,spval5k7)
      acd43(17)=dotproduct(ninjaE3,spval6k7)
      acd43(18)=abb43(17)
      acd43(19)=dotproduct(k7,ninjaA)
      acd43(20)=dotproduct(ninjaA,spvak4k3)
      acd43(21)=dotproduct(ninjaA,ninjaE3)
      acd43(22)=dotproduct(ninjaA,spvak2k7)
      acd43(23)=dotproduct(ninjaA,spvak1k7)
      acd43(24)=dotproduct(ninjaA,spval5k7)
      acd43(25)=dotproduct(ninjaA,spval6k7)
      acd43(26)=dotproduct(ninjaE3,spvak2k3)
      acd43(27)=abb43(13)
      acd43(28)=dotproduct(ninjaE3,spval5k3)
      acd43(29)=abb43(14)
      acd43(30)=dotproduct(ninjaE3,spvak1k3)
      acd43(31)=abb43(16)
      acd43(32)=dotproduct(ninjaE3,spval6k3)
      acd43(33)=abb43(27)
      acd43(34)=dotproduct(ninjaA,ninjaA)
      acd43(35)=dotproduct(ninjaA,spvak2k3)
      acd43(36)=dotproduct(ninjaA,spval5k3)
      acd43(37)=dotproduct(ninjaA,spvak1k3)
      acd43(38)=dotproduct(ninjaA,spval6k3)
      acd43(39)=acd43(14)*acd43(13)
      acd43(40)=acd43(12)*acd43(11)
      acd43(41)=acd43(10)*acd43(9)
      acd43(42)=acd43(7)*acd43(8)
      acd43(43)=acd43(3)*acd43(4)
      acd43(39)=acd43(43)+acd43(40)+acd43(39)+acd43(41)+acd43(42)
      acd43(39)=acd43(39)*acd43(5)
      acd43(40)=acd43(14)*acd43(17)
      acd43(41)=acd43(12)*acd43(16)
      acd43(42)=acd43(10)*acd43(15)
      acd43(43)=acd43(7)*acd43(6)
      acd43(44)=acd43(3)*acd43(1)
      acd43(40)=acd43(44)+acd43(40)+acd43(41)+acd43(42)+acd43(43)
      acd43(41)=acd43(40)*acd43(2)
      acd43(39)=acd43(39)+acd43(41)+acd43(18)
      acd43(40)=acd43(20)*acd43(40)
      acd43(41)=acd43(14)*acd43(25)
      acd43(42)=acd43(12)*acd43(24)
      acd43(43)=acd43(10)*acd43(23)
      acd43(44)=acd43(7)*acd43(22)
      acd43(45)=acd43(3)*acd43(19)
      acd43(41)=acd43(43)+acd43(41)+acd43(42)+acd43(44)+acd43(45)
      acd43(42)=acd43(5)*acd43(41)
      acd43(43)=acd43(33)*acd43(32)
      acd43(44)=acd43(31)*acd43(30)
      acd43(45)=acd43(29)*acd43(28)
      acd43(46)=acd43(27)*acd43(26)
      acd43(47)=acd43(18)*acd43(21)
      acd43(40)=acd43(42)+acd43(40)+2.0_ki*acd43(47)+acd43(46)+acd43(45)+acd43(&
      &43)+acd43(44)
      acd43(42)=ninjaP*acd43(39)
      acd43(41)=acd43(20)*acd43(41)
      acd43(43)=acd43(33)*acd43(38)
      acd43(44)=acd43(31)*acd43(37)
      acd43(45)=acd43(29)*acd43(36)
      acd43(46)=acd43(27)*acd43(35)
      acd43(47)=acd43(18)*acd43(34)
      acd43(41)=acd43(41)+acd43(47)+acd43(46)+acd43(45)+acd43(43)+acd43(44)+acd&
      &43(42)
      brack(ninjaidxt1mu0)=acd43(40)
      brack(ninjaidxt0mu0)=acd43(41)
      brack(ninjaidxt0mu2)=acd43(39)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d43h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd43h3
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
end module     p0_dbaru_epnebbbarg_d43h3l131
