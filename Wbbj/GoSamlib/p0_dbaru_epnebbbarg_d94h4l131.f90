module     p0_dbaru_epnebbbarg_d94h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d94h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd94h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd94
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd94(1)=dotproduct(ninjaE3,spvak1k2)
      acd94(2)=dotproduct(ninjaE3,spval5k2)
      acd94(3)=dotproduct(ninjaE3,spvak7k2)
      acd94(4)=abb94(18)
      acd94(5)=dotproduct(ninjaE3,spval6k2)
      acd94(6)=abb94(22)
      acd94(7)=dotproduct(ninjaE3,spvak4k2)
      acd94(8)=abb94(21)
      acd94(9)=abb94(25)
      acd94(10)=acd94(5)*acd94(9)
      acd94(11)=acd94(2)*acd94(8)
      acd94(10)=acd94(10)+acd94(11)
      acd94(10)=acd94(7)*acd94(10)
      acd94(11)=acd94(5)*acd94(6)
      acd94(12)=acd94(2)*acd94(4)
      acd94(11)=acd94(11)+acd94(12)
      acd94(11)=acd94(1)*acd94(11)
      acd94(10)=acd94(11)+acd94(10)
      acd94(10)=acd94(3)*acd94(10)
      brack(ninjaidxt2mu0)=acd94(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd94h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(46) :: acd94
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd94(1)=dotproduct(ninjaE3,spval5k2)
      acd94(2)=dotproduct(ninjaE3,spvak7k2)
      acd94(3)=dotproduct(ninjaE4,spvak1k2)
      acd94(4)=abb94(18)
      acd94(5)=dotproduct(ninjaE4,spvak4k2)
      acd94(6)=abb94(21)
      acd94(7)=dotproduct(ninjaE3,spvak1k2)
      acd94(8)=dotproduct(ninjaE4,spvak7k2)
      acd94(9)=dotproduct(ninjaE3,spvak4k2)
      acd94(10)=dotproduct(ninjaE3,spval6k2)
      acd94(11)=abb94(22)
      acd94(12)=abb94(25)
      acd94(13)=dotproduct(ninjaE4,spval5k2)
      acd94(14)=dotproduct(ninjaE4,spval6k2)
      acd94(15)=dotproduct(ninjaA,spval5k2)
      acd94(16)=dotproduct(ninjaA,spvak7k2)
      acd94(17)=dotproduct(ninjaA,spval6k2)
      acd94(18)=dotproduct(ninjaA,spvak1k2)
      acd94(19)=dotproduct(ninjaA,spvak4k2)
      acd94(20)=abb94(12)
      acd94(21)=abb94(10)
      acd94(22)=abb94(14)
      acd94(23)=abb94(15)
      acd94(24)=abb94(17)
      acd94(25)=abb94(20)
      acd94(26)=abb94(13)
      acd94(27)=abb94(16)
      acd94(28)=abb94(24)
      acd94(29)=abb94(9)
      acd94(30)=abb94(11)
      acd94(31)=acd94(11)*acd94(7)
      acd94(32)=acd94(12)*acd94(9)
      acd94(31)=acd94(31)+acd94(32)
      acd94(32)=acd94(10)*acd94(31)
      acd94(33)=acd94(4)*acd94(7)
      acd94(34)=acd94(6)*acd94(9)
      acd94(33)=acd94(33)+acd94(34)
      acd94(34)=acd94(1)*acd94(33)
      acd94(32)=acd94(34)+acd94(32)
      acd94(32)=acd94(32)*acd94(8)
      acd94(34)=acd94(2)*acd94(31)
      acd94(35)=acd94(34)*acd94(14)
      acd94(36)=acd94(6)*acd94(1)
      acd94(37)=acd94(12)*acd94(10)
      acd94(36)=acd94(36)+acd94(37)
      acd94(37)=acd94(2)*acd94(36)
      acd94(38)=acd94(37)*acd94(5)
      acd94(39)=acd94(4)*acd94(1)
      acd94(40)=acd94(11)*acd94(10)
      acd94(39)=acd94(39)+acd94(40)
      acd94(40)=acd94(2)*acd94(39)
      acd94(41)=acd94(40)*acd94(3)
      acd94(42)=acd94(2)*acd94(33)
      acd94(43)=acd94(42)*acd94(13)
      acd94(32)=acd94(32)+acd94(35)+acd94(38)+acd94(41)+acd94(43)
      acd94(31)=acd94(16)*acd94(31)
      acd94(35)=acd94(22)*acd94(1)
      acd94(38)=acd94(25)*acd94(2)
      acd94(41)=acd94(27)*acd94(7)
      acd94(43)=acd94(28)*acd94(9)
      acd94(35)=acd94(43)+acd94(41)+acd94(38)+acd94(35)+acd94(31)
      acd94(35)=acd94(10)*acd94(35)
      acd94(38)=acd94(21)*acd94(2)
      acd94(41)=acd94(23)*acd94(7)
      acd94(43)=acd94(24)*acd94(9)
      acd94(38)=acd94(38)+acd94(43)+acd94(41)
      acd94(38)=acd94(1)*acd94(38)
      acd94(41)=acd94(16)*acd94(1)
      acd94(43)=acd94(41)*acd94(33)
      acd94(42)=acd94(15)*acd94(42)
      acd94(34)=acd94(17)*acd94(34)
      acd94(40)=acd94(18)*acd94(40)
      acd94(37)=acd94(19)*acd94(37)
      acd94(44)=acd94(20)*acd94(1)**2
      acd94(45)=acd94(26)*acd94(10)**2
      acd94(34)=acd94(45)+acd94(44)+acd94(37)+acd94(40)+acd94(34)+acd94(42)+acd&
      &94(35)+acd94(43)+acd94(38)
      acd94(35)=ninjaP*acd94(32)
      acd94(37)=acd94(16)*acd94(39)
      acd94(38)=acd94(15)*acd94(2)
      acd94(39)=acd94(4)*acd94(38)
      acd94(40)=acd94(17)*acd94(2)
      acd94(42)=acd94(11)*acd94(40)
      acd94(37)=acd94(42)+acd94(39)+acd94(37)
      acd94(37)=acd94(18)*acd94(37)
      acd94(36)=acd94(16)*acd94(36)
      acd94(39)=acd94(6)*acd94(38)
      acd94(42)=acd94(12)*acd94(40)
      acd94(36)=acd94(42)+acd94(39)+acd94(36)
      acd94(36)=acd94(19)*acd94(36)
      acd94(33)=acd94(16)*acd94(33)
      acd94(39)=acd94(20)*acd94(1)
      acd94(33)=2.0_ki*acd94(39)+acd94(33)
      acd94(33)=acd94(15)*acd94(33)
      acd94(39)=acd94(26)*acd94(10)
      acd94(31)=2.0_ki*acd94(39)+acd94(31)
      acd94(31)=acd94(17)*acd94(31)
      acd94(38)=acd94(41)+acd94(38)
      acd94(38)=acd94(21)*acd94(38)
      acd94(39)=acd94(15)*acd94(10)
      acd94(41)=acd94(17)*acd94(1)
      acd94(39)=acd94(39)+acd94(41)
      acd94(39)=acd94(22)*acd94(39)
      acd94(41)=acd94(15)*acd94(7)
      acd94(42)=acd94(18)*acd94(1)
      acd94(41)=acd94(41)+acd94(42)
      acd94(41)=acd94(23)*acd94(41)
      acd94(42)=acd94(15)*acd94(9)
      acd94(43)=acd94(19)*acd94(1)
      acd94(42)=acd94(42)+acd94(43)
      acd94(42)=acd94(24)*acd94(42)
      acd94(43)=acd94(16)*acd94(10)
      acd94(40)=acd94(43)+acd94(40)
      acd94(40)=acd94(25)*acd94(40)
      acd94(43)=acd94(17)*acd94(7)
      acd94(44)=acd94(18)*acd94(10)
      acd94(43)=acd94(43)+acd94(44)
      acd94(43)=acd94(27)*acd94(43)
      acd94(44)=acd94(17)*acd94(9)
      acd94(45)=acd94(19)*acd94(10)
      acd94(44)=acd94(44)+acd94(45)
      acd94(44)=acd94(28)*acd94(44)
      acd94(45)=acd94(29)*acd94(1)
      acd94(46)=acd94(30)*acd94(10)
      acd94(31)=acd94(46)+acd94(45)+acd94(44)+acd94(43)+acd94(40)+acd94(42)+acd&
      &94(41)+acd94(39)+acd94(38)+acd94(36)+acd94(37)+acd94(35)+acd94(31)+acd94&
      &(33)
      brack(ninjaidxt1mu0)=acd94(34)
      brack(ninjaidxt0mu0)=acd94(31)
      brack(ninjaidxt0mu2)=acd94(32)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d94h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h4
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
end module     p0_dbaru_epnebbbarg_d94h4l131
