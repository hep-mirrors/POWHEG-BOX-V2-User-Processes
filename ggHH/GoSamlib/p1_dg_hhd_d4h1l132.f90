module     p1_dg_hhd_d4h1l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity1d4h1l132.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond_t, d => metric_tensor
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
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=0.0_ki
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(57) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd4(1)=dotproduct(k1,ninjaE3)
      acd4(2)=dotproduct(ninjaA0,ninjaE3)
      acd4(3)=abb4(35)
      acd4(4)=dotproduct(k2,ninjaE3)
      acd4(5)=abb4(32)
      acd4(6)=abb4(29)
      acd4(7)=dotproduct(ninjaE3,spvak1k2)
      acd4(8)=abb4(13)
      acd4(9)=dotproduct(ninjaE3,spvak5l3)
      acd4(10)=abb4(39)
      acd4(11)=dotproduct(ninjaE3,spvak5k1)
      acd4(12)=abb4(10)
      acd4(13)=dotproduct(ninjaE3,spvak5k2)
      acd4(14)=abb4(27)
      acd4(15)=dotproduct(ninjaE3,spval3k1)
      acd4(16)=abb4(34)
      acd4(17)=dotproduct(ninjaE3,spval3k2)
      acd4(18)=abb4(51)
      acd4(19)=dotproduct(ninjaE3,spvak1l3)
      acd4(20)=abb4(53)
      acd4(21)=dotproduct(l3,ninjaE3)
      acd4(22)=abb4(11)
      acd4(23)=dotproduct(l4,ninjaE3)
      acd4(24)=abb4(20)
      acd4(25)=abb4(21)
      acd4(26)=abb4(14)
      acd4(27)=dotproduct(ninjaE3,spval4k2)
      acd4(28)=abb4(47)
      acd4(29)=abb4(46)
      acd4(30)=dotproduct(ninjaE3,spvak1l4)
      acd4(31)=abb4(52)
      acd4(32)=abb4(54)
      acd4(33)=abb4(9)
      acd4(34)=abb4(24)
      acd4(35)=dotproduct(ninjaE3,spvak2l3)
      acd4(36)=abb4(19)
      acd4(37)=dotproduct(ninjaE3,spval3l4)
      acd4(38)=abb4(25)
      acd4(39)=dotproduct(ninjaE3,spvak2l4)
      acd4(40)=abb4(26)
      acd4(41)=dotproduct(ninjaE3,spval4l3)
      acd4(42)=abb4(33)
      acd4(43)=abb4(40)
      acd4(44)=abb4(41)
      acd4(45)=abb4(49)
      acd4(46)=acd4(41)*acd4(42)
      acd4(47)=acd4(39)*acd4(40)
      acd4(48)=acd4(37)*acd4(38)
      acd4(49)=acd4(35)*acd4(36)
      acd4(50)=acd4(27)*acd4(44)
      acd4(51)=acd4(15)*acd4(43)
      acd4(52)=acd4(9)*acd4(33)
      acd4(53)=acd4(17)*acd4(45)
      acd4(54)=acd4(11)*acd4(34)
      acd4(55)=acd4(4)*acd4(8)
      acd4(46)=acd4(55)+acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(50)+acd4(49)+a&
      &cd4(48)+acd4(46)+acd4(47)
      acd4(46)=acd4(7)*acd4(46)
      acd4(47)=2.0_ki*acd4(2)
      acd4(48)=-acd4(47)-acd4(23)+acd4(21)
      acd4(48)=acd4(22)*acd4(48)
      acd4(49)=acd4(30)*acd4(31)
      acd4(50)=acd4(1)*acd4(3)
      acd4(51)=acd4(27)*acd4(28)
      acd4(52)=acd4(19)*acd4(32)
      acd4(53)=acd4(13)*acd4(26)
      acd4(54)=acd4(17)*acd4(29)
      acd4(55)=acd4(11)*acd4(25)
      acd4(56)=acd4(4)*acd4(6)
      acd4(57)=acd4(7)*acd4(24)
      acd4(48)=acd4(57)+acd4(56)+acd4(55)+acd4(54)+acd4(53)+acd4(52)+acd4(51)+a&
      &cd4(49)+acd4(50)+acd4(48)
      acd4(47)=acd4(48)*acd4(47)
      acd4(48)=-acd4(19)*acd4(20)
      acd4(49)=acd4(15)*acd4(16)
      acd4(50)=acd4(13)*acd4(14)
      acd4(51)=acd4(9)*acd4(10)
      acd4(52)=acd4(17)*acd4(18)
      acd4(53)=acd4(11)*acd4(12)
      acd4(54)=acd4(4)*acd4(5)
      acd4(48)=acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(50)+acd4(48)+acd4(49)
      acd4(48)=acd4(4)*acd4(48)
      acd4(46)=acd4(47)+acd4(48)+acd4(46)
      brack(ninjaidxt0x0mu0)=acd4(46)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d4h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd4h1
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
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p1_dg_hhd_d4h1l132
