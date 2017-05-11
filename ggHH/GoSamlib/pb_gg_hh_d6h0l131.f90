module     pb_gg_hh_d6h0l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity0d6h0l131.f90
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
      use pb_gg_hh_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak1k2)
      acd6(3)=dotproduct(ninjaE3,spvak2k1)
      acd6(4)=abb6(7)
      acd6(5)=dotproduct(k2,ninjaE3)
      acd6(6)=abb6(13)
      acd6(7)=dotproduct(l3,ninjaE3)
      acd6(8)=dotproduct(ninjaA,ninjaE3)
      acd6(9)=abb6(5)
      acd6(10)=acd6(7)-acd6(1)
      acd6(10)=acd6(4)*acd6(10)
      acd6(11)=acd6(6)*acd6(5)
      acd6(12)=acd6(9)*acd6(8)
      acd6(10)=2.0_ki*acd6(12)+acd6(11)+acd6(10)
      acd6(10)=acd6(10)*acd6(3)*acd6(2)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd6(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(68) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak1k2)
      acd6(3)=dotproduct(ninjaE4,spvak2k1)
      acd6(4)=abb6(7)
      acd6(5)=dotproduct(ninjaE3,spvak2k1)
      acd6(6)=dotproduct(ninjaE4,spvak1k2)
      acd6(7)=abb6(11)
      acd6(8)=dotproduct(k1,ninjaE4)
      acd6(9)=dotproduct(k2,ninjaE3)
      acd6(10)=abb6(13)
      acd6(11)=abb6(10)
      acd6(12)=dotproduct(k2,ninjaE4)
      acd6(13)=dotproduct(l3,ninjaE3)
      acd6(14)=abb6(27)
      acd6(15)=dotproduct(l3,ninjaE4)
      acd6(16)=dotproduct(ninjaA,ninjaE3)
      acd6(17)=abb6(5)
      acd6(18)=dotproduct(ninjaA,ninjaE4)
      acd6(19)=dotproduct(ninjaA,spvak1k2)
      acd6(20)=dotproduct(ninjaA,spvak2k1)
      acd6(21)=abb6(18)
      acd6(22)=dotproduct(ninjaE3,spvak2l3)
      acd6(23)=abb6(32)
      acd6(24)=dotproduct(ninjaE3,spval3k1)
      acd6(25)=abb6(28)
      acd6(26)=dotproduct(k1,ninjaA)
      acd6(27)=abb6(26)
      acd6(28)=abb6(25)
      acd6(29)=abb6(17)
      acd6(30)=abb6(30)
      acd6(31)=dotproduct(k2,ninjaA)
      acd6(32)=dotproduct(l3,ninjaA)
      acd6(33)=dotproduct(ninjaA,ninjaA)
      acd6(34)=abb6(12)
      acd6(35)=abb6(6)
      acd6(36)=abb6(22)
      acd6(37)=dotproduct(ninjaA,spvak2l3)
      acd6(38)=dotproduct(ninjaA,spval3k1)
      acd6(39)=abb6(23)
      acd6(40)=abb6(21)
      acd6(41)=abb6(20)
      acd6(42)=abb6(19)
      acd6(43)=abb6(14)
      acd6(44)=abb6(8)
      acd6(45)=abb6(33)
      acd6(46)=abb6(29)
      acd6(47)=acd6(24)*acd6(25)
      acd6(48)=acd6(22)*acd6(23)
      acd6(47)=acd6(47)-acd6(48)
      acd6(48)=acd6(13)*acd6(14)
      acd6(49)=acd6(9)*acd6(11)
      acd6(48)=-acd6(47)+acd6(48)+acd6(49)
      acd6(49)=acd6(1)*acd6(7)
      acd6(49)=acd6(48)+acd6(49)
      acd6(50)=acd6(1)-acd6(13)
      acd6(51)=acd6(50)*acd6(4)
      acd6(52)=2.0_ki*acd6(16)
      acd6(53)=acd6(52)*acd6(17)
      acd6(54)=acd6(9)*acd6(10)
      acd6(55)=acd6(51)-acd6(53)-acd6(54)
      acd6(56)=-acd6(6)*acd6(55)
      acd6(57)=acd6(19)*acd6(17)
      acd6(56)=acd6(57)+acd6(56)
      acd6(56)=acd6(5)*acd6(56)
      acd6(58)=acd6(8)-acd6(15)
      acd6(58)=acd6(58)*acd6(4)
      acd6(59)=acd6(10)*acd6(12)
      acd6(60)=2.0_ki*acd6(17)
      acd6(60)=acd6(60)*acd6(18)
      acd6(58)=acd6(58)-acd6(59)-acd6(60)
      acd6(58)=acd6(58)*acd6(5)
      acd6(59)=acd6(54)*acd6(3)
      acd6(60)=acd6(17)*acd6(20)
      acd6(61)=acd6(60)-acd6(21)
      acd6(58)=acd6(58)-acd6(59)-acd6(61)
      acd6(51)=-acd6(51)+acd6(53)
      acd6(51)=acd6(3)*acd6(51)
      acd6(51)=acd6(51)-acd6(58)
      acd6(51)=acd6(2)*acd6(51)
      acd6(53)=acd6(16)*acd6(14)
      acd6(51)=acd6(51)+acd6(56)+4.0_ki*acd6(53)+acd6(49)
      acd6(53)=acd6(24)*acd6(30)
      acd6(56)=acd6(22)*acd6(29)
      acd6(59)=acd6(9)*acd6(28)
      acd6(62)=acd6(1)*acd6(27)
      acd6(53)=acd6(62)+acd6(59)+acd6(53)+acd6(56)
      acd6(53)=acd6(1)*acd6(53)
      acd6(56)=acd6(4)*acd6(50)*acd6(20)
      acd6(59)=acd6(20)*acd6(10)
      acd6(59)=acd6(59)-acd6(21)
      acd6(59)=acd6(59)*acd6(9)
      acd6(62)=acd6(24)*acd6(36)
      acd6(63)=acd6(22)*acd6(35)
      acd6(56)=acd6(56)-acd6(59)-acd6(62)-acd6(63)
      acd6(59)=acd6(17)*acd6(33)
      acd6(62)=acd6(10)*acd6(31)
      acd6(62)=acd6(62)+acd6(34)
      acd6(59)=acd6(59)+acd6(62)
      acd6(63)=ninjaP*acd6(17)
      acd6(64)=acd6(26)-acd6(32)
      acd6(65)=-acd6(4)*acd6(64)
      acd6(65)=acd6(65)+acd6(63)+acd6(59)
      acd6(65)=acd6(5)*acd6(65)
      acd6(66)=acd6(61)*acd6(52)
      acd6(67)=-acd6(1)*acd6(21)
      acd6(65)=acd6(65)+acd6(66)+acd6(67)-acd6(56)
      acd6(65)=acd6(2)*acd6(65)
      acd6(66)=acd6(14)*acd6(52)
      acd6(49)=acd6(66)+acd6(49)
      acd6(49)=acd6(49)*acd6(52)
      acd6(55)=-acd6(5)*acd6(19)*acd6(55)
      acd6(49)=acd6(65)+acd6(55)+acd6(53)+acd6(49)
      acd6(53)=acd6(2)*acd6(5)*acd6(17)
      acd6(55)=-ninjaP*acd6(58)
      acd6(58)=acd6(63)*acd6(52)
      acd6(63)=acd6(3)*acd6(58)
      acd6(50)=acd6(50)*ninjaP
      acd6(65)=-acd6(3)*acd6(50)
      acd6(66)=-acd6(20)*acd6(64)
      acd6(65)=acd6(66)+acd6(65)
      acd6(65)=acd6(4)*acd6(65)
      acd6(66)=acd6(36)*acd6(38)
      acd6(67)=acd6(35)*acd6(37)
      acd6(68)=-acd6(33)-acd6(31)-acd6(26)
      acd6(68)=acd6(21)*acd6(68)
      acd6(62)=acd6(20)*acd6(62)
      acd6(60)=acd6(33)*acd6(60)
      acd6(55)=acd6(65)+acd6(63)+acd6(60)+acd6(62)+acd6(68)+acd6(67)+acd6(43)+a&
      &cd6(66)+acd6(55)
      acd6(55)=acd6(2)*acd6(55)
      acd6(60)=ninjaP+acd6(33)
      acd6(62)=acd6(7)*acd6(60)
      acd6(63)=acd6(30)*acd6(38)
      acd6(65)=acd6(29)*acd6(37)
      acd6(66)=acd6(31)*acd6(28)
      acd6(67)=acd6(26)*acd6(27)
      acd6(68)=-acd6(19)*acd6(21)
      acd6(62)=acd6(68)+2.0_ki*acd6(67)+acd6(66)+acd6(65)+acd6(39)+acd6(63)+acd&
      &6(62)
      acd6(62)=acd6(1)*acd6(62)
      acd6(60)=acd6(32)+2.0_ki*acd6(60)
      acd6(60)=acd6(14)*acd6(60)
      acd6(63)=-acd6(25)*acd6(38)
      acd6(65)=acd6(23)*acd6(37)
      acd6(66)=acd6(31)*acd6(11)
      acd6(67)=acd6(26)*acd6(7)
      acd6(61)=acd6(19)*acd6(61)
      acd6(60)=acd6(61)+acd6(67)+acd6(66)+acd6(65)+acd6(42)+acd6(63)+acd6(60)
      acd6(52)=acd6(60)*acd6(52)
      acd6(59)=acd6(19)*acd6(59)
      acd6(54)=acd6(6)*acd6(54)
      acd6(54)=acd6(54)+acd6(57)
      acd6(54)=ninjaP*acd6(54)
      acd6(57)=acd6(6)*acd6(58)
      acd6(50)=-acd6(6)*acd6(50)
      acd6(58)=-acd6(19)*acd6(64)
      acd6(50)=acd6(58)+acd6(50)
      acd6(50)=acd6(4)*acd6(50)
      acd6(50)=acd6(50)+acd6(57)+acd6(54)+acd6(44)+acd6(59)
      acd6(50)=acd6(5)*acd6(50)
      acd6(54)=-acd6(19)*acd6(56)
      acd6(48)=ninjaP*acd6(48)
      acd6(47)=-acd6(33)*acd6(47)
      acd6(56)=acd6(26)*acd6(28)
      acd6(57)=acd6(33)*acd6(11)
      acd6(56)=acd6(57)+acd6(40)+acd6(56)
      acd6(56)=acd6(9)*acd6(56)
      acd6(57)=acd6(26)*acd6(30)
      acd6(57)=acd6(46)+acd6(57)
      acd6(57)=acd6(24)*acd6(57)
      acd6(58)=acd6(26)*acd6(29)
      acd6(58)=acd6(45)+acd6(58)
      acd6(58)=acd6(22)*acd6(58)
      acd6(59)=acd6(33)*acd6(14)
      acd6(59)=acd6(41)+acd6(59)
      acd6(59)=acd6(13)*acd6(59)
      acd6(47)=acd6(55)+acd6(50)+acd6(52)+acd6(62)+acd6(48)+acd6(56)+acd6(59)+a&
      &cd6(47)+acd6(57)+acd6(58)+acd6(54)
      brack(ninjaidxt1mu0)=acd6(49)
      brack(ninjaidxt1mu2)=acd6(53)
      brack(ninjaidxt0mu0)=acd6(47)
      brack(ninjaidxt0mu2)=acd6(51)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d6h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd6h0
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
end module     pb_gg_hh_d6h0l131
