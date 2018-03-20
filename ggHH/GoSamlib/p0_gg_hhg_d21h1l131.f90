module     p0_gg_hhg_d21h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d21h1l131.f90
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
      use p0_gg_hhg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd21(1)=dotproduct(k2,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spvak2k1)
      acd21(3)=dotproduct(ninjaE3,spvak2k5)
      acd21(4)=abb21(23)
      acd21(5)=abb21(34)
      acd21(6)=dotproduct(ninjaA,ninjaE3)
      acd21(7)=abb21(12)
      acd21(8)=abb21(21)
      acd21(9)=dotproduct(ninjaE3,spvak2l3)
      acd21(10)=dotproduct(ninjaE3,spval3k5)
      acd21(11)=abb21(14)
      acd21(12)=dotproduct(ninjaE3,spval3k1)
      acd21(13)=acd21(11)*acd21(12)
      acd21(14)=-acd21(8)*acd21(10)
      acd21(13)=acd21(13)+acd21(14)
      acd21(13)=acd21(9)*acd21(13)
      acd21(14)=2.0_ki*acd21(6)
      acd21(15)=acd21(7)*acd21(14)
      acd21(16)=acd21(1)*acd21(4)
      acd21(15)=acd21(15)+acd21(16)
      acd21(15)=acd21(2)*acd21(15)
      acd21(14)=-acd21(8)*acd21(14)
      acd21(16)=acd21(1)*acd21(5)
      acd21(14)=acd21(14)+acd21(16)
      acd21(14)=acd21(3)*acd21(14)
      acd21(13)=acd21(14)+acd21(13)+acd21(15)
      acd21(13)=acd21(3)*acd21(13)
      acd21(14)=acd21(2)*acd21(9)*acd21(10)*acd21(11)
      acd21(13)=acd21(14)+acd21(13)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd21(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(58) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd21(1)=dotproduct(k2,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spvak2k5)
      acd21(3)=dotproduct(ninjaE4,spvak2k5)
      acd21(4)=abb21(34)
      acd21(5)=dotproduct(ninjaE4,spvak2k1)
      acd21(6)=abb21(23)
      acd21(7)=dotproduct(ninjaE3,spvak2k1)
      acd21(8)=dotproduct(k2,ninjaE4)
      acd21(9)=dotproduct(ninjaA,ninjaE3)
      acd21(10)=abb21(21)
      acd21(11)=abb21(12)
      acd21(12)=dotproduct(ninjaA,ninjaE4)
      acd21(13)=dotproduct(ninjaA,spvak2k5)
      acd21(14)=dotproduct(ninjaA,spvak2k1)
      acd21(15)=dotproduct(ninjaE3,spvak2l3)
      acd21(16)=dotproduct(ninjaE4,spval3k5)
      acd21(17)=dotproduct(ninjaE4,spval3k1)
      acd21(18)=abb21(14)
      acd21(19)=dotproduct(ninjaE3,spval3k5)
      acd21(20)=dotproduct(ninjaE3,spval3k1)
      acd21(21)=dotproduct(ninjaE4,spvak2l3)
      acd21(22)=abb21(25)
      acd21(23)=abb21(22)
      acd21(24)=dotproduct(k2,ninjaA)
      acd21(25)=abb21(31)
      acd21(26)=dotproduct(ninjaA,ninjaA)
      acd21(27)=dotproduct(ninjaA,spvak2l3)
      acd21(28)=dotproduct(ninjaA,spval3k5)
      acd21(29)=dotproduct(ninjaA,spval3k1)
      acd21(30)=abb21(11)
      acd21(31)=abb21(13)
      acd21(32)=abb21(16)
      acd21(33)=abb21(29)
      acd21(34)=abb21(19)
      acd21(35)=abb21(18)
      acd21(36)=abb21(24)
      acd21(37)=abb21(17)
      acd21(38)=dotproduct(ninjaE3,spvak2l4)
      acd21(39)=abb21(15)
      acd21(40)=acd21(19)*acd21(21)
      acd21(41)=acd21(9)*acd21(3)
      acd21(42)=acd21(15)*acd21(16)
      acd21(40)=4.0_ki*acd21(41)+acd21(40)+acd21(42)
      acd21(40)=acd21(40)*acd21(10)
      acd21(41)=acd21(6)*acd21(5)
      acd21(42)=acd21(3)*acd21(4)
      acd21(41)=acd21(41)+2.0_ki*acd21(42)
      acd21(41)=acd21(41)*acd21(1)
      acd21(42)=acd21(4)*acd21(8)
      acd21(43)=2.0_ki*acd21(10)
      acd21(44)=acd21(43)*acd21(12)
      acd21(42)=acd21(42)-acd21(44)
      acd21(42)=acd21(42)*acd21(2)
      acd21(44)=acd21(6)*acd21(8)
      acd21(45)=2.0_ki*acd21(11)
      acd21(45)=acd21(45)*acd21(12)
      acd21(44)=acd21(44)+acd21(45)
      acd21(44)=acd21(44)*acd21(7)
      acd21(45)=2.0_ki*acd21(9)
      acd21(46)=acd21(45)*acd21(5)
      acd21(46)=acd21(46)+acd21(14)
      acd21(46)=acd21(46)*acd21(11)
      acd21(47)=acd21(15)*acd21(18)
      acd21(48)=acd21(47)*acd21(17)
      acd21(49)=acd21(18)*acd21(21)
      acd21(50)=acd21(20)*acd21(49)
      acd21(40)=acd21(42)+acd21(44)+acd21(41)-acd21(40)+acd21(46)+acd21(48)+acd&
      &21(50)+acd21(22)
      acd21(41)=-acd21(13)*acd21(43)
      acd21(41)=acd21(41)+acd21(40)
      acd21(41)=acd21(2)*acd21(41)
      acd21(42)=acd21(45)*acd21(11)
      acd21(43)=acd21(1)*acd21(6)
      acd21(42)=acd21(42)+acd21(43)
      acd21(43)=acd21(42)*acd21(3)
      acd21(44)=acd21(47)*acd21(16)
      acd21(46)=acd21(19)*acd21(49)
      acd21(43)=acd21(23)+acd21(43)+acd21(44)+acd21(46)
      acd21(44)=acd21(13)*acd21(11)
      acd21(44)=acd21(44)+acd21(43)
      acd21(44)=acd21(7)*acd21(44)
      acd21(46)=acd21(3)*acd21(20)
      acd21(48)=acd21(19)*acd21(5)
      acd21(46)=acd21(46)+acd21(48)
      acd21(46)=acd21(46)*acd21(47)
      acd21(48)=acd21(10)*acd21(15)*acd21(19)
      acd21(49)=acd21(48)*acd21(3)
      acd21(46)=acd21(46)-acd21(49)
      acd21(41)=acd21(41)+acd21(44)+acd21(46)
      acd21(44)=acd21(14)*acd21(42)
      acd21(49)=acd21(19)*acd21(27)
      acd21(50)=acd21(15)*acd21(28)
      acd21(49)=acd21(49)+acd21(50)
      acd21(49)=acd21(49)*acd21(10)
      acd21(50)=acd21(18)*acd21(29)
      acd21(50)=acd21(50)+acd21(30)
      acd21(50)=acd21(50)*acd21(15)
      acd21(51)=acd21(1)*acd21(25)
      acd21(52)=acd21(19)*acd21(33)
      acd21(53)=acd21(45)*acd21(22)
      acd21(54)=acd21(18)*acd21(27)
      acd21(55)=acd21(54)*acd21(20)
      acd21(44)=-acd21(49)+acd21(51)+acd21(55)+acd21(52)+acd21(53)+acd21(50)+ac&
      &d21(44)
      acd21(49)=acd21(1)*acd21(4)
      acd21(50)=acd21(45)*acd21(10)
      acd21(49)=acd21(49)-acd21(50)
      acd21(50)=2.0_ki*acd21(13)
      acd21(51)=acd21(49)*acd21(50)
      acd21(52)=ninjaP+acd21(26)
      acd21(53)=acd21(11)*acd21(52)
      acd21(55)=acd21(6)*acd21(24)
      acd21(55)=acd21(55)+acd21(32)
      acd21(53)=acd21(55)+acd21(53)
      acd21(56)=acd21(7)*acd21(53)
      acd21(52)=acd21(52)*acd21(10)
      acd21(57)=acd21(4)*acd21(24)
      acd21(52)=-acd21(52)+acd21(57)+acd21(31)
      acd21(57)=acd21(2)*acd21(52)
      acd21(51)=acd21(57)+acd21(56)+acd21(51)+acd21(44)
      acd21(51)=acd21(2)*acd21(51)
      acd21(42)=acd21(13)*acd21(42)
      acd21(45)=acd21(45)*acd21(23)
      acd21(56)=acd21(54)+acd21(34)
      acd21(57)=acd21(19)*acd21(56)
      acd21(58)=acd21(28)*acd21(47)
      acd21(42)=acd21(42)+acd21(58)+acd21(45)+acd21(57)
      acd21(42)=acd21(7)*acd21(42)
      acd21(57)=acd21(19)*acd21(14)
      acd21(58)=acd21(47)*acd21(57)
      acd21(47)=acd21(20)*acd21(47)
      acd21(47)=acd21(47)-acd21(48)
      acd21(47)=acd21(13)*acd21(47)
      acd21(42)=acd21(51)+acd21(42)+acd21(58)+acd21(47)
      acd21(47)=acd21(7)*acd21(11)
      acd21(48)=-acd21(2)*acd21(10)
      acd21(47)=acd21(47)+acd21(48)
      acd21(47)=acd21(2)*acd21(47)
      acd21(40)=ninjaP*acd21(40)
      acd21(48)=acd21(52)*acd21(50)
      acd21(50)=acd21(11)*acd21(14)
      acd21(50)=acd21(50)+acd21(22)
      acd21(50)=acd21(26)*acd21(50)
      acd21(51)=-acd21(10)*acd21(28)
      acd21(51)=acd21(51)+acd21(30)
      acd21(51)=acd21(27)*acd21(51)
      acd21(52)=acd21(24)*acd21(25)
      acd21(58)=acd21(28)*acd21(33)
      acd21(55)=acd21(14)*acd21(55)
      acd21(54)=acd21(29)*acd21(54)
      acd21(40)=acd21(48)+acd21(54)+acd21(55)+acd21(58)+acd21(36)+acd21(52)+acd&
      &21(40)+acd21(51)+acd21(50)
      acd21(40)=acd21(2)*acd21(40)
      acd21(48)=acd21(13)*acd21(49)
      acd21(44)=acd21(48)+acd21(44)
      acd21(44)=acd21(13)*acd21(44)
      acd21(43)=ninjaP*acd21(43)
      acd21(48)=acd21(13)*acd21(53)
      acd21(49)=acd21(28)*acd21(56)
      acd21(50)=acd21(26)*acd21(23)
      acd21(43)=acd21(48)+acd21(43)+acd21(37)+acd21(50)+acd21(49)
      acd21(43)=acd21(7)*acd21(43)
      acd21(48)=acd21(57)*acd21(56)
      acd21(46)=ninjaP*acd21(46)
      acd21(49)=acd21(38)*acd21(39)
      acd21(45)=acd21(14)*acd21(45)
      acd21(50)=acd21(18)*acd21(14)*acd21(28)
      acd21(50)=acd21(35)+acd21(50)
      acd21(50)=acd21(15)*acd21(50)
      acd21(40)=acd21(40)+acd21(43)+acd21(44)+acd21(46)+acd21(50)+acd21(49)+acd&
      &21(45)+acd21(48)
      brack(ninjaidxt1mu0)=acd21(42)
      brack(ninjaidxt1mu2)=acd21(47)
      brack(ninjaidxt0mu0)=acd21(40)
      brack(ninjaidxt0mu2)=acd21(41)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d21h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd21h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d21h1l131
