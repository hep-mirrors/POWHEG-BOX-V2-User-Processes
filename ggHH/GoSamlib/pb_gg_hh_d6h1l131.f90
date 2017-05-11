module     pb_gg_hh_d6h1l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d6h1l131.f90
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
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak2k1)
      acd6(3)=abb6(11)
      acd6(4)=dotproduct(k2,ninjaE3)
      acd6(5)=abb6(14)
      acd6(6)=dotproduct(l3,ninjaE3)
      acd6(7)=dotproduct(ninjaA,ninjaE3)
      acd6(8)=abb6(6)
      acd6(9)=acd6(6)-acd6(1)
      acd6(9)=acd6(3)*acd6(9)
      acd6(10)=acd6(5)*acd6(4)
      acd6(11)=acd6(8)*acd6(7)
      acd6(9)=2.0_ki*acd6(11)+acd6(10)+acd6(9)
      acd6(9)=acd6(9)*acd6(2)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd6(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak2k1)
      acd6(3)=dotproduct(ninjaE4,spvak2k1)
      acd6(4)=abb6(11)
      acd6(5)=dotproduct(k1,ninjaE4)
      acd6(6)=dotproduct(k2,ninjaE3)
      acd6(7)=abb6(14)
      acd6(8)=dotproduct(k2,ninjaE4)
      acd6(9)=dotproduct(l3,ninjaE3)
      acd6(10)=dotproduct(l3,ninjaE4)
      acd6(11)=dotproduct(ninjaA,ninjaE3)
      acd6(12)=abb6(6)
      acd6(13)=dotproduct(ninjaA,ninjaE4)
      acd6(14)=dotproduct(ninjaA,spvak2k1)
      acd6(15)=abb6(7)
      acd6(16)=dotproduct(k1,ninjaA)
      acd6(17)=abb6(8)
      acd6(18)=dotproduct(k2,ninjaA)
      acd6(19)=dotproduct(l3,ninjaA)
      acd6(20)=dotproduct(ninjaA,ninjaA)
      acd6(21)=abb6(9)
      acd6(22)=dotproduct(ninjaE3,spval3k1)
      acd6(23)=abb6(10)
      acd6(24)=dotproduct(ninjaE3,spvak2l3)
      acd6(25)=abb6(13)
      acd6(26)=dotproduct(ninjaA,spval3k1)
      acd6(27)=dotproduct(ninjaA,spvak2l3)
      acd6(28)=abb6(12)
      acd6(29)=acd6(1)-acd6(9)
      acd6(30)=acd6(29)*acd6(4)
      acd6(31)=acd6(7)*acd6(6)
      acd6(30)=acd6(30)-acd6(31)
      acd6(32)=2.0_ki*acd6(3)
      acd6(33)=-acd6(32)*acd6(30)
      acd6(34)=acd6(7)*acd6(8)
      acd6(35)=2.0_ki*acd6(12)
      acd6(36)=acd6(35)*acd6(13)
      acd6(34)=acd6(34)+acd6(36)
      acd6(36)=acd6(5)-acd6(10)
      acd6(37)=-acd6(4)*acd6(36)
      acd6(37)=acd6(37)+acd6(34)
      acd6(37)=acd6(2)*acd6(37)
      acd6(38)=acd6(3)*acd6(12)*acd6(11)
      acd6(38)=acd6(15)+4.0_ki*acd6(38)
      acd6(39)=acd6(14)*acd6(35)
      acd6(33)=acd6(37)+acd6(39)+acd6(33)+acd6(38)
      acd6(33)=acd6(2)*acd6(33)
      acd6(37)=acd6(1)-acd6(6)
      acd6(37)=acd6(37)*acd6(17)
      acd6(39)=acd6(25)*acd6(24)
      acd6(40)=acd6(23)*acd6(22)
      acd6(41)=2.0_ki*acd6(11)
      acd6(41)=acd6(41)*acd6(15)
      acd6(37)=acd6(37)+acd6(41)+acd6(39)+acd6(40)
      acd6(39)=acd6(16)-acd6(19)
      acd6(39)=acd6(39)*acd6(4)
      acd6(40)=ninjaP+acd6(20)
      acd6(40)=acd6(40)*acd6(12)
      acd6(41)=acd6(7)*acd6(18)
      acd6(39)=-acd6(39)+acd6(40)+acd6(41)+acd6(21)
      acd6(40)=acd6(2)*acd6(39)
      acd6(35)=acd6(35)*acd6(11)
      acd6(30)=acd6(30)-acd6(35)
      acd6(35)=2.0_ki*acd6(14)
      acd6(41)=-acd6(30)*acd6(35)
      acd6(40)=acd6(40)+acd6(41)+acd6(37)
      acd6(40)=acd6(2)*acd6(40)
      acd6(41)=acd6(12)*acd6(2)**2
      acd6(42)=acd6(4)*ninjaP
      acd6(29)=-acd6(29)*acd6(32)*acd6(42)
      acd6(35)=acd6(39)*acd6(35)
      acd6(34)=ninjaP*acd6(34)
      acd6(36)=-acd6(36)*acd6(42)
      acd6(34)=acd6(36)+acd6(34)
      acd6(34)=acd6(2)*acd6(34)
      acd6(31)=acd6(31)*acd6(32)
      acd6(31)=acd6(31)+acd6(38)
      acd6(31)=ninjaP*acd6(31)
      acd6(32)=acd6(25)*acd6(27)
      acd6(36)=acd6(23)*acd6(26)
      acd6(38)=acd6(15)*acd6(20)
      acd6(39)=-acd6(18)+acd6(16)
      acd6(39)=acd6(17)*acd6(39)
      acd6(29)=acd6(34)+acd6(35)+acd6(29)+acd6(39)+acd6(38)+acd6(36)+acd6(28)+a&
      &cd6(32)+acd6(31)
      acd6(29)=acd6(2)*acd6(29)
      acd6(30)=-acd6(14)*acd6(30)
      acd6(30)=acd6(30)+acd6(37)
      acd6(30)=acd6(14)*acd6(30)
      acd6(29)=acd6(30)+acd6(29)
      brack(ninjaidxt1mu0)=acd6(40)
      brack(ninjaidxt1mu2)=acd6(41)
      brack(ninjaidxt0mu0)=acd6(29)
      brack(ninjaidxt0mu2)=acd6(33)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d6h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd6h1
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
end module     pb_gg_hh_d6h1l131
