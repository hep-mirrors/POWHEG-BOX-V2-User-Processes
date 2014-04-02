module     p5_csbar_epnebbbar_d32h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity1d32h1l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d32
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd32h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd32
      complex(ki) :: brack
      acd32(1)=dotproduct(k1,qshift)
      acd32(2)=dotproduct(k2,qshift)
      acd32(3)=abb32(49)
      acd32(4)=dotproduct(qshift,spval6l5)
      acd32(5)=abb32(26)
      acd32(6)=abb32(47)
      acd32(7)=dotproduct(k3,qshift)
      acd32(8)=dotproduct(k4,qshift)
      acd32(9)=dotproduct(qshift,spvak2k1)
      acd32(10)=abb32(23)
      acd32(11)=dotproduct(qshift,spvak4k1)
      acd32(12)=abb32(15)
      acd32(13)=dotproduct(qshift,spvak4k3)
      acd32(14)=abb32(50)
      acd32(15)=abb32(16)
      acd32(16)=dotproduct(l5,qshift)
      acd32(17)=abb32(40)
      acd32(18)=dotproduct(l6,qshift)
      acd32(19)=abb32(17)
      acd32(20)=dotproduct(qshift,qshift)
      acd32(21)=abb32(22)
      acd32(22)=abb32(11)
      acd32(23)=abb32(21)
      acd32(24)=abb32(48)
      acd32(25)=abb32(18)
      acd32(26)=abb32(12)
      acd32(27)=abb32(10)
      acd32(28)=abb32(19)
      acd32(29)=dotproduct(qshift,spvak2k3)
      acd32(30)=abb32(29)
      acd32(31)=dotproduct(qshift,spvak4k2)
      acd32(32)=abb32(25)
      acd32(33)=dotproduct(qshift,spval5k2)
      acd32(34)=abb32(13)
      acd32(35)=dotproduct(qshift,spval6k1)
      acd32(36)=abb32(14)
      acd32(37)=dotproduct(qshift,spval6k2)
      acd32(38)=abb32(36)
      acd32(39)=dotproduct(qshift,spval6k3)
      acd32(40)=abb32(34)
      acd32(41)=abb32(20)
      acd32(42)=-acd32(1)+acd32(7)+acd32(8)
      acd32(43)=-acd32(5)*acd32(42)
      acd32(44)=acd32(13)*acd32(24)
      acd32(45)=acd32(11)*acd32(23)
      acd32(46)=acd32(9)*acd32(22)
      acd32(43)=acd32(46)+acd32(45)-acd32(25)+acd32(44)+acd32(43)
      acd32(43)=acd32(4)*acd32(43)
      acd32(44)=acd32(3)*acd32(42)
      acd32(45)=acd32(13)*acd32(14)
      acd32(46)=acd32(11)*acd32(12)
      acd32(47)=acd32(9)*acd32(10)
      acd32(44)=acd32(47)+acd32(46)-acd32(15)+acd32(45)+acd32(44)
      acd32(44)=acd32(2)*acd32(44)
      acd32(42)=-acd32(6)*acd32(42)
      acd32(45)=-acd32(39)*acd32(40)
      acd32(46)=-acd32(37)*acd32(38)
      acd32(47)=-acd32(35)*acd32(36)
      acd32(48)=-acd32(33)*acd32(34)
      acd32(49)=-acd32(31)*acd32(32)
      acd32(50)=-acd32(29)*acd32(30)
      acd32(51)=acd32(20)*acd32(21)
      acd32(52)=-acd32(18)*acd32(19)
      acd32(53)=-acd32(16)*acd32(17)
      acd32(54)=-acd32(13)*acd32(28)
      acd32(55)=-acd32(11)*acd32(27)
      acd32(56)=-acd32(9)*acd32(26)
      brack=acd32(41)+acd32(42)+acd32(43)+acd32(44)+acd32(45)+acd32(46)+acd32(4&
      &7)+acd32(48)+acd32(49)+acd32(50)+acd32(51)+acd32(52)+acd32(53)+acd32(54)&
      &+acd32(55)+acd32(56)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd32h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd32
      complex(ki) :: brack
      acd32(1)=k1(iv1)
      acd32(2)=dotproduct(k2,qshift)
      acd32(3)=abb32(49)
      acd32(4)=dotproduct(qshift,spval6l5)
      acd32(5)=abb32(26)
      acd32(6)=abb32(47)
      acd32(7)=k2(iv1)
      acd32(8)=dotproduct(k1,qshift)
      acd32(9)=dotproduct(k3,qshift)
      acd32(10)=dotproduct(k4,qshift)
      acd32(11)=dotproduct(qshift,spvak2k1)
      acd32(12)=abb32(23)
      acd32(13)=dotproduct(qshift,spvak4k1)
      acd32(14)=abb32(15)
      acd32(15)=dotproduct(qshift,spvak4k3)
      acd32(16)=abb32(50)
      acd32(17)=abb32(16)
      acd32(18)=k3(iv1)
      acd32(19)=k4(iv1)
      acd32(20)=l5(iv1)
      acd32(21)=abb32(40)
      acd32(22)=l6(iv1)
      acd32(23)=abb32(17)
      acd32(24)=qshift(iv1)
      acd32(25)=abb32(22)
      acd32(26)=spval6l5(iv1)
      acd32(27)=abb32(11)
      acd32(28)=abb32(21)
      acd32(29)=abb32(48)
      acd32(30)=abb32(18)
      acd32(31)=spvak2k1(iv1)
      acd32(32)=abb32(12)
      acd32(33)=spvak4k1(iv1)
      acd32(34)=abb32(10)
      acd32(35)=spvak4k3(iv1)
      acd32(36)=abb32(19)
      acd32(37)=spvak2k3(iv1)
      acd32(38)=abb32(29)
      acd32(39)=spvak4k2(iv1)
      acd32(40)=abb32(25)
      acd32(41)=spval5k2(iv1)
      acd32(42)=abb32(13)
      acd32(43)=spval6k1(iv1)
      acd32(44)=abb32(14)
      acd32(45)=spval6k2(iv1)
      acd32(46)=abb32(36)
      acd32(47)=spval6k3(iv1)
      acd32(48)=abb32(34)
      acd32(49)=acd32(35)*acd32(29)
      acd32(50)=acd32(33)*acd32(28)
      acd32(51)=acd32(31)*acd32(27)
      acd32(52)=-acd32(1)+acd32(18)+acd32(19)
      acd32(53)=-acd32(5)*acd32(52)
      acd32(49)=acd32(53)+acd32(51)+acd32(49)+acd32(50)
      acd32(49)=acd32(4)*acd32(49)
      acd32(50)=acd32(35)*acd32(16)
      acd32(51)=acd32(33)*acd32(14)
      acd32(53)=acd32(31)*acd32(12)
      acd32(54)=acd32(3)*acd32(52)
      acd32(50)=acd32(54)+acd32(53)+acd32(50)+acd32(51)
      acd32(50)=acd32(2)*acd32(50)
      acd32(51)=acd32(15)*acd32(29)
      acd32(53)=acd32(13)*acd32(28)
      acd32(54)=acd32(11)*acd32(27)
      acd32(55)=-acd32(10)+acd32(8)-acd32(9)
      acd32(56)=acd32(5)*acd32(55)
      acd32(51)=acd32(56)+acd32(54)+acd32(53)-acd32(30)+acd32(51)
      acd32(51)=acd32(26)*acd32(51)
      acd32(53)=acd32(15)*acd32(16)
      acd32(54)=acd32(13)*acd32(14)
      acd32(56)=acd32(11)*acd32(12)
      acd32(55)=-acd32(3)*acd32(55)
      acd32(53)=acd32(55)+acd32(56)+acd32(54)-acd32(17)+acd32(53)
      acd32(53)=acd32(7)*acd32(53)
      acd32(52)=-acd32(6)*acd32(52)
      acd32(54)=-acd32(47)*acd32(48)
      acd32(55)=-acd32(45)*acd32(46)
      acd32(56)=-acd32(43)*acd32(44)
      acd32(57)=-acd32(41)*acd32(42)
      acd32(58)=-acd32(39)*acd32(40)
      acd32(59)=-acd32(37)*acd32(38)
      acd32(60)=acd32(24)*acd32(25)
      acd32(61)=-acd32(22)*acd32(23)
      acd32(62)=-acd32(20)*acd32(21)
      acd32(63)=-acd32(35)*acd32(36)
      acd32(64)=-acd32(33)*acd32(34)
      acd32(65)=-acd32(31)*acd32(32)
      brack=acd32(49)+acd32(50)+acd32(51)+acd32(52)+acd32(53)+acd32(54)+acd32(5&
      &5)+acd32(56)+acd32(57)+acd32(58)+acd32(59)+2.0_ki*acd32(60)+acd32(61)+ac&
      &d32(62)+acd32(63)+acd32(64)+acd32(65)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd32h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd32
      complex(ki) :: brack
      acd32(1)=d(iv1,iv2)
      acd32(2)=abb32(22)
      acd32(3)=k1(iv1)
      acd32(4)=k2(iv2)
      acd32(5)=abb32(49)
      acd32(6)=spval6l5(iv2)
      acd32(7)=abb32(26)
      acd32(8)=k1(iv2)
      acd32(9)=k2(iv1)
      acd32(10)=spval6l5(iv1)
      acd32(11)=k3(iv2)
      acd32(12)=k4(iv2)
      acd32(13)=spvak2k1(iv2)
      acd32(14)=abb32(23)
      acd32(15)=spvak4k1(iv2)
      acd32(16)=abb32(15)
      acd32(17)=spvak4k3(iv2)
      acd32(18)=abb32(50)
      acd32(19)=k3(iv1)
      acd32(20)=k4(iv1)
      acd32(21)=spvak2k1(iv1)
      acd32(22)=spvak4k1(iv1)
      acd32(23)=spvak4k3(iv1)
      acd32(24)=abb32(11)
      acd32(25)=abb32(21)
      acd32(26)=abb32(48)
      acd32(27)=acd32(17)*acd32(26)
      acd32(28)=acd32(15)*acd32(25)
      acd32(29)=acd32(13)*acd32(24)
      acd32(30)=-acd32(12)+acd32(8)-acd32(11)
      acd32(31)=acd32(7)*acd32(30)
      acd32(27)=acd32(31)+acd32(29)+acd32(27)+acd32(28)
      acd32(27)=acd32(10)*acd32(27)
      acd32(28)=acd32(17)*acd32(18)
      acd32(29)=acd32(15)*acd32(16)
      acd32(31)=acd32(13)*acd32(14)
      acd32(30)=-acd32(5)*acd32(30)
      acd32(28)=acd32(30)+acd32(31)+acd32(28)+acd32(29)
      acd32(28)=acd32(9)*acd32(28)
      acd32(29)=acd32(23)*acd32(26)
      acd32(30)=acd32(22)*acd32(25)
      acd32(31)=acd32(21)*acd32(24)
      acd32(32)=-acd32(20)+acd32(3)-acd32(19)
      acd32(33)=acd32(7)*acd32(32)
      acd32(29)=acd32(33)+acd32(31)+acd32(29)+acd32(30)
      acd32(29)=acd32(6)*acd32(29)
      acd32(30)=acd32(18)*acd32(23)
      acd32(31)=acd32(16)*acd32(22)
      acd32(33)=acd32(14)*acd32(21)
      acd32(32)=-acd32(5)*acd32(32)
      acd32(30)=acd32(32)+acd32(33)+acd32(30)+acd32(31)
      acd32(30)=acd32(4)*acd32(30)
      acd32(31)=acd32(1)*acd32(2)
      brack=acd32(27)+acd32(28)+acd32(29)+acd32(30)+2.0_ki*acd32(31)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd32h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d32:
   subroutine     reconstruct_d32(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_32:
      coeffs%coeffs_32%c0 = derivative(czip)
      coeffs%coeffs_32%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_32%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_32%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_32%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_32%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_32%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_32%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_32%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_32%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_32%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_32%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_32%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_32%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_32%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_32:
   end subroutine reconstruct_d32
!---#] subroutine reconstruct_d32:
end module     p5_csbar_epnebbbar_d32h1l1d
