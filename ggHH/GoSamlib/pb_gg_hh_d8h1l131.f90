module     pb_gg_hh_d8h1l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d8h1l131.f90
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
      use pb_gg_hh_abbrevd8h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k1,ninjaE3)
      acd8(2)=dotproduct(ninjaE3,spvak2k1)
      acd8(3)=abb8(11)
      acd8(4)=dotproduct(k2,ninjaE3)
      acd8(5)=abb8(14)
      acd8(6)=dotproduct(l4,ninjaE3)
      acd8(7)=dotproduct(ninjaA,ninjaE3)
      acd8(8)=abb8(6)
      acd8(9)=acd8(6)-acd8(1)
      acd8(9)=acd8(3)*acd8(9)
      acd8(10)=acd8(5)*acd8(4)
      acd8(11)=acd8(8)*acd8(7)
      acd8(9)=2.0_ki*acd8(11)+acd8(10)+acd8(9)
      acd8(9)=acd8(9)*acd8(2)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd8(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k1,ninjaE3)
      acd8(2)=dotproduct(ninjaE3,spvak2k1)
      acd8(3)=dotproduct(ninjaE4,spvak2k1)
      acd8(4)=abb8(11)
      acd8(5)=dotproduct(k1,ninjaE4)
      acd8(6)=dotproduct(k2,ninjaE3)
      acd8(7)=abb8(14)
      acd8(8)=dotproduct(k2,ninjaE4)
      acd8(9)=dotproduct(l4,ninjaE3)
      acd8(10)=dotproduct(l4,ninjaE4)
      acd8(11)=dotproduct(ninjaA,ninjaE3)
      acd8(12)=abb8(6)
      acd8(13)=dotproduct(ninjaA,ninjaE4)
      acd8(14)=dotproduct(ninjaA,spvak2k1)
      acd8(15)=abb8(7)
      acd8(16)=dotproduct(k1,ninjaA)
      acd8(17)=abb8(8)
      acd8(18)=dotproduct(k2,ninjaA)
      acd8(19)=dotproduct(l4,ninjaA)
      acd8(20)=dotproduct(ninjaA,ninjaA)
      acd8(21)=abb8(9)
      acd8(22)=dotproduct(ninjaE3,spval4k1)
      acd8(23)=abb8(10)
      acd8(24)=dotproduct(ninjaE3,spvak2l4)
      acd8(25)=abb8(13)
      acd8(26)=dotproduct(ninjaA,spval4k1)
      acd8(27)=dotproduct(ninjaA,spvak2l4)
      acd8(28)=abb8(12)
      acd8(29)=acd8(1)-acd8(9)
      acd8(30)=acd8(29)*acd8(4)
      acd8(31)=acd8(7)*acd8(6)
      acd8(30)=acd8(30)-acd8(31)
      acd8(32)=2.0_ki*acd8(3)
      acd8(33)=-acd8(32)*acd8(30)
      acd8(34)=acd8(7)*acd8(8)
      acd8(35)=2.0_ki*acd8(12)
      acd8(36)=acd8(35)*acd8(13)
      acd8(34)=acd8(34)+acd8(36)
      acd8(36)=acd8(5)-acd8(10)
      acd8(37)=-acd8(4)*acd8(36)
      acd8(37)=acd8(37)+acd8(34)
      acd8(37)=acd8(2)*acd8(37)
      acd8(38)=acd8(3)*acd8(12)*acd8(11)
      acd8(38)=acd8(15)+4.0_ki*acd8(38)
      acd8(39)=acd8(14)*acd8(35)
      acd8(33)=acd8(37)+acd8(39)+acd8(33)+acd8(38)
      acd8(33)=acd8(2)*acd8(33)
      acd8(37)=acd8(1)-acd8(6)
      acd8(37)=acd8(37)*acd8(17)
      acd8(39)=acd8(25)*acd8(24)
      acd8(40)=acd8(23)*acd8(22)
      acd8(41)=2.0_ki*acd8(11)
      acd8(41)=acd8(41)*acd8(15)
      acd8(37)=acd8(37)+acd8(41)+acd8(39)+acd8(40)
      acd8(39)=acd8(16)-acd8(19)
      acd8(39)=acd8(39)*acd8(4)
      acd8(40)=ninjaP+acd8(20)
      acd8(40)=acd8(40)*acd8(12)
      acd8(41)=acd8(7)*acd8(18)
      acd8(39)=-acd8(39)+acd8(40)+acd8(41)+acd8(21)
      acd8(40)=acd8(2)*acd8(39)
      acd8(35)=acd8(35)*acd8(11)
      acd8(30)=acd8(30)-acd8(35)
      acd8(35)=2.0_ki*acd8(14)
      acd8(41)=-acd8(30)*acd8(35)
      acd8(40)=acd8(40)+acd8(41)+acd8(37)
      acd8(40)=acd8(2)*acd8(40)
      acd8(41)=acd8(12)*acd8(2)**2
      acd8(42)=acd8(4)*ninjaP
      acd8(29)=-acd8(29)*acd8(32)*acd8(42)
      acd8(35)=acd8(39)*acd8(35)
      acd8(34)=ninjaP*acd8(34)
      acd8(36)=-acd8(36)*acd8(42)
      acd8(34)=acd8(36)+acd8(34)
      acd8(34)=acd8(2)*acd8(34)
      acd8(31)=acd8(31)*acd8(32)
      acd8(31)=acd8(31)+acd8(38)
      acd8(31)=ninjaP*acd8(31)
      acd8(32)=acd8(25)*acd8(27)
      acd8(36)=acd8(23)*acd8(26)
      acd8(38)=acd8(15)*acd8(20)
      acd8(39)=-acd8(18)+acd8(16)
      acd8(39)=acd8(17)*acd8(39)
      acd8(29)=acd8(34)+acd8(35)+acd8(29)+acd8(39)+acd8(38)+acd8(36)+acd8(28)+a&
      &cd8(32)+acd8(31)
      acd8(29)=acd8(2)*acd8(29)
      acd8(30)=-acd8(14)*acd8(30)
      acd8(30)=acd8(30)+acd8(37)
      acd8(30)=acd8(14)*acd8(30)
      acd8(29)=acd8(30)+acd8(29)
      brack(ninjaidxt1mu0)=acd8(40)
      brack(ninjaidxt1mu2)=acd8(41)
      brack(ninjaidxt0mu0)=acd8(29)
      brack(ninjaidxt0mu2)=acd8(33)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d8h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd8h1
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
end module     pb_gg_hh_d8h1l131
