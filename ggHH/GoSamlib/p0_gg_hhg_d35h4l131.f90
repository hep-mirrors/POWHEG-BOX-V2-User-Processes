module     p0_gg_hhg_d35h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d35h4l131.f90
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
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd35
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd35(1)=dotproduct(ninjaE3,spvak1k2)
      acd35(2)=dotproduct(ninjaE3,spvak2k5)
      acd35(3)=dotproduct(ninjaE3,spvak5k2)
      acd35(4)=abb35(7)
      acd35(5)=acd35(4)*acd35(3)*acd35(2)*acd35(1)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd35(5)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(43) :: acd35
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd35(1)=dotproduct(ninjaE3,spvak1k2)
      acd35(2)=dotproduct(ninjaE3,spvak2k5)
      acd35(3)=dotproduct(ninjaE4,spvak5k2)
      acd35(4)=abb35(7)
      acd35(5)=dotproduct(ninjaE3,spvak5k2)
      acd35(6)=dotproduct(ninjaE4,spvak2k5)
      acd35(7)=abb35(9)
      acd35(8)=dotproduct(ninjaE4,spvak1k2)
      acd35(9)=dotproduct(k2,ninjaE3)
      acd35(10)=abb35(16)
      acd35(11)=dotproduct(ninjaE3,spvak1k5)
      acd35(12)=abb35(21)
      acd35(13)=abb35(10)
      acd35(14)=dotproduct(k5,ninjaE3)
      acd35(15)=abb35(11)
      acd35(16)=dotproduct(ninjaA,ninjaE3)
      acd35(17)=dotproduct(ninjaA,spvak1k2)
      acd35(18)=dotproduct(ninjaA,spvak2k5)
      acd35(19)=dotproduct(ninjaA,spvak5k2)
      acd35(20)=abb35(6)
      acd35(21)=abb35(12)
      acd35(22)=dotproduct(k2,ninjaA)
      acd35(23)=dotproduct(ninjaA,spvak1k5)
      acd35(24)=abb35(15)
      acd35(25)=dotproduct(k5,ninjaA)
      acd35(26)=dotproduct(ninjaA,ninjaA)
      acd35(27)=abb35(17)
      acd35(28)=abb35(8)
      acd35(29)=abb35(14)
      acd35(30)=abb35(19)
      acd35(31)=acd35(2)*acd35(4)
      acd35(32)=acd35(31)*acd35(3)
      acd35(33)=acd35(5)*acd35(4)
      acd35(34)=acd35(33)*acd35(6)
      acd35(32)=acd35(32)+acd35(34)
      acd35(32)=acd35(32)*acd35(1)
      acd35(34)=acd35(31)*acd35(5)
      acd35(35)=acd35(34)*acd35(8)
      acd35(32)=acd35(32)+acd35(35)
      acd35(35)=acd35(7)*acd35(1)
      acd35(36)=-acd35(35)+acd35(32)
      acd35(37)=acd35(12)*acd35(11)
      acd35(38)=acd35(13)*acd35(5)
      acd35(37)=acd35(38)+acd35(37)-acd35(35)
      acd35(37)=acd35(9)*acd35(37)
      acd35(38)=acd35(20)*acd35(11)
      acd35(39)=acd35(14)*acd35(15)
      acd35(31)=acd35(31)*acd35(19)
      acd35(31)=acd35(31)+acd35(38)+acd35(39)
      acd35(38)=acd35(18)*acd35(33)
      acd35(38)=acd35(38)+acd35(31)
      acd35(38)=acd35(1)*acd35(38)
      acd35(39)=2.0_ki*acd35(16)
      acd35(40)=-acd35(35)*acd35(39)
      acd35(34)=acd35(17)*acd35(34)
      acd35(41)=acd35(21)*acd35(5)
      acd35(42)=acd35(11)*acd35(41)
      acd35(43)=acd35(10)*acd35(9)**2
      acd35(34)=acd35(43)+acd35(42)+acd35(40)+acd35(34)+acd35(38)+acd35(37)
      acd35(37)=-acd35(39)-acd35(9)
      acd35(37)=acd35(7)*acd35(37)
      acd35(31)=acd35(37)+acd35(31)
      acd35(31)=acd35(17)*acd35(31)
      acd35(37)=acd35(12)*acd35(9)
      acd35(38)=acd35(20)*acd35(1)
      acd35(37)=acd35(41)+acd35(37)+acd35(38)
      acd35(37)=acd35(23)*acd35(37)
      acd35(32)=ninjaP*acd35(32)
      acd35(38)=acd35(12)*acd35(22)
      acd35(40)=acd35(21)*acd35(19)
      acd35(38)=acd35(29)+acd35(40)+acd35(38)
      acd35(38)=acd35(11)*acd35(38)
      acd35(40)=-acd35(26)-ninjaP-acd35(22)
      acd35(35)=acd35(35)*acd35(40)
      acd35(40)=acd35(19)*acd35(9)
      acd35(41)=acd35(22)*acd35(5)
      acd35(40)=acd35(40)+acd35(41)
      acd35(40)=acd35(13)*acd35(40)
      acd35(33)=acd35(17)*acd35(33)
      acd35(41)=acd35(19)*acd35(4)*acd35(1)
      acd35(33)=acd35(33)+acd35(41)
      acd35(33)=acd35(18)*acd35(33)
      acd35(41)=acd35(25)*acd35(15)
      acd35(41)=acd35(28)+acd35(41)
      acd35(41)=acd35(1)*acd35(41)
      acd35(42)=acd35(10)*acd35(22)
      acd35(42)=acd35(24)+2.0_ki*acd35(42)
      acd35(42)=acd35(9)*acd35(42)
      acd35(39)=acd35(27)*acd35(39)
      acd35(43)=acd35(30)*acd35(5)
      acd35(31)=acd35(43)+acd35(39)+acd35(37)+acd35(33)+acd35(40)+acd35(31)+acd&
      &35(35)+acd35(38)+acd35(42)+acd35(41)+acd35(32)
      brack(ninjaidxt1mu0)=acd35(34)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd35(31)
      brack(ninjaidxt0mu2)=acd35(36)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d35h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd35h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2+k5
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
end module     p0_gg_hhg_d35h4l131
