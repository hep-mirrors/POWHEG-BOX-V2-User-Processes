module     p0_gg_hhg_d43h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d43h0l131.f90
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
      use p0_gg_hhg_abbrevd43h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd43
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
      use p0_gg_hhg_abbrevd43h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(64) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd43(1)=dotproduct(k2,ninjaE3)
      acd43(2)=dotproduct(ninjaE3,spvak2k5)
      acd43(3)=abb43(24)
      acd43(4)=dotproduct(ninjaE3,spval4k5)
      acd43(5)=abb43(35)
      acd43(6)=dotproduct(ninjaE3,spvak1k5)
      acd43(7)=dotproduct(ninjaE3,spvak2l4)
      acd43(8)=abb43(31)
      acd43(9)=dotproduct(k1,ninjaE3)
      acd43(10)=abb43(41)
      acd43(11)=abb43(36)
      acd43(12)=dotproduct(ninjaA,ninjaE3)
      acd43(13)=dotproduct(ninjaE3,spvak1l3)
      acd43(14)=abb43(10)
      acd43(15)=abb43(19)
      acd43(16)=abb43(11)
      acd43(17)=dotproduct(ninjaE3,spvak1k2)
      acd43(18)=abb43(29)
      acd43(19)=abb43(15)
      acd43(20)=abb43(37)
      acd43(21)=dotproduct(ninjaE3,spval3k2)
      acd43(22)=abb43(45)
      acd43(23)=dotproduct(k1,ninjaA)
      acd43(24)=dotproduct(k2,ninjaA)
      acd43(25)=dotproduct(ninjaA,spvak2k5)
      acd43(26)=dotproduct(ninjaA,spval4k5)
      acd43(27)=abb43(32)
      acd43(28)=abb43(40)
      acd43(29)=dotproduct(ninjaA,ninjaA)
      acd43(30)=abb43(25)
      acd43(31)=dotproduct(ninjaA,spvak1l3)
      acd43(32)=dotproduct(ninjaA,spvak1k5)
      acd43(33)=dotproduct(ninjaA,spvak2l4)
      acd43(34)=abb43(20)
      acd43(35)=abb43(26)
      acd43(36)=abb43(30)
      acd43(37)=abb43(33)
      acd43(38)=dotproduct(ninjaA,spvak1k2)
      acd43(39)=dotproduct(ninjaA,spval3k2)
      acd43(40)=abb43(17)
      acd43(41)=abb43(13)
      acd43(42)=abb43(18)
      acd43(43)=abb43(42)
      acd43(44)=abb43(23)
      acd43(45)=acd43(7)*acd43(6)
      acd43(46)=acd43(45)*acd43(8)
      acd43(47)=acd43(4)*acd43(1)
      acd43(48)=acd43(47)*acd43(5)
      acd43(49)=acd43(2)*acd43(1)
      acd43(50)=acd43(49)*acd43(3)
      acd43(46)=acd43(50)+acd43(46)+acd43(48)
      acd43(48)=acd43(12)*acd43(46)
      acd43(50)=acd43(11)*acd43(9)
      acd43(51)=acd43(15)*acd43(13)
      acd43(50)=acd43(50)+acd43(51)
      acd43(51)=acd43(47)*acd43(50)
      acd43(52)=acd43(10)*acd43(9)
      acd43(53)=acd43(14)*acd43(13)
      acd43(52)=acd43(52)+acd43(53)
      acd43(53)=acd43(49)*acd43(52)
      acd43(54)=acd43(20)*acd43(17)
      acd43(55)=acd43(22)*acd43(21)
      acd43(54)=acd43(54)+acd43(55)
      acd43(55)=acd43(16)*acd43(1)
      acd43(55)=acd43(55)+acd43(54)
      acd43(55)=acd43(45)*acd43(55)
      acd43(56)=acd43(18)*acd43(17)
      acd43(57)=acd43(2)**2
      acd43(58)=acd43(57)*acd43(56)
      acd43(59)=acd43(6)**2
      acd43(60)=acd43(19)*acd43(7)*acd43(59)
      acd43(48)=acd43(60)+acd43(58)+2.0_ki*acd43(48)+acd43(55)+acd43(53)+acd43(&
      &51)
      acd43(51)=acd43(24)*acd43(52)
      acd43(53)=acd43(25)*acd43(56)
      acd43(55)=2.0_ki*acd43(12)
      acd43(56)=-acd43(55)-acd43(9)
      acd43(56)=acd43(28)*acd43(56)
      acd43(58)=acd43(40)*acd43(13)
      acd43(60)=acd43(41)*acd43(6)
      acd43(61)=acd43(42)*acd43(17)
      acd43(62)=acd43(43)*acd43(21)
      acd43(51)=acd43(56)+acd43(62)+acd43(61)+acd43(60)+acd43(58)+2.0_ki*acd43(&
      &53)+acd43(51)
      acd43(51)=acd43(2)*acd43(51)
      acd43(53)=acd43(27)*acd43(9)
      acd43(56)=acd43(30)*acd43(55)
      acd43(58)=acd43(34)*acd43(13)
      acd43(60)=acd43(36)*acd43(6)
      acd43(53)=acd43(58)+acd43(60)+acd43(56)+acd43(53)
      acd43(53)=acd43(1)*acd43(53)
      acd43(56)=acd43(33)*acd43(6)
      acd43(58)=acd43(32)*acd43(7)
      acd43(56)=acd43(56)+acd43(58)
      acd43(54)=acd43(56)*acd43(54)
      acd43(58)=ninjaP+acd43(29)
      acd43(58)=acd43(46)*acd43(58)
      acd43(60)=acd43(8)*acd43(56)
      acd43(61)=acd43(3)*acd43(2)
      acd43(62)=acd43(5)*acd43(4)
      acd43(61)=acd43(61)+acd43(62)
      acd43(61)=acd43(24)*acd43(61)
      acd43(60)=acd43(61)+acd43(60)
      acd43(60)=acd43(12)*acd43(60)
      acd43(61)=acd43(39)*acd43(22)
      acd43(61)=acd43(44)+acd43(61)
      acd43(61)=acd43(45)*acd43(61)
      acd43(62)=acd43(50)*acd43(24)*acd43(4)
      acd43(56)=acd43(1)*acd43(56)
      acd43(63)=acd43(24)*acd43(45)
      acd43(56)=acd43(63)+acd43(56)
      acd43(56)=acd43(16)*acd43(56)
      acd43(52)=acd43(1)*acd43(52)
      acd43(55)=acd43(55)*acd43(1)
      acd43(63)=acd43(3)*acd43(55)
      acd43(52)=acd43(63)+acd43(52)
      acd43(52)=acd43(25)*acd43(52)
      acd43(63)=acd43(32)*acd43(45)
      acd43(59)=acd43(33)*acd43(59)
      acd43(59)=2.0_ki*acd43(63)+acd43(59)
      acd43(59)=acd43(19)*acd43(59)
      acd43(50)=acd43(1)*acd43(50)
      acd43(55)=acd43(5)*acd43(55)
      acd43(50)=acd43(55)+acd43(50)
      acd43(50)=acd43(26)*acd43(50)
      acd43(55)=acd43(10)*acd43(49)
      acd43(63)=acd43(11)*acd43(47)
      acd43(55)=acd43(55)+acd43(63)
      acd43(55)=acd43(23)*acd43(55)
      acd43(63)=acd43(14)*acd43(49)
      acd43(64)=acd43(15)*acd43(47)
      acd43(63)=acd43(63)+acd43(64)
      acd43(63)=acd43(31)*acd43(63)
      acd43(45)=acd43(20)*acd43(45)
      acd43(57)=acd43(18)*acd43(57)
      acd43(45)=acd43(45)+acd43(57)
      acd43(45)=acd43(38)*acd43(45)
      acd43(49)=acd43(35)*acd43(49)
      acd43(47)=acd43(37)*acd43(47)
      acd43(45)=acd43(47)+acd43(49)+acd43(45)+acd43(63)+acd43(55)+acd43(50)+acd&
      &43(59)+acd43(52)+acd43(56)+2.0_ki*acd43(60)+acd43(62)+acd43(61)+acd43(58&
      &)+acd43(54)+acd43(51)+acd43(53)
      brack(ninjaidxt1mu0)=acd43(48)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd43(45)
      brack(ninjaidxt0mu2)=acd43(46)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d43h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h0
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
end module     p0_gg_hhg_d43h0l131
