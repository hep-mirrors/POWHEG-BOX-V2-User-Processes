module     p0_gg_hhg_d45h1l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d45h1l131_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd45(1)=dotproduct(k1,ninjaE3)
      acd45(2)=dotproduct(ninjaE3,spvak2k1)
      acd45(3)=dotproduct(ninjaE3,spvak2k5)
      acd45(4)=abb45(15)
      acd45(5)=dotproduct(k2,ninjaE3)
      acd45(6)=abb45(20)
      acd45(7)=dotproduct(ninjaA,ninjaE3)
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
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd45(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(68) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd45(1)=dotproduct(k1,ninjaE3)
      acd45(2)=dotproduct(ninjaE3,spvak2k1)
      acd45(3)=dotproduct(ninjaE3,spvak2k5)
      acd45(4)=dotproduct(ninjaE4,spvak2k5)
      acd45(5)=abb45(15)
      acd45(6)=dotproduct(ninjaE4,spvak2k1)
      acd45(7)=dotproduct(k1,ninjaE4)
      acd45(8)=dotproduct(k2,ninjaE3)
      acd45(9)=abb45(20)
      acd45(10)=dotproduct(k2,ninjaE4)
      acd45(11)=dotproduct(ninjaA,ninjaE3)
      acd45(12)=dotproduct(ninjaA,ninjaE4)
      acd45(13)=dotproduct(ninjaA,spvak2k1)
      acd45(14)=dotproduct(ninjaA,spvak2k5)
      acd45(15)=dotproduct(ninjaE4,spvak1k5)
      acd45(16)=abb45(19)
      acd45(17)=dotproduct(ninjaE3,spvak1k5)
      acd45(18)=dotproduct(ninjaE3,spvak2l3)
      acd45(19)=dotproduct(ninjaE4,spval3k5)
      acd45(20)=dotproduct(ninjaE3,spval3k5)
      acd45(21)=dotproduct(ninjaE4,spvak2l3)
      acd45(22)=abb45(17)
      acd45(23)=dotproduct(ninjaE4,spval3k1)
      acd45(24)=dotproduct(ninjaE3,spval3k1)
      acd45(25)=abb45(18)
      acd45(26)=dotproduct(k1,ninjaA)
      acd45(27)=abb45(14)
      acd45(28)=dotproduct(k2,ninjaA)
      acd45(29)=dotproduct(ninjaA,ninjaA)
      acd45(30)=dotproduct(ninjaA,spvak2l3)
      acd45(31)=dotproduct(ninjaA,spval3k5)
      acd45(32)=dotproduct(ninjaA,spval3k1)
      acd45(33)=dotproduct(ninjaA,spvak1k5)
      acd45(34)=abb45(8)
      acd45(35)=abb45(12)
      acd45(36)=abb45(13)
      acd45(37)=abb45(16)
      acd45(38)=abb45(9)
      acd45(39)=abb45(10)
      acd45(40)=acd45(20)*acd45(21)
      acd45(41)=acd45(18)*acd45(19)
      acd45(42)=2.0_ki*acd45(6)
      acd45(42)=acd45(42)*acd45(17)
      acd45(40)=-acd45(42)+acd45(40)+acd45(41)
      acd45(41)=acd45(16)*acd45(40)
      acd45(42)=2.0_ki*acd45(4)
      acd45(43)=acd45(9)*acd45(8)
      acd45(44)=acd45(42)*acd45(43)
      acd45(45)=acd45(2)*acd45(16)
      acd45(46)=acd45(45)*acd45(15)
      acd45(44)=-acd45(46)+acd45(44)+acd45(22)
      acd45(46)=2.0_ki*acd45(5)
      acd45(47)=2.0_ki*acd45(11)
      acd45(48)=acd45(47)-acd45(1)
      acd45(49)=acd45(48)*acd45(4)
      acd45(50)=acd45(14)+acd45(49)
      acd45(50)=acd45(50)*acd45(46)
      acd45(41)=acd45(41)+acd45(50)+acd45(44)
      acd45(41)=acd45(2)*acd45(41)
      acd45(50)=-acd45(7)+2.0_ki*acd45(12)
      acd45(50)=acd45(50)*acd45(5)
      acd45(51)=acd45(9)*acd45(10)
      acd45(50)=acd45(50)+acd45(51)
      acd45(50)=acd45(50)*acd45(2)
      acd45(51)=acd45(43)*acd45(6)
      acd45(50)=acd45(50)+acd45(51)+acd45(25)
      acd45(51)=acd45(24)*acd45(21)
      acd45(52)=acd45(18)*acd45(23)
      acd45(51)=acd45(51)+acd45(52)
      acd45(52)=acd45(16)*acd45(51)
      acd45(53)=acd45(48)*acd45(6)
      acd45(53)=acd45(53)+acd45(13)
      acd45(54)=acd45(5)*acd45(53)
      acd45(52)=acd45(52)+acd45(54)+acd45(50)
      acd45(52)=acd45(3)*acd45(52)
      acd45(54)=acd45(20)*acd45(6)
      acd45(42)=acd45(42)*acd45(24)
      acd45(42)=acd45(54)+acd45(42)
      acd45(42)=acd45(42)*acd45(18)
      acd45(54)=acd45(16)*acd45(42)
      acd45(41)=acd45(52)+acd45(54)+acd45(41)
      acd45(41)=acd45(3)*acd45(41)
      acd45(52)=acd45(45)*acd45(17)
      acd45(54)=acd45(18)*acd45(20)
      acd45(55)=acd45(54)*acd45(16)
      acd45(52)=acd45(52)-acd45(55)
      acd45(52)=acd45(52)*acd45(2)
      acd45(55)=-acd45(4)*acd45(52)
      acd45(41)=acd45(55)+acd45(41)
      acd45(55)=acd45(20)*acd45(36)
      acd45(56)=acd45(18)*acd45(35)
      acd45(57)=acd45(47)*acd45(22)
      acd45(55)=acd45(57)+acd45(55)+acd45(56)
      acd45(48)=acd45(48)*acd45(5)
      acd45(56)=acd45(48)+acd45(43)
      acd45(57)=2.0_ki*acd45(14)
      acd45(58)=acd45(57)*acd45(56)
      acd45(59)=acd45(20)*acd45(30)
      acd45(60)=acd45(18)*acd45(31)
      acd45(59)=acd45(59)+acd45(60)
      acd45(60)=2.0_ki*acd45(13)
      acd45(61)=acd45(60)*acd45(17)
      acd45(61)=acd45(59)-acd45(61)
      acd45(62)=acd45(16)*acd45(61)
      acd45(63)=-acd45(33)*acd45(45)
      acd45(58)=acd45(63)+acd45(62)+acd45(58)+acd45(55)
      acd45(58)=acd45(2)*acd45(58)
      acd45(56)=acd45(56)*acd45(13)
      acd45(62)=acd45(24)*acd45(37)
      acd45(63)=acd45(1)*acd45(27)
      acd45(47)=acd45(47)*acd45(25)
      acd45(47)=acd45(56)+acd45(47)+acd45(62)+acd45(63)
      acd45(56)=acd45(24)*acd45(30)
      acd45(62)=acd45(18)*acd45(32)
      acd45(56)=acd45(56)+acd45(62)
      acd45(62)=acd45(16)*acd45(56)
      acd45(63)=acd45(9)*acd45(28)
      acd45(63)=acd45(63)+acd45(34)
      acd45(64)=acd45(29)-acd45(26)
      acd45(65)=acd45(64)+ninjaP
      acd45(66)=acd45(5)*acd45(65)
      acd45(66)=acd45(66)+acd45(63)
      acd45(66)=acd45(2)*acd45(66)
      acd45(62)=acd45(66)+acd45(62)+acd45(47)
      acd45(62)=acd45(3)*acd45(62)
      acd45(66)=acd45(18)*acd45(24)
      acd45(67)=acd45(57)*acd45(66)
      acd45(68)=acd45(54)*acd45(13)
      acd45(67)=acd45(68)+acd45(67)
      acd45(67)=acd45(16)*acd45(67)
      acd45(58)=acd45(62)+acd45(67)+acd45(58)
      acd45(58)=acd45(3)*acd45(58)
      acd45(52)=-acd45(14)*acd45(52)
      acd45(52)=acd45(52)+acd45(58)
      acd45(58)=acd45(2)*acd45(5)*acd45(3)**2
      acd45(40)=ninjaP*acd45(40)
      acd45(62)=acd45(30)*acd45(31)
      acd45(60)=-acd45(33)*acd45(60)
      acd45(40)=acd45(40)+acd45(62)+acd45(60)
      acd45(40)=acd45(16)*acd45(40)
      acd45(44)=ninjaP*acd45(44)
      acd45(60)=acd45(63)*acd45(57)
      acd45(49)=ninjaP*acd45(49)
      acd45(62)=acd45(14)*acd45(65)
      acd45(49)=acd45(49)+acd45(62)
      acd45(46)=acd45(49)*acd45(46)
      acd45(49)=acd45(31)*acd45(36)
      acd45(62)=acd45(22)*acd45(29)
      acd45(65)=acd45(30)*acd45(35)
      acd45(40)=acd45(40)+acd45(46)+acd45(60)+acd45(65)+acd45(62)+acd45(38)+acd&
      &45(49)+acd45(44)
      acd45(40)=acd45(2)*acd45(40)
      acd45(44)=ninjaP*acd45(50)
      acd45(46)=acd45(13)*acd45(64)
      acd45(49)=ninjaP*acd45(53)
      acd45(46)=acd45(46)+acd45(49)
      acd45(46)=acd45(5)*acd45(46)
      acd45(49)=ninjaP*acd45(51)
      acd45(50)=acd45(30)*acd45(32)
      acd45(49)=acd45(50)+acd45(49)
      acd45(49)=acd45(16)*acd45(49)
      acd45(50)=acd45(32)*acd45(37)
      acd45(51)=acd45(26)*acd45(27)
      acd45(53)=acd45(25)*acd45(29)
      acd45(60)=acd45(13)*acd45(63)
      acd45(44)=acd45(49)+acd45(46)+acd45(60)+acd45(53)+acd45(51)+acd45(39)+acd&
      &45(50)+acd45(44)
      acd45(44)=acd45(3)*acd45(44)
      acd45(46)=acd45(57)*acd45(47)
      acd45(47)=-acd45(13)*acd45(17)
      acd45(47)=acd45(47)+acd45(59)
      acd45(47)=acd45(13)*acd45(47)
      acd45(42)=ninjaP*acd45(42)
      acd45(49)=acd45(56)*acd45(57)
      acd45(42)=acd45(49)+acd45(47)+acd45(42)
      acd45(42)=acd45(16)*acd45(42)
      acd45(47)=acd45(13)*acd45(55)
      acd45(40)=acd45(44)+acd45(40)+acd45(42)+acd45(47)+acd45(46)
      acd45(40)=acd45(3)*acd45(40)
      acd45(42)=acd45(14)*acd45(43)
      acd45(42)=acd45(42)+acd45(55)
      acd45(42)=acd45(14)*acd45(42)
      acd45(43)=ninjaP*acd45(4)
      acd45(44)=acd45(54)*acd45(43)
      acd45(46)=acd45(14)*acd45(61)
      acd45(44)=acd45(44)+acd45(46)
      acd45(44)=acd45(16)*acd45(44)
      acd45(43)=-acd45(17)*acd45(43)
      acd45(46)=-acd45(14)*acd45(33)
      acd45(43)=acd45(43)+acd45(46)
      acd45(43)=acd45(43)*acd45(45)
      acd45(45)=acd45(14)**2*acd45(48)
      acd45(42)=acd45(43)+acd45(44)+acd45(42)+acd45(45)
      acd45(42)=acd45(2)*acd45(42)
      acd45(43)=acd45(14)*acd45(66)
      acd45(43)=acd45(68)+acd45(43)
      acd45(43)=acd45(16)*acd45(14)*acd45(43)
      acd45(40)=acd45(40)+acd45(43)+acd45(42)
      brack(ninjaidxt1mu0)=acd45(52)
      brack(ninjaidxt1mu2)=acd45(58)
      brack(ninjaidxt0mu0)=acd45(40)
      brack(ninjaidxt0mu2)=acd45(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d45h1_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d45h1l131_qp
