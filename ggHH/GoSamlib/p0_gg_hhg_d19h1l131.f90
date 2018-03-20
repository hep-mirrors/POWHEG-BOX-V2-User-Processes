module     p0_gg_hhg_d19h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d19h1l131.f90
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
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd19
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
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(39) :: acd19
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd19(1)=dotproduct(ninjaE3,spvak2l3)
      acd19(2)=abb19(11)
      acd19(3)=dotproduct(ninjaE3,spvak2l4)
      acd19(4)=abb19(30)
      acd19(5)=dotproduct(ninjaA,ninjaE3)
      acd19(6)=dotproduct(ninjaE3,spvak2k5)
      acd19(7)=abb19(16)
      acd19(8)=dotproduct(ninjaE3,spval4k5)
      acd19(9)=abb19(14)
      acd19(10)=dotproduct(ninjaE3,spvak2k1)
      acd19(11)=abb19(15)
      acd19(12)=abb19(13)
      acd19(13)=abb19(19)
      acd19(14)=abb19(27)
      acd19(15)=dotproduct(ninjaE3,spval3k5)
      acd19(16)=abb19(21)
      acd19(17)=dotproduct(ninjaA,ninjaA)
      acd19(18)=dotproduct(ninjaA,spvak2l3)
      acd19(19)=dotproduct(ninjaA,spvak2l4)
      acd19(20)=dotproduct(ninjaA,spvak2k5)
      acd19(21)=dotproduct(ninjaA,spval4k5)
      acd19(22)=dotproduct(ninjaA,spvak2k1)
      acd19(23)=dotproduct(ninjaA,spval3k5)
      acd19(24)=abb19(12)
      acd19(25)=abb19(22)
      acd19(26)=abb19(18)
      acd19(27)=abb19(31)
      acd19(28)=acd19(2)*acd19(1)
      acd19(29)=acd19(4)*acd19(3)
      acd19(28)=acd19(28)-acd19(29)
      acd19(29)=acd19(14)*acd19(6)
      acd19(30)=acd19(15)*acd19(16)
      acd19(29)=acd19(29)+acd19(30)
      acd19(30)=acd19(3)*acd19(29)
      acd19(31)=acd19(11)*acd19(10)
      acd19(32)=acd19(8)*acd19(9)
      acd19(31)=acd19(31)+acd19(32)
      acd19(32)=acd19(7)*acd19(6)
      acd19(32)=acd19(32)+acd19(31)
      acd19(32)=acd19(1)*acd19(32)
      acd19(33)=2.0_ki*acd19(5)
      acd19(34)=acd19(28)*acd19(33)
      acd19(35)=acd19(13)*acd19(10)
      acd19(36)=acd19(6)*acd19(35)
      acd19(37)=acd19(12)*acd19(6)**2
      acd19(30)=acd19(37)+acd19(36)+acd19(34)+acd19(32)+acd19(30)
      acd19(32)=acd19(14)*acd19(3)
      acd19(34)=acd19(12)*acd19(6)
      acd19(32)=2.0_ki*acd19(34)+acd19(32)+acd19(35)
      acd19(32)=acd19(20)*acd19(32)
      acd19(34)=ninjaP+acd19(17)
      acd19(34)=acd19(28)*acd19(34)
      acd19(35)=-acd19(4)*acd19(33)
      acd19(29)=acd19(35)+acd19(29)
      acd19(29)=acd19(19)*acd19(29)
      acd19(33)=acd19(2)*acd19(33)
      acd19(31)=acd19(33)+acd19(31)
      acd19(31)=acd19(18)*acd19(31)
      acd19(33)=acd19(18)*acd19(6)
      acd19(35)=acd19(20)*acd19(1)
      acd19(33)=acd19(33)+acd19(35)
      acd19(33)=acd19(7)*acd19(33)
      acd19(35)=acd19(13)*acd19(6)
      acd19(36)=acd19(11)*acd19(1)
      acd19(35)=acd19(36)+acd19(35)
      acd19(35)=acd19(22)*acd19(35)
      acd19(36)=acd19(23)*acd19(16)
      acd19(36)=acd19(27)+acd19(36)
      acd19(36)=acd19(3)*acd19(36)
      acd19(37)=acd19(21)*acd19(9)
      acd19(37)=acd19(24)+acd19(37)
      acd19(37)=acd19(1)*acd19(37)
      acd19(38)=acd19(25)*acd19(6)
      acd19(39)=acd19(26)*acd19(10)
      acd19(29)=acd19(39)+acd19(38)+acd19(35)+acd19(33)+acd19(32)+acd19(31)+acd&
      &19(29)+acd19(37)+acd19(34)+acd19(36)
      brack(ninjaidxt1mu0)=acd19(30)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd19(29)
      brack(ninjaidxt0mu2)=acd19(28)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d19h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd19h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d19h1l131
