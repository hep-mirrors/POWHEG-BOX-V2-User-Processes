module p0_gg_hhg_d21h1l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d21h1l132.f90
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
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(15) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd21(1)=dotproduct(k2,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spvak2k1)
      acd21(3)=dotproduct(ninjaE3,spvak2k5)
      acd21(4)=abb21(18)
      acd21(5)=abb21(43)
      acd21(6)=dotproduct(l3,ninjaE3)
      acd21(7)=abb21(17)
      acd21(8)=abb21(42)
      acd21(9)=dotproduct(ninjaA0,ninjaE3)
      acd21(10)=abb21(11)
      acd21(11)=abb21(27)
      acd21(12)=2.0_ki*acd21(9)
      acd21(13)=acd21(10)*acd21(12)
      acd21(14)=-acd21(6)*acd21(7)
      acd21(15)=acd21(1)*acd21(4)
      acd21(13)=acd21(15)+acd21(13)+acd21(14)
      acd21(13)=acd21(2)*acd21(13)
      acd21(12)=acd21(11)*acd21(12)
      acd21(14)=acd21(6)*acd21(8)
      acd21(15)=acd21(1)*acd21(5)
      acd21(12)=acd21(15)+acd21(12)+acd21(14)
      acd21(12)=acd21(3)*acd21(12)
      acd21(12)=acd21(13)+acd21(12)
      acd21(12)=acd21(3)*acd21(12)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd21(12)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd21(1)=dotproduct(ninjaE3,spvak2k1)
      acd21(2)=dotproduct(ninjaE3,spvak2k5)
      acd21(3)=abb21(11)
      acd21(4)=abb21(27)
      acd21(5)=dotproduct(k2,ninjaA1)
      acd21(6)=abb21(18)
      acd21(7)=abb21(43)
      acd21(8)=dotproduct(k2,ninjaE3)
      acd21(9)=dotproduct(ninjaA1,spvak2k1)
      acd21(10)=dotproduct(ninjaA1,spvak2k5)
      acd21(11)=dotproduct(l3,ninjaA1)
      acd21(12)=abb21(17)
      acd21(13)=abb21(42)
      acd21(14)=dotproduct(l3,ninjaE3)
      acd21(15)=dotproduct(ninjaA0,ninjaA1)
      acd21(16)=dotproduct(ninjaA0,ninjaE3)
      acd21(17)=dotproduct(ninjaA1,ninjaA1)
      acd21(18)=dotproduct(k2,ninjaA0)
      acd21(19)=dotproduct(ninjaA0,spvak2k1)
      acd21(20)=dotproduct(ninjaA0,spvak2k5)
      acd21(21)=abb21(34)
      acd21(22)=dotproduct(l3,ninjaA0)
      acd21(23)=abb21(31)
      acd21(24)=dotproduct(l4,ninjaE3)
      acd21(25)=abb21(22)
      acd21(26)=dotproduct(ninjaA0,ninjaA0)
      acd21(27)=abb21(12)
      acd21(28)=abb21(23)
      acd21(29)=dotproduct(ninjaE3,spvak2l4)
      acd21(30)=abb21(19)
      acd21(31)=abb21(15)
      acd21(32)=abb21(30)
      acd21(33)=dotproduct(ninjaE3,spval4k1)
      acd21(34)=abb21(13)
      acd21(35)=abb21(38)
      acd21(36)=dotproduct(ninjaE3,spvak2l3)
      acd21(37)=abb21(25)
      acd21(38)=dotproduct(ninjaE3,spval3k5)
      acd21(39)=abb21(28)
      acd21(40)=dotproduct(ninjaE3,spval4k5)
      acd21(41)=abb21(36)
      acd21(42)=dotproduct(ninjaE3,spval3k1)
      acd21(43)=abb21(40)
      acd21(44)=acd21(2)**2
      acd21(45)=acd21(44)*acd21(4)
      acd21(46)=acd21(1)*acd21(2)
      acd21(47)=acd21(46)*acd21(3)
      acd21(45)=acd21(45)+acd21(47)
      acd21(47)=acd21(6)*acd21(8)
      acd21(48)=acd21(12)*acd21(14)
      acd21(47)=-acd21(48)+acd21(47)
      acd21(47)=acd21(1)*acd21(47)
      acd21(48)=acd21(14)*acd21(13)
      acd21(49)=acd21(8)*acd21(7)
      acd21(48)=acd21(48)+acd21(49)
      acd21(49)=2.0_ki*acd21(2)
      acd21(48)=acd21(49)*acd21(48)
      acd21(50)=acd21(49)*acd21(4)
      acd21(51)=acd21(3)*acd21(1)
      acd21(50)=acd21(50)+acd21(51)
      acd21(51)=2.0_ki*acd21(16)
      acd21(50)=acd21(50)*acd21(51)
      acd21(47)=acd21(50)+acd21(48)+acd21(47)
      acd21(48)=acd21(10)*acd21(47)
      acd21(50)=acd21(51)*acd21(3)*acd21(2)
      acd21(52)=acd21(14)*acd21(2)
      acd21(53)=acd21(52)*acd21(12)
      acd21(54)=acd21(8)*acd21(2)
      acd21(55)=acd21(54)*acd21(6)
      acd21(50)=acd21(55)+acd21(50)-acd21(53)
      acd21(53)=acd21(9)*acd21(50)
      acd21(55)=ninjaP1+2.0_ki*acd21(15)
      acd21(55)=acd21(45)*acd21(55)
      acd21(56)=acd21(44)*acd21(7)
      acd21(57)=acd21(46)*acd21(6)
      acd21(56)=acd21(56)+acd21(57)
      acd21(57)=acd21(5)*acd21(56)
      acd21(58)=acd21(44)*acd21(13)
      acd21(59)=acd21(46)*acd21(12)
      acd21(58)=acd21(58)-acd21(59)
      acd21(59)=acd21(11)*acd21(58)
      acd21(48)=acd21(59)+acd21(57)+acd21(53)+acd21(48)+acd21(55)
      acd21(53)=acd21(17)+ninjaP2
      acd21(53)=acd21(45)*acd21(53)
      acd21(55)=acd21(25)*acd21(24)
      acd21(57)=acd21(34)*acd21(33)
      acd21(59)=acd21(35)*acd21(29)
      acd21(60)=acd21(37)*acd21(36)
      acd21(61)=acd21(39)*acd21(38)
      acd21(62)=acd21(41)*acd21(40)
      acd21(63)=acd21(43)*acd21(42)
      acd21(55)=acd21(63)+acd21(62)+acd21(61)+acd21(60)+acd21(59)+acd21(57)+acd&
      &21(55)
      acd21(55)=acd21(2)*acd21(55)
      acd21(47)=acd21(20)*acd21(47)
      acd21(50)=acd21(19)*acd21(50)
      acd21(57)=ninjaP0+acd21(26)
      acd21(57)=acd21(45)*acd21(57)
      acd21(59)=acd21(27)*acd21(1)
      acd21(60)=-acd21(30)*acd21(29)
      acd21(59)=acd21(60)+acd21(59)
      acd21(51)=acd21(51)*acd21(59)
      acd21(56)=acd21(18)*acd21(56)
      acd21(58)=acd21(22)*acd21(58)
      acd21(54)=acd21(21)*acd21(54)
      acd21(52)=acd21(23)*acd21(52)
      acd21(49)=acd21(28)*acd21(16)*acd21(49)
      acd21(46)=acd21(31)*acd21(46)
      acd21(44)=acd21(32)*acd21(44)
      acd21(44)=acd21(44)+acd21(46)+acd21(49)+acd21(52)+acd21(54)+acd21(58)+acd&
      &21(56)+acd21(50)+acd21(55)+acd21(47)+acd21(51)+acd21(57)
      brack(ninjaidxt0x0mu0)=acd21(44)
      brack(ninjaidxt0x0mu2)=acd21(45)
      brack(ninjaidxt0x1mu0)=acd21(48)
      brack(ninjaidxt0x2mu0)=acd21(53)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d21h1_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
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
end module p0_gg_hhg_d21h1l132_qp
