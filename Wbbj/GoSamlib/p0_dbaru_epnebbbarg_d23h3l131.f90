module     p0_dbaru_epnebbbarg_d23h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d23h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd23h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd23(1)=dotproduct(k1,ninjaE3)
      acd23(2)=dotproduct(ninjaE3,spvak4k3)
      acd23(3)=abb23(25)
      acd23(4)=dotproduct(k2,ninjaE3)
      acd23(5)=abb23(23)
      acd23(6)=dotproduct(k3,ninjaE3)
      acd23(7)=abb23(22)
      acd23(8)=dotproduct(k4,ninjaE3)
      acd23(9)=dotproduct(ninjaE3,spvak1k3)
      acd23(10)=abb23(15)
      acd23(11)=dotproduct(ninjaE3,spvak2l5)
      acd23(12)=abb23(16)
      acd23(13)=dotproduct(ninjaE3,spvak2l6)
      acd23(14)=abb23(18)
      acd23(15)=dotproduct(ninjaE3,spvak2k7)
      acd23(16)=abb23(19)
      acd23(17)=dotproduct(ninjaE3,spvak1k4)
      acd23(18)=abb23(26)
      acd23(19)=acd23(8)+acd23(6)
      acd23(19)=acd23(19)*acd23(7)
      acd23(20)=acd23(3)*acd23(1)
      acd23(21)=acd23(5)*acd23(4)
      acd23(22)=acd23(10)*acd23(9)
      acd23(23)=acd23(12)*acd23(11)
      acd23(24)=acd23(14)*acd23(13)
      acd23(25)=acd23(16)*acd23(15)
      acd23(26)=acd23(18)*acd23(17)
      acd23(19)=acd23(19)+acd23(26)+acd23(25)+acd23(24)+acd23(23)+acd23(22)+acd&
      &23(20)+acd23(21)
      acd23(19)=acd23(2)*acd23(19)
      brack(ninjaidxt2mu0)=acd23(19)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd23h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(56) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd23(1)=dotproduct(k1,ninjaE3)
      acd23(2)=dotproduct(ninjaE4,spvak4k3)
      acd23(3)=abb23(25)
      acd23(4)=dotproduct(k1,ninjaE4)
      acd23(5)=dotproduct(ninjaE3,spvak4k3)
      acd23(6)=dotproduct(k2,ninjaE3)
      acd23(7)=abb23(23)
      acd23(8)=dotproduct(k2,ninjaE4)
      acd23(9)=dotproduct(k3,ninjaE3)
      acd23(10)=abb23(22)
      acd23(11)=dotproduct(k3,ninjaE4)
      acd23(12)=dotproduct(k4,ninjaE3)
      acd23(13)=dotproduct(k4,ninjaE4)
      acd23(14)=dotproduct(ninjaE3,spvak1k3)
      acd23(15)=abb23(15)
      acd23(16)=dotproduct(ninjaE4,spvak1k3)
      acd23(17)=dotproduct(ninjaE4,spvak2l5)
      acd23(18)=abb23(16)
      acd23(19)=dotproduct(ninjaE4,spvak2l6)
      acd23(20)=abb23(18)
      acd23(21)=dotproduct(ninjaE4,spvak2k7)
      acd23(22)=abb23(19)
      acd23(23)=dotproduct(ninjaE4,spvak1k4)
      acd23(24)=abb23(26)
      acd23(25)=dotproduct(ninjaE3,spvak2l5)
      acd23(26)=dotproduct(ninjaE3,spvak2l6)
      acd23(27)=dotproduct(ninjaE3,spvak2k7)
      acd23(28)=dotproduct(ninjaE3,spvak1k4)
      acd23(29)=abb23(27)
      acd23(30)=dotproduct(k1,ninjaA)
      acd23(31)=dotproduct(ninjaA,spvak4k3)
      acd23(32)=dotproduct(k2,ninjaA)
      acd23(33)=dotproduct(k3,ninjaA)
      acd23(34)=abb23(30)
      acd23(35)=dotproduct(k4,ninjaA)
      acd23(36)=dotproduct(ninjaA,ninjaE3)
      acd23(37)=dotproduct(ninjaA,spvak1k3)
      acd23(38)=dotproduct(ninjaA,spvak2l5)
      acd23(39)=dotproduct(ninjaA,spvak2l6)
      acd23(40)=dotproduct(ninjaA,spvak2k7)
      acd23(41)=dotproduct(ninjaA,spvak1k4)
      acd23(42)=abb23(24)
      acd23(43)=abb23(21)
      acd23(44)=dotproduct(ninjaA,ninjaA)
      acd23(45)=acd23(11)+acd23(13)
      acd23(45)=acd23(45)*acd23(10)
      acd23(46)=acd23(24)*acd23(23)
      acd23(47)=acd23(22)*acd23(21)
      acd23(48)=acd23(20)*acd23(19)
      acd23(49)=acd23(18)*acd23(17)
      acd23(50)=acd23(15)*acd23(16)
      acd23(51)=acd23(7)*acd23(8)
      acd23(52)=acd23(3)*acd23(4)
      acd23(45)=acd23(45)+acd23(48)+acd23(49)+acd23(50)+acd23(51)+acd23(52)+acd&
      &23(46)+acd23(47)
      acd23(45)=acd23(45)*acd23(5)
      acd23(46)=acd23(9)+acd23(12)
      acd23(47)=acd23(46)*acd23(10)
      acd23(48)=acd23(24)*acd23(28)
      acd23(49)=acd23(22)*acd23(27)
      acd23(50)=acd23(20)*acd23(26)
      acd23(51)=acd23(18)*acd23(25)
      acd23(52)=acd23(15)*acd23(14)
      acd23(53)=acd23(7)*acd23(6)
      acd23(54)=acd23(3)*acd23(1)
      acd23(47)=acd23(50)+acd23(47)+acd23(48)+acd23(49)+acd23(51)+acd23(52)+acd&
      &23(53)+acd23(54)
      acd23(48)=acd23(47)*acd23(2)
      acd23(45)=acd23(45)+acd23(48)+acd23(29)
      acd23(47)=acd23(31)*acd23(47)
      acd23(48)=acd23(24)*acd23(41)
      acd23(49)=acd23(22)*acd23(40)
      acd23(50)=acd23(20)*acd23(39)
      acd23(51)=acd23(18)*acd23(38)
      acd23(52)=acd23(15)*acd23(37)
      acd23(53)=acd23(7)*acd23(32)
      acd23(54)=acd23(3)*acd23(30)
      acd23(55)=acd23(33)+acd23(35)
      acd23(56)=acd23(55)*acd23(10)
      acd23(48)=acd23(48)+acd23(53)+acd23(54)+acd23(56)+acd23(43)+acd23(49)+acd&
      &23(50)+acd23(51)+acd23(52)
      acd23(49)=acd23(5)*acd23(48)
      acd23(46)=acd23(34)*acd23(46)
      acd23(50)=acd23(29)*acd23(36)
      acd23(51)=acd23(14)*acd23(42)
      acd23(46)=acd23(49)+acd23(47)+2.0_ki*acd23(50)+acd23(51)+acd23(46)
      acd23(47)=ninjaP*acd23(45)
      acd23(48)=acd23(31)*acd23(48)
      acd23(49)=acd23(37)*acd23(42)
      acd23(50)=acd23(34)*acd23(55)
      acd23(51)=acd23(29)*acd23(44)
      acd23(47)=acd23(48)+acd23(51)+acd23(49)+acd23(50)+acd23(47)
      brack(ninjaidxt1mu0)=acd23(46)
      brack(ninjaidxt0mu0)=acd23(47)
      brack(ninjaidxt0mu2)=acd23(45)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d23h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd23h3
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
end module     p0_dbaru_epnebbbarg_d23h3l131
