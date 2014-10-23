module     p0_dbaru_epnebbbarg_d111h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d111h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd111h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd111
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(57) :: acd111
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd111(1)=dotproduct(ninjaE3,spvak7k2)
      acd111(2)=abb111(21)
      acd111(3)=dotproduct(k2,ninjaE3)
      acd111(4)=abb111(22)
      acd111(5)=dotproduct(ninjaE3,spval5k2)
      acd111(6)=abb111(24)
      acd111(7)=dotproduct(l5,ninjaE3)
      acd111(8)=abb111(17)
      acd111(9)=dotproduct(l6,ninjaE3)
      acd111(10)=dotproduct(k7,ninjaE3)
      acd111(11)=dotproduct(ninjaA,ninjaE3)
      acd111(12)=dotproduct(ninjaE3,spvak4k2)
      acd111(13)=abb111(9)
      acd111(14)=dotproduct(ninjaE3,spvak1k2)
      acd111(15)=abb111(10)
      acd111(16)=abb111(11)
      acd111(17)=dotproduct(ninjaE3,spvak1l6)
      acd111(18)=abb111(14)
      acd111(19)=dotproduct(ninjaE3,spvak4l6)
      acd111(20)=abb111(25)
      acd111(21)=dotproduct(ninjaE3,spval6k2)
      acd111(22)=abb111(26)
      acd111(23)=dotproduct(ninjaE3,spval5l6)
      acd111(24)=abb111(29)
      acd111(25)=dotproduct(k2,ninjaA)
      acd111(26)=dotproduct(ninjaA,spvak7k2)
      acd111(27)=dotproduct(ninjaA,spval5k2)
      acd111(28)=abb111(18)
      acd111(29)=dotproduct(l5,ninjaA)
      acd111(30)=dotproduct(l6,ninjaA)
      acd111(31)=dotproduct(k7,ninjaA)
      acd111(32)=abb111(16)
      acd111(33)=dotproduct(ninjaA,ninjaA)
      acd111(34)=abb111(12)
      acd111(35)=dotproduct(ninjaA,spvak4k2)
      acd111(36)=dotproduct(ninjaA,spvak1k2)
      acd111(37)=dotproduct(ninjaA,spvak1l6)
      acd111(38)=dotproduct(ninjaA,spvak4l6)
      acd111(39)=dotproduct(ninjaA,spval6k2)
      acd111(40)=dotproduct(ninjaA,spval5l6)
      acd111(41)=abb111(13)
      acd111(42)=acd111(1)*acd111(2)
      acd111(43)=acd111(7)+acd111(9)
      acd111(43)=acd111(43)*acd111(8)
      acd111(44)=acd111(24)*acd111(23)
      acd111(45)=2.0_ki*acd111(11)
      acd111(46)=acd111(45)*acd111(2)
      acd111(47)=acd111(22)*acd111(21)
      acd111(48)=acd111(20)*acd111(19)
      acd111(49)=acd111(18)*acd111(17)
      acd111(50)=acd111(15)*acd111(14)
      acd111(51)=acd111(13)*acd111(12)
      acd111(52)=acd111(3)*acd111(4)
      acd111(53)=acd111(5)*acd111(16)
      acd111(43)=acd111(44)+acd111(47)+acd111(48)+acd111(46)+acd111(53)-acd111(&
      &43)+acd111(49)+acd111(50)+acd111(51)+acd111(52)
      acd111(44)=acd111(1)*acd111(43)
      acd111(46)=acd111(3)-acd111(10)
      acd111(47)=acd111(5)*acd111(6)
      acd111(48)=-acd111(46)*acd111(47)
      acd111(44)=acd111(48)+acd111(44)
      acd111(43)=acd111(26)*acd111(43)
      acd111(48)=acd111(24)*acd111(40)
      acd111(49)=acd111(22)*acd111(39)
      acd111(50)=acd111(20)*acd111(38)
      acd111(51)=acd111(18)*acd111(37)
      acd111(52)=acd111(16)*acd111(27)
      acd111(53)=acd111(15)*acd111(36)
      acd111(54)=acd111(13)*acd111(35)
      acd111(55)=acd111(4)*acd111(25)
      acd111(56)=ninjaP+acd111(33)
      acd111(56)=acd111(2)*acd111(56)
      acd111(57)=-acd111(30)-acd111(29)
      acd111(57)=acd111(8)*acd111(57)
      acd111(48)=acd111(57)+acd111(56)+acd111(55)+acd111(54)+acd111(53)+acd111(&
      &52)+acd111(51)+acd111(50)+acd111(49)+acd111(41)+acd111(48)
      acd111(48)=acd111(1)*acd111(48)
      acd111(49)=acd111(31)-acd111(25)
      acd111(47)=acd111(49)*acd111(47)
      acd111(45)=acd111(34)*acd111(45)
      acd111(49)=acd111(10)*acd111(32)
      acd111(50)=acd111(3)*acd111(28)
      acd111(46)=-acd111(6)*acd111(27)*acd111(46)
      acd111(43)=acd111(48)+acd111(43)+acd111(47)+acd111(46)+acd111(50)+acd111(&
      &45)+acd111(49)
      brack(ninjaidxt1mu0)=acd111(44)
      brack(ninjaidxt0mu0)=acd111(43)
      brack(ninjaidxt0mu2)=acd111(42)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d111h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_dbaru_epnebbbarg_d111h6l131
