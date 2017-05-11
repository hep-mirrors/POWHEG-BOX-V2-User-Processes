module p0_gg_hhg_d63h0l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d63h0l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd63
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(50) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd63(1)=dotproduct(k1,ninjaE3)
      acd63(2)=dotproduct(k2,ninjaE3)
      acd63(3)=dotproduct(ninjaE3,spvak2k5)
      acd63(4)=abb63(111)
      acd63(5)=dotproduct(l4,ninjaE3)
      acd63(6)=abb63(110)
      acd63(7)=dotproduct(ninjaA0,ninjaE3)
      acd63(8)=abb63(109)
      acd63(9)=abb63(106)
      acd63(10)=dotproduct(ninjaE3,spvak1k5)
      acd63(11)=abb63(15)
      acd63(12)=dotproduct(ninjaE3,spvak1l4)
      acd63(13)=abb63(98)
      acd63(14)=dotproduct(ninjaE3,spval4k2)
      acd63(15)=abb63(115)
      acd63(16)=abb63(108)
      acd63(17)=abb63(67)
      acd63(18)=dotproduct(k5,ninjaE3)
      acd63(19)=abb63(107)
      acd63(20)=abb63(36)
      acd63(21)=dotproduct(ninjaE3,spvak1k2)
      acd63(22)=abb63(18)
      acd63(23)=abb63(56)
      acd63(24)=abb63(92)
      acd63(25)=abb63(101)
      acd63(26)=abb63(118)
      acd63(27)=abb63(21)
      acd63(28)=abb63(95)
      acd63(29)=abb63(25)
      acd63(30)=abb63(14)
      acd63(31)=abb63(112)
      acd63(32)=abb63(74)
      acd63(33)=abb63(8)
      acd63(34)=dotproduct(ninjaE3,spvak2l4)
      acd63(35)=abb63(16)
      acd63(36)=abb63(29)
      acd63(37)=abb63(33)
      acd63(38)=dotproduct(ninjaE3,spvak5k2)
      acd63(39)=abb63(58)
      acd63(40)=abb63(116)
      acd63(41)=acd63(18)*acd63(19)
      acd63(42)=acd63(21)*acd63(22)
      acd63(43)=acd63(14)*acd63(26)
      acd63(44)=acd63(12)*acd63(25)
      acd63(45)=acd63(10)*acd63(24)
      acd63(46)=2.0_ki*acd63(7)
      acd63(47)=acd63(20)*acd63(46)
      acd63(48)=-acd63(5)*acd63(17)
      acd63(49)=acd63(1)*acd63(4)
      acd63(50)=acd63(2)*acd63(16)
      acd63(41)=acd63(50)+acd63(49)+acd63(48)+acd63(47)+acd63(45)+acd63(44)+acd&
      &63(43)+acd63(41)+acd63(42)
      acd63(41)=acd63(2)*acd63(41)
      acd63(42)=acd63(38)*acd63(39)
      acd63(43)=acd63(21)*acd63(33)
      acd63(44)=acd63(14)*acd63(40)
      acd63(45)=acd63(12)*acd63(37)
      acd63(47)=acd63(10)*acd63(36)
      acd63(48)=acd63(1)*acd63(9)
      acd63(49)=acd63(2)*acd63(23)
      acd63(42)=acd63(49)+acd63(48)+acd63(47)+acd63(45)+acd63(44)+acd63(42)+acd&
      &63(43)
      acd63(42)=acd63(3)*acd63(42)
      acd63(43)=acd63(21)*acd63(29)
      acd63(44)=acd63(14)*acd63(32)
      acd63(45)=acd63(12)*acd63(31)
      acd63(47)=acd63(10)*acd63(30)
      acd63(43)=acd63(47)+acd63(45)+acd63(43)+acd63(44)
      acd63(43)=acd63(43)*acd63(46)
      acd63(44)=acd63(14)*acd63(15)
      acd63(45)=acd63(12)*acd63(13)
      acd63(44)=acd63(44)-acd63(45)
      acd63(45)=acd63(21)*acd63(27)
      acd63(47)=acd63(10)*acd63(28)
      acd63(45)=acd63(47)+acd63(45)+acd63(44)
      acd63(45)=acd63(5)*acd63(45)
      acd63(47)=acd63(10)*acd63(11)
      acd63(44)=acd63(44)-acd63(47)
      acd63(46)=acd63(8)*acd63(46)
      acd63(47)=acd63(5)*acd63(6)
      acd63(46)=acd63(47)+acd63(46)-acd63(44)
      acd63(46)=acd63(1)*acd63(46)
      acd63(44)=acd63(18)*acd63(44)
      acd63(47)=acd63(21)*acd63(34)*acd63(35)
      acd63(41)=acd63(42)+acd63(41)+acd63(46)+acd63(45)+acd63(43)+acd63(47)+acd&
      &63(44)
      acd63(41)=acd63(3)*acd63(41)
      brack(ninjaidxt0x0mu0)=acd63(41)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d63h0_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2-k4
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
end module p0_gg_hhg_d63h0l132_qp
