module     p0_gg_hhg_d53h0l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d53h0l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd53h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd53(1)=dotproduct(k2,ninjaE3)
      acd53(2)=dotproduct(ninjaE3,spvak1k2)
      acd53(3)=dotproduct(ninjaE3,spvak2k5)
      acd53(4)=abb53(31)
      acd53(5)=dotproduct(l4,ninjaE3)
      acd53(6)=abb53(18)
      acd53(7)=dotproduct(ninjaA0,ninjaE3)
      acd53(8)=abb53(29)
      acd53(9)=acd53(4)*acd53(1)
      acd53(10)=-acd53(6)*acd53(5)
      acd53(11)=acd53(8)*acd53(7)
      acd53(9)=2.0_ki*acd53(11)+acd53(9)+acd53(10)
      acd53(9)=acd53(2)*acd53(9)*acd53(3)**2
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd53(9)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd53h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(62) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd53(1)=dotproduct(ninjaE3,spvak1k2)
      acd53(2)=dotproduct(ninjaE3,spvak2k5)
      acd53(3)=abb53(29)
      acd53(4)=dotproduct(k2,ninjaA1)
      acd53(5)=abb53(31)
      acd53(6)=dotproduct(k2,ninjaE3)
      acd53(7)=dotproduct(ninjaA1,spvak1k2)
      acd53(8)=dotproduct(ninjaA1,spvak2k5)
      acd53(9)=dotproduct(l4,ninjaA1)
      acd53(10)=abb53(18)
      acd53(11)=dotproduct(l4,ninjaE3)
      acd53(12)=dotproduct(ninjaA0,ninjaA1)
      acd53(13)=dotproduct(ninjaA0,ninjaE3)
      acd53(14)=dotproduct(ninjaA1,ninjaA1)
      acd53(15)=dotproduct(k1,ninjaE3)
      acd53(16)=abb53(55)
      acd53(17)=abb53(74)
      acd53(18)=abb53(68)
      acd53(19)=abb53(47)
      acd53(20)=dotproduct(k2,ninjaA0)
      acd53(21)=abb53(45)
      acd53(22)=dotproduct(ninjaA0,spvak1k2)
      acd53(23)=dotproduct(ninjaA0,spvak2k5)
      acd53(24)=abb53(8)
      acd53(25)=dotproduct(ninjaE3,spvak1k5)
      acd53(26)=abb53(49)
      acd53(27)=dotproduct(l4,ninjaA0)
      acd53(28)=abb53(64)
      acd53(29)=abb53(30)
      acd53(30)=abb53(33)
      acd53(31)=dotproduct(k5,ninjaE3)
      acd53(32)=abb53(27)
      acd53(33)=dotproduct(ninjaA0,ninjaA0)
      acd53(34)=abb53(17)
      acd53(35)=abb53(16)
      acd53(36)=abb53(32)
      acd53(37)=abb53(26)
      acd53(38)=abb53(12)
      acd53(39)=dotproduct(ninjaE3,spvak2k1)
      acd53(40)=abb53(21)
      acd53(41)=dotproduct(ninjaE3,spval4k5)
      acd53(42)=abb53(24)
      acd53(43)=dotproduct(ninjaE3,spvak2l4)
      acd53(44)=abb53(37)
      acd53(45)=acd53(3)*acd53(1)
      acd53(46)=acd53(2)**2
      acd53(47)=acd53(45)*acd53(46)
      acd53(48)=acd53(4)*acd53(5)
      acd53(49)=-acd53(9)*acd53(10)
      acd53(48)=acd53(49)+acd53(48)
      acd53(48)=acd53(1)*acd53(48)
      acd53(49)=ninjaP1+2.0_ki*acd53(12)
      acd53(49)=acd53(45)*acd53(49)
      acd53(48)=acd53(49)+acd53(48)
      acd53(48)=acd53(46)*acd53(48)
      acd53(49)=acd53(5)*acd53(6)
      acd53(50)=acd53(10)*acd53(11)
      acd53(51)=2.0_ki*acd53(13)
      acd53(52)=acd53(51)*acd53(3)
      acd53(49)=acd53(52)+acd53(49)-acd53(50)
      acd53(50)=acd53(49)*acd53(46)
      acd53(52)=acd53(7)*acd53(50)
      acd53(53)=acd53(1)*acd53(2)
      acd53(49)=acd53(49)*acd53(53)
      acd53(49)=2.0_ki*acd53(49)
      acd53(54)=acd53(8)*acd53(49)
      acd53(48)=acd53(52)+acd53(54)+acd53(48)
      acd53(52)=acd53(14)+ninjaP2
      acd53(52)=acd53(47)*acd53(52)
      acd53(54)=acd53(19)*acd53(15)
      acd53(55)=acd53(24)*acd53(6)
      acd53(56)=acd53(29)*acd53(11)
      acd53(57)=acd53(32)*acd53(31)
      acd53(58)=acd53(35)*acd53(51)
      acd53(59)=acd53(38)*acd53(25)
      acd53(60)=acd53(40)*acd53(39)
      acd53(61)=acd53(42)*acd53(41)
      acd53(62)=acd53(44)*acd53(43)
      acd53(54)=acd53(62)+acd53(61)+acd53(60)+acd53(59)+acd53(58)+acd53(57)+acd&
      &53(56)+acd53(55)+acd53(54)
      acd53(53)=acd53(53)*acd53(54)
      acd53(54)=acd53(18)*acd53(15)
      acd53(55)=acd53(36)*acd53(25)
      acd53(54)=acd53(55)+acd53(54)
      acd53(54)=acd53(2)*acd53(54)
      acd53(55)=acd53(6)*acd53(2)
      acd53(56)=acd53(21)*acd53(55)
      acd53(57)=acd53(11)*acd53(2)
      acd53(58)=acd53(28)*acd53(57)
      acd53(54)=acd53(58)+acd53(56)+acd53(54)
      acd53(51)=acd53(51)*acd53(54)
      acd53(54)=ninjaP0+acd53(33)
      acd53(45)=acd53(45)*acd53(54)
      acd53(54)=acd53(20)*acd53(5)
      acd53(56)=-acd53(27)*acd53(10)
      acd53(54)=acd53(37)+acd53(56)+acd53(54)
      acd53(54)=acd53(1)*acd53(54)
      acd53(45)=acd53(54)+acd53(45)
      acd53(45)=acd53(46)*acd53(45)
      acd53(46)=acd53(22)*acd53(50)
      acd53(49)=acd53(23)*acd53(49)
      acd53(50)=acd53(17)*acd53(15)
      acd53(54)=-acd53(30)*acd53(25)
      acd53(50)=acd53(54)+acd53(50)
      acd53(50)=acd53(57)*acd53(50)
      acd53(54)=acd53(16)*acd53(15)
      acd53(56)=acd53(26)*acd53(25)
      acd53(54)=acd53(56)+acd53(54)
      acd53(54)=acd53(55)*acd53(54)
      acd53(55)=acd53(34)*acd53(2)*acd53(13)**2
      acd53(45)=4.0_ki*acd53(55)+acd53(46)+acd53(49)+acd53(53)+acd53(45)+acd53(&
      &51)+acd53(54)+acd53(50)
      brack(ninjaidxt0x0mu0)=acd53(45)
      brack(ninjaidxt0x0mu2)=acd53(47)
      brack(ninjaidxt0x1mu0)=acd53(48)
      brack(ninjaidxt0x2mu0)=acd53(52)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d53h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd53h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d53h0l132
