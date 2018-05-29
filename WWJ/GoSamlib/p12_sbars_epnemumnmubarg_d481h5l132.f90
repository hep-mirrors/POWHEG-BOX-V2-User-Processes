module     p12_sbars_epnemumnmubarg_d481h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d481h5l132.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd481
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd481(1)=dotproduct(ninjaE3,spvak1k2)
      acd481(2)=dotproduct(ninjaE3,spvak4k3)
      acd481(3)=dotproduct(ninjaE3,spvak5k6)
      acd481(4)=dotproduct(ninjaE3,spvak7k2)
      acd481(5)=abb481(14)
      acd481(6)=-acd481(5)*acd481(4)*acd481(3)*acd481(2)*acd481(1)
      brack(ninjaidxt1x0mu0)=acd481(6)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(58) :: acd481
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd481(1)=dotproduct(ninjaA1,spvak7k2)
      acd481(2)=dotproduct(ninjaE3,spvak4k3)
      acd481(3)=dotproduct(ninjaE3,spvak1k2)
      acd481(4)=dotproduct(ninjaE3,spvak5k6)
      acd481(5)=abb481(14)
      acd481(6)=dotproduct(ninjaA1,spvak4k3)
      acd481(7)=dotproduct(ninjaE3,spvak7k2)
      acd481(8)=dotproduct(ninjaA1,spvak1k2)
      acd481(9)=dotproduct(ninjaA1,spvak5k6)
      acd481(10)=dotproduct(k1,ninjaE3)
      acd481(11)=dotproduct(ninjaE3,spvak5k2)
      acd481(12)=abb481(18)
      acd481(13)=dotproduct(ninjaE3,spvak1k3)
      acd481(14)=abb481(11)
      acd481(15)=abb481(39)
      acd481(16)=abb481(37)
      acd481(17)=dotproduct(ninjaE3,spvak4k2)
      acd481(18)=abb481(26)
      acd481(19)=dotproduct(k2,ninjaE3)
      acd481(20)=abb481(12)
      acd481(21)=dotproduct(k3,ninjaE3)
      acd481(22)=dotproduct(k4,ninjaE3)
      acd481(23)=dotproduct(k7,ninjaE3)
      acd481(24)=dotproduct(ninjaA0,ninjaE3)
      acd481(25)=abb481(8)
      acd481(26)=abb481(22)
      acd481(27)=abb481(47)
      acd481(28)=abb481(41)
      acd481(29)=abb481(27)
      acd481(30)=dotproduct(ninjaA0,spvak7k2)
      acd481(31)=dotproduct(ninjaA0,spvak4k3)
      acd481(32)=dotproduct(ninjaA0,spvak1k2)
      acd481(33)=dotproduct(ninjaA0,spvak5k6)
      acd481(34)=abb481(44)
      acd481(35)=abb481(43)
      acd481(36)=abb481(24)
      acd481(37)=abb481(48)
      acd481(38)=abb481(28)
      acd481(39)=dotproduct(ninjaE3,spvak1k6)
      acd481(40)=abb481(19)
      acd481(41)=abb481(42)
      acd481(42)=dotproduct(ninjaE3,spvak3k2)
      acd481(43)=dotproduct(ninjaE3,spvak1k4)
      acd481(44)=abb481(36)
      acd481(45)=-acd481(9)*acd481(3)*acd481(5)
      acd481(46)=acd481(4)*acd481(5)
      acd481(47)=-acd481(8)*acd481(46)
      acd481(45)=acd481(45)+acd481(47)
      acd481(45)=acd481(2)*acd481(45)
      acd481(47)=acd481(46)*acd481(3)
      acd481(48)=-acd481(6)*acd481(47)
      acd481(45)=acd481(48)+acd481(45)
      acd481(45)=acd481(7)*acd481(45)
      acd481(48)=-acd481(2)*acd481(1)*acd481(47)
      acd481(45)=acd481(48)+acd481(45)
      acd481(48)=acd481(10)+acd481(23)
      acd481(48)=acd481(15)*acd481(48)
      acd481(49)=acd481(39)*acd481(40)
      acd481(50)=acd481(29)*acd481(42)
      acd481(51)=-acd481(27)*acd481(43)
      acd481(52)=2.0_ki*acd481(24)
      acd481(53)=acd481(28)*acd481(52)
      acd481(54)=acd481(17)*acd481(41)
      acd481(55)=acd481(13)*acd481(36)
      acd481(56)=acd481(11)*acd481(34)
      acd481(57)=-acd481(5)*acd481(33)
      acd481(57)=-acd481(38)+acd481(57)
      acd481(57)=acd481(3)*acd481(57)
      acd481(46)=-acd481(32)*acd481(46)
      acd481(58)=acd481(7)*acd481(35)
      acd481(46)=acd481(58)+acd481(46)+acd481(57)+acd481(56)+acd481(55)+acd481(&
      &54)+acd481(53)+acd481(51)+acd481(49)+acd481(50)+acd481(48)
      acd481(46)=acd481(2)*acd481(46)
      acd481(48)=acd481(10)*acd481(16)
      acd481(49)=acd481(13)*acd481(37)
      acd481(50)=-acd481(5)*acd481(31)
      acd481(50)=acd481(44)+acd481(50)
      acd481(50)=acd481(3)*acd481(50)
      acd481(48)=acd481(50)+acd481(48)+acd481(49)
      acd481(48)=acd481(4)*acd481(48)
      acd481(49)=-acd481(10)+acd481(21)+acd481(22)
      acd481(50)=-acd481(18)*acd481(49)
      acd481(51)=acd481(29)*acd481(52)
      acd481(50)=acd481(51)+acd481(50)
      acd481(50)=acd481(17)*acd481(50)
      acd481(51)=acd481(14)*acd481(49)
      acd481(53)=-acd481(27)*acd481(52)
      acd481(51)=acd481(53)+acd481(51)
      acd481(51)=acd481(13)*acd481(51)
      acd481(49)=acd481(12)*acd481(49)
      acd481(53)=acd481(25)*acd481(52)
      acd481(49)=acd481(53)+acd481(49)
      acd481(49)=acd481(11)*acd481(49)
      acd481(46)=acd481(48)+acd481(49)+acd481(51)+acd481(46)+acd481(50)
      acd481(46)=acd481(7)*acd481(46)
      acd481(48)=acd481(19)-acd481(23)
      acd481(48)=acd481(20)*acd481(48)
      acd481(49)=-acd481(26)*acd481(52)
      acd481(48)=acd481(48)+acd481(49)
      acd481(48)=acd481(11)*acd481(48)
      acd481(47)=-acd481(30)*acd481(47)
      acd481(47)=acd481(48)+acd481(47)
      acd481(47)=acd481(2)*acd481(47)
      acd481(46)=acd481(47)+acd481(46)
      brack(ninjaidxt0x0mu0)=acd481(46)
      brack(ninjaidxt0x1mu0)=acd481(45)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d481h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd481h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p12_sbars_epnemumnmubarg_d481h5l132
