module     p0_gg_hhg_d61h3l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d61h3l132_qp.f90
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
      use p0_gg_hhg_abbrevd61h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd61(1)=dotproduct(k2,ninjaE3)
      acd61(2)=dotproduct(k5,ninjaE3)
      acd61(3)=dotproduct(ninjaE3,spvak2k1)
      acd61(4)=abb61(47)
      acd61(5)=dotproduct(ninjaE3,spvak2k5)
      acd61(6)=dotproduct(ninjaE3,spvak5k2)
      acd61(7)=abb61(12)
      acd61(8)=dotproduct(ninjaE3,spval3k1)
      acd61(9)=dotproduct(ninjaE3,spvak5l3)
      acd61(10)=abb61(63)
      acd61(11)=dotproduct(ninjaE3,spvak2l3)
      acd61(12)=dotproduct(ninjaE3,spval3k2)
      acd61(13)=dotproduct(ninjaA0,ninjaE3)
      acd61(14)=acd61(7)*acd61(1)
      acd61(15)=acd61(13)*acd61(10)
      acd61(14)=-2.0_ki*acd61(15)+acd61(14)
      acd61(14)=acd61(6)*acd61(3)*acd61(14)
      acd61(15)=acd61(9)*acd61(8)*acd61(1)*acd61(10)
      acd61(14)=acd61(15)+acd61(14)
      acd61(14)=acd61(5)*acd61(14)
      acd61(15)=acd61(4)*acd61(1)**2
      acd61(16)=acd61(12)*acd61(11)*acd61(10)
      acd61(15)=acd61(16)+acd61(15)
      acd61(15)=acd61(15)*acd61(2)*acd61(3)
      acd61(14)=acd61(15)+acd61(14)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd61(14)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd61h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(77) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd61(1)=dotproduct(ninjaE3,spvak2k1)
      acd61(2)=dotproduct(ninjaE3,spvak2k5)
      acd61(3)=dotproduct(ninjaE3,spvak5k2)
      acd61(4)=abb61(63)
      acd61(5)=dotproduct(k2,ninjaA1)
      acd61(6)=dotproduct(k2,ninjaE3)
      acd61(7)=dotproduct(k5,ninjaE3)
      acd61(8)=abb61(47)
      acd61(9)=abb61(12)
      acd61(10)=dotproduct(ninjaE3,spval3k1)
      acd61(11)=dotproduct(ninjaE3,spvak5l3)
      acd61(12)=dotproduct(k5,ninjaA1)
      acd61(13)=dotproduct(ninjaA1,spvak2k1)
      acd61(14)=dotproduct(ninjaA1,spvak2k5)
      acd61(15)=dotproduct(ninjaA1,spvak5k2)
      acd61(16)=dotproduct(ninjaA1,spval3k1)
      acd61(17)=dotproduct(ninjaA1,spvak5l3)
      acd61(18)=dotproduct(ninjaE3,spvak2l3)
      acd61(19)=dotproduct(ninjaE3,spval3k2)
      acd61(20)=dotproduct(ninjaA1,spvak2l3)
      acd61(21)=dotproduct(ninjaA1,spval3k2)
      acd61(22)=dotproduct(ninjaA0,ninjaA1)
      acd61(23)=dotproduct(ninjaA0,ninjaE3)
      acd61(24)=dotproduct(ninjaA1,ninjaA1)
      acd61(25)=dotproduct(k2,ninjaA0)
      acd61(26)=dotproduct(k5,ninjaA0)
      acd61(27)=dotproduct(ninjaA0,spvak2k1)
      acd61(28)=abb61(31)
      acd61(29)=abb61(30)
      acd61(30)=abb61(49)
      acd61(31)=abb61(34)
      acd61(32)=dotproduct(ninjaE3,spvak5k1)
      acd61(33)=abb61(51)
      acd61(34)=dotproduct(ninjaA0,spvak2k5)
      acd61(35)=dotproduct(ninjaA0,spvak5k2)
      acd61(36)=dotproduct(ninjaA0,spval3k1)
      acd61(37)=dotproduct(ninjaA0,spvak5l3)
      acd61(38)=abb61(19)
      acd61(39)=abb61(20)
      acd61(40)=abb61(35)
      acd61(41)=abb61(48)
      acd61(42)=dotproduct(ninjaA0,spvak2l3)
      acd61(43)=dotproduct(ninjaA0,spval3k2)
      acd61(44)=abb61(38)
      acd61(45)=dotproduct(ninjaA0,ninjaA0)
      acd61(46)=abb61(55)
      acd61(47)=abb61(13)
      acd61(48)=abb61(65)
      acd61(49)=abb61(9)
      acd61(50)=abb61(44)
      acd61(51)=acd61(3)*acd61(1)
      acd61(52)=acd61(4)*acd61(2)
      acd61(53)=acd61(51)*acd61(52)
      acd61(54)=2.0_ki*acd61(23)
      acd61(55)=acd61(54)*acd61(52)
      acd61(56)=acd61(9)*acd61(6)
      acd61(57)=acd61(56)*acd61(2)
      acd61(57)=acd61(57)-acd61(55)
      acd61(57)=acd61(3)*acd61(57)
      acd61(58)=acd61(19)*acd61(18)
      acd61(59)=acd61(58)*acd61(4)
      acd61(60)=acd61(6)**2
      acd61(61)=acd61(60)*acd61(8)
      acd61(59)=acd61(59)+acd61(61)
      acd61(59)=acd61(59)*acd61(7)
      acd61(57)=acd61(59)+acd61(57)
      acd61(59)=acd61(13)*acd61(57)
      acd61(62)=acd61(11)*acd61(10)
      acd61(63)=acd61(62)*acd61(52)
      acd61(64)=acd61(6)*acd61(1)
      acd61(65)=acd61(64)*acd61(7)
      acd61(66)=acd61(8)*acd61(65)
      acd61(67)=acd61(2)*acd61(51)*acd61(9)
      acd61(63)=2.0_ki*acd61(66)+acd61(63)+acd61(67)
      acd61(66)=acd61(5)*acd61(63)
      acd61(67)=acd61(56)*acd61(51)
      acd61(68)=acd61(4)*acd61(1)
      acd61(69)=acd61(68)*acd61(54)*acd61(3)
      acd61(70)=acd61(62)*acd61(6)
      acd61(71)=acd61(70)*acd61(4)
      acd61(67)=-acd61(69)+acd61(67)+acd61(71)
      acd61(69)=acd61(14)*acd61(67)
      acd61(71)=acd61(2)*acd61(1)
      acd61(56)=acd61(56)*acd61(71)
      acd61(55)=acd61(55)*acd61(1)
      acd61(55)=acd61(56)-acd61(55)
      acd61(56)=acd61(15)*acd61(55)
      acd61(72)=acd61(11)*acd61(6)
      acd61(73)=acd61(16)*acd61(72)
      acd61(74)=acd61(10)*acd61(6)
      acd61(75)=acd61(17)*acd61(74)
      acd61(73)=acd61(75)+acd61(73)
      acd61(73)=acd61(52)*acd61(73)
      acd61(75)=-ninjaP1-2.0_ki*acd61(22)
      acd61(75)=acd61(53)*acd61(75)
      acd61(76)=acd61(20)*acd61(19)
      acd61(77)=acd61(21)*acd61(18)
      acd61(76)=acd61(77)+acd61(76)
      acd61(77)=acd61(68)*acd61(7)
      acd61(76)=acd61(77)*acd61(76)
      acd61(68)=acd61(58)*acd61(68)
      acd61(61)=acd61(61)*acd61(1)
      acd61(61)=acd61(68)+acd61(61)
      acd61(68)=acd61(12)*acd61(61)
      acd61(56)=acd61(56)+acd61(68)+acd61(69)+acd61(59)+acd61(66)+acd61(76)+acd&
      &61(75)+acd61(73)
      acd61(59)=-acd61(24)-ninjaP2
      acd61(59)=acd61(53)*acd61(59)
      acd61(64)=acd61(30)*acd61(64)
      acd61(66)=acd61(6)*acd61(2)
      acd61(68)=acd61(31)*acd61(66)
      acd61(69)=acd61(7)*acd61(1)
      acd61(73)=acd61(41)*acd61(69)
      acd61(64)=acd61(73)+acd61(68)+acd61(64)
      acd61(64)=acd61(54)*acd61(64)
      acd61(57)=acd61(27)*acd61(57)
      acd61(63)=acd61(25)*acd61(63)
      acd61(67)=acd61(34)*acd61(67)
      acd61(55)=acd61(35)*acd61(55)
      acd61(60)=acd61(28)*acd61(60)
      acd61(58)=acd61(50)*acd61(58)
      acd61(58)=acd61(58)+acd61(60)
      acd61(58)=acd61(1)*acd61(58)
      acd61(60)=acd61(36)*acd61(72)
      acd61(68)=acd61(37)*acd61(74)
      acd61(60)=acd61(68)+acd61(60)
      acd61(52)=acd61(52)*acd61(60)
      acd61(60)=acd61(39)*acd61(6)
      acd61(68)=acd61(49)*acd61(2)
      acd61(60)=acd61(68)+acd61(60)
      acd61(51)=acd61(51)*acd61(60)
      acd61(60)=-ninjaP0-acd61(45)
      acd61(60)=acd61(53)*acd61(60)
      acd61(68)=acd61(42)*acd61(19)
      acd61(72)=acd61(43)*acd61(18)
      acd61(68)=acd61(72)+acd61(68)
      acd61(68)=acd61(77)*acd61(68)
      acd61(72)=acd61(46)*acd61(1)
      acd61(73)=acd61(47)*acd61(2)
      acd61(72)=acd61(72)+acd61(73)
      acd61(72)=4.0_ki*acd61(72)
      acd61(72)=acd61(72)*acd61(23)**2
      acd61(61)=acd61(26)*acd61(61)
      acd61(54)=acd61(54)*acd61(32)
      acd61(73)=acd61(6)*acd61(54)
      acd61(70)=-acd61(70)+acd61(73)
      acd61(70)=acd61(33)*acd61(70)
      acd61(54)=acd61(62)-acd61(54)
      acd61(54)=acd61(48)*acd61(2)*acd61(54)
      acd61(62)=acd61(29)*acd61(65)
      acd61(65)=acd61(38)*acd61(6)*acd61(71)
      acd61(66)=acd61(40)*acd61(10)*acd61(66)
      acd61(69)=acd61(44)*acd61(18)*acd61(69)
      acd61(51)=acd61(69)+acd61(66)+acd61(65)+acd61(62)+acd61(54)+acd61(55)+acd&
      &61(70)+acd61(61)+acd61(67)+acd61(57)+acd61(63)+acd61(64)+acd61(72)+acd61&
      &(68)+acd61(60)+acd61(51)+acd61(52)+acd61(58)
      brack(ninjaidxt0x0mu0)=acd61(51)
      brack(ninjaidxt0x0mu2)=-acd61(53)
      brack(ninjaidxt0x1mu0)=acd61(56)
      brack(ninjaidxt0x2mu0)=acd61(59)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d61h3_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h3_qp
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
end module     p0_gg_hhg_d61h3l132_qp
