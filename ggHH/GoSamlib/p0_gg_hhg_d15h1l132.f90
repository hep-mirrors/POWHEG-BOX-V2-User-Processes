module     p0_gg_hhg_d15h1l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d15h1l132.f90
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
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd15
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd15(1)=dotproduct(ninjaA0,ninjaE3)
      acd15(2)=dotproduct(ninjaE3,spvak2k1)
      acd15(3)=dotproduct(ninjaE3,spvak2k5)
      acd15(4)=abb15(18)
      acd15(5)=2.0_ki*acd15(4)*acd15(3)*acd15(2)*acd15(1)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd15(5)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(47) :: acd15
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd15(1)=dotproduct(ninjaE3,spvak2k5)
      acd15(2)=dotproduct(ninjaE3,spvak2k1)
      acd15(3)=abb15(18)
      acd15(4)=dotproduct(ninjaA0,ninjaA1)
      acd15(5)=dotproduct(ninjaA0,ninjaE3)
      acd15(6)=dotproduct(ninjaA1,spvak2k5)
      acd15(7)=dotproduct(ninjaA1,spvak2k1)
      acd15(8)=dotproduct(ninjaA1,ninjaA1)
      acd15(9)=dotproduct(k2,ninjaE3)
      acd15(10)=abb15(46)
      acd15(11)=dotproduct(ninjaE3,spvak2l3)
      acd15(12)=abb15(16)
      acd15(13)=abb15(29)
      acd15(14)=dotproduct(l3,ninjaE3)
      acd15(15)=abb15(37)
      acd15(16)=dotproduct(l4,ninjaE3)
      acd15(17)=abb15(21)
      acd15(18)=abb15(14)
      acd15(19)=abb15(24)
      acd15(20)=dotproduct(ninjaA0,ninjaA0)
      acd15(21)=dotproduct(ninjaA0,spvak2k5)
      acd15(22)=dotproduct(ninjaA0,spvak2k1)
      acd15(23)=dotproduct(ninjaE3,spvak2l4)
      acd15(24)=abb15(13)
      acd15(25)=abb15(26)
      acd15(26)=abb15(19)
      acd15(27)=abb15(35)
      acd15(28)=abb15(11)
      acd15(29)=abb15(23)
      acd15(30)=abb15(20)
      acd15(31)=dotproduct(ninjaE3,spval3k1)
      acd15(32)=abb15(36)
      acd15(33)=dotproduct(ninjaE3,spval4k1)
      acd15(34)=abb15(40)
      acd15(35)=acd15(2)*acd15(3)
      acd15(36)=acd15(35)*acd15(1)
      acd15(37)=2.0_ki*acd15(5)
      acd15(38)=acd15(6)*acd15(37)*acd15(35)
      acd15(39)=ninjaP1+2.0_ki*acd15(4)
      acd15(35)=acd15(39)*acd15(35)
      acd15(39)=acd15(3)*acd15(7)*acd15(37)
      acd15(35)=acd15(39)+acd15(35)
      acd15(35)=acd15(1)*acd15(35)
      acd15(35)=acd15(38)+acd15(35)
      acd15(38)=ninjaP2+acd15(8)
      acd15(38)=acd15(38)*acd15(36)
      acd15(39)=acd15(3)*acd15(22)
      acd15(39)=acd15(39)+acd15(25)
      acd15(39)=acd15(37)*acd15(39)
      acd15(40)=acd15(33)*acd15(34)
      acd15(41)=acd15(31)*acd15(32)
      acd15(42)=acd15(14)*acd15(15)
      acd15(43)=acd15(23)*acd15(28)
      acd15(44)=acd15(16)*acd15(17)
      acd15(45)=acd15(9)*acd15(10)
      acd15(46)=acd15(11)*acd15(29)
      acd15(47)=ninjaP0+acd15(20)
      acd15(47)=acd15(3)*acd15(47)
      acd15(47)=acd15(30)+acd15(47)
      acd15(47)=acd15(2)*acd15(47)
      acd15(39)=acd15(47)+acd15(46)+acd15(45)+acd15(44)+acd15(43)+acd15(42)+acd&
      &15(40)+acd15(41)+acd15(39)
      acd15(39)=acd15(1)*acd15(39)
      acd15(40)=acd15(3)*acd15(21)
      acd15(40)=acd15(40)+acd15(27)
      acd15(40)=acd15(37)*acd15(40)
      acd15(41)=-acd15(16)*acd15(19)
      acd15(42)=acd15(9)*acd15(13)
      acd15(40)=acd15(41)+acd15(42)+acd15(40)
      acd15(40)=acd15(2)*acd15(40)
      acd15(41)=acd15(16)*acd15(18)
      acd15(42)=acd15(9)*acd15(12)
      acd15(41)=acd15(41)+acd15(42)
      acd15(41)=acd15(11)*acd15(41)
      acd15(42)=acd15(23)*acd15(24)
      acd15(43)=acd15(11)*acd15(26)
      acd15(42)=acd15(42)+acd15(43)
      acd15(37)=acd15(42)*acd15(37)
      acd15(37)=acd15(39)+acd15(40)+acd15(41)+acd15(37)
      brack(ninjaidxt0x0mu0)=acd15(37)
      brack(ninjaidxt0x0mu2)=acd15(36)
      brack(ninjaidxt0x1mu0)=acd15(35)
      brack(ninjaidxt0x2mu0)=acd15(38)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d15h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd15h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d15h1l132
