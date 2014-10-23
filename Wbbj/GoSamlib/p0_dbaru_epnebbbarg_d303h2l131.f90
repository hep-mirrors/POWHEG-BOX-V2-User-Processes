module     p0_dbaru_epnebbbarg_d303h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d303h2l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd303
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(48) :: acd303
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd303(1)=dotproduct(ninjaE3,spvak1k2)
      acd303(2)=dotproduct(ninjaE3,spvak2k7)
      acd303(3)=dotproduct(ninjaE3,spval5l6)
      acd303(4)=abb303(11)
      acd303(5)=dotproduct(ninjaE3,spvak4k2)
      acd303(6)=abb303(34)
      acd303(7)=dotproduct(k2,ninjaE3)
      acd303(8)=abb303(54)
      acd303(9)=abb303(49)
      acd303(10)=dotproduct(ninjaE3,spvak2l6)
      acd303(11)=abb303(30)
      acd303(12)=dotproduct(ninjaE3,spval5k2)
      acd303(13)=abb303(20)
      acd303(14)=dotproduct(l5,ninjaE3)
      acd303(15)=abb303(39)
      acd303(16)=abb303(24)
      acd303(17)=dotproduct(k7,ninjaE3)
      acd303(18)=abb303(31)
      acd303(19)=abb303(52)
      acd303(20)=dotproduct(ninjaA,ninjaE3)
      acd303(21)=abb303(13)
      acd303(22)=abb303(50)
      acd303(23)=abb303(23)
      acd303(24)=abb303(46)
      acd303(25)=dotproduct(ninjaA,spvak1k2)
      acd303(26)=dotproduct(ninjaA,spvak2k7)
      acd303(27)=dotproduct(ninjaA,spval5l6)
      acd303(28)=dotproduct(ninjaA,spvak4k2)
      acd303(29)=abb303(12)
      acd303(30)=abb303(21)
      acd303(31)=abb303(59)
      acd303(32)=abb303(18)
      acd303(33)=abb303(29)
      acd303(34)=abb303(56)
      acd303(35)=abb303(14)
      acd303(36)=dotproduct(ninjaE3,spval5k7)
      acd303(37)=dotproduct(ninjaE3,spvak7l6)
      acd303(38)=abb303(48)
      acd303(39)=acd303(4)*acd303(1)
      acd303(40)=acd303(6)*acd303(5)
      acd303(39)=acd303(39)+acd303(40)
      acd303(40)=acd303(3)*acd303(2)
      acd303(41)=acd303(40)*acd303(39)
      acd303(42)=acd303(27)*acd303(39)
      acd303(43)=acd303(8)*acd303(7)
      acd303(44)=acd303(15)*acd303(14)
      acd303(45)=2.0_ki*acd303(20)
      acd303(46)=acd303(21)*acd303(45)
      acd303(47)=acd303(29)*acd303(1)
      acd303(48)=acd303(33)*acd303(5)
      acd303(42)=acd303(48)+acd303(42)+acd303(47)+acd303(46)+acd303(44)+acd303(&
      &43)
      acd303(42)=acd303(2)*acd303(42)
      acd303(39)=acd303(26)*acd303(39)
      acd303(43)=acd303(9)*acd303(7)
      acd303(44)=acd303(18)*acd303(17)
      acd303(46)=acd303(22)*acd303(45)
      acd303(47)=acd303(30)*acd303(1)
      acd303(48)=acd303(34)*acd303(5)
      acd303(39)=acd303(48)+acd303(39)+acd303(47)+acd303(46)+acd303(44)+acd303(&
      &43)
      acd303(39)=acd303(3)*acd303(39)
      acd303(43)=acd303(13)*acd303(7)
      acd303(44)=acd303(19)*acd303(17)
      acd303(46)=acd303(24)*acd303(45)
      acd303(47)=acd303(32)*acd303(2)
      acd303(48)=acd303(35)*acd303(10)
      acd303(43)=acd303(48)+acd303(47)+acd303(46)+acd303(44)+acd303(43)
      acd303(43)=acd303(12)*acd303(43)
      acd303(44)=acd303(36)*acd303(31)
      acd303(46)=acd303(11)*acd303(7)
      acd303(47)=acd303(16)*acd303(14)
      acd303(45)=acd303(23)*acd303(45)
      acd303(44)=acd303(45)+acd303(47)+acd303(46)+acd303(44)
      acd303(44)=acd303(10)*acd303(44)
      acd303(45)=acd303(25)*acd303(4)
      acd303(46)=acd303(28)*acd303(6)
      acd303(45)=acd303(46)+acd303(45)-acd303(31)
      acd303(40)=acd303(40)*acd303(45)
      acd303(45)=acd303(38)*acd303(37)*acd303(36)
      acd303(39)=acd303(45)+acd303(43)+acd303(44)+acd303(40)+acd303(39)+acd303(&
      &42)
      brack(ninjaidxt1mu0)=acd303(41)
      brack(ninjaidxt0mu0)=acd303(39)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d303h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d303h2l131
