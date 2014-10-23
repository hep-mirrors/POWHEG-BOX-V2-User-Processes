module     p0_dbaru_epnebbbarg_d99h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d99h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd99h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd99
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd99h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(59) :: acd99
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd99(1)=dotproduct(k2,ninjaE3)
      acd99(2)=dotproduct(ninjaE3,spval6k2)
      acd99(3)=abb99(38)
      acd99(4)=dotproduct(k3,ninjaE3)
      acd99(5)=dotproduct(ninjaE3,spvak4k2)
      acd99(6)=abb99(34)
      acd99(7)=dotproduct(k4,ninjaE3)
      acd99(8)=abb99(11)
      acd99(9)=dotproduct(ninjaE3,spvak4k3)
      acd99(10)=abb99(17)
      acd99(11)=abb99(16)
      acd99(12)=dotproduct(ninjaE3,spvak3k2)
      acd99(13)=abb99(13)
      acd99(14)=abb99(27)
      acd99(15)=dotproduct(k2,ninjaA)
      acd99(16)=dotproduct(ninjaA,spval6k2)
      acd99(17)=abb99(29)
      acd99(18)=dotproduct(k3,ninjaA)
      acd99(19)=dotproduct(ninjaA,spvak4k2)
      acd99(20)=abb99(51)
      acd99(21)=dotproduct(k4,ninjaA)
      acd99(22)=dotproduct(ninjaA,ninjaE3)
      acd99(23)=abb99(19)
      acd99(24)=dotproduct(ninjaA,spvak3k2)
      acd99(25)=dotproduct(ninjaA,spvak4k3)
      acd99(26)=abb99(12)
      acd99(27)=abb99(14)
      acd99(28)=dotproduct(ninjaE3,spval6l5)
      acd99(29)=abb99(15)
      acd99(30)=abb99(26)
      acd99(31)=dotproduct(ninjaE3,spvak1k2)
      acd99(32)=abb99(18)
      acd99(33)=dotproduct(ninjaE3,spvak1k3)
      acd99(34)=abb99(20)
      acd99(35)=dotproduct(ninjaE3,spval6k3)
      acd99(36)=abb99(25)
      acd99(37)=dotproduct(ninjaE3,spvak7k2)
      acd99(38)=abb99(31)
      acd99(39)=dotproduct(ninjaE3,spval6k7)
      acd99(40)=abb99(37)
      acd99(41)=dotproduct(ninjaE3,spval5k2)
      acd99(42)=abb99(40)
      acd99(43)=acd99(4)+acd99(7)
      acd99(44)=acd99(43)*acd99(6)
      acd99(45)=acd99(9)*acd99(10)
      acd99(46)=acd99(5)*acd99(8)
      acd99(45)=acd99(46)-acd99(44)+acd99(45)
      acd99(45)=acd99(5)*acd99(45)
      acd99(46)=acd99(43)-acd99(1)
      acd99(46)=acd99(46)*acd99(3)
      acd99(47)=acd99(9)*acd99(14)
      acd99(48)=acd99(5)*acd99(11)
      acd99(47)=acd99(48)+acd99(47)+acd99(46)
      acd99(47)=acd99(2)*acd99(47)
      acd99(48)=acd99(13)*acd99(12)
      acd99(49)=acd99(9)*acd99(48)
      acd99(45)=acd99(47)+acd99(49)+acd99(45)
      acd99(47)=acd99(10)*acd99(25)
      acd99(49)=acd99(19)*acd99(8)
      acd99(50)=acd99(16)*acd99(11)
      acd99(51)=acd99(18)+acd99(21)
      acd99(52)=-acd99(6)*acd99(51)
      acd99(47)=acd99(52)+acd99(50)+2.0_ki*acd99(49)+acd99(26)+acd99(47)
      acd99(47)=acd99(5)*acd99(47)
      acd99(49)=acd99(13)*acd99(24)
      acd99(50)=acd99(19)*acd99(10)
      acd99(52)=acd99(16)*acd99(14)
      acd99(49)=acd99(52)+acd99(50)+acd99(27)+acd99(49)
      acd99(49)=acd99(9)*acd99(49)
      acd99(50)=acd99(14)*acd99(25)
      acd99(52)=acd99(19)*acd99(11)
      acd99(51)=-acd99(15)+acd99(51)
      acd99(51)=acd99(3)*acd99(51)
      acd99(50)=acd99(51)+acd99(52)+acd99(30)+acd99(50)
      acd99(50)=acd99(2)*acd99(50)
      acd99(43)=-acd99(20)*acd99(43)
      acd99(51)=acd99(41)*acd99(42)
      acd99(52)=acd99(39)*acd99(40)
      acd99(53)=acd99(37)*acd99(38)
      acd99(54)=acd99(35)*acd99(36)
      acd99(55)=acd99(33)*acd99(34)
      acd99(56)=acd99(31)*acd99(32)
      acd99(57)=acd99(28)*acd99(29)
      acd99(58)=acd99(22)*acd99(23)
      acd99(48)=acd99(25)*acd99(48)
      acd99(59)=acd99(1)*acd99(17)
      acd99(44)=-acd99(19)*acd99(44)
      acd99(46)=acd99(16)*acd99(46)
      acd99(43)=acd99(50)+acd99(47)+acd99(46)+acd99(49)+acd99(44)+acd99(59)+acd&
      &99(48)+2.0_ki*acd99(58)+acd99(57)+acd99(56)+acd99(55)+acd99(54)+acd99(53&
      &)+acd99(51)+acd99(52)+acd99(43)
      brack(ninjaidxt1mu0)=acd99(45)
      brack(ninjaidxt0mu0)=acd99(43)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d99h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd99h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d99h4l131
