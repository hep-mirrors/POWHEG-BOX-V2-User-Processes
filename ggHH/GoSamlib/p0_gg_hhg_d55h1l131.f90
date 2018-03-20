module     p0_gg_hhg_d55h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d55h1l131.f90
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
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd55
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
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(49) :: acd55
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd55(1)=dotproduct(ninjaE3,spvak2l3)
      acd55(2)=dotproduct(ninjaE3,spvak2k5)
      acd55(3)=abb55(41)
      acd55(4)=dotproduct(ninjaE3,spvak2l4)
      acd55(5)=abb55(45)
      acd55(6)=dotproduct(k1,ninjaE3)
      acd55(7)=abb55(37)
      acd55(8)=dotproduct(ninjaA,ninjaE3)
      acd55(9)=dotproduct(ninjaE3,spvak2k1)
      acd55(10)=abb55(10)
      acd55(11)=abb55(13)
      acd55(12)=abb55(18)
      acd55(13)=dotproduct(ninjaE3,spval4k1)
      acd55(14)=abb55(28)
      acd55(15)=dotproduct(ninjaE3,spval3k1)
      acd55(16)=abb55(47)
      acd55(17)=dotproduct(k1,ninjaA)
      acd55(18)=dotproduct(ninjaA,spvak2l3)
      acd55(19)=dotproduct(ninjaA,spvak2k5)
      acd55(20)=abb55(39)
      acd55(21)=dotproduct(ninjaA,ninjaA)
      acd55(22)=dotproduct(ninjaA,spvak2l4)
      acd55(23)=abb55(48)
      acd55(24)=abb55(17)
      acd55(25)=abb55(43)
      acd55(26)=dotproduct(ninjaA,spvak2k1)
      acd55(27)=dotproduct(ninjaA,spval4k1)
      acd55(28)=dotproduct(ninjaA,spval3k1)
      acd55(29)=abb55(19)
      acd55(30)=abb55(11)
      acd55(31)=abb55(21)
      acd55(32)=abb55(40)
      acd55(33)=abb55(50)
      acd55(34)=abb55(31)
      acd55(35)=abb55(14)
      acd55(36)=abb55(30)
      acd55(37)=abb55(46)
      acd55(38)=acd55(4)*acd55(5)
      acd55(39)=-acd55(1)*acd55(3)
      acd55(38)=acd55(38)+acd55(39)
      acd55(38)=acd55(2)*acd55(38)
      acd55(39)=acd55(15)*acd55(16)
      acd55(40)=2.0_ki*acd55(8)
      acd55(41)=acd55(5)*acd55(40)
      acd55(42)=acd55(9)*acd55(12)
      acd55(41)=acd55(42)+acd55(39)+acd55(41)
      acd55(41)=acd55(4)*acd55(41)
      acd55(42)=acd55(13)*acd55(14)
      acd55(43)=acd55(6)*acd55(7)
      acd55(42)=acd55(42)+acd55(43)
      acd55(43)=-acd55(3)*acd55(40)
      acd55(44)=acd55(9)*acd55(10)
      acd55(43)=acd55(44)+acd55(43)+acd55(42)
      acd55(43)=acd55(1)*acd55(43)
      acd55(44)=acd55(2)*acd55(9)*acd55(11)
      acd55(41)=acd55(44)+acd55(41)+acd55(43)
      acd55(41)=acd55(2)*acd55(41)
      acd55(43)=acd55(14)*acd55(27)
      acd55(44)=acd55(10)*acd55(26)
      acd55(45)=acd55(7)*acd55(17)
      acd55(46)=acd55(21)+ninjaP
      acd55(47)=-acd55(3)*acd55(46)
      acd55(43)=acd55(47)+acd55(45)+acd55(44)+acd55(32)+acd55(43)
      acd55(43)=acd55(1)*acd55(43)
      acd55(44)=acd55(12)*acd55(22)
      acd55(45)=acd55(10)*acd55(18)
      acd55(47)=acd55(19)*acd55(11)
      acd55(44)=2.0_ki*acd55(47)+acd55(45)+acd55(30)+acd55(44)
      acd55(44)=acd55(9)*acd55(44)
      acd55(45)=acd55(16)*acd55(28)
      acd55(47)=acd55(12)*acd55(26)
      acd55(46)=acd55(5)*acd55(46)
      acd55(45)=acd55(46)+acd55(47)+acd55(35)+acd55(45)
      acd55(45)=acd55(4)*acd55(45)
      acd55(46)=acd55(18)*acd55(42)
      acd55(47)=acd55(5)*acd55(22)
      acd55(48)=-acd55(3)*acd55(18)
      acd55(47)=acd55(48)+acd55(24)+acd55(47)
      acd55(47)=acd55(47)*acd55(40)
      acd55(48)=acd55(16)*acd55(22)
      acd55(48)=acd55(36)+acd55(48)
      acd55(48)=acd55(15)*acd55(48)
      acd55(49)=acd55(11)*acd55(26)
      acd55(49)=acd55(34)+acd55(49)
      acd55(49)=acd55(2)*acd55(49)
      acd55(43)=acd55(49)+acd55(43)+acd55(45)+acd55(44)+acd55(47)+acd55(48)+acd&
      &55(46)
      acd55(43)=acd55(2)*acd55(43)
      acd55(42)=acd55(19)*acd55(42)
      acd55(44)=-acd55(19)*acd55(3)
      acd55(44)=-acd55(23)+acd55(44)
      acd55(44)=acd55(44)*acd55(40)
      acd55(45)=acd55(13)*acd55(33)
      acd55(46)=acd55(6)*acd55(20)
      acd55(47)=acd55(19)*acd55(10)
      acd55(47)=acd55(29)+acd55(47)
      acd55(47)=acd55(9)*acd55(47)
      acd55(42)=acd55(47)+acd55(44)+acd55(42)+acd55(45)+acd55(46)
      acd55(42)=acd55(1)*acd55(42)
      acd55(44)=acd55(19)*acd55(5)
      acd55(44)=acd55(25)+acd55(44)
      acd55(40)=acd55(44)*acd55(40)
      acd55(44)=acd55(15)*acd55(37)
      acd55(39)=acd55(19)*acd55(39)
      acd55(45)=acd55(19)*acd55(12)
      acd55(45)=acd55(31)+acd55(45)
      acd55(45)=acd55(9)*acd55(45)
      acd55(39)=acd55(45)+acd55(40)+acd55(44)+acd55(39)
      acd55(39)=acd55(4)*acd55(39)
      acd55(39)=acd55(43)+acd55(39)+acd55(42)
      brack(ninjaidxt1mu0)=acd55(41)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd55(39)
      brack(ninjaidxt0mu2)=acd55(38)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d55h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd55h1
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
end module     p0_gg_hhg_d55h1l131
