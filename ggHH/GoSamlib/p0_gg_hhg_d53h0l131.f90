module     p0_gg_hhg_d53h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d53h0l131.f90
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
      use p0_gg_hhg_abbrevd53h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd53(1)=dotproduct(k2,ninjaE3)
      acd53(2)=dotproduct(ninjaE3,spvak2k5)
      acd53(3)=dotproduct(ninjaE3,spvak1k5)
      acd53(4)=abb53(24)
      acd53(5)=dotproduct(ninjaE3,spvak2l4)
      acd53(6)=dotproduct(ninjaE3,spval4k5)
      acd53(7)=abb53(12)
      acd53(8)=dotproduct(ninjaA,ninjaE3)
      acd53(9)=dotproduct(ninjaE3,spvak1k2)
      acd53(10)=abb53(9)
      acd53(11)=acd53(5)*acd53(6)*acd53(7)
      acd53(12)=acd53(1)*acd53(2)*acd53(4)
      acd53(11)=acd53(11)+acd53(12)
      acd53(11)=acd53(1)*acd53(3)*acd53(11)
      acd53(12)=acd53(8)*acd53(9)*acd53(10)*acd53(2)**2
      acd53(11)=2.0_ki*acd53(12)+acd53(11)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd53(11)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd53h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(65) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd53(1)=dotproduct(k2,ninjaE3)
      acd53(2)=dotproduct(ninjaE3,spvak1k5)
      acd53(3)=dotproduct(ninjaE4,spvak2k5)
      acd53(4)=abb53(24)
      acd53(5)=dotproduct(ninjaE3,spvak2k5)
      acd53(6)=dotproduct(ninjaE4,spvak1k5)
      acd53(7)=dotproduct(k2,ninjaE4)
      acd53(8)=dotproduct(ninjaE3,spval4k5)
      acd53(9)=dotproduct(ninjaE4,spvak2l4)
      acd53(10)=abb53(12)
      acd53(11)=dotproduct(ninjaE3,spvak2l4)
      acd53(12)=dotproduct(ninjaE4,spval4k5)
      acd53(13)=abb53(22)
      acd53(14)=dotproduct(ninjaA,ninjaE3)
      acd53(15)=dotproduct(ninjaE3,spvak1k2)
      acd53(16)=abb53(9)
      acd53(17)=dotproduct(ninjaE4,spvak1k2)
      acd53(18)=abb53(32)
      acd53(19)=dotproduct(ninjaA,ninjaE4)
      acd53(20)=dotproduct(ninjaA,spvak1k2)
      acd53(21)=dotproduct(ninjaA,spvak2k5)
      acd53(22)=abb53(23)
      acd53(23)=dotproduct(k2,ninjaA)
      acd53(24)=dotproduct(ninjaA,spvak1k5)
      acd53(25)=abb53(27)
      acd53(26)=dotproduct(ninjaA,spval4k5)
      acd53(27)=dotproduct(ninjaA,spvak2l4)
      acd53(28)=abb53(8)
      acd53(29)=abb53(18)
      acd53(30)=abb53(10)
      acd53(31)=dotproduct(ninjaE3,spvak2k1)
      acd53(32)=dotproduct(ninjaA,ninjaA)
      acd53(33)=abb53(15)
      acd53(34)=dotproduct(ninjaA,spvak2k1)
      acd53(35)=abb53(19)
      acd53(36)=abb53(20)
      acd53(37)=abb53(26)
      acd53(38)=abb53(31)
      acd53(39)=abb53(33)
      acd53(40)=abb53(17)
      acd53(41)=abb53(16)
      acd53(42)=acd53(8)*acd53(10)
      acd53(43)=acd53(42)*acd53(9)
      acd53(44)=acd53(5)*acd53(4)
      acd53(45)=acd53(44)*acd53(7)
      acd53(46)=acd53(12)*acd53(11)*acd53(10)
      acd53(47)=acd53(3)*acd53(1)*acd53(4)
      acd53(43)=2.0_ki*acd53(45)+acd53(43)+acd53(46)+acd53(47)-acd53(13)
      acd53(45)=acd53(1)*acd53(43)
      acd53(46)=acd53(5)*acd53(22)
      acd53(47)=acd53(42)*acd53(11)
      acd53(48)=acd53(7)*acd53(47)
      acd53(45)=acd53(45)+acd53(48)-acd53(46)
      acd53(45)=acd53(2)*acd53(45)
      acd53(48)=2.0_ki*acd53(14)
      acd53(49)=acd53(16)*acd53(15)
      acd53(50)=acd53(3)*acd53(49)
      acd53(50)=acd53(18)+acd53(50)
      acd53(50)=acd53(50)*acd53(48)
      acd53(51)=acd53(49)*acd53(21)
      acd53(50)=acd53(51)+acd53(50)
      acd53(52)=acd53(48)*acd53(16)
      acd53(53)=acd53(52)*acd53(17)
      acd53(54)=acd53(15)*acd53(19)
      acd53(54)=acd53(20)+2.0_ki*acd53(54)
      acd53(55)=acd53(16)*acd53(54)
      acd53(55)=acd53(55)+acd53(53)
      acd53(55)=acd53(5)*acd53(55)
      acd53(50)=2.0_ki*acd53(50)+acd53(55)
      acd53(50)=acd53(5)*acd53(50)
      acd53(55)=acd53(44)*acd53(1)
      acd53(47)=acd53(55)+acd53(47)
      acd53(47)=acd53(47)*acd53(1)
      acd53(55)=acd53(6)*acd53(47)
      acd53(45)=acd53(45)+acd53(50)+acd53(55)
      acd53(50)=acd53(48)*acd53(13)
      acd53(55)=acd53(18)*acd53(31)
      acd53(50)=acd53(50)-acd53(55)
      acd53(56)=acd53(10)*acd53(27)
      acd53(56)=acd53(28)+acd53(56)
      acd53(56)=acd53(8)*acd53(56)
      acd53(57)=acd53(10)*acd53(26)
      acd53(57)=acd53(57)+acd53(30)
      acd53(58)=acd53(11)*acd53(57)
      acd53(59)=acd53(23)*acd53(4)
      acd53(60)=acd53(29)+2.0_ki*acd53(59)
      acd53(61)=acd53(5)*acd53(60)
      acd53(62)=acd53(4)*acd53(21)
      acd53(62)=acd53(62)+acd53(25)
      acd53(63)=acd53(1)*acd53(62)
      acd53(56)=acd53(63)+acd53(61)+acd53(58)+acd53(56)-acd53(50)
      acd53(56)=acd53(1)*acd53(56)
      acd53(58)=acd53(10)*acd53(23)
      acd53(58)=acd53(58)+acd53(22)
      acd53(61)=acd53(11)*acd53(8)
      acd53(63)=acd53(58)*acd53(61)
      acd53(46)=-acd53(48)*acd53(46)
      acd53(46)=acd53(56)+acd53(63)+acd53(46)
      acd53(46)=acd53(2)*acd53(46)
      acd53(56)=ninjaP+acd53(32)
      acd53(63)=acd53(56)*acd53(49)
      acd53(64)=acd53(15)*acd53(33)
      acd53(52)=acd53(20)*acd53(52)
      acd53(52)=acd53(52)+acd53(64)+acd53(63)
      acd53(52)=acd53(5)*acd53(52)
      acd53(63)=acd53(14)*acd53(18)
      acd53(51)=acd53(51)+acd53(63)
      acd53(51)=acd53(14)*acd53(51)
      acd53(51)=4.0_ki*acd53(51)+acd53(52)
      acd53(51)=acd53(5)*acd53(51)
      acd53(47)=acd53(24)*acd53(47)
      acd53(46)=acd53(46)+acd53(51)+acd53(47)
      acd53(47)=acd53(5)**2*acd53(49)
      acd53(43)=ninjaP*acd53(43)
      acd53(51)=2.0_ki*acd53(23)
      acd53(51)=acd53(62)*acd53(51)
      acd53(52)=acd53(27)*acd53(57)
      acd53(57)=acd53(26)*acd53(28)
      acd53(63)=-acd53(13)*acd53(32)
      acd53(64)=acd53(18)*acd53(34)
      acd53(65)=acd53(21)*acd53(29)
      acd53(43)=acd53(51)+acd53(65)+acd53(64)+acd53(63)+acd53(57)+acd53(35)+acd&
      &53(43)+acd53(52)
      acd53(43)=acd53(1)*acd53(43)
      acd53(51)=acd53(26)*acd53(58)
      acd53(52)=acd53(23)*acd53(30)
      acd53(42)=acd53(42)*ninjaP
      acd53(57)=acd53(7)*acd53(42)
      acd53(51)=acd53(57)+acd53(52)+acd53(40)+acd53(51)
      acd53(51)=acd53(11)*acd53(51)
      acd53(52)=acd53(27)*acd53(58)
      acd53(57)=acd53(23)*acd53(28)
      acd53(52)=acd53(57)+acd53(52)
      acd53(52)=acd53(8)*acd53(52)
      acd53(57)=-acd53(21)*acd53(22)
      acd53(58)=-acd53(23)*acd53(13)
      acd53(57)=acd53(58)+acd53(37)+acd53(57)
      acd53(57)=acd53(57)*acd53(48)
      acd53(58)=-acd53(22)*acd53(56)
      acd53(59)=acd53(29)+acd53(59)
      acd53(59)=acd53(23)*acd53(59)
      acd53(58)=acd53(59)+acd53(39)+acd53(58)
      acd53(58)=acd53(5)*acd53(58)
      acd53(55)=acd53(23)*acd53(55)
      acd53(43)=acd53(43)+acd53(58)+acd53(57)+acd53(51)+acd53(55)+acd53(52)
      acd53(43)=acd53(2)*acd53(43)
      acd53(51)=acd53(24)*acd53(30)
      acd53(52)=acd53(10)*acd53(24)
      acd53(55)=acd53(26)*acd53(52)
      acd53(42)=acd53(6)*acd53(42)
      acd53(42)=acd53(42)+acd53(51)+acd53(55)
      acd53(42)=acd53(11)*acd53(42)
      acd53(50)=-acd53(24)*acd53(50)
      acd53(51)=acd53(24)*acd53(28)
      acd53(55)=acd53(27)*acd53(52)
      acd53(51)=acd53(51)+acd53(55)
      acd53(51)=acd53(8)*acd53(51)
      acd53(55)=acd53(24)*acd53(62)
      acd53(44)=ninjaP*acd53(6)*acd53(44)
      acd53(44)=acd53(55)+acd53(44)
      acd53(44)=acd53(1)*acd53(44)
      acd53(55)=acd53(24)*acd53(60)
      acd53(55)=acd53(36)+acd53(55)
      acd53(55)=acd53(5)*acd53(55)
      acd53(42)=acd53(44)+acd53(55)+acd53(42)+acd53(51)+acd53(50)
      acd53(42)=acd53(1)*acd53(42)
      acd53(44)=acd53(21)*acd53(20)
      acd53(50)=ninjaP*acd53(15)*acd53(3)
      acd53(44)=acd53(44)+acd53(50)
      acd53(44)=acd53(16)*acd53(44)
      acd53(50)=acd53(24)*acd53(22)
      acd53(51)=2.0_ki*acd53(56)
      acd53(51)=acd53(18)*acd53(51)
      acd53(44)=2.0_ki*acd53(44)-acd53(50)+acd53(38)+acd53(51)
      acd53(44)=acd53(14)*acd53(44)
      acd53(51)=acd53(16)*acd53(56)
      acd53(51)=acd53(33)+acd53(51)
      acd53(51)=acd53(51)*acd53(15)*acd53(21)
      acd53(44)=acd53(44)+acd53(51)
      acd53(51)=acd53(20)*acd53(32)
      acd53(54)=ninjaP*acd53(54)
      acd53(51)=acd53(51)+acd53(54)
      acd53(51)=acd53(16)*acd53(51)
      acd53(54)=acd53(20)*acd53(33)
      acd53(53)=ninjaP*acd53(53)
      acd53(51)=acd53(53)+acd53(54)+acd53(51)
      acd53(51)=acd53(5)*acd53(51)
      acd53(44)=2.0_ki*acd53(44)+acd53(51)
      acd53(44)=acd53(5)*acd53(44)
      acd53(51)=acd53(23)*acd53(52)
      acd53(50)=acd53(51)+acd53(41)+acd53(50)
      acd53(50)=acd53(50)*acd53(61)
      acd53(49)=acd53(21)**2*acd53(49)
      acd53(51)=acd53(21)*acd53(18)*acd53(48)
      acd53(49)=acd53(49)+acd53(51)
      acd53(48)=acd53(49)*acd53(48)
      acd53(42)=acd53(43)+acd53(42)+acd53(44)+acd53(50)+acd53(48)
      brack(ninjaidxt1mu0)=acd53(46)
      brack(ninjaidxt1mu2)=acd53(47)
      brack(ninjaidxt0mu0)=acd53(42)
      brack(ninjaidxt0mu2)=acd53(45)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d53h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd53h0
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
end module     p0_gg_hhg_d53h0l131
