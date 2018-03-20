module     p0_gg_hhg_d51h0l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d51h0l131_qp.f90
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
      use p0_gg_hhg_abbrevd51h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd51
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd51(1)=dotproduct(k2,ninjaE3)
      acd51(2)=dotproduct(ninjaE3,spvak2k5)
      acd51(3)=dotproduct(ninjaE3,spvak1k5)
      acd51(4)=abb51(24)
      acd51(5)=dotproduct(ninjaE3,spvak2l3)
      acd51(6)=dotproduct(ninjaE3,spval3k5)
      acd51(7)=abb51(12)
      acd51(8)=dotproduct(ninjaA,ninjaE3)
      acd51(9)=dotproduct(ninjaE3,spvak1k2)
      acd51(10)=abb51(9)
      acd51(11)=acd51(5)*acd51(6)*acd51(7)
      acd51(12)=acd51(1)*acd51(2)*acd51(4)
      acd51(11)=acd51(11)+acd51(12)
      acd51(11)=acd51(1)*acd51(3)*acd51(11)
      acd51(12)=acd51(8)*acd51(9)*acd51(10)*acd51(2)**2
      acd51(11)=2.0_ki*acd51(12)+acd51(11)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd51(11)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd51h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(65) :: acd51
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd51(1)=dotproduct(k2,ninjaE3)
      acd51(2)=dotproduct(ninjaE3,spvak1k5)
      acd51(3)=dotproduct(ninjaE4,spvak2k5)
      acd51(4)=abb51(24)
      acd51(5)=dotproduct(ninjaE3,spvak2k5)
      acd51(6)=dotproduct(ninjaE4,spvak1k5)
      acd51(7)=dotproduct(k2,ninjaE4)
      acd51(8)=dotproduct(ninjaE3,spval3k5)
      acd51(9)=dotproduct(ninjaE4,spvak2l3)
      acd51(10)=abb51(12)
      acd51(11)=dotproduct(ninjaE3,spvak2l3)
      acd51(12)=dotproduct(ninjaE4,spval3k5)
      acd51(13)=abb51(22)
      acd51(14)=dotproduct(ninjaA,ninjaE3)
      acd51(15)=dotproduct(ninjaE3,spvak1k2)
      acd51(16)=abb51(9)
      acd51(17)=dotproduct(ninjaE4,spvak1k2)
      acd51(18)=abb51(32)
      acd51(19)=dotproduct(ninjaA,ninjaE4)
      acd51(20)=dotproduct(ninjaA,spvak1k2)
      acd51(21)=dotproduct(ninjaA,spvak2k5)
      acd51(22)=abb51(23)
      acd51(23)=dotproduct(k2,ninjaA)
      acd51(24)=dotproduct(ninjaA,spvak1k5)
      acd51(25)=abb51(27)
      acd51(26)=dotproduct(ninjaA,spval3k5)
      acd51(27)=dotproduct(ninjaA,spvak2l3)
      acd51(28)=abb51(8)
      acd51(29)=abb51(18)
      acd51(30)=abb51(10)
      acd51(31)=dotproduct(ninjaE3,spvak2k1)
      acd51(32)=dotproduct(ninjaA,ninjaA)
      acd51(33)=abb51(15)
      acd51(34)=dotproduct(ninjaA,spvak2k1)
      acd51(35)=abb51(19)
      acd51(36)=abb51(20)
      acd51(37)=abb51(26)
      acd51(38)=abb51(31)
      acd51(39)=abb51(33)
      acd51(40)=abb51(17)
      acd51(41)=abb51(16)
      acd51(42)=acd51(8)*acd51(10)
      acd51(43)=acd51(42)*acd51(9)
      acd51(44)=acd51(5)*acd51(4)
      acd51(45)=acd51(44)*acd51(7)
      acd51(46)=acd51(12)*acd51(11)*acd51(10)
      acd51(47)=acd51(3)*acd51(1)*acd51(4)
      acd51(43)=2.0_ki*acd51(45)+acd51(43)+acd51(46)+acd51(47)-acd51(13)
      acd51(45)=acd51(1)*acd51(43)
      acd51(46)=acd51(5)*acd51(22)
      acd51(47)=acd51(42)*acd51(11)
      acd51(48)=acd51(7)*acd51(47)
      acd51(45)=acd51(45)+acd51(48)-acd51(46)
      acd51(45)=acd51(2)*acd51(45)
      acd51(48)=2.0_ki*acd51(14)
      acd51(49)=acd51(16)*acd51(15)
      acd51(50)=acd51(3)*acd51(49)
      acd51(50)=acd51(18)+acd51(50)
      acd51(50)=acd51(50)*acd51(48)
      acd51(51)=acd51(49)*acd51(21)
      acd51(50)=acd51(51)+acd51(50)
      acd51(52)=acd51(48)*acd51(16)
      acd51(53)=acd51(52)*acd51(17)
      acd51(54)=acd51(15)*acd51(19)
      acd51(54)=acd51(20)+2.0_ki*acd51(54)
      acd51(55)=acd51(16)*acd51(54)
      acd51(55)=acd51(55)+acd51(53)
      acd51(55)=acd51(5)*acd51(55)
      acd51(50)=2.0_ki*acd51(50)+acd51(55)
      acd51(50)=acd51(5)*acd51(50)
      acd51(55)=acd51(44)*acd51(1)
      acd51(47)=acd51(55)+acd51(47)
      acd51(47)=acd51(47)*acd51(1)
      acd51(55)=acd51(6)*acd51(47)
      acd51(45)=acd51(45)+acd51(50)+acd51(55)
      acd51(50)=acd51(48)*acd51(13)
      acd51(55)=acd51(18)*acd51(31)
      acd51(50)=acd51(50)-acd51(55)
      acd51(56)=acd51(10)*acd51(27)
      acd51(56)=acd51(28)+acd51(56)
      acd51(56)=acd51(8)*acd51(56)
      acd51(57)=acd51(10)*acd51(26)
      acd51(57)=acd51(57)+acd51(30)
      acd51(58)=acd51(11)*acd51(57)
      acd51(59)=acd51(23)*acd51(4)
      acd51(60)=acd51(29)+2.0_ki*acd51(59)
      acd51(61)=acd51(5)*acd51(60)
      acd51(62)=acd51(4)*acd51(21)
      acd51(62)=acd51(62)+acd51(25)
      acd51(63)=acd51(1)*acd51(62)
      acd51(56)=acd51(63)+acd51(61)+acd51(58)+acd51(56)-acd51(50)
      acd51(56)=acd51(1)*acd51(56)
      acd51(58)=acd51(10)*acd51(23)
      acd51(58)=acd51(58)+acd51(22)
      acd51(61)=acd51(11)*acd51(8)
      acd51(63)=acd51(58)*acd51(61)
      acd51(46)=-acd51(48)*acd51(46)
      acd51(46)=acd51(56)+acd51(63)+acd51(46)
      acd51(46)=acd51(2)*acd51(46)
      acd51(56)=ninjaP+acd51(32)
      acd51(63)=acd51(56)*acd51(49)
      acd51(64)=acd51(15)*acd51(33)
      acd51(52)=acd51(20)*acd51(52)
      acd51(52)=acd51(52)+acd51(64)+acd51(63)
      acd51(52)=acd51(5)*acd51(52)
      acd51(63)=acd51(14)*acd51(18)
      acd51(51)=acd51(51)+acd51(63)
      acd51(51)=acd51(14)*acd51(51)
      acd51(51)=4.0_ki*acd51(51)+acd51(52)
      acd51(51)=acd51(5)*acd51(51)
      acd51(47)=acd51(24)*acd51(47)
      acd51(46)=acd51(46)+acd51(51)+acd51(47)
      acd51(47)=acd51(5)**2*acd51(49)
      acd51(43)=ninjaP*acd51(43)
      acd51(51)=2.0_ki*acd51(23)
      acd51(51)=acd51(62)*acd51(51)
      acd51(52)=acd51(27)*acd51(57)
      acd51(57)=acd51(26)*acd51(28)
      acd51(63)=-acd51(13)*acd51(32)
      acd51(64)=acd51(18)*acd51(34)
      acd51(65)=acd51(21)*acd51(29)
      acd51(43)=acd51(51)+acd51(65)+acd51(64)+acd51(63)+acd51(57)+acd51(35)+acd&
      &51(43)+acd51(52)
      acd51(43)=acd51(1)*acd51(43)
      acd51(51)=acd51(26)*acd51(58)
      acd51(52)=acd51(23)*acd51(30)
      acd51(42)=acd51(42)*ninjaP
      acd51(57)=acd51(7)*acd51(42)
      acd51(51)=acd51(57)+acd51(52)+acd51(40)+acd51(51)
      acd51(51)=acd51(11)*acd51(51)
      acd51(52)=acd51(27)*acd51(58)
      acd51(57)=acd51(23)*acd51(28)
      acd51(52)=acd51(57)+acd51(52)
      acd51(52)=acd51(8)*acd51(52)
      acd51(57)=-acd51(21)*acd51(22)
      acd51(58)=-acd51(23)*acd51(13)
      acd51(57)=acd51(58)+acd51(37)+acd51(57)
      acd51(57)=acd51(57)*acd51(48)
      acd51(58)=-acd51(22)*acd51(56)
      acd51(59)=acd51(29)+acd51(59)
      acd51(59)=acd51(23)*acd51(59)
      acd51(58)=acd51(59)+acd51(39)+acd51(58)
      acd51(58)=acd51(5)*acd51(58)
      acd51(55)=acd51(23)*acd51(55)
      acd51(43)=acd51(43)+acd51(58)+acd51(57)+acd51(51)+acd51(55)+acd51(52)
      acd51(43)=acd51(2)*acd51(43)
      acd51(51)=acd51(24)*acd51(30)
      acd51(52)=acd51(10)*acd51(24)
      acd51(55)=acd51(26)*acd51(52)
      acd51(42)=acd51(6)*acd51(42)
      acd51(42)=acd51(42)+acd51(51)+acd51(55)
      acd51(42)=acd51(11)*acd51(42)
      acd51(50)=-acd51(24)*acd51(50)
      acd51(51)=acd51(24)*acd51(28)
      acd51(55)=acd51(27)*acd51(52)
      acd51(51)=acd51(51)+acd51(55)
      acd51(51)=acd51(8)*acd51(51)
      acd51(55)=acd51(24)*acd51(62)
      acd51(44)=ninjaP*acd51(6)*acd51(44)
      acd51(44)=acd51(55)+acd51(44)
      acd51(44)=acd51(1)*acd51(44)
      acd51(55)=acd51(24)*acd51(60)
      acd51(55)=acd51(36)+acd51(55)
      acd51(55)=acd51(5)*acd51(55)
      acd51(42)=acd51(44)+acd51(55)+acd51(42)+acd51(51)+acd51(50)
      acd51(42)=acd51(1)*acd51(42)
      acd51(44)=acd51(21)*acd51(20)
      acd51(50)=ninjaP*acd51(15)*acd51(3)
      acd51(44)=acd51(44)+acd51(50)
      acd51(44)=acd51(16)*acd51(44)
      acd51(50)=acd51(24)*acd51(22)
      acd51(51)=2.0_ki*acd51(56)
      acd51(51)=acd51(18)*acd51(51)
      acd51(44)=2.0_ki*acd51(44)-acd51(50)+acd51(38)+acd51(51)
      acd51(44)=acd51(14)*acd51(44)
      acd51(51)=acd51(16)*acd51(56)
      acd51(51)=acd51(33)+acd51(51)
      acd51(51)=acd51(51)*acd51(15)*acd51(21)
      acd51(44)=acd51(44)+acd51(51)
      acd51(51)=acd51(20)*acd51(32)
      acd51(54)=ninjaP*acd51(54)
      acd51(51)=acd51(51)+acd51(54)
      acd51(51)=acd51(16)*acd51(51)
      acd51(54)=acd51(20)*acd51(33)
      acd51(53)=ninjaP*acd51(53)
      acd51(51)=acd51(53)+acd51(54)+acd51(51)
      acd51(51)=acd51(5)*acd51(51)
      acd51(44)=2.0_ki*acd51(44)+acd51(51)
      acd51(44)=acd51(5)*acd51(44)
      acd51(51)=acd51(23)*acd51(52)
      acd51(50)=acd51(51)+acd51(41)+acd51(50)
      acd51(50)=acd51(50)*acd51(61)
      acd51(49)=acd51(21)**2*acd51(49)
      acd51(51)=acd51(21)*acd51(18)*acd51(48)
      acd51(49)=acd51(49)+acd51(51)
      acd51(48)=acd51(49)*acd51(48)
      acd51(42)=acd51(43)+acd51(42)+acd51(44)+acd51(50)+acd51(48)
      brack(ninjaidxt1mu0)=acd51(46)
      brack(ninjaidxt1mu2)=acd51(47)
      brack(ninjaidxt0mu0)=acd51(42)
      brack(ninjaidxt0mu2)=acd51(45)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d51h0_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd51h0_qp
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
end module     p0_gg_hhg_d51h0l131_qp
