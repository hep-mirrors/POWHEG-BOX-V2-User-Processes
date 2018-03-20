module     p0_gg_hhg_d63h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d63h0l131.f90
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
      use p0_gg_hhg_abbrevd63h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd63
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
      use p0_gg_hhg_abbrevd63h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(64) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd63(1)=dotproduct(k2,ninjaE3)
      acd63(2)=dotproduct(ninjaE3,spvak1k5)
      acd63(3)=abb63(43)
      acd63(4)=dotproduct(ninjaE3,spvak2k5)
      acd63(5)=abb63(34)
      acd63(6)=dotproduct(ninjaE3,spval4k5)
      acd63(7)=abb63(48)
      acd63(8)=abb63(26)
      acd63(9)=dotproduct(ninjaE3,spvak2l4)
      acd63(10)=abb63(15)
      acd63(11)=dotproduct(ninjaE3,spvak2k1)
      acd63(12)=abb63(40)
      acd63(13)=dotproduct(ninjaA,ninjaE3)
      acd63(14)=abb63(25)
      acd63(15)=dotproduct(ninjaE3,spvak1l4)
      acd63(16)=abb63(10)
      acd63(17)=abb63(30)
      acd63(18)=abb63(28)
      acd63(19)=abb63(19)
      acd63(20)=abb63(37)
      acd63(21)=dotproduct(ninjaE3,spval4k2)
      acd63(22)=abb63(8)
      acd63(23)=abb63(39)
      acd63(24)=abb63(46)
      acd63(25)=dotproduct(ninjaE3,spvak1k2)
      acd63(26)=abb63(12)
      acd63(27)=dotproduct(k2,ninjaA)
      acd63(28)=dotproduct(ninjaA,ninjaA)
      acd63(29)=dotproduct(ninjaA,spvak1k5)
      acd63(30)=dotproduct(ninjaA,spvak2k5)
      acd63(31)=dotproduct(ninjaA,spval4k5)
      acd63(32)=abb63(32)
      acd63(33)=dotproduct(ninjaA,spvak1l4)
      acd63(34)=dotproduct(ninjaA,spvak2l4)
      acd63(35)=dotproduct(ninjaA,spvak2k1)
      acd63(36)=abb63(20)
      acd63(37)=abb63(13)
      acd63(38)=abb63(17)
      acd63(39)=abb63(41)
      acd63(40)=abb63(44)
      acd63(41)=abb63(33)
      acd63(42)=abb63(47)
      acd63(43)=dotproduct(ninjaA,spval4k2)
      acd63(44)=dotproduct(ninjaA,spvak1k2)
      acd63(45)=abb63(14)
      acd63(46)=abb63(9)
      acd63(47)=abb63(49)
      acd63(48)=abb63(23)
      acd63(49)=abb63(42)
      acd63(50)=abb63(31)
      acd63(51)=abb63(38)
      acd63(52)=acd63(11)*acd63(12)
      acd63(53)=acd63(9)*acd63(10)
      acd63(52)=acd63(52)+acd63(53)
      acd63(53)=acd63(4)*acd63(8)
      acd63(54)=acd63(1)*acd63(3)
      acd63(53)=acd63(54)+acd63(53)+acd63(52)
      acd63(53)=acd63(2)*acd63(53)
      acd63(54)=acd63(6)*acd63(7)
      acd63(55)=acd63(4)*acd63(5)
      acd63(55)=acd63(54)+acd63(55)
      acd63(55)=acd63(1)*acd63(55)
      acd63(53)=acd63(55)+acd63(53)
      acd63(55)=acd63(9)*acd63(17)
      acd63(56)=acd63(11)*acd63(18)
      acd63(57)=acd63(15)*acd63(16)
      acd63(58)=2.0_ki*acd63(13)
      acd63(59)=acd63(3)*acd63(58)
      acd63(60)=acd63(4)*acd63(14)
      acd63(55)=acd63(60)+acd63(59)+acd63(57)+acd63(56)+acd63(55)
      acd63(55)=acd63(1)*acd63(55)
      acd63(56)=-acd63(11)*acd63(24)
      acd63(57)=acd63(23)*acd63(9)
      acd63(56)=acd63(56)+acd63(57)
      acd63(56)=acd63(21)*acd63(56)
      acd63(52)=acd63(52)*acd63(58)
      acd63(57)=acd63(21)*acd63(22)
      acd63(59)=acd63(8)*acd63(58)
      acd63(57)=acd63(57)+acd63(59)
      acd63(57)=acd63(4)*acd63(57)
      acd63(52)=acd63(55)+acd63(57)+acd63(52)+acd63(56)
      acd63(52)=acd63(2)*acd63(52)
      acd63(54)=acd63(58)*acd63(54)
      acd63(55)=acd63(15)*acd63(19)
      acd63(56)=acd63(5)*acd63(58)
      acd63(55)=acd63(55)+acd63(56)
      acd63(55)=acd63(4)*acd63(55)
      acd63(56)=acd63(15)*acd63(6)
      acd63(57)=acd63(20)*acd63(56)
      acd63(54)=acd63(55)+acd63(57)+acd63(54)
      acd63(54)=acd63(1)*acd63(54)
      acd63(55)=acd63(26)*acd63(25)*acd63(4)**2
      acd63(52)=acd63(52)+acd63(55)+acd63(54)
      acd63(54)=acd63(18)*acd63(35)
      acd63(55)=acd63(17)*acd63(34)
      acd63(57)=acd63(16)*acd63(33)
      acd63(59)=acd63(30)*acd63(14)
      acd63(60)=acd63(28)+ninjaP
      acd63(61)=acd63(3)*acd63(60)
      acd63(54)=acd63(61)+acd63(59)+acd63(57)+acd63(55)+acd63(36)+acd63(54)
      acd63(54)=acd63(1)*acd63(54)
      acd63(55)=acd63(12)*acd63(35)
      acd63(57)=acd63(10)*acd63(34)
      acd63(59)=acd63(8)*acd63(30)
      acd63(61)=acd63(27)*acd63(3)
      acd63(55)=acd63(61)+acd63(59)+acd63(57)+acd63(40)+acd63(55)
      acd63(55)=acd63(55)*acd63(58)
      acd63(57)=-acd63(24)*acd63(35)
      acd63(59)=acd63(23)*acd63(34)
      acd63(61)=acd63(30)*acd63(22)
      acd63(57)=acd63(61)+acd63(59)+acd63(46)+acd63(57)
      acd63(57)=acd63(21)*acd63(57)
      acd63(59)=-acd63(24)*acd63(43)
      acd63(61)=acd63(12)*acd63(60)
      acd63(62)=acd63(27)*acd63(18)
      acd63(59)=acd63(62)+acd63(61)+acd63(49)+acd63(59)
      acd63(59)=acd63(11)*acd63(59)
      acd63(61)=acd63(23)*acd63(43)
      acd63(62)=acd63(10)*acd63(60)
      acd63(63)=acd63(27)*acd63(17)
      acd63(61)=acd63(63)+acd63(62)-acd63(48)+acd63(61)
      acd63(61)=acd63(9)*acd63(61)
      acd63(62)=acd63(22)*acd63(43)
      acd63(63)=acd63(8)*acd63(60)
      acd63(64)=acd63(27)*acd63(14)
      acd63(62)=acd63(64)+acd63(63)+acd63(45)+acd63(62)
      acd63(62)=acd63(4)*acd63(62)
      acd63(63)=acd63(27)*acd63(16)
      acd63(63)=acd63(47)+acd63(63)
      acd63(63)=acd63(15)*acd63(63)
      acd63(54)=acd63(54)+acd63(62)+acd63(55)+acd63(63)+acd63(61)+acd63(57)+acd&
      &63(59)
      acd63(54)=acd63(2)*acd63(54)
      acd63(55)=acd63(20)*acd63(31)
      acd63(57)=acd63(30)*acd63(19)
      acd63(59)=acd63(29)*acd63(16)
      acd63(55)=acd63(59)+acd63(57)+acd63(38)+acd63(55)
      acd63(55)=acd63(15)*acd63(55)
      acd63(57)=acd63(7)*acd63(31)
      acd63(59)=acd63(5)*acd63(30)
      acd63(61)=acd63(29)*acd63(3)
      acd63(57)=acd63(61)+acd63(59)+acd63(32)+acd63(57)
      acd63(57)=acd63(57)*acd63(58)
      acd63(59)=acd63(19)*acd63(33)
      acd63(61)=acd63(5)*acd63(60)
      acd63(62)=acd63(29)*acd63(14)
      acd63(59)=acd63(62)+acd63(61)+acd63(37)+acd63(59)
      acd63(59)=acd63(4)*acd63(59)
      acd63(61)=acd63(20)*acd63(33)
      acd63(60)=acd63(7)*acd63(60)
      acd63(60)=acd63(60)-acd63(39)+acd63(61)
      acd63(60)=acd63(6)*acd63(60)
      acd63(61)=acd63(11)*acd63(29)
      acd63(62)=acd63(18)*acd63(61)
      acd63(63)=acd63(9)*acd63(29)
      acd63(64)=acd63(17)*acd63(63)
      acd63(55)=acd63(59)+acd63(57)+acd63(55)+acd63(64)+acd63(60)+acd63(62)
      acd63(55)=acd63(1)*acd63(55)
      acd63(57)=acd63(30)*acd63(25)
      acd63(59)=acd63(4)*acd63(44)
      acd63(57)=acd63(59)+2.0_ki*acd63(57)
      acd63(57)=acd63(26)*acd63(57)
      acd63(59)=acd63(27)*acd63(5)
      acd63(60)=acd63(29)*acd63(8)
      acd63(59)=acd63(60)+acd63(41)+acd63(59)
      acd63(59)=acd63(59)*acd63(58)
      acd63(60)=acd63(29)*acd63(22)
      acd63(60)=acd63(39)+acd63(60)
      acd63(60)=acd63(21)*acd63(60)
      acd63(62)=acd63(27)*acd63(19)
      acd63(62)=acd63(50)+acd63(62)
      acd63(62)=acd63(15)*acd63(62)
      acd63(57)=acd63(59)+acd63(62)+acd63(60)+acd63(57)
      acd63(57)=acd63(4)*acd63(57)
      acd63(59)=acd63(27)*acd63(7)
      acd63(59)=acd63(42)+acd63(59)
      acd63(59)=acd63(6)*acd63(59)
      acd63(60)=acd63(12)*acd63(61)
      acd63(62)=acd63(10)*acd63(63)
      acd63(59)=acd63(62)+acd63(59)+acd63(60)
      acd63(58)=acd63(59)*acd63(58)
      acd63(59)=-acd63(24)*acd63(61)
      acd63(60)=acd63(23)*acd63(63)
      acd63(59)=acd63(59)+acd63(60)
      acd63(59)=acd63(21)*acd63(59)
      acd63(60)=acd63(27)*acd63(20)
      acd63(60)=acd63(51)+acd63(60)
      acd63(56)=acd63(60)*acd63(56)
      acd63(54)=acd63(54)+acd63(55)+acd63(57)+acd63(58)+acd63(56)+acd63(59)
      brack(ninjaidxt1mu0)=acd63(52)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd63(54)
      brack(ninjaidxt0mu2)=acd63(53)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d63h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd63h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2-k4
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
end module     p0_gg_hhg_d63h0l131
