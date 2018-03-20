module     p0_gg_hhg_d25h4l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d25h4l131_qp.f90
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
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd25
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd25
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd25(1)=dotproduct(k1,ninjaE3)
      acd25(2)=abb25(47)
      acd25(3)=dotproduct(k2,ninjaE3)
      acd25(4)=abb25(43)
      acd25(5)=dotproduct(ninjaA,ninjaE3)
      acd25(6)=dotproduct(ninjaE3,spvak1k2)
      acd25(7)=abb25(10)
      acd25(8)=dotproduct(ninjaE3,spvak1k5)
      acd25(9)=abb25(14)
      acd25(10)=dotproduct(ninjaE3,spvak1l3)
      acd25(11)=abb25(18)
      acd25(12)=dotproduct(ninjaE3,spval3k2)
      acd25(13)=abb25(23)
      acd25(14)=dotproduct(ninjaE3,spvak1l4)
      acd25(15)=abb25(37)
      acd25(16)=dotproduct(ninjaE3,spval4k2)
      acd25(17)=abb25(27)
      acd25(18)=abb25(19)
      acd25(19)=abb25(55)
      acd25(20)=abb25(33)
      acd25(21)=abb25(22)
      acd25(22)=abb25(26)
      acd25(23)=abb25(25)
      acd25(24)=abb25(13)
      acd25(25)=abb25(15)
      acd25(26)=abb25(21)
      acd25(27)=abb25(31)
      acd25(28)=abb25(34)
      acd25(29)=dotproduct(ninjaE3,spvak5k2)
      acd25(30)=abb25(17)
      acd25(31)=abb25(35)
      acd25(32)=abb25(46)
      acd25(33)=dotproduct(k1,ninjaA)
      acd25(34)=dotproduct(k2,ninjaA)
      acd25(35)=dotproduct(ninjaA,ninjaA)
      acd25(36)=dotproduct(ninjaA,spval3k2)
      acd25(37)=abb25(48)
      acd25(38)=dotproduct(ninjaA,spvak1k2)
      acd25(39)=dotproduct(ninjaA,spvak1l3)
      acd25(40)=dotproduct(ninjaA,spvak1l4)
      acd25(41)=abb25(39)
      acd25(42)=dotproduct(ninjaA,spvak1k5)
      acd25(43)=dotproduct(ninjaA,spval4k2)
      acd25(44)=abb25(11)
      acd25(45)=dotproduct(ninjaA,spvak5k2)
      acd25(46)=abb25(30)
      acd25(47)=abb25(12)
      acd25(48)=abb25(16)
      acd25(49)=abb25(36)
      acd25(50)=abb25(52)
      acd25(51)=abb25(28)
      acd25(52)=abb25(53)
      acd25(53)=acd25(4)*acd25(3)
      acd25(54)=acd25(9)*acd25(8)
      acd25(55)=acd25(11)*acd25(10)
      acd25(56)=acd25(13)*acd25(12)
      acd25(57)=acd25(15)*acd25(14)
      acd25(58)=acd25(17)*acd25(16)
      acd25(53)=acd25(53)+acd25(54)+acd25(55)+acd25(56)+acd25(57)+acd25(58)
      acd25(54)=acd25(7)*acd25(6)
      acd25(54)=acd25(54)+acd25(53)
      acd25(55)=-acd25(1)+4.0_ki*acd25(5)
      acd25(55)=acd25(55)*acd25(2)
      acd25(56)=acd25(55)+acd25(54)
      acd25(54)=acd25(5)*acd25(54)
      acd25(57)=acd25(5)**2
      acd25(58)=-acd25(1)*acd25(5)
      acd25(57)=2.0_ki*acd25(57)+acd25(58)
      acd25(57)=acd25(2)*acd25(57)
      acd25(54)=acd25(57)+acd25(54)
      acd25(57)=acd25(27)*acd25(16)
      acd25(58)=acd25(20)*acd25(3)
      acd25(59)=acd25(24)*acd25(8)
      acd25(60)=acd25(25)*acd25(10)
      acd25(61)=acd25(26)*acd25(12)
      acd25(58)=acd25(57)+acd25(61)+acd25(60)+acd25(59)+acd25(58)
      acd25(58)=acd25(6)*acd25(58)
      acd25(59)=acd25(31)*acd25(16)
      acd25(60)=acd25(21)*acd25(3)
      acd25(61)=acd25(28)*acd25(8)
      acd25(60)=acd25(59)+acd25(61)+acd25(60)
      acd25(60)=acd25(10)*acd25(60)
      acd25(61)=acd25(18)*acd25(3)
      acd25(62)=acd25(19)*acd25(12)
      acd25(61)=acd25(61)+acd25(62)
      acd25(62)=acd25(1)*acd25(61)
      acd25(63)=acd25(22)*acd25(3)
      acd25(64)=acd25(14)*acd25(63)
      acd25(65)=acd25(30)*acd25(29)
      acd25(66)=acd25(8)*acd25(65)
      acd25(67)=acd25(32)*acd25(14)
      acd25(68)=acd25(12)*acd25(67)
      acd25(69)=acd25(23)*acd25(6)**2
      acd25(54)=acd25(69)+acd25(68)+acd25(66)+acd25(64)+2.0_ki*acd25(54)+acd25(&
      &58)+acd25(60)+acd25(62)
      acd25(53)=acd25(55)+acd25(53)
      acd25(55)=ninjaP+acd25(35)
      acd25(53)=acd25(55)*acd25(53)
      acd25(58)=acd25(34)*acd25(4)
      acd25(60)=acd25(39)*acd25(11)
      acd25(62)=acd25(36)*acd25(13)
      acd25(64)=acd25(42)*acd25(9)
      acd25(58)=acd25(44)+acd25(64)+acd25(62)+acd25(60)+acd25(58)
      acd25(60)=2.0_ki*acd25(5)
      acd25(58)=acd25(60)*acd25(58)
      acd25(62)=acd25(32)*acd25(12)
      acd25(64)=acd25(15)*acd25(60)
      acd25(62)=acd25(62)+acd25(64)+acd25(63)
      acd25(62)=acd25(40)*acd25(62)
      acd25(63)=acd25(27)*acd25(6)
      acd25(64)=acd25(31)*acd25(10)
      acd25(66)=acd25(17)*acd25(60)
      acd25(63)=acd25(64)+acd25(66)+acd25(63)
      acd25(63)=acd25(43)*acd25(63)
      acd25(64)=acd25(23)*acd25(6)
      acd25(57)=2.0_ki*acd25(64)+acd25(57)
      acd25(57)=acd25(38)*acd25(57)
      acd25(64)=acd25(18)*acd25(34)
      acd25(66)=acd25(19)*acd25(36)
      acd25(64)=acd25(37)+acd25(66)+acd25(64)
      acd25(64)=acd25(1)*acd25(64)
      acd25(55)=acd25(6)*acd25(55)
      acd25(66)=acd25(38)*acd25(60)
      acd25(55)=acd25(66)+acd25(55)
      acd25(55)=acd25(7)*acd25(55)
      acd25(66)=acd25(38)*acd25(3)
      acd25(68)=acd25(34)*acd25(6)
      acd25(66)=acd25(66)+acd25(68)
      acd25(66)=acd25(20)*acd25(66)
      acd25(68)=acd25(34)*acd25(10)
      acd25(69)=acd25(39)*acd25(3)
      acd25(68)=acd25(68)+acd25(69)
      acd25(68)=acd25(21)*acd25(68)
      acd25(69)=acd25(38)*acd25(8)
      acd25(70)=acd25(42)*acd25(6)
      acd25(69)=acd25(69)+acd25(70)
      acd25(69)=acd25(24)*acd25(69)
      acd25(70)=acd25(38)*acd25(10)
      acd25(71)=acd25(39)*acd25(6)
      acd25(70)=acd25(70)+acd25(71)
      acd25(70)=acd25(25)*acd25(70)
      acd25(71)=acd25(38)*acd25(12)
      acd25(72)=acd25(36)*acd25(6)
      acd25(71)=acd25(71)+acd25(72)
      acd25(71)=acd25(26)*acd25(71)
      acd25(72)=acd25(39)*acd25(8)
      acd25(73)=acd25(42)*acd25(10)
      acd25(72)=acd25(72)+acd25(73)
      acd25(72)=acd25(28)*acd25(72)
      acd25(60)=-acd25(2)*acd25(60)
      acd25(60)=acd25(60)+acd25(61)
      acd25(60)=acd25(33)*acd25(60)
      acd25(61)=acd25(45)*acd25(30)
      acd25(61)=acd25(47)+acd25(61)
      acd25(61)=acd25(8)*acd25(61)
      acd25(73)=acd25(22)*acd25(34)
      acd25(73)=acd25(51)+acd25(73)
      acd25(73)=acd25(14)*acd25(73)
      acd25(65)=acd25(42)*acd25(65)
      acd25(59)=acd25(39)*acd25(59)
      acd25(67)=acd25(36)*acd25(67)
      acd25(74)=acd25(41)*acd25(3)
      acd25(75)=acd25(46)*acd25(6)
      acd25(76)=acd25(48)*acd25(10)
      acd25(77)=acd25(49)*acd25(29)
      acd25(78)=acd25(50)*acd25(12)
      acd25(79)=acd25(52)*acd25(16)
      acd25(53)=acd25(79)+acd25(78)+acd25(77)+acd25(76)+acd25(75)+acd25(74)+acd&
      &25(63)+acd25(62)+acd25(60)+acd25(67)+acd25(59)+acd25(65)+acd25(72)+acd25&
      &(71)+acd25(70)+acd25(69)+acd25(68)+acd25(66)+acd25(55)+acd25(58)+acd25(6&
      &4)+acd25(57)+acd25(73)+acd25(53)+acd25(61)
      brack(ninjaidxt1mu0)=acd25(54)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd25(53)
      brack(ninjaidxt0mu2)=acd25(56)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d25h4_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d25h4l131_qp
