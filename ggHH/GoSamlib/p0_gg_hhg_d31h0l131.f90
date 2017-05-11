module     p0_gg_hhg_d31h0l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d31h0l131.f90
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
      use p0_gg_hhg_abbrevd31h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(4) :: acd31
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd31(1)=dotproduct(ninjaE3,spvak1k2)
      acd31(2)=dotproduct(ninjaE3,spvak2k5)
      acd31(3)=abb31(8)
      acd31(4)=acd31(3)*acd31(1)*acd31(2)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd31(4)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd31
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd31(1)=dotproduct(ninjaE3,spvak1k2)
      acd31(2)=dotproduct(ninjaE3,spvak2k5)
      acd31(3)=dotproduct(ninjaE4,spvak2k5)
      acd31(4)=abb31(8)
      acd31(5)=dotproduct(ninjaE4,spvak1k2)
      acd31(6)=abb31(15)
      acd31(7)=dotproduct(k1,ninjaE3)
      acd31(8)=abb31(16)
      acd31(9)=dotproduct(ninjaA,ninjaE3)
      acd31(10)=dotproduct(ninjaA,spvak1k2)
      acd31(11)=dotproduct(ninjaA,spvak2k5)
      acd31(12)=abb31(7)
      acd31(13)=dotproduct(ninjaE3,spvak1k5)
      acd31(14)=abb31(12)
      acd31(15)=dotproduct(k1,ninjaA)
      acd31(16)=dotproduct(ninjaA,ninjaA)
      acd31(17)=abb31(9)
      acd31(18)=dotproduct(ninjaA,spvak1k5)
      acd31(19)=abb31(11)
      acd31(20)=acd31(2)*acd31(4)
      acd31(21)=acd31(20)*acd31(5)
      acd31(22)=acd31(4)*acd31(1)
      acd31(23)=2.0_ki*acd31(22)
      acd31(24)=acd31(3)*acd31(23)
      acd31(24)=acd31(21)+acd31(6)+acd31(24)
      acd31(24)=acd31(2)*acd31(24)
      acd31(25)=acd31(14)*acd31(13)
      acd31(26)=2.0_ki*acd31(9)
      acd31(27)=acd31(26)*acd31(6)
      acd31(28)=acd31(8)*acd31(7)
      acd31(29)=acd31(1)*acd31(12)
      acd31(25)=acd31(27)+acd31(25)+acd31(28)+acd31(29)
      acd31(23)=acd31(11)*acd31(23)
      acd31(20)=acd31(10)*acd31(20)
      acd31(20)=acd31(20)+acd31(23)+acd31(25)
      acd31(20)=acd31(2)*acd31(20)
      acd31(23)=ninjaP*acd31(1)*acd31(3)
      acd31(27)=acd31(11)*acd31(10)
      acd31(23)=acd31(23)+acd31(27)
      acd31(27)=2.0_ki*acd31(4)
      acd31(23)=acd31(23)*acd31(27)
      acd31(27)=acd31(14)*acd31(18)
      acd31(28)=acd31(10)*acd31(12)
      acd31(29)=acd31(8)*acd31(15)
      acd31(30)=acd31(16)+ninjaP
      acd31(30)=acd31(6)*acd31(30)
      acd31(21)=ninjaP*acd31(21)
      acd31(21)=acd31(21)+acd31(23)+acd31(30)+acd31(29)+acd31(28)+acd31(19)+acd&
      &31(27)
      acd31(21)=acd31(2)*acd31(21)
      acd31(23)=acd31(11)*acd31(25)
      acd31(25)=acd31(17)*acd31(26)
      acd31(22)=acd31(11)**2*acd31(22)
      acd31(21)=acd31(21)+acd31(22)+acd31(25)+acd31(23)
      brack(ninjaidxt1mu0)=acd31(20)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd31(21)
      brack(ninjaidxt0mu2)=acd31(24)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d31h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd31h0
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
end module     p0_gg_hhg_d31h0l131
