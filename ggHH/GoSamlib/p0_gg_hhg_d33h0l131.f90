module     p0_gg_hhg_d33h0l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d33h0l131.f90
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
      use p0_gg_hhg_abbrevd33h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(4) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd33(1)=dotproduct(ninjaE3,spvak1k2)
      acd33(2)=dotproduct(ninjaE3,spvak2k5)
      acd33(3)=abb33(7)
      acd33(4)=acd33(3)*acd33(1)*acd33(2)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd33(4)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd33h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd33(1)=dotproduct(ninjaE3,spvak1k2)
      acd33(2)=dotproduct(ninjaE3,spvak2k5)
      acd33(3)=dotproduct(ninjaE4,spvak2k5)
      acd33(4)=abb33(7)
      acd33(5)=dotproduct(ninjaE4,spvak1k2)
      acd33(6)=abb33(11)
      acd33(7)=dotproduct(k1,ninjaE3)
      acd33(8)=abb33(12)
      acd33(9)=dotproduct(ninjaA,ninjaE3)
      acd33(10)=dotproduct(ninjaA,spvak1k2)
      acd33(11)=dotproduct(ninjaA,spvak2k5)
      acd33(12)=abb33(9)
      acd33(13)=dotproduct(ninjaE3,spvak1k5)
      acd33(14)=abb33(16)
      acd33(15)=dotproduct(k1,ninjaA)
      acd33(16)=dotproduct(ninjaA,ninjaA)
      acd33(17)=dotproduct(ninjaA,spvak1k5)
      acd33(18)=abb33(10)
      acd33(19)=acd33(2)*acd33(4)
      acd33(20)=acd33(19)*acd33(5)
      acd33(21)=acd33(4)*acd33(1)
      acd33(22)=2.0_ki*acd33(21)
      acd33(23)=acd33(3)*acd33(22)
      acd33(23)=acd33(20)+acd33(6)+acd33(23)
      acd33(23)=acd33(2)*acd33(23)
      acd33(24)=acd33(14)*acd33(13)
      acd33(25)=acd33(8)*acd33(7)
      acd33(26)=acd33(6)*acd33(9)
      acd33(27)=acd33(1)*acd33(12)
      acd33(24)=acd33(27)+2.0_ki*acd33(26)+acd33(24)+acd33(25)
      acd33(22)=acd33(11)*acd33(22)
      acd33(19)=acd33(10)*acd33(19)
      acd33(19)=acd33(19)+acd33(22)+acd33(24)
      acd33(19)=acd33(2)*acd33(19)
      acd33(22)=ninjaP*acd33(1)*acd33(3)
      acd33(25)=acd33(11)*acd33(10)
      acd33(22)=acd33(22)+acd33(25)
      acd33(25)=2.0_ki*acd33(4)
      acd33(22)=acd33(22)*acd33(25)
      acd33(25)=acd33(14)*acd33(17)
      acd33(26)=acd33(10)*acd33(12)
      acd33(27)=acd33(8)*acd33(15)
      acd33(28)=acd33(16)+ninjaP
      acd33(28)=acd33(6)*acd33(28)
      acd33(20)=ninjaP*acd33(20)
      acd33(20)=acd33(20)+acd33(22)+acd33(28)+acd33(27)+acd33(26)+acd33(18)+acd&
      &33(25)
      acd33(20)=acd33(2)*acd33(20)
      acd33(22)=acd33(11)*acd33(24)
      acd33(21)=acd33(11)**2*acd33(21)
      acd33(20)=acd33(20)+acd33(22)+acd33(21)
      brack(ninjaidxt1mu0)=acd33(19)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd33(20)
      brack(ninjaidxt0mu2)=acd33(23)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d33h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd33h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_gg_hhg_d33h0l131
