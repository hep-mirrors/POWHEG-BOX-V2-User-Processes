module p0_gg_hhg_d61h0l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d61h0l132.f90
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
      use p0_gg_hhg_abbrevd61h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd61(1)=dotproduct(k2,ninjaE3)
      acd61(2)=dotproduct(ninjaE3,spvak1k2)
      acd61(3)=dotproduct(ninjaE3,spvak2k5)
      acd61(4)=abb61(29)
      acd61(5)=dotproduct(l3,ninjaE3)
      acd61(6)=abb61(27)
      acd61(7)=dotproduct(ninjaA0,ninjaE3)
      acd61(8)=abb61(31)
      acd61(9)=acd61(4)*acd61(1)
      acd61(10)=-acd61(6)*acd61(5)
      acd61(11)=acd61(8)*acd61(7)
      acd61(9)=2.0_ki*acd61(11)+acd61(9)+acd61(10)
      acd61(9)=acd61(2)*acd61(9)*acd61(3)**2
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd61(9)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd61h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd61(1)=dotproduct(ninjaE3,spvak1k2)
      acd61(2)=dotproduct(ninjaE3,spvak2k5)
      acd61(3)=abb61(31)
      acd61(4)=dotproduct(k2,ninjaA1)
      acd61(5)=abb61(29)
      acd61(6)=dotproduct(k2,ninjaE3)
      acd61(7)=dotproduct(ninjaA1,spvak1k2)
      acd61(8)=dotproduct(ninjaA1,spvak2k5)
      acd61(9)=dotproduct(l3,ninjaA1)
      acd61(10)=abb61(27)
      acd61(11)=dotproduct(l3,ninjaE3)
      acd61(12)=dotproduct(ninjaA0,ninjaA1)
      acd61(13)=dotproduct(ninjaA0,ninjaE3)
      acd61(14)=dotproduct(ninjaA1,ninjaA1)
      acd61(15)=dotproduct(k1,ninjaE3)
      acd61(16)=abb61(86)
      acd61(17)=abb61(84)
      acd61(18)=abb61(89)
      acd61(19)=dotproduct(k2,ninjaA0)
      acd61(20)=abb61(88)
      acd61(21)=dotproduct(ninjaA0,spvak1k2)
      acd61(22)=dotproduct(ninjaA0,spvak2k5)
      acd61(23)=abb61(45)
      acd61(24)=dotproduct(ninjaE3,spvak1k5)
      acd61(25)=abb61(51)
      acd61(26)=dotproduct(l3,ninjaA0)
      acd61(27)=abb61(68)
      acd61(28)=abb61(53)
      acd61(29)=abb61(76)
      acd61(30)=dotproduct(l4,ninjaE3)
      acd61(31)=abb61(20)
      acd61(32)=abb61(38)
      acd61(33)=dotproduct(ninjaA0,ninjaA0)
      acd61(34)=abb61(90)
      acd61(35)=abb61(47)
      acd61(36)=dotproduct(ninjaE3,spvak2l4)
      acd61(37)=abb61(80)
      acd61(38)=abb61(43)
      acd61(39)=dotproduct(ninjaE3,spval4k5)
      acd61(40)=abb61(93)
      acd61(41)=dotproduct(ninjaE3,spvak2l3)
      acd61(42)=abb61(11)
      acd61(43)=abb61(12)
      acd61(44)=abb61(22)
      acd61(45)=abb61(52)
      acd61(46)=dotproduct(ninjaE3,spval3k5)
      acd61(47)=abb61(61)
      acd61(48)=acd61(3)*acd61(1)
      acd61(49)=acd61(2)**2
      acd61(50)=acd61(48)*acd61(49)
      acd61(51)=acd61(4)*acd61(5)
      acd61(52)=-acd61(9)*acd61(10)
      acd61(51)=acd61(52)+acd61(51)
      acd61(51)=acd61(1)*acd61(51)
      acd61(52)=ninjaP1+2.0_ki*acd61(12)
      acd61(52)=acd61(48)*acd61(52)
      acd61(51)=acd61(52)+acd61(51)
      acd61(51)=acd61(49)*acd61(51)
      acd61(52)=acd61(5)*acd61(6)
      acd61(53)=2.0_ki*acd61(13)
      acd61(54)=acd61(53)*acd61(3)
      acd61(55)=acd61(10)*acd61(11)
      acd61(52)=-acd61(55)+acd61(52)+acd61(54)
      acd61(54)=acd61(49)*acd61(52)
      acd61(55)=acd61(7)*acd61(54)
      acd61(56)=acd61(1)*acd61(2)
      acd61(52)=acd61(56)*acd61(52)
      acd61(52)=2.0_ki*acd61(52)
      acd61(57)=acd61(8)*acd61(52)
      acd61(51)=acd61(55)+acd61(57)+acd61(51)
      acd61(55)=acd61(14)+ninjaP2
      acd61(55)=acd61(50)*acd61(55)
      acd61(57)=acd61(23)*acd61(6)
      acd61(58)=acd61(28)*acd61(11)
      acd61(59)=acd61(32)*acd61(30)
      acd61(60)=acd61(42)*acd61(41)
      acd61(61)=acd61(44)*acd61(36)
      acd61(62)=acd61(45)*acd61(39)
      acd61(63)=acd61(47)*acd61(46)
      acd61(57)=acd61(63)+acd61(62)+acd61(61)+acd61(60)+acd61(59)+acd61(58)+acd&
      &61(57)
      acd61(57)=acd61(56)*acd61(57)
      acd61(58)=acd61(18)*acd61(15)
      acd61(59)=acd61(31)*acd61(30)
      acd61(60)=acd61(37)*acd61(36)
      acd61(61)=acd61(38)*acd61(24)
      acd61(62)=acd61(40)*acd61(39)
      acd61(58)=acd61(62)+acd61(61)+acd61(60)+acd61(59)+acd61(58)
      acd61(58)=acd61(2)*acd61(58)
      acd61(59)=acd61(6)*acd61(2)
      acd61(60)=acd61(20)*acd61(59)
      acd61(61)=acd61(11)*acd61(2)
      acd61(62)=acd61(27)*acd61(61)
      acd61(56)=acd61(35)*acd61(56)
      acd61(56)=acd61(56)+acd61(62)+acd61(60)+acd61(58)
      acd61(53)=acd61(53)*acd61(56)
      acd61(56)=ninjaP0+acd61(33)
      acd61(48)=acd61(48)*acd61(56)
      acd61(56)=acd61(19)*acd61(5)
      acd61(58)=-acd61(26)*acd61(10)
      acd61(56)=acd61(43)+acd61(58)+acd61(56)
      acd61(56)=acd61(1)*acd61(56)
      acd61(48)=acd61(56)+acd61(48)
      acd61(48)=acd61(49)*acd61(48)
      acd61(49)=acd61(21)*acd61(54)
      acd61(52)=acd61(22)*acd61(52)
      acd61(54)=-acd61(17)*acd61(15)
      acd61(56)=acd61(29)*acd61(24)
      acd61(54)=acd61(56)+acd61(54)
      acd61(54)=acd61(61)*acd61(54)
      acd61(56)=acd61(16)*acd61(15)
      acd61(58)=acd61(25)*acd61(24)
      acd61(56)=acd61(58)+acd61(56)
      acd61(56)=acd61(59)*acd61(56)
      acd61(58)=acd61(34)*acd61(2)*acd61(13)**2
      acd61(48)=4.0_ki*acd61(58)+acd61(49)+acd61(52)+acd61(53)+acd61(57)+acd61(&
      &48)+acd61(56)+acd61(54)
      brack(ninjaidxt0x0mu0)=acd61(48)
      brack(ninjaidxt0x0mu2)=acd61(50)
      brack(ninjaidxt0x1mu0)=acd61(51)
      brack(ninjaidxt0x2mu0)=acd61(55)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d61h0_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k4
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
end module p0_gg_hhg_d61h0l132_qp
