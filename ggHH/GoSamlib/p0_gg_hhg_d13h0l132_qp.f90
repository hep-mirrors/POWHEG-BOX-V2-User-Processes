module     p0_gg_hhg_d13h0l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d13h0l132_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
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
      use p0_gg_hhg_abbrevd13h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd13(1)=dotproduct(k2,ninjaE3)
      acd13(2)=dotproduct(ninjaA0,ninjaE3)
      acd13(3)=dotproduct(ninjaE3,spvak2k5)
      acd13(4)=abb13(72)
      acd13(5)=dotproduct(ninjaE3,spvak1k2)
      acd13(6)=abb13(29)
      acd13(7)=dotproduct(ninjaE3,spvak1k5)
      acd13(8)=dotproduct(ninjaE3,spvak2k1)
      acd13(9)=abb13(69)
      acd13(10)=acd13(4)*acd13(1)
      acd13(11)=acd13(6)*acd13(5)
      acd13(10)=acd13(10)+acd13(11)
      acd13(10)=acd13(10)*acd13(3)
      acd13(11)=-acd13(9)*acd13(8)*acd13(7)
      acd13(10)=acd13(11)+acd13(10)
      acd13(10)=2.0_ki*acd13(2)*acd13(10)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd13(10)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(59) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd13(1)=dotproduct(k2,ninjaE3)
      acd13(2)=dotproduct(ninjaE3,spvak2k5)
      acd13(3)=abb13(72)
      acd13(4)=dotproduct(ninjaE3,spvak1k5)
      acd13(5)=dotproduct(ninjaE3,spvak2k1)
      acd13(6)=abb13(69)
      acd13(7)=dotproduct(ninjaE3,spvak1k2)
      acd13(8)=abb13(29)
      acd13(9)=dotproduct(k2,ninjaA1)
      acd13(10)=dotproduct(ninjaA0,ninjaE3)
      acd13(11)=dotproduct(ninjaA0,ninjaA1)
      acd13(12)=dotproduct(ninjaA1,spvak2k5)
      acd13(13)=dotproduct(ninjaA1,spvak1k5)
      acd13(14)=dotproduct(ninjaA1,spvak2k1)
      acd13(15)=dotproduct(ninjaA1,spvak1k2)
      acd13(16)=dotproduct(ninjaA1,ninjaA1)
      acd13(17)=dotproduct(k2,ninjaA0)
      acd13(18)=abb13(66)
      acd13(19)=dotproduct(ninjaA0,ninjaA0)
      acd13(20)=dotproduct(ninjaA0,spvak2k5)
      acd13(21)=abb13(26)
      acd13(22)=dotproduct(ninjaE3,spval3k2)
      acd13(23)=abb13(13)
      acd13(24)=abb13(35)
      acd13(25)=dotproduct(ninjaE3,spval3l4)
      acd13(26)=abb13(25)
      acd13(27)=abb13(65)
      acd13(28)=dotproduct(ninjaE3,spvak2l4)
      acd13(29)=abb13(39)
      acd13(30)=abb13(16)
      acd13(31)=dotproduct(ninjaA0,spvak1k5)
      acd13(32)=dotproduct(ninjaA0,spvak2k1)
      acd13(33)=dotproduct(ninjaA0,spvak1k2)
      acd13(34)=abb13(21)
      acd13(35)=abb13(18)
      acd13(36)=abb13(32)
      acd13(37)=dotproduct(ninjaE3,spvak2l3)
      acd13(38)=abb13(12)
      acd13(39)=abb13(30)
      acd13(40)=dotproduct(ninjaE3,spval4l3)
      acd13(41)=abb13(24)
      acd13(42)=abb13(15)
      acd13(43)=abb13(41)
      acd13(44)=abb13(37)
      acd13(45)=abb13(68)
      acd13(46)=abb13(28)
      acd13(47)=acd13(3)*acd13(1)
      acd13(48)=acd13(7)*acd13(8)
      acd13(47)=acd13(47)+acd13(48)
      acd13(48)=acd13(2)*acd13(47)
      acd13(49)=acd13(6)*acd13(4)
      acd13(50)=acd13(49)*acd13(5)
      acd13(48)=-acd13(50)+acd13(48)
      acd13(50)=acd13(3)*acd13(2)
      acd13(51)=acd13(9)*acd13(50)
      acd13(52)=acd13(6)*acd13(5)
      acd13(53)=-acd13(13)*acd13(52)
      acd13(54)=-acd13(14)*acd13(49)
      acd13(55)=acd13(8)*acd13(2)
      acd13(56)=acd13(15)*acd13(55)
      acd13(51)=acd13(56)+acd13(54)+acd13(53)+acd13(51)
      acd13(53)=2.0_ki*acd13(10)
      acd13(51)=acd13(53)*acd13(51)
      acd13(54)=2.0_ki*acd13(11)+ninjaP1
      acd13(54)=acd13(48)*acd13(54)
      acd13(47)=acd13(10)*acd13(47)
      acd13(47)=2.0_ki*acd13(47)
      acd13(56)=acd13(12)*acd13(47)
      acd13(51)=acd13(56)+acd13(51)+acd13(54)
      acd13(54)=acd13(16)+ninjaP2
      acd13(54)=acd13(48)*acd13(54)
      acd13(50)=acd13(17)*acd13(50)
      acd13(56)=acd13(21)*acd13(1)
      acd13(52)=-acd13(31)*acd13(52)
      acd13(49)=-acd13(32)*acd13(49)
      acd13(55)=acd13(33)*acd13(55)
      acd13(57)=acd13(34)*acd13(4)
      acd13(58)=acd13(35)*acd13(5)
      acd13(59)=acd13(36)*acd13(2)
      acd13(49)=acd13(59)+acd13(58)+acd13(57)+acd13(55)+acd13(49)+acd13(52)+acd&
      &13(56)+acd13(50)
      acd13(49)=acd13(53)*acd13(49)
      acd13(50)=acd13(23)*acd13(22)
      acd13(52)=acd13(26)*acd13(25)
      acd13(53)=acd13(27)*acd13(2)
      acd13(55)=acd13(29)*acd13(28)
      acd13(50)=acd13(53)+acd13(55)+acd13(52)+acd13(50)
      acd13(50)=acd13(1)*acd13(50)
      acd13(52)=acd13(24)*acd13(1)
      acd13(53)=acd13(42)*acd13(22)
      acd13(55)=acd13(43)*acd13(25)
      acd13(56)=acd13(44)*acd13(28)
      acd13(52)=acd13(56)+acd13(55)+acd13(53)+acd13(52)
      acd13(52)=acd13(5)*acd13(52)
      acd13(53)=acd13(38)*acd13(37)
      acd13(55)=acd13(39)*acd13(5)
      acd13(53)=acd13(55)+acd13(53)
      acd13(53)=acd13(4)*acd13(53)
      acd13(55)=acd13(19)+ninjaP0
      acd13(55)=acd13(48)*acd13(55)
      acd13(56)=acd13(41)*acd13(4)
      acd13(57)=acd13(45)*acd13(2)
      acd13(56)=acd13(57)+acd13(56)
      acd13(56)=acd13(40)*acd13(56)
      acd13(47)=acd13(20)*acd13(47)
      acd13(57)=acd13(18)*acd13(1)**2
      acd13(58)=acd13(30)*acd13(10)**2
      acd13(59)=acd13(46)*acd13(7)*acd13(2)
      acd13(47)=acd13(59)+4.0_ki*acd13(58)+acd13(57)+acd13(47)+acd13(49)+acd13(&
      &52)+acd13(56)+acd13(55)+acd13(53)+acd13(50)
      brack(ninjaidxt0x0mu0)=acd13(47)
      brack(ninjaidxt0x0mu2)=acd13(48)
      brack(ninjaidxt0x1mu0)=acd13(51)
      brack(ninjaidxt0x2mu0)=acd13(54)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d13h0_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k5
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
end module     p0_gg_hhg_d13h0l132_qp
