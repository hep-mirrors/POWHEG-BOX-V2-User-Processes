module     p0_dbaru_epnebbbarg_d219h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d219h5l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd219h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(48) :: acd219
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd219(1)=dotproduct(k2,ninjaE3)
      acd219(2)=abb219(18)
      acd219(3)=dotproduct(l5,ninjaE3)
      acd219(4)=abb219(17)
      acd219(5)=dotproduct(k7,ninjaE3)
      acd219(6)=abb219(40)
      acd219(7)=dotproduct(ninjaE3,spvak7l5)
      acd219(8)=abb219(19)
      acd219(9)=dotproduct(ninjaE3,spval5k3)
      acd219(10)=abb219(20)
      acd219(11)=dotproduct(ninjaE3,spvak1l5)
      acd219(12)=abb219(21)
      acd219(13)=dotproduct(ninjaE3,spvak7k3)
      acd219(14)=abb219(22)
      acd219(15)=dotproduct(ninjaE3,spval5k2)
      acd219(16)=abb219(23)
      acd219(17)=dotproduct(ninjaE3,spvak4k2)
      acd219(18)=abb219(24)
      acd219(19)=dotproduct(ninjaE3,spvak1k3)
      acd219(20)=abb219(25)
      acd219(21)=dotproduct(ninjaE3,spval6k2)
      acd219(22)=abb219(26)
      acd219(23)=dotproduct(ninjaE3,spvak1k2)
      acd219(24)=abb219(27)
      acd219(25)=dotproduct(ninjaE3,spval6k3)
      acd219(26)=abb219(29)
      acd219(27)=dotproduct(ninjaE3,spvak7k2)
      acd219(28)=abb219(30)
      acd219(29)=dotproduct(ninjaE3,spval5k7)
      acd219(30)=abb219(34)
      acd219(31)=dotproduct(ninjaE3,spvak2l5)
      acd219(32)=abb219(35)
      acd219(33)=acd219(2)*acd219(1)
      acd219(34)=acd219(4)*acd219(3)
      acd219(35)=acd219(6)*acd219(5)
      acd219(36)=acd219(8)*acd219(7)
      acd219(37)=acd219(10)*acd219(9)
      acd219(38)=acd219(12)*acd219(11)
      acd219(39)=acd219(14)*acd219(13)
      acd219(40)=acd219(16)*acd219(15)
      acd219(41)=acd219(18)*acd219(17)
      acd219(42)=acd219(20)*acd219(19)
      acd219(43)=acd219(22)*acd219(21)
      acd219(44)=acd219(24)*acd219(23)
      acd219(45)=acd219(26)*acd219(25)
      acd219(46)=acd219(28)*acd219(27)
      acd219(47)=acd219(30)*acd219(29)
      acd219(48)=acd219(32)*acd219(31)
      acd219(33)=acd219(48)+acd219(47)+acd219(46)+acd219(45)+acd219(44)+acd219(&
      &43)+acd219(42)+acd219(41)+acd219(40)+acd219(39)+acd219(38)+acd219(37)+ac&
      &d219(36)+acd219(35)+acd219(33)+acd219(34)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd219(33)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d219h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd219h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d219h5l131
