module     p0_dbaru_epnebbbarg_d334h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d334h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd334h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd334
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd334(1)=dotproduct(k2,ninjaE3)
      acd334(2)=dotproduct(ninjaE3,spvak7k2)
      acd334(3)=abb334(31)
      acd334(4)=dotproduct(l6,ninjaE3)
      acd334(5)=abb334(30)
      acd334(6)=dotproduct(ninjaE3,spvak1k2)
      acd334(7)=abb334(12)
      acd334(8)=abb334(14)
      acd334(9)=dotproduct(ninjaE3,spval6k2)
      acd334(10)=abb334(13)
      acd334(11)=dotproduct(ninjaE3,spval6k7)
      acd334(12)=abb334(15)
      acd334(13)=dotproduct(ninjaE3,spval6k3)
      acd334(14)=abb334(17)
      acd334(15)=dotproduct(ninjaE3,spvak4k2)
      acd334(16)=abb334(19)
      acd334(17)=acd334(15)*acd334(16)
      acd334(18)=acd334(13)*acd334(14)
      acd334(19)=acd334(11)*acd334(12)
      acd334(20)=acd334(9)*acd334(10)
      acd334(21)=acd334(6)*acd334(7)
      acd334(22)=acd334(4)*acd334(5)
      acd334(23)=acd334(1)*acd334(3)
      acd334(24)=acd334(2)*acd334(8)
      acd334(17)=acd334(24)+acd334(23)+acd334(22)+acd334(21)+acd334(20)+acd334(&
      &19)+acd334(17)+acd334(18)
      acd334(17)=acd334(2)*acd334(17)
      brack(ninjaidxt2mu0)=acd334(17)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd334h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(54) :: acd334
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd334(1)=dotproduct(k2,ninjaE3)
      acd334(2)=dotproduct(ninjaE4,spvak7k2)
      acd334(3)=abb334(31)
      acd334(4)=dotproduct(k2,ninjaE4)
      acd334(5)=dotproduct(ninjaE3,spvak7k2)
      acd334(6)=dotproduct(l6,ninjaE3)
      acd334(7)=abb334(30)
      acd334(8)=dotproduct(l6,ninjaE4)
      acd334(9)=dotproduct(ninjaE3,spvak1k2)
      acd334(10)=abb334(12)
      acd334(11)=dotproduct(ninjaE4,spvak1k2)
      acd334(12)=abb334(14)
      acd334(13)=dotproduct(ninjaE4,spval6k2)
      acd334(14)=abb334(13)
      acd334(15)=dotproduct(ninjaE4,spval6k7)
      acd334(16)=abb334(15)
      acd334(17)=dotproduct(ninjaE4,spval6k3)
      acd334(18)=abb334(17)
      acd334(19)=dotproduct(ninjaE4,spvak4k2)
      acd334(20)=abb334(19)
      acd334(21)=dotproduct(ninjaE3,spval6k2)
      acd334(22)=dotproduct(ninjaE3,spval6k7)
      acd334(23)=dotproduct(ninjaE3,spval6k3)
      acd334(24)=dotproduct(ninjaE3,spvak4k2)
      acd334(25)=abb334(28)
      acd334(26)=dotproduct(k2,ninjaA)
      acd334(27)=dotproduct(ninjaA,spvak7k2)
      acd334(28)=abb334(21)
      acd334(29)=dotproduct(l6,ninjaA)
      acd334(30)=abb334(27)
      acd334(31)=dotproduct(k7,ninjaE3)
      acd334(32)=dotproduct(ninjaA,ninjaE3)
      acd334(33)=dotproduct(ninjaA,spvak1k2)
      acd334(34)=dotproduct(ninjaA,spval6k2)
      acd334(35)=dotproduct(ninjaA,spval6k7)
      acd334(36)=dotproduct(ninjaA,spval6k3)
      acd334(37)=dotproduct(ninjaA,spvak4k2)
      acd334(38)=abb334(20)
      acd334(39)=abb334(18)
      acd334(40)=dotproduct(k7,ninjaA)
      acd334(41)=dotproduct(ninjaA,ninjaA)
      acd334(42)=abb334(23)
      acd334(43)=acd334(20)*acd334(24)
      acd334(44)=acd334(18)*acd334(23)
      acd334(45)=acd334(16)*acd334(22)
      acd334(46)=acd334(14)*acd334(21)
      acd334(47)=acd334(10)*acd334(9)
      acd334(48)=acd334(7)*acd334(6)
      acd334(49)=acd334(3)*acd334(1)
      acd334(43)=acd334(45)+acd334(43)+acd334(44)+acd334(46)+acd334(47)+acd334(&
      &48)+acd334(49)
      acd334(44)=acd334(2)*acd334(43)
      acd334(45)=acd334(20)*acd334(19)
      acd334(46)=acd334(18)*acd334(17)
      acd334(47)=acd334(16)*acd334(15)
      acd334(48)=acd334(14)*acd334(13)
      acd334(49)=acd334(10)*acd334(11)
      acd334(50)=acd334(7)*acd334(8)
      acd334(51)=acd334(3)*acd334(4)
      acd334(45)=acd334(47)+acd334(48)+acd334(49)+acd334(50)+acd334(51)+acd334(&
      &45)+acd334(46)
      acd334(46)=2.0_ki*acd334(12)
      acd334(47)=acd334(2)*acd334(46)
      acd334(47)=acd334(47)+acd334(45)
      acd334(47)=acd334(5)*acd334(47)
      acd334(44)=acd334(47)+acd334(25)+acd334(44)
      acd334(47)=acd334(27)*acd334(43)
      acd334(48)=acd334(20)*acd334(37)
      acd334(49)=acd334(18)*acd334(36)
      acd334(50)=acd334(16)*acd334(35)
      acd334(51)=acd334(14)*acd334(34)
      acd334(52)=acd334(10)*acd334(33)
      acd334(53)=acd334(7)*acd334(29)
      acd334(54)=acd334(3)*acd334(26)
      acd334(48)=acd334(38)+acd334(51)+acd334(52)+acd334(53)+acd334(54)+acd334(&
      &48)+acd334(49)+acd334(50)
      acd334(49)=acd334(27)*acd334(46)
      acd334(49)=acd334(49)+acd334(48)
      acd334(49)=acd334(5)*acd334(49)
      acd334(50)=-acd334(6)+acd334(31)
      acd334(50)=acd334(30)*acd334(50)
      acd334(51)=acd334(25)*acd334(32)
      acd334(52)=acd334(21)*acd334(39)
      acd334(53)=acd334(1)*acd334(28)
      acd334(47)=acd334(49)+acd334(47)+acd334(53)+acd334(52)+2.0_ki*acd334(51)+&
      &acd334(50)
      acd334(49)=acd334(2)*ninjaP
      acd334(43)=acd334(43)*acd334(49)
      acd334(50)=acd334(27)*acd334(12)
      acd334(48)=acd334(50)+acd334(48)
      acd334(48)=acd334(27)*acd334(48)
      acd334(45)=ninjaP*acd334(45)
      acd334(46)=acd334(46)*acd334(49)
      acd334(45)=acd334(45)+acd334(46)
      acd334(45)=acd334(5)*acd334(45)
      acd334(46)=ninjaP+acd334(41)
      acd334(46)=acd334(25)*acd334(46)
      acd334(49)=acd334(34)*acd334(39)
      acd334(50)=acd334(26)*acd334(28)
      acd334(51)=acd334(40)-acd334(29)
      acd334(51)=acd334(30)*acd334(51)
      acd334(43)=acd334(45)+acd334(48)+acd334(43)+acd334(51)+acd334(50)+acd334(&
      &42)+acd334(49)+acd334(46)
      brack(ninjaidxt1mu0)=acd334(47)
      brack(ninjaidxt0mu0)=acd334(43)
      brack(ninjaidxt0mu2)=acd334(44)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d334h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd334h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p0_dbaru_epnebbbarg_d334h5l131
