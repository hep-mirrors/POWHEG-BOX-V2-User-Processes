module     p8_cbarc_epnemumnmubarg_d603h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d603h1l132.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd603(1)=dotproduct(ninjaE3,spvak2k7)
      acd603(2)=dotproduct(ninjaE3,spvak4k3)
      acd603(3)=dotproduct(ninjaE3,spvak5k2)
      acd603(4)=abb603(6)
      acd603(5)=dotproduct(ninjaE3,spvak1k2)
      acd603(6)=abb603(7)
      acd603(7)=acd603(4)*acd603(3)
      acd603(8)=acd603(6)*acd603(5)
      acd603(7)=acd603(7)+acd603(8)
      acd603(7)=acd603(7)*acd603(2)*acd603(1)
      brack(ninjaidxt1x0mu0)=acd603(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(52) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd603(1)=dotproduct(ninjaA1,spvak2k7)
      acd603(2)=dotproduct(ninjaE3,spvak4k3)
      acd603(3)=dotproduct(ninjaE3,spvak5k2)
      acd603(4)=abb603(6)
      acd603(5)=dotproduct(ninjaE3,spvak1k2)
      acd603(6)=abb603(7)
      acd603(7)=dotproduct(ninjaA1,spvak4k3)
      acd603(8)=dotproduct(ninjaE3,spvak2k7)
      acd603(9)=dotproduct(ninjaA1,spvak5k2)
      acd603(10)=dotproduct(ninjaA1,spvak1k2)
      acd603(11)=dotproduct(k2,ninjaE3)
      acd603(12)=abb603(27)
      acd603(13)=dotproduct(k3,ninjaE3)
      acd603(14)=dotproduct(k4,ninjaE3)
      acd603(15)=dotproduct(ninjaA0,ninjaE3)
      acd603(16)=abb603(13)
      acd603(17)=abb603(29)
      acd603(18)=abb603(19)
      acd603(19)=dotproduct(ninjaE3,spvak4k2)
      acd603(20)=abb603(25)
      acd603(21)=abb603(12)
      acd603(22)=dotproduct(k7,ninjaE3)
      acd603(23)=abb603(21)
      acd603(24)=abb603(10)
      acd603(25)=abb603(23)
      acd603(26)=abb603(24)
      acd603(27)=dotproduct(ninjaA0,spvak2k7)
      acd603(28)=dotproduct(ninjaA0,spvak4k3)
      acd603(29)=dotproduct(ninjaA0,spvak5k2)
      acd603(30)=dotproduct(ninjaA0,spvak1k2)
      acd603(31)=abb603(22)
      acd603(32)=abb603(33)
      acd603(33)=abb603(26)
      acd603(34)=abb603(9)
      acd603(35)=dotproduct(ninjaE3,spvak1k3)
      acd603(36)=abb603(20)
      acd603(37)=dotproduct(ninjaE3,spvak5k3)
      acd603(38)=abb603(31)
      acd603(39)=acd603(6)*acd603(5)
      acd603(40)=acd603(4)*acd603(3)
      acd603(39)=acd603(39)+acd603(40)
      acd603(40)=acd603(7)*acd603(39)
      acd603(41)=acd603(6)*acd603(10)
      acd603(42)=acd603(4)*acd603(9)
      acd603(41)=acd603(41)+acd603(42)
      acd603(41)=acd603(2)*acd603(41)
      acd603(40)=acd603(41)+acd603(40)
      acd603(40)=acd603(8)*acd603(40)
      acd603(41)=acd603(2)*acd603(1)*acd603(39)
      acd603(40)=acd603(41)+acd603(40)
      acd603(41)=acd603(28)*acd603(39)
      acd603(42)=acd603(6)*acd603(30)
      acd603(43)=acd603(4)*acd603(29)
      acd603(42)=acd603(43)+acd603(31)+acd603(42)
      acd603(42)=acd603(2)*acd603(42)
      acd603(43)=acd603(13)+acd603(14)
      acd603(44)=-acd603(21)*acd603(43)
      acd603(45)=acd603(37)*acd603(38)
      acd603(46)=acd603(35)*acd603(36)
      acd603(47)=acd603(19)*acd603(34)
      acd603(48)=2.0_ki*acd603(15)
      acd603(49)=acd603(24)*acd603(48)
      acd603(50)=acd603(5)*acd603(33)
      acd603(51)=acd603(3)*acd603(32)
      acd603(52)=acd603(11)*acd603(17)
      acd603(41)=acd603(42)+acd603(52)+acd603(51)+acd603(50)+acd603(49)+acd603(&
      &47)+acd603(45)+acd603(46)+acd603(44)+acd603(41)
      acd603(41)=acd603(8)*acd603(41)
      acd603(39)=acd603(27)*acd603(39)
      acd603(42)=acd603(22)*acd603(23)
      acd603(44)=acd603(25)*acd603(48)
      acd603(45)=acd603(11)*acd603(18)
      acd603(39)=acd603(45)+acd603(42)+acd603(44)+acd603(39)
      acd603(39)=acd603(2)*acd603(39)
      acd603(42)=acd603(11)-acd603(43)
      acd603(42)=acd603(12)*acd603(42)
      acd603(43)=acd603(19)*acd603(20)
      acd603(44)=acd603(16)*acd603(48)
      acd603(42)=acd603(44)+acd603(43)+acd603(42)
      acd603(42)=acd603(11)*acd603(42)
      acd603(43)=acd603(19)*acd603(26)*acd603(48)
      acd603(39)=acd603(41)+acd603(39)+acd603(43)+acd603(42)
      brack(ninjaidxt0x0mu0)=acd603(39)
      brack(ninjaidxt0x1mu0)=acd603(40)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d603h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd603h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p8_cbarc_epnemumnmubarg_d603h1l132
