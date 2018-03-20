module     p0_gg_hhg_d17h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d17h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(82) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k2,ninjaE3)
      acd17(2)=abb17(25)
      acd17(3)=dotproduct(k5,ninjaE3)
      acd17(4)=abb17(12)
      acd17(5)=dotproduct(ninjaA,ninjaE3)
      acd17(6)=dotproduct(ninjaE3,spvak1k5)
      acd17(7)=abb17(19)
      acd17(8)=dotproduct(ninjaE3,spval3k5)
      acd17(9)=abb17(16)
      acd17(10)=dotproduct(ninjaE3,spvak2k5)
      acd17(11)=abb17(28)
      acd17(12)=dotproduct(ninjaE3,spvak2l4)
      acd17(13)=abb17(33)
      acd17(14)=dotproduct(ninjaE3,spvak2l3)
      acd17(15)=abb17(34)
      acd17(16)=dotproduct(ninjaE3,spval4k5)
      acd17(17)=abb17(54)
      acd17(18)=abb17(17)
      acd17(19)=abb17(41)
      acd17(20)=abb17(14)
      acd17(21)=abb17(53)
      acd17(22)=abb17(57)
      acd17(23)=abb17(11)
      acd17(24)=abb17(13)
      acd17(25)=dotproduct(ninjaE3,spvak2k1)
      acd17(26)=abb17(23)
      acd17(27)=abb17(47)
      acd17(28)=abb17(29)
      acd17(29)=abb17(52)
      acd17(30)=dotproduct(ninjaE3,spvak1k2)
      acd17(31)=abb17(15)
      acd17(32)=abb17(48)
      acd17(33)=abb17(40)
      acd17(34)=abb17(36)
      acd17(35)=dotproduct(k2,ninjaA)
      acd17(36)=dotproduct(k5,ninjaA)
      acd17(37)=dotproduct(ninjaA,ninjaA)
      acd17(38)=dotproduct(ninjaA,spval3k5)
      acd17(39)=dotproduct(ninjaA,spvak2k5)
      acd17(40)=dotproduct(ninjaA,spval4k5)
      acd17(41)=abb17(31)
      acd17(42)=dotproduct(ninjaA,spvak2l3)
      acd17(43)=abb17(42)
      acd17(44)=dotproduct(ninjaA,spvak1k5)
      acd17(45)=dotproduct(ninjaA,spvak2l4)
      acd17(46)=abb17(39)
      acd17(47)=dotproduct(ninjaA,spvak1k2)
      acd17(48)=dotproduct(ninjaA,spvak2k1)
      acd17(49)=abb17(20)
      acd17(50)=abb17(43)
      acd17(51)=abb17(22)
      acd17(52)=abb17(26)
      acd17(53)=abb17(58)
      acd17(54)=abb17(55)
      acd17(55)=abb17(51)
      acd17(56)=acd17(2)*acd17(1)
      acd17(57)=acd17(7)*acd17(6)
      acd17(58)=acd17(9)*acd17(8)
      acd17(59)=acd17(13)*acd17(12)
      acd17(60)=acd17(15)*acd17(14)
      acd17(61)=acd17(17)*acd17(16)
      acd17(56)=acd17(56)+acd17(57)+acd17(58)+acd17(59)+acd17(60)+acd17(61)
      acd17(57)=acd17(11)*acd17(10)
      acd17(57)=acd17(57)+acd17(56)
      acd17(58)=acd17(3)+4.0_ki*acd17(5)
      acd17(58)=acd17(58)*acd17(4)
      acd17(59)=-acd17(58)+acd17(57)
      acd17(57)=acd17(5)*acd17(57)
      acd17(60)=acd17(5)**2
      acd17(61)=-acd17(3)*acd17(5)
      acd17(60)=-2.0_ki*acd17(60)+acd17(61)
      acd17(60)=acd17(4)*acd17(60)
      acd17(57)=acd17(60)+acd17(57)
      acd17(60)=acd17(32)*acd17(12)
      acd17(61)=acd17(30)*acd17(31)
      acd17(60)=acd17(60)+acd17(61)
      acd17(61)=acd17(20)*acd17(1)
      acd17(62)=acd17(24)*acd17(6)
      acd17(63)=acd17(27)*acd17(8)
      acd17(64)=acd17(33)*acd17(14)
      acd17(61)=acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)
      acd17(61)=acd17(10)*acd17(61)
      acd17(62)=acd17(28)*acd17(12)
      acd17(63)=acd17(19)*acd17(1)
      acd17(64)=acd17(23)*acd17(6)
      acd17(63)=acd17(62)+acd17(64)+acd17(63)
      acd17(63)=acd17(8)*acd17(63)
      acd17(64)=acd17(18)*acd17(1)
      acd17(65)=acd17(22)*acd17(14)
      acd17(64)=acd17(64)+acd17(65)
      acd17(65)=acd17(3)*acd17(64)
      acd17(66)=acd17(21)*acd17(1)
      acd17(67)=acd17(16)*acd17(66)
      acd17(68)=acd17(26)*acd17(25)*acd17(6)
      acd17(69)=acd17(34)*acd17(16)
      acd17(70)=acd17(14)*acd17(69)
      acd17(71)=acd17(29)*acd17(10)**2
      acd17(57)=acd17(71)+acd17(70)+acd17(68)+acd17(67)+2.0_ki*acd17(57)+acd17(&
      &61)+acd17(63)+acd17(65)
      acd17(56)=-acd17(58)+acd17(56)
      acd17(58)=ninjaP+acd17(37)
      acd17(56)=acd17(58)*acd17(56)
      acd17(61)=acd17(35)*acd17(2)
      acd17(63)=acd17(38)*acd17(9)
      acd17(65)=acd17(42)*acd17(15)
      acd17(67)=acd17(44)*acd17(7)
      acd17(61)=acd17(46)+acd17(67)+acd17(65)+acd17(63)+acd17(61)
      acd17(63)=2.0_ki*acd17(5)
      acd17(61)=acd17(63)*acd17(61)
      acd17(65)=acd17(34)*acd17(14)
      acd17(67)=acd17(17)*acd17(63)
      acd17(65)=acd17(65)+acd17(67)+acd17(66)
      acd17(65)=acd17(40)*acd17(65)
      acd17(66)=acd17(28)*acd17(8)
      acd17(67)=acd17(32)*acd17(10)
      acd17(68)=acd17(13)*acd17(63)
      acd17(66)=acd17(67)+acd17(68)+acd17(66)
      acd17(66)=acd17(45)*acd17(66)
      acd17(67)=acd17(25)*acd17(44)
      acd17(68)=acd17(48)*acd17(6)
      acd17(67)=acd17(68)+acd17(67)
      acd17(67)=acd17(26)*acd17(67)
      acd17(68)=acd17(18)*acd17(35)
      acd17(70)=acd17(22)*acd17(42)
      acd17(68)=acd17(43)+acd17(70)+acd17(68)
      acd17(68)=acd17(3)*acd17(68)
      acd17(70)=acd17(29)*acd17(10)
      acd17(60)=2.0_ki*acd17(70)+acd17(60)
      acd17(60)=acd17(39)*acd17(60)
      acd17(58)=acd17(10)*acd17(58)
      acd17(70)=acd17(39)*acd17(63)
      acd17(58)=acd17(70)+acd17(58)
      acd17(58)=acd17(11)*acd17(58)
      acd17(70)=acd17(35)*acd17(8)
      acd17(71)=acd17(38)*acd17(1)
      acd17(70)=acd17(70)+acd17(71)
      acd17(70)=acd17(19)*acd17(70)
      acd17(71)=acd17(39)*acd17(1)
      acd17(72)=acd17(35)*acd17(10)
      acd17(71)=acd17(71)+acd17(72)
      acd17(71)=acd17(20)*acd17(71)
      acd17(72)=acd17(38)*acd17(6)
      acd17(73)=acd17(44)*acd17(8)
      acd17(72)=acd17(72)+acd17(73)
      acd17(72)=acd17(23)*acd17(72)
      acd17(73)=acd17(39)*acd17(6)
      acd17(74)=acd17(44)*acd17(10)
      acd17(73)=acd17(73)+acd17(74)
      acd17(73)=acd17(24)*acd17(73)
      acd17(74)=acd17(39)*acd17(8)
      acd17(75)=acd17(38)*acd17(10)
      acd17(74)=acd17(74)+acd17(75)
      acd17(74)=acd17(27)*acd17(74)
      acd17(75)=acd17(39)*acd17(14)
      acd17(76)=acd17(42)*acd17(10)
      acd17(75)=acd17(75)+acd17(76)
      acd17(75)=acd17(33)*acd17(75)
      acd17(63)=-acd17(4)*acd17(63)
      acd17(63)=acd17(63)+acd17(64)
      acd17(63)=acd17(36)*acd17(63)
      acd17(64)=acd17(47)*acd17(31)
      acd17(64)=acd17(51)+acd17(64)
      acd17(64)=acd17(10)*acd17(64)
      acd17(76)=acd17(21)*acd17(35)
      acd17(76)=acd17(55)+acd17(76)
      acd17(76)=acd17(16)*acd17(76)
      acd17(62)=acd17(38)*acd17(62)
      acd17(69)=acd17(42)*acd17(69)
      acd17(77)=acd17(41)*acd17(1)
      acd17(78)=acd17(49)*acd17(6)
      acd17(79)=acd17(50)*acd17(8)
      acd17(80)=acd17(52)*acd17(25)
      acd17(81)=acd17(53)*acd17(12)
      acd17(82)=acd17(54)*acd17(14)
      acd17(56)=acd17(82)+acd17(81)+acd17(80)+acd17(79)+acd17(78)+acd17(77)+acd&
      &17(66)+acd17(65)+acd17(63)+acd17(69)+acd17(75)+acd17(62)+acd17(74)+acd17&
      &(73)+acd17(72)+acd17(71)+acd17(70)+acd17(58)+acd17(61)+acd17(60)+acd17(6&
      &8)+acd17(67)+acd17(76)+acd17(56)+acd17(64)
      brack(ninjaidxt1mu0)=acd17(57)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd17(56)
      brack(ninjaidxt0mu2)=acd17(59)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d17h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd17h0
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
end module     p0_gg_hhg_d17h0l131
