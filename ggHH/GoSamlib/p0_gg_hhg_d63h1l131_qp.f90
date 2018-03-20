module     p0_gg_hhg_d63h1l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d63h1l131_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(45) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd63(1)=dotproduct(ninjaE3,spvak2k1)
      acd63(2)=dotproduct(ninjaE3,spvak2k5)
      acd63(3)=abb63(25)
      acd63(4)=abb63(33)
      acd63(5)=dotproduct(ninjaE3,spvak2l4)
      acd63(6)=abb63(32)
      acd63(7)=dotproduct(ninjaA,ninjaE3)
      acd63(8)=abb63(9)
      acd63(9)=abb63(22)
      acd63(10)=dotproduct(ninjaE3,spval4k1)
      acd63(11)=abb63(8)
      acd63(12)=abb63(28)
      acd63(13)=dotproduct(ninjaE3,spval4k5)
      acd63(14)=abb63(15)
      acd63(15)=dotproduct(ninjaE3,spvak1k5)
      acd63(16)=abb63(10)
      acd63(17)=dotproduct(ninjaA,ninjaA)
      acd63(18)=dotproduct(ninjaA,spvak2k1)
      acd63(19)=dotproduct(ninjaA,spvak2k5)
      acd63(20)=dotproduct(ninjaA,spvak2l4)
      acd63(21)=abb63(13)
      acd63(22)=abb63(14)
      acd63(23)=abb63(23)
      acd63(24)=dotproduct(ninjaA,spval4k1)
      acd63(25)=dotproduct(ninjaA,spval4k5)
      acd63(26)=dotproduct(ninjaA,spvak1k5)
      acd63(27)=abb63(18)
      acd63(28)=abb63(11)
      acd63(29)=abb63(38)
      acd63(30)=abb63(17)
      acd63(31)=abb63(19)
      acd63(32)=abb63(12)
      acd63(33)=abb63(35)
      acd63(34)=abb63(29)
      acd63(35)=-acd63(5)*acd63(6)
      acd63(36)=-acd63(1)*acd63(3)
      acd63(37)=acd63(2)*acd63(4)
      acd63(35)=acd63(37)+acd63(35)+acd63(36)
      acd63(35)=acd63(2)*acd63(35)
      acd63(36)=acd63(10)*acd63(11)
      acd63(37)=2.0_ki*acd63(7)
      acd63(38)=-acd63(3)*acd63(37)
      acd63(39)=acd63(5)*acd63(12)
      acd63(40)=acd63(1)*acd63(8)
      acd63(36)=acd63(40)+acd63(39)+acd63(36)+acd63(38)
      acd63(36)=acd63(1)*acd63(36)
      acd63(38)=acd63(10)*acd63(16)
      acd63(39)=acd63(4)*acd63(37)
      acd63(40)=acd63(1)*acd63(9)
      acd63(38)=acd63(40)+acd63(38)+acd63(39)
      acd63(38)=acd63(2)*acd63(38)
      acd63(39)=-acd63(10)*acd63(14)
      acd63(40)=-acd63(6)*acd63(37)
      acd63(39)=acd63(39)+acd63(40)
      acd63(39)=acd63(5)*acd63(39)
      acd63(36)=acd63(38)+acd63(39)+acd63(36)
      acd63(36)=acd63(2)*acd63(36)
      acd63(38)=acd63(14)*acd63(13)
      acd63(39)=acd63(6)*acd63(15)
      acd63(38)=acd63(38)+acd63(39)
      acd63(39)=-acd63(1)*acd63(5)*acd63(38)
      acd63(36)=acd63(39)+acd63(36)
      acd63(39)=acd63(11)*acd63(24)
      acd63(40)=acd63(20)*acd63(12)
      acd63(41)=acd63(17)+ninjaP
      acd63(42)=-acd63(3)*acd63(41)
      acd63(43)=acd63(18)*acd63(8)
      acd63(44)=2.0_ki*acd63(19)
      acd63(45)=acd63(9)*acd63(44)
      acd63(39)=acd63(45)+2.0_ki*acd63(43)+acd63(42)+acd63(40)+acd63(28)+acd63(&
      &39)
      acd63(39)=acd63(1)*acd63(39)
      acd63(40)=acd63(14)*acd63(20)
      acd63(42)=acd63(18)*acd63(11)
      acd63(43)=acd63(16)*acd63(44)
      acd63(40)=acd63(43)-acd63(40)+acd63(32)+acd63(42)
      acd63(40)=acd63(10)*acd63(40)
      acd63(42)=acd63(6)*acd63(20)
      acd63(43)=-acd63(18)*acd63(3)
      acd63(44)=acd63(4)*acd63(44)
      acd63(42)=-acd63(42)+acd63(44)+acd63(22)+acd63(43)
      acd63(42)=acd63(42)*acd63(37)
      acd63(43)=acd63(18)*acd63(12)
      acd63(44)=-acd63(14)*acd63(24)
      acd63(45)=-acd63(6)*acd63(41)
      acd63(43)=acd63(45)+acd63(44)+acd63(33)+acd63(43)
      acd63(43)=acd63(5)*acd63(43)
      acd63(44)=acd63(16)*acd63(24)
      acd63(41)=acd63(4)*acd63(41)
      acd63(45)=acd63(18)*acd63(9)
      acd63(41)=acd63(45)+acd63(41)+acd63(31)+acd63(44)
      acd63(41)=acd63(2)*acd63(41)
      acd63(39)=acd63(41)+acd63(39)+acd63(43)+acd63(40)+acd63(42)
      acd63(39)=acd63(2)*acd63(39)
      acd63(40)=-acd63(14)*acd63(25)
      acd63(41)=acd63(19)*acd63(12)
      acd63(42)=-acd63(6)*acd63(26)
      acd63(40)=acd63(42)+acd63(41)+acd63(30)+acd63(40)
      acd63(40)=acd63(5)*acd63(40)
      acd63(41)=-acd63(20)*acd63(38)
      acd63(42)=-acd63(19)*acd63(3)
      acd63(42)=acd63(21)+acd63(42)
      acd63(42)=acd63(42)*acd63(37)
      acd63(43)=acd63(19)*acd63(11)
      acd63(43)=acd63(29)+acd63(43)
      acd63(43)=acd63(10)*acd63(43)
      acd63(44)=acd63(19)*acd63(8)
      acd63(44)=acd63(27)+acd63(44)
      acd63(44)=acd63(1)*acd63(44)
      acd63(40)=acd63(44)+acd63(40)+acd63(42)+acd63(43)+acd63(41)
      acd63(40)=acd63(1)*acd63(40)
      acd63(38)=-acd63(18)*acd63(38)
      acd63(41)=-acd63(6)*acd63(19)
      acd63(41)=acd63(23)+acd63(41)
      acd63(37)=acd63(41)*acd63(37)
      acd63(41)=-acd63(19)*acd63(14)
      acd63(41)=acd63(34)+acd63(41)
      acd63(41)=acd63(10)*acd63(41)
      acd63(37)=acd63(37)+acd63(41)+acd63(38)
      acd63(37)=acd63(5)*acd63(37)
      acd63(37)=acd63(39)+acd63(37)+acd63(40)
      brack(ninjaidxt1mu0)=acd63(36)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd63(37)
      brack(ninjaidxt0mu2)=acd63(35)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d63h1_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h1_qp
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
end module     p0_gg_hhg_d63h1l131_qp
