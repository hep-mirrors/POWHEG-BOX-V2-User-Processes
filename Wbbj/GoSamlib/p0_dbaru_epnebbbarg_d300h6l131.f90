module     p0_dbaru_epnebbbarg_d300h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d300h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd300h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd300
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(60) :: acd300
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd300(1)=dotproduct(ninjaE3,spvak1k2)
      acd300(2)=dotproduct(ninjaE3,spvak7k2)
      acd300(3)=dotproduct(ninjaE3,spvak4k3)
      acd300(4)=dotproduct(ninjaE3,spval5l6)
      acd300(5)=abb300(33)
      acd300(6)=dotproduct(k1,ninjaE3)
      acd300(7)=dotproduct(ninjaE3,spval5k2)
      acd300(8)=abb300(32)
      acd300(9)=abb300(50)
      acd300(10)=dotproduct(k2,ninjaE3)
      acd300(11)=dotproduct(ninjaE3,spvak1l6)
      acd300(12)=abb300(39)
      acd300(13)=dotproduct(ninjaE3,spvak1k3)
      acd300(14)=abb300(57)
      acd300(15)=dotproduct(l5,ninjaE3)
      acd300(16)=abb300(37)
      acd300(17)=abb300(56)
      acd300(18)=dotproduct(l6,ninjaE3)
      acd300(19)=dotproduct(ninjaA,ninjaE3)
      acd300(20)=abb300(34)
      acd300(21)=abb300(52)
      acd300(22)=dotproduct(ninjaA,spvak1k2)
      acd300(23)=dotproduct(ninjaA,spvak7k2)
      acd300(24)=dotproduct(ninjaA,spvak4k3)
      acd300(25)=dotproduct(ninjaA,spval5l6)
      acd300(26)=abb300(10)
      acd300(27)=abb300(14)
      acd300(28)=abb300(15)
      acd300(29)=abb300(41)
      acd300(30)=abb300(53)
      acd300(31)=dotproduct(ninjaE3,spvak2l6)
      acd300(32)=abb300(17)
      acd300(33)=abb300(31)
      acd300(34)=dotproduct(ninjaE3,spvak1k7)
      acd300(35)=abb300(24)
      acd300(36)=abb300(40)
      acd300(37)=dotproduct(ninjaE3,spvak4l6)
      acd300(38)=abb300(51)
      acd300(39)=dotproduct(ninjaE3,spvak7l6)
      acd300(40)=abb300(54)
      acd300(41)=dotproduct(ninjaE3,spval5k7)
      acd300(42)=abb300(28)
      acd300(43)=abb300(21)
      acd300(44)=abb300(49)
      acd300(45)=dotproduct(ninjaE3,spval5k1)
      acd300(46)=abb300(43)
      acd300(47)=dotproduct(ninjaE3,spval5k3)
      acd300(48)=acd300(1)*acd300(3)
      acd300(49)=acd300(48)*acd300(4)*acd300(5)
      acd300(50)=-acd300(2)*acd300(49)
      acd300(51)=acd300(6)+acd300(18)
      acd300(51)=acd300(8)*acd300(51)
      acd300(52)=acd300(39)*acd300(40)
      acd300(53)=acd300(37)*acd300(38)
      acd300(54)=acd300(31)*acd300(32)
      acd300(55)=acd300(34)*acd300(35)
      acd300(56)=acd300(13)*acd300(36)
      acd300(57)=acd300(11)*acd300(33)
      acd300(58)=acd300(3)*acd300(29)
      acd300(59)=acd300(1)*acd300(26)
      acd300(60)=acd300(4)*acd300(30)
      acd300(51)=acd300(60)+acd300(59)+acd300(58)+acd300(57)+acd300(56)+acd300(&
      &55)+acd300(54)+acd300(52)+acd300(53)+acd300(51)
      acd300(51)=acd300(7)*acd300(51)
      acd300(52)=acd300(45)*acd300(46)
      acd300(53)=-acd300(44)*acd300(47)
      acd300(54)=acd300(41)*acd300(43)
      acd300(55)=2.0_ki*acd300(19)
      acd300(56)=acd300(20)*acd300(55)
      acd300(57)=acd300(15)*acd300(16)
      acd300(58)=acd300(10)*acd300(12)
      acd300(52)=acd300(58)+acd300(57)+acd300(56)+acd300(54)+acd300(52)+acd300(&
      &53)
      acd300(52)=acd300(11)*acd300(52)
      acd300(53)=-acd300(34)*acd300(43)
      acd300(54)=acd300(6)*acd300(9)
      acd300(56)=acd300(13)*acd300(44)
      acd300(57)=-acd300(22)*acd300(3)*acd300(5)
      acd300(58)=-acd300(5)*acd300(24)
      acd300(58)=acd300(28)+acd300(58)
      acd300(58)=acd300(1)*acd300(58)
      acd300(53)=acd300(58)+acd300(57)+acd300(56)+acd300(53)+acd300(54)
      acd300(53)=acd300(4)*acd300(53)
      acd300(54)=acd300(21)*acd300(55)
      acd300(55)=acd300(15)*acd300(17)
      acd300(56)=acd300(10)*acd300(14)
      acd300(54)=acd300(56)+acd300(54)+acd300(55)
      acd300(54)=acd300(13)*acd300(54)
      acd300(55)=-acd300(5)*acd300(25)
      acd300(55)=acd300(27)+acd300(55)
      acd300(48)=acd300(55)*acd300(48)
      acd300(55)=acd300(3)*acd300(41)*acd300(42)
      acd300(48)=acd300(51)+acd300(53)+acd300(48)+acd300(55)+acd300(54)+acd300(&
      &52)
      acd300(48)=acd300(2)*acd300(48)
      acd300(49)=-acd300(23)*acd300(49)
      acd300(48)=acd300(49)+acd300(48)
      brack(ninjaidxt1mu0)=acd300(50)
      brack(ninjaidxt0mu0)=acd300(48)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d300h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k5
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
end module     p0_dbaru_epnebbbarg_d300h6l131
