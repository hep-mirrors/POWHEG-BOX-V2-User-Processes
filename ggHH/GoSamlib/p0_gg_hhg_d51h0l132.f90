module     p0_gg_hhg_d51h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d51h0l132.f90
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
      use p0_gg_hhg_abbrevd51h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd51
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd51(1)=dotproduct(k2,ninjaE3)
      acd51(2)=dotproduct(ninjaE3,spvak2k5)
      acd51(3)=dotproduct(ninjaE3,spvak1k5)
      acd51(4)=abb51(24)
      acd51(5)=dotproduct(ninjaE3,spvak2l3)
      acd51(6)=dotproduct(ninjaE3,spval3k5)
      acd51(7)=abb51(12)
      acd51(8)=dotproduct(ninjaA0,ninjaE3)
      acd51(9)=dotproduct(ninjaE3,spvak1k2)
      acd51(10)=abb51(9)
      acd51(11)=acd51(5)*acd51(6)*acd51(7)
      acd51(12)=acd51(1)*acd51(2)*acd51(4)
      acd51(11)=acd51(11)+acd51(12)
      acd51(11)=acd51(1)*acd51(3)*acd51(11)
      acd51(12)=acd51(8)*acd51(9)*acd51(10)*acd51(2)**2
      acd51(11)=2.0_ki*acd51(12)+acd51(11)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd51(11)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(52) :: acd51
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd51(1)=dotproduct(ninjaE3,spvak1k2)
      acd51(2)=dotproduct(ninjaE3,spvak2k5)
      acd51(3)=abb51(9)
      acd51(4)=dotproduct(k2,ninjaA1)
      acd51(5)=dotproduct(k2,ninjaE3)
      acd51(6)=dotproduct(ninjaE3,spvak1k5)
      acd51(7)=abb51(24)
      acd51(8)=dotproduct(ninjaE3,spval3k5)
      acd51(9)=dotproduct(ninjaE3,spvak2l3)
      acd51(10)=abb51(12)
      acd51(11)=dotproduct(ninjaA1,spvak1k5)
      acd51(12)=dotproduct(ninjaA1,spvak2k5)
      acd51(13)=dotproduct(ninjaA1,spval3k5)
      acd51(14)=dotproduct(ninjaA1,spvak2l3)
      acd51(15)=dotproduct(ninjaA0,ninjaA1)
      acd51(16)=dotproduct(ninjaA0,ninjaE3)
      acd51(17)=dotproduct(ninjaA1,spvak1k2)
      acd51(18)=dotproduct(ninjaA1,ninjaA1)
      acd51(19)=dotproduct(k2,ninjaA0)
      acd51(20)=dotproduct(ninjaA0,spvak1k5)
      acd51(21)=dotproduct(ninjaA0,spvak2k5)
      acd51(22)=abb51(27)
      acd51(23)=abb51(22)
      acd51(24)=dotproduct(ninjaA0,spval3k5)
      acd51(25)=dotproduct(ninjaA0,spvak2l3)
      acd51(26)=abb51(8)
      acd51(27)=abb51(18)
      acd51(28)=abb51(10)
      acd51(29)=dotproduct(ninjaE3,spvak2k1)
      acd51(30)=abb51(32)
      acd51(31)=dotproduct(ninjaA0,ninjaA0)
      acd51(32)=dotproduct(ninjaA0,spvak1k2)
      acd51(33)=abb51(23)
      acd51(34)=abb51(15)
      acd51(35)=acd51(1)*acd51(3)
      acd51(36)=acd51(2)**2
      acd51(37)=acd51(35)*acd51(36)
      acd51(38)=acd51(10)*acd51(9)
      acd51(39)=acd51(13)*acd51(38)
      acd51(40)=acd51(10)*acd51(8)
      acd51(41)=acd51(14)*acd51(40)
      acd51(39)=acd51(41)+acd51(39)
      acd51(41)=acd51(6)*acd51(5)
      acd51(39)=acd51(41)*acd51(39)
      acd51(42)=ninjaP1+2.0_ki*acd51(15)
      acd51(42)=acd51(37)*acd51(42)
      acd51(43)=acd51(38)*acd51(8)
      acd51(44)=acd51(6)*acd51(43)
      acd51(45)=acd51(41)*acd51(7)*acd51(2)
      acd51(44)=acd51(44)+2.0_ki*acd51(45)
      acd51(45)=acd51(4)*acd51(44)
      acd51(43)=acd51(5)*acd51(43)
      acd51(46)=acd51(5)**2
      acd51(47)=acd51(46)*acd51(7)
      acd51(48)=acd51(47)*acd51(2)
      acd51(43)=acd51(43)+acd51(48)
      acd51(48)=acd51(11)*acd51(43)
      acd51(47)=acd51(47)*acd51(6)
      acd51(35)=acd51(35)*acd51(16)*acd51(2)
      acd51(35)=acd51(47)+4.0_ki*acd51(35)
      acd51(47)=acd51(12)*acd51(35)
      acd51(49)=2.0_ki*acd51(16)
      acd51(50)=acd51(49)*acd51(3)
      acd51(51)=acd51(17)*acd51(36)*acd51(50)
      acd51(39)=acd51(51)+acd51(47)+acd51(45)+acd51(48)+acd51(42)+acd51(39)
      acd51(42)=acd51(18)+ninjaP2
      acd51(42)=acd51(37)*acd51(42)
      acd51(45)=-acd51(23)*acd51(49)
      acd51(38)=acd51(24)*acd51(38)
      acd51(40)=acd51(25)*acd51(40)
      acd51(47)=acd51(26)*acd51(8)
      acd51(48)=acd51(27)*acd51(2)
      acd51(51)=acd51(28)*acd51(9)
      acd51(52)=acd51(29)*acd51(30)
      acd51(38)=acd51(52)+acd51(51)+acd51(48)+acd51(47)+acd51(40)+acd51(38)+acd&
      &51(45)
      acd51(38)=acd51(41)*acd51(38)
      acd51(40)=acd51(32)*acd51(50)
      acd51(41)=acd51(34)*acd51(1)
      acd51(40)=acd51(41)+acd51(40)
      acd51(36)=acd51(36)*acd51(40)
      acd51(40)=ninjaP0+acd51(31)
      acd51(40)=acd51(37)*acd51(40)
      acd51(41)=acd51(19)*acd51(44)
      acd51(43)=acd51(20)*acd51(43)
      acd51(35)=acd51(21)*acd51(35)
      acd51(44)=acd51(9)*acd51(8)*acd51(6)
      acd51(45)=-acd51(6)*acd51(2)*acd51(49)
      acd51(44)=acd51(44)+acd51(45)
      acd51(44)=acd51(33)*acd51(44)
      acd51(45)=4.0_ki*acd51(2)
      acd51(45)=acd51(30)*acd51(16)**2*acd51(45)
      acd51(46)=acd51(22)*acd51(46)*acd51(6)
      acd51(35)=acd51(46)+acd51(44)+acd51(45)+acd51(35)+acd51(41)+acd51(43)+acd&
      &51(38)+acd51(40)+acd51(36)
      brack(ninjaidxt0x0mu0)=acd51(35)
      brack(ninjaidxt0x0mu2)=acd51(37)
      brack(ninjaidxt0x1mu0)=acd51(39)
      brack(ninjaidxt0x2mu0)=acd51(42)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d51h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd51h0
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
end module     p0_gg_hhg_d51h0l132
