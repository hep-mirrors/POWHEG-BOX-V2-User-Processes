module     p0_gg_hhg_d49h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d49h1l131.f90
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
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd49
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd49(1)=dotproduct(k1,ninjaE3)
      acd49(2)=dotproduct(ninjaE3,spvak2k1)
      acd49(3)=dotproduct(ninjaE3,spvak2k5)
      acd49(4)=abb49(15)
      acd49(5)=dotproduct(k2,ninjaE3)
      acd49(6)=abb49(20)
      acd49(7)=dotproduct(ninjaA,ninjaE3)
      acd49(8)=dotproduct(ninjaE3,spvak1k5)
      acd49(9)=abb49(19)
      acd49(10)=dotproduct(ninjaE3,spvak2l4)
      acd49(11)=dotproduct(ninjaE3,spval4k5)
      acd49(12)=dotproduct(ninjaE3,spval4k1)
      acd49(13)=acd49(9)*acd49(10)
      acd49(14)=acd49(11)*acd49(13)
      acd49(15)=-acd49(2)*acd49(9)*acd49(8)
      acd49(14)=acd49(14)+acd49(15)
      acd49(14)=acd49(2)*acd49(14)
      acd49(15)=acd49(5)*acd49(6)
      acd49(16)=2.0_ki*acd49(7)-acd49(1)
      acd49(16)=acd49(4)*acd49(16)
      acd49(15)=acd49(15)+acd49(16)
      acd49(15)=acd49(2)*acd49(15)
      acd49(13)=acd49(12)*acd49(13)
      acd49(13)=acd49(13)+acd49(15)
      acd49(13)=acd49(3)*acd49(13)
      acd49(13)=acd49(14)+acd49(13)
      acd49(13)=acd49(3)*acd49(13)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd49(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(68) :: acd49
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd49(1)=dotproduct(k1,ninjaE3)
      acd49(2)=dotproduct(ninjaE3,spvak2k1)
      acd49(3)=dotproduct(ninjaE3,spvak2k5)
      acd49(4)=dotproduct(ninjaE4,spvak2k5)
      acd49(5)=abb49(15)
      acd49(6)=dotproduct(ninjaE4,spvak2k1)
      acd49(7)=dotproduct(k1,ninjaE4)
      acd49(8)=dotproduct(k2,ninjaE3)
      acd49(9)=abb49(20)
      acd49(10)=dotproduct(k2,ninjaE4)
      acd49(11)=dotproduct(ninjaA,ninjaE3)
      acd49(12)=dotproduct(ninjaA,ninjaE4)
      acd49(13)=dotproduct(ninjaA,spvak2k1)
      acd49(14)=dotproduct(ninjaA,spvak2k5)
      acd49(15)=dotproduct(ninjaE4,spvak1k5)
      acd49(16)=abb49(19)
      acd49(17)=dotproduct(ninjaE3,spvak1k5)
      acd49(18)=dotproduct(ninjaE3,spvak2l4)
      acd49(19)=dotproduct(ninjaE4,spval4k5)
      acd49(20)=dotproduct(ninjaE3,spval4k5)
      acd49(21)=dotproduct(ninjaE4,spvak2l4)
      acd49(22)=abb49(17)
      acd49(23)=dotproduct(ninjaE4,spval4k1)
      acd49(24)=dotproduct(ninjaE3,spval4k1)
      acd49(25)=abb49(18)
      acd49(26)=dotproduct(k1,ninjaA)
      acd49(27)=abb49(14)
      acd49(28)=dotproduct(k2,ninjaA)
      acd49(29)=dotproduct(ninjaA,ninjaA)
      acd49(30)=dotproduct(ninjaA,spvak2l4)
      acd49(31)=dotproduct(ninjaA,spval4k5)
      acd49(32)=dotproduct(ninjaA,spval4k1)
      acd49(33)=dotproduct(ninjaA,spvak1k5)
      acd49(34)=abb49(8)
      acd49(35)=abb49(12)
      acd49(36)=abb49(13)
      acd49(37)=abb49(16)
      acd49(38)=abb49(9)
      acd49(39)=abb49(10)
      acd49(40)=acd49(20)*acd49(21)
      acd49(41)=acd49(18)*acd49(19)
      acd49(42)=2.0_ki*acd49(6)
      acd49(42)=acd49(42)*acd49(17)
      acd49(40)=-acd49(42)+acd49(40)+acd49(41)
      acd49(41)=acd49(16)*acd49(40)
      acd49(42)=2.0_ki*acd49(4)
      acd49(43)=acd49(9)*acd49(8)
      acd49(44)=acd49(42)*acd49(43)
      acd49(45)=acd49(2)*acd49(16)
      acd49(46)=acd49(45)*acd49(15)
      acd49(44)=-acd49(46)+acd49(44)+acd49(22)
      acd49(46)=2.0_ki*acd49(5)
      acd49(47)=2.0_ki*acd49(11)
      acd49(48)=acd49(47)-acd49(1)
      acd49(49)=acd49(48)*acd49(4)
      acd49(50)=acd49(14)+acd49(49)
      acd49(50)=acd49(50)*acd49(46)
      acd49(41)=acd49(41)+acd49(50)+acd49(44)
      acd49(41)=acd49(2)*acd49(41)
      acd49(50)=-acd49(7)+2.0_ki*acd49(12)
      acd49(50)=acd49(50)*acd49(5)
      acd49(51)=acd49(9)*acd49(10)
      acd49(50)=acd49(50)+acd49(51)
      acd49(50)=acd49(50)*acd49(2)
      acd49(51)=acd49(43)*acd49(6)
      acd49(50)=acd49(50)+acd49(51)+acd49(25)
      acd49(51)=acd49(24)*acd49(21)
      acd49(52)=acd49(18)*acd49(23)
      acd49(51)=acd49(51)+acd49(52)
      acd49(52)=acd49(16)*acd49(51)
      acd49(53)=acd49(48)*acd49(6)
      acd49(53)=acd49(53)+acd49(13)
      acd49(54)=acd49(5)*acd49(53)
      acd49(52)=acd49(52)+acd49(54)+acd49(50)
      acd49(52)=acd49(3)*acd49(52)
      acd49(54)=acd49(20)*acd49(6)
      acd49(42)=acd49(42)*acd49(24)
      acd49(42)=acd49(54)+acd49(42)
      acd49(42)=acd49(42)*acd49(18)
      acd49(54)=acd49(16)*acd49(42)
      acd49(41)=acd49(52)+acd49(54)+acd49(41)
      acd49(41)=acd49(3)*acd49(41)
      acd49(52)=acd49(45)*acd49(17)
      acd49(54)=acd49(18)*acd49(20)
      acd49(55)=acd49(54)*acd49(16)
      acd49(52)=acd49(52)-acd49(55)
      acd49(52)=acd49(52)*acd49(2)
      acd49(55)=-acd49(4)*acd49(52)
      acd49(41)=acd49(55)+acd49(41)
      acd49(55)=acd49(20)*acd49(36)
      acd49(56)=acd49(18)*acd49(35)
      acd49(57)=acd49(47)*acd49(22)
      acd49(55)=acd49(57)+acd49(55)+acd49(56)
      acd49(48)=acd49(48)*acd49(5)
      acd49(56)=acd49(48)+acd49(43)
      acd49(57)=2.0_ki*acd49(14)
      acd49(58)=acd49(57)*acd49(56)
      acd49(59)=acd49(20)*acd49(30)
      acd49(60)=acd49(18)*acd49(31)
      acd49(59)=acd49(59)+acd49(60)
      acd49(60)=2.0_ki*acd49(13)
      acd49(61)=acd49(60)*acd49(17)
      acd49(61)=acd49(59)-acd49(61)
      acd49(62)=acd49(16)*acd49(61)
      acd49(63)=-acd49(33)*acd49(45)
      acd49(58)=acd49(63)+acd49(62)+acd49(58)+acd49(55)
      acd49(58)=acd49(2)*acd49(58)
      acd49(56)=acd49(56)*acd49(13)
      acd49(62)=acd49(24)*acd49(37)
      acd49(63)=acd49(1)*acd49(27)
      acd49(47)=acd49(47)*acd49(25)
      acd49(47)=acd49(56)+acd49(47)+acd49(62)+acd49(63)
      acd49(56)=acd49(24)*acd49(30)
      acd49(62)=acd49(18)*acd49(32)
      acd49(56)=acd49(56)+acd49(62)
      acd49(62)=acd49(16)*acd49(56)
      acd49(63)=acd49(9)*acd49(28)
      acd49(63)=acd49(63)+acd49(34)
      acd49(64)=acd49(29)-acd49(26)
      acd49(65)=acd49(64)+ninjaP
      acd49(66)=acd49(5)*acd49(65)
      acd49(66)=acd49(66)+acd49(63)
      acd49(66)=acd49(2)*acd49(66)
      acd49(62)=acd49(66)+acd49(62)+acd49(47)
      acd49(62)=acd49(3)*acd49(62)
      acd49(66)=acd49(18)*acd49(24)
      acd49(67)=acd49(57)*acd49(66)
      acd49(68)=acd49(54)*acd49(13)
      acd49(67)=acd49(68)+acd49(67)
      acd49(67)=acd49(16)*acd49(67)
      acd49(58)=acd49(62)+acd49(67)+acd49(58)
      acd49(58)=acd49(3)*acd49(58)
      acd49(52)=-acd49(14)*acd49(52)
      acd49(52)=acd49(52)+acd49(58)
      acd49(58)=acd49(2)*acd49(5)*acd49(3)**2
      acd49(40)=ninjaP*acd49(40)
      acd49(62)=acd49(30)*acd49(31)
      acd49(60)=-acd49(33)*acd49(60)
      acd49(40)=acd49(40)+acd49(62)+acd49(60)
      acd49(40)=acd49(16)*acd49(40)
      acd49(44)=ninjaP*acd49(44)
      acd49(60)=acd49(63)*acd49(57)
      acd49(49)=ninjaP*acd49(49)
      acd49(62)=acd49(14)*acd49(65)
      acd49(49)=acd49(49)+acd49(62)
      acd49(46)=acd49(49)*acd49(46)
      acd49(49)=acd49(31)*acd49(36)
      acd49(62)=acd49(22)*acd49(29)
      acd49(65)=acd49(30)*acd49(35)
      acd49(40)=acd49(40)+acd49(46)+acd49(60)+acd49(65)+acd49(62)+acd49(38)+acd&
      &49(49)+acd49(44)
      acd49(40)=acd49(2)*acd49(40)
      acd49(44)=ninjaP*acd49(50)
      acd49(46)=acd49(13)*acd49(64)
      acd49(49)=ninjaP*acd49(53)
      acd49(46)=acd49(46)+acd49(49)
      acd49(46)=acd49(5)*acd49(46)
      acd49(49)=ninjaP*acd49(51)
      acd49(50)=acd49(30)*acd49(32)
      acd49(49)=acd49(50)+acd49(49)
      acd49(49)=acd49(16)*acd49(49)
      acd49(50)=acd49(32)*acd49(37)
      acd49(51)=acd49(26)*acd49(27)
      acd49(53)=acd49(25)*acd49(29)
      acd49(60)=acd49(13)*acd49(63)
      acd49(44)=acd49(49)+acd49(46)+acd49(60)+acd49(53)+acd49(51)+acd49(39)+acd&
      &49(50)+acd49(44)
      acd49(44)=acd49(3)*acd49(44)
      acd49(46)=acd49(57)*acd49(47)
      acd49(47)=-acd49(13)*acd49(17)
      acd49(47)=acd49(47)+acd49(59)
      acd49(47)=acd49(13)*acd49(47)
      acd49(42)=ninjaP*acd49(42)
      acd49(49)=acd49(56)*acd49(57)
      acd49(42)=acd49(49)+acd49(47)+acd49(42)
      acd49(42)=acd49(16)*acd49(42)
      acd49(47)=acd49(13)*acd49(55)
      acd49(40)=acd49(44)+acd49(40)+acd49(42)+acd49(47)+acd49(46)
      acd49(40)=acd49(3)*acd49(40)
      acd49(42)=acd49(14)*acd49(43)
      acd49(42)=acd49(42)+acd49(55)
      acd49(42)=acd49(14)*acd49(42)
      acd49(43)=ninjaP*acd49(4)
      acd49(44)=acd49(54)*acd49(43)
      acd49(46)=acd49(14)*acd49(61)
      acd49(44)=acd49(44)+acd49(46)
      acd49(44)=acd49(16)*acd49(44)
      acd49(43)=-acd49(17)*acd49(43)
      acd49(46)=-acd49(14)*acd49(33)
      acd49(43)=acd49(43)+acd49(46)
      acd49(43)=acd49(43)*acd49(45)
      acd49(45)=acd49(14)**2*acd49(48)
      acd49(42)=acd49(43)+acd49(44)+acd49(42)+acd49(45)
      acd49(42)=acd49(2)*acd49(42)
      acd49(43)=acd49(14)*acd49(66)
      acd49(43)=acd49(68)+acd49(43)
      acd49(43)=acd49(16)*acd49(14)*acd49(43)
      acd49(40)=acd49(40)+acd49(43)+acd49(42)
      brack(ninjaidxt1mu0)=acd49(52)
      brack(ninjaidxt1mu2)=acd49(58)
      brack(ninjaidxt0mu0)=acd49(40)
      brack(ninjaidxt0mu2)=acd49(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d49h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h1
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
end module     p0_gg_hhg_d49h1l131
