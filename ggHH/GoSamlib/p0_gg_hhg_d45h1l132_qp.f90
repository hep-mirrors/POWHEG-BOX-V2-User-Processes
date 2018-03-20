module     p0_gg_hhg_d45h1l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d45h1l132_qp.f90
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
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd45(1)=dotproduct(k1,ninjaE3)
      acd45(2)=dotproduct(ninjaE3,spvak2k1)
      acd45(3)=dotproduct(ninjaE3,spvak2k5)
      acd45(4)=abb45(15)
      acd45(5)=dotproduct(k2,ninjaE3)
      acd45(6)=abb45(20)
      acd45(7)=dotproduct(ninjaA0,ninjaE3)
      acd45(8)=dotproduct(ninjaE3,spvak1k5)
      acd45(9)=abb45(19)
      acd45(10)=dotproduct(ninjaE3,spvak2l3)
      acd45(11)=dotproduct(ninjaE3,spval3k5)
      acd45(12)=dotproduct(ninjaE3,spval3k1)
      acd45(13)=acd45(9)*acd45(10)
      acd45(14)=acd45(11)*acd45(13)
      acd45(15)=-acd45(2)*acd45(9)*acd45(8)
      acd45(14)=acd45(14)+acd45(15)
      acd45(14)=acd45(2)*acd45(14)
      acd45(15)=acd45(5)*acd45(6)
      acd45(16)=2.0_ki*acd45(7)-acd45(1)
      acd45(16)=acd45(4)*acd45(16)
      acd45(15)=acd45(15)+acd45(16)
      acd45(15)=acd45(2)*acd45(15)
      acd45(13)=acd45(12)*acd45(13)
      acd45(13)=acd45(13)+acd45(15)
      acd45(13)=acd45(3)*acd45(13)
      acd45(13)=acd45(14)+acd45(13)
      acd45(13)=acd45(3)*acd45(13)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd45(13)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(54) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd45(1)=dotproduct(ninjaE3,spvak2k1)
      acd45(2)=dotproduct(ninjaE3,spvak2k5)
      acd45(3)=abb45(15)
      acd45(4)=dotproduct(k1,ninjaA1)
      acd45(5)=dotproduct(k1,ninjaE3)
      acd45(6)=dotproduct(ninjaA1,spvak2k1)
      acd45(7)=dotproduct(ninjaA1,spvak2k5)
      acd45(8)=dotproduct(k2,ninjaA1)
      acd45(9)=abb45(20)
      acd45(10)=dotproduct(k2,ninjaE3)
      acd45(11)=dotproduct(ninjaA0,ninjaA1)
      acd45(12)=dotproduct(ninjaA0,ninjaE3)
      acd45(13)=dotproduct(ninjaE3,spvak1k5)
      acd45(14)=abb45(19)
      acd45(15)=dotproduct(ninjaE3,spvak2l3)
      acd45(16)=dotproduct(ninjaE3,spval3k5)
      acd45(17)=dotproduct(ninjaE3,spval3k1)
      acd45(18)=dotproduct(ninjaA1,spvak2l3)
      acd45(19)=dotproduct(ninjaA1,spval3k5)
      acd45(20)=dotproduct(ninjaA1,spval3k1)
      acd45(21)=dotproduct(ninjaA1,spvak1k5)
      acd45(22)=dotproduct(ninjaA1,ninjaA1)
      acd45(23)=dotproduct(k1,ninjaA0)
      acd45(24)=dotproduct(ninjaA0,spvak2k1)
      acd45(25)=dotproduct(ninjaA0,spvak2k5)
      acd45(26)=abb45(14)
      acd45(27)=dotproduct(k2,ninjaA0)
      acd45(28)=dotproduct(ninjaA0,ninjaA0)
      acd45(29)=abb45(17)
      acd45(30)=abb45(18)
      acd45(31)=dotproduct(ninjaA0,spvak2l3)
      acd45(32)=dotproduct(ninjaA0,spval3k5)
      acd45(33)=dotproduct(ninjaA0,spval3k1)
      acd45(34)=dotproduct(ninjaA0,spvak1k5)
      acd45(35)=abb45(8)
      acd45(36)=abb45(12)
      acd45(37)=abb45(13)
      acd45(38)=abb45(16)
      acd45(39)=acd45(2)**2*acd45(1)*acd45(3)
      acd45(40)=2.0_ki*acd45(12)
      acd45(41)=acd45(40)-acd45(5)
      acd45(41)=acd45(41)*acd45(3)
      acd45(42)=acd45(9)*acd45(10)
      acd45(43)=acd45(41)+acd45(42)
      acd45(44)=acd45(6)*acd45(43)
      acd45(45)=acd45(17)*acd45(18)
      acd45(46)=acd45(15)*acd45(20)
      acd45(45)=acd45(45)+acd45(46)
      acd45(45)=acd45(14)*acd45(45)
      acd45(46)=acd45(9)*acd45(8)
      acd45(47)=-acd45(4)+ninjaP1+2.0_ki*acd45(11)
      acd45(47)=acd45(3)*acd45(47)
      acd45(46)=acd45(46)+acd45(47)
      acd45(46)=acd45(1)*acd45(46)
      acd45(44)=acd45(46)+acd45(45)+acd45(44)
      acd45(44)=acd45(2)*acd45(44)
      acd45(45)=2.0_ki*acd45(13)
      acd45(46)=-acd45(6)*acd45(45)
      acd45(47)=acd45(16)*acd45(18)
      acd45(48)=acd45(15)*acd45(19)
      acd45(46)=acd45(48)+acd45(46)+acd45(47)
      acd45(46)=acd45(14)*acd45(46)
      acd45(47)=acd45(7)*acd45(43)
      acd45(48)=acd45(1)*acd45(14)
      acd45(49)=-acd45(21)*acd45(48)
      acd45(46)=acd45(49)+2.0_ki*acd45(47)+acd45(46)
      acd45(46)=acd45(1)*acd45(46)
      acd45(47)=2.0_ki*acd45(17)
      acd45(49)=acd45(7)*acd45(47)
      acd45(50)=acd45(16)*acd45(6)
      acd45(49)=acd45(49)+acd45(50)
      acd45(50)=acd45(14)*acd45(15)
      acd45(49)=acd45(49)*acd45(50)
      acd45(44)=acd45(44)+acd45(49)+acd45(46)
      acd45(44)=acd45(2)*acd45(44)
      acd45(46)=acd45(48)*acd45(13)
      acd45(49)=acd45(50)*acd45(16)
      acd45(46)=acd45(46)-acd45(49)
      acd45(46)=acd45(46)*acd45(1)
      acd45(49)=-acd45(7)*acd45(46)
      acd45(44)=acd45(49)+acd45(44)
      acd45(49)=ninjaP2+acd45(22)
      acd45(49)=acd45(49)*acd45(39)
      acd45(43)=acd45(24)*acd45(43)
      acd45(51)=acd45(17)*acd45(31)
      acd45(52)=acd45(15)*acd45(33)
      acd45(51)=acd45(51)+acd45(52)
      acd45(51)=acd45(14)*acd45(51)
      acd45(52)=acd45(9)*acd45(27)
      acd45(53)=-acd45(23)+ninjaP0+acd45(28)
      acd45(53)=acd45(3)*acd45(53)
      acd45(52)=acd45(53)+acd45(35)+acd45(52)
      acd45(52)=acd45(1)*acd45(52)
      acd45(53)=acd45(17)*acd45(38)
      acd45(54)=acd45(5)*acd45(26)
      acd45(40)=acd45(30)*acd45(40)
      acd45(40)=acd45(52)+acd45(51)+acd45(40)+acd45(53)+acd45(54)+acd45(43)
      acd45(40)=acd45(2)*acd45(40)
      acd45(43)=acd45(12)*acd45(29)
      acd45(42)=acd45(25)*acd45(42)
      acd45(41)=acd45(25)*acd45(41)
      acd45(41)=acd45(41)+acd45(43)+acd45(42)
      acd45(42)=-acd45(24)*acd45(45)
      acd45(43)=acd45(16)*acd45(31)
      acd45(45)=acd45(15)*acd45(32)
      acd45(42)=acd45(45)+acd45(42)+acd45(43)
      acd45(42)=acd45(14)*acd45(42)
      acd45(43)=acd45(16)*acd45(37)
      acd45(45)=acd45(15)*acd45(36)
      acd45(48)=-acd45(34)*acd45(48)
      acd45(41)=acd45(48)+acd45(42)+acd45(45)+acd45(43)+2.0_ki*acd45(41)
      acd45(41)=acd45(1)*acd45(41)
      acd45(42)=acd45(25)*acd45(47)
      acd45(43)=acd45(16)*acd45(24)
      acd45(42)=acd45(42)+acd45(43)
      acd45(42)=acd45(42)*acd45(50)
      acd45(40)=acd45(40)+acd45(42)+acd45(41)
      acd45(40)=acd45(2)*acd45(40)
      acd45(41)=-acd45(25)*acd45(46)
      acd45(40)=acd45(41)+acd45(40)
      brack(ninjaidxt0x0mu0)=acd45(40)
      brack(ninjaidxt0x0mu2)=acd45(39)
      brack(ninjaidxt0x1mu0)=acd45(44)
      brack(ninjaidxt0x2mu0)=acd45(49)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d45h1_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h1_qp
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
end module     p0_gg_hhg_d45h1l132_qp
