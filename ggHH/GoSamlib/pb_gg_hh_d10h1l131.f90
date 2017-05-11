module     pb_gg_hh_d10h1l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d10h1l131.f90
   ! generator: buildfortran_tn3.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond_t, d => metric_tensor
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
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd10
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd10
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd10(1)=dotproduct(k1,ninjaE3)
      acd10(2)=dotproduct(ninjaE3,spvak2k1)
      acd10(3)=abb10(13)
      acd10(4)=abb10(10)
      acd10(5)=dotproduct(ninjaE3,spval3k1)
      acd10(6)=abb10(8)
      acd10(7)=dotproduct(ninjaE3,spval4l3)
      acd10(8)=abb10(9)
      acd10(9)=dotproduct(ninjaE3,spval3l4)
      acd10(10)=abb10(11)
      acd10(11)=dotproduct(ninjaE3,spvak2l3)
      acd10(12)=abb10(18)
      acd10(13)=dotproduct(ninjaE3,spvak2l4)
      acd10(14)=abb10(19)
      acd10(15)=dotproduct(k1,ninjaA)
      acd10(16)=dotproduct(ninjaA,spvak2k1)
      acd10(17)=abb10(14)
      acd10(18)=dotproduct(ninjaA,ninjaE3)
      acd10(19)=dotproduct(ninjaA,spval3k1)
      acd10(20)=dotproduct(ninjaA,spval4l3)
      acd10(21)=dotproduct(ninjaA,spval3l4)
      acd10(22)=dotproduct(ninjaA,spvak2l3)
      acd10(23)=dotproduct(ninjaA,spvak2l4)
      acd10(24)=abb10(12)
      acd10(25)=acd10(14)*acd10(13)
      acd10(26)=acd10(12)*acd10(11)
      acd10(27)=acd10(10)*acd10(9)
      acd10(28)=acd10(8)*acd10(7)
      acd10(29)=acd10(6)*acd10(5)
      acd10(30)=acd10(1)*acd10(3)
      acd10(25)=acd10(25)+acd10(26)+acd10(27)+acd10(28)+acd10(29)+acd10(30)
      acd10(26)=acd10(2)*acd10(4)
      acd10(26)=acd10(26)+acd10(25)
      acd10(26)=acd10(2)*acd10(26)
      acd10(27)=acd10(14)*acd10(23)
      acd10(28)=acd10(12)*acd10(22)
      acd10(29)=acd10(10)*acd10(21)
      acd10(30)=acd10(8)*acd10(20)
      acd10(31)=acd10(6)*acd10(19)
      acd10(32)=acd10(3)*acd10(15)
      acd10(33)=acd10(16)*acd10(4)
      acd10(27)=2.0_ki*acd10(33)+acd10(32)+acd10(31)+acd10(30)+acd10(29)+acd10(&
      &28)+acd10(24)+acd10(27)
      acd10(27)=acd10(2)*acd10(27)
      acd10(25)=acd10(16)*acd10(25)
      acd10(28)=2.0_ki*acd10(18)-acd10(1)
      acd10(28)=acd10(17)*acd10(28)
      acd10(25)=acd10(27)+acd10(25)+acd10(28)
      brack(ninjaidxt1mu0)=acd10(26)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd10(25)
      brack(ninjaidxt0mu2)=0.0_ki
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d10h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h1
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
end module     pb_gg_hh_d10h1l131
