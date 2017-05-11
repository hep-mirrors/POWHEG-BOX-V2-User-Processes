module     pb_gg_hh_d6h3l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity3d6h3l132.f90
   ! generator: buildfortran_tn3.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak1k2)
      acd6(3)=dotproduct(ninjaE3,spvak2k1)
      acd6(4)=abb6(7)
      acd6(5)=dotproduct(k2,ninjaE3)
      acd6(6)=abb6(13)
      acd6(7)=dotproduct(l3,ninjaE3)
      acd6(8)=dotproduct(ninjaA0,ninjaE3)
      acd6(9)=abb6(5)
      acd6(10)=acd6(7)-acd6(1)
      acd6(10)=acd6(4)*acd6(10)
      acd6(11)=acd6(6)*acd6(5)
      acd6(12)=acd6(9)*acd6(8)
      acd6(10)=2.0_ki*acd6(12)+acd6(11)+acd6(10)
      acd6(10)=acd6(10)*acd6(3)*acd6(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd6(10)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(49) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd6(1)=dotproduct(ninjaE3,spvak1k2)
      acd6(2)=dotproduct(ninjaE3,spvak2k1)
      acd6(3)=abb6(5)
      acd6(4)=dotproduct(k1,ninjaA1)
      acd6(5)=abb6(7)
      acd6(6)=dotproduct(k1,ninjaE3)
      acd6(7)=dotproduct(ninjaA1,spvak1k2)
      acd6(8)=dotproduct(ninjaA1,spvak2k1)
      acd6(9)=dotproduct(k2,ninjaA1)
      acd6(10)=abb6(13)
      acd6(11)=dotproduct(k2,ninjaE3)
      acd6(12)=dotproduct(l3,ninjaA1)
      acd6(13)=dotproduct(l3,ninjaE3)
      acd6(14)=dotproduct(ninjaA0,ninjaA1)
      acd6(15)=dotproduct(ninjaA0,ninjaE3)
      acd6(16)=dotproduct(ninjaA1,ninjaA1)
      acd6(17)=dotproduct(k1,ninjaA0)
      acd6(18)=abb6(26)
      acd6(19)=abb6(25)
      acd6(20)=abb6(11)
      acd6(21)=dotproduct(ninjaA0,spvak1k2)
      acd6(22)=dotproduct(ninjaA0,spvak2k1)
      acd6(23)=abb6(22)
      acd6(24)=dotproduct(ninjaE3,spval3k2)
      acd6(25)=abb6(17)
      acd6(26)=dotproduct(ninjaE3,spvak1l3)
      acd6(27)=abb6(18)
      acd6(28)=dotproduct(k2,ninjaA0)
      acd6(29)=abb6(10)
      acd6(30)=dotproduct(l3,ninjaA0)
      acd6(31)=abb6(27)
      acd6(32)=dotproduct(ninjaA0,ninjaA0)
      acd6(33)=abb6(28)
      acd6(34)=abb6(31)
      acd6(35)=abb6(12)
      acd6(36)=abb6(6)
      acd6(37)=abb6(30)
      acd6(38)=acd6(3)*acd6(2)*acd6(1)
      acd6(39)=acd6(6)-acd6(13)
      acd6(39)=acd6(39)*acd6(5)
      acd6(40)=2.0_ki*acd6(15)
      acd6(41)=acd6(40)*acd6(3)
      acd6(42)=acd6(11)*acd6(10)
      acd6(41)=acd6(39)-acd6(41)-acd6(42)
      acd6(42)=-acd6(7)*acd6(41)
      acd6(43)=acd6(10)*acd6(9)
      acd6(44)=ninjaP1+2.0_ki*acd6(14)
      acd6(44)=acd6(3)*acd6(44)
      acd6(45)=acd6(12)-acd6(4)
      acd6(45)=acd6(5)*acd6(45)
      acd6(43)=acd6(45)+acd6(43)+acd6(44)
      acd6(43)=acd6(1)*acd6(43)
      acd6(42)=acd6(43)+acd6(42)
      acd6(42)=acd6(2)*acd6(42)
      acd6(43)=-acd6(1)*acd6(8)*acd6(41)
      acd6(42)=acd6(43)+acd6(42)
      acd6(43)=ninjaP2+acd6(16)
      acd6(43)=acd6(43)*acd6(38)
      acd6(44)=acd6(10)*acd6(28)
      acd6(45)=ninjaP0+acd6(32)
      acd6(45)=acd6(3)*acd6(45)
      acd6(46)=acd6(30)-acd6(17)
      acd6(46)=acd6(5)*acd6(46)
      acd6(44)=acd6(46)+acd6(45)+acd6(35)+acd6(44)
      acd6(44)=acd6(1)*acd6(44)
      acd6(45)=acd6(3)*acd6(21)
      acd6(45)=acd6(45)-acd6(23)
      acd6(45)=acd6(40)*acd6(45)
      acd6(46)=acd6(26)*acd6(37)
      acd6(47)=acd6(24)*acd6(36)
      acd6(48)=acd6(10)*acd6(21)
      acd6(48)=-acd6(23)+acd6(48)
      acd6(48)=acd6(11)*acd6(48)
      acd6(49)=-acd6(6)*acd6(23)
      acd6(39)=-acd6(21)*acd6(39)
      acd6(39)=acd6(44)+acd6(39)+acd6(49)+acd6(48)+acd6(46)+acd6(47)+acd6(45)
      acd6(39)=acd6(2)*acd6(39)
      acd6(44)=acd6(40)+acd6(13)
      acd6(44)=acd6(31)*acd6(44)
      acd6(45)=-acd6(26)*acd6(34)
      acd6(46)=acd6(24)*acd6(33)
      acd6(47)=acd6(11)*acd6(29)
      acd6(48)=acd6(6)*acd6(20)
      acd6(44)=acd6(48)+acd6(47)+acd6(45)+acd6(46)+acd6(44)
      acd6(40)=acd6(44)*acd6(40)
      acd6(44)=acd6(26)*acd6(27)
      acd6(45)=acd6(24)*acd6(25)
      acd6(46)=acd6(11)*acd6(19)
      acd6(47)=acd6(6)*acd6(18)
      acd6(44)=acd6(47)+acd6(46)+acd6(44)+acd6(45)
      acd6(44)=acd6(6)*acd6(44)
      acd6(41)=-acd6(1)*acd6(22)*acd6(41)
      acd6(39)=acd6(39)+acd6(41)+acd6(44)+acd6(40)
      brack(ninjaidxt0x0mu0)=acd6(39)
      brack(ninjaidxt0x0mu2)=acd6(38)
      brack(ninjaidxt0x1mu0)=acd6(42)
      brack(ninjaidxt0x2mu0)=acd6(43)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d6h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd6h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     pb_gg_hh_d6h3l132
