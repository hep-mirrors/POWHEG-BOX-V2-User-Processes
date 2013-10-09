module     p5_usbar_epnebbbarg_d38h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d38h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d38
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd38h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd38
      complex(ki) :: brack
      acd38(1)=dotproduct(k1,qshift)
      acd38(2)=dotproduct(k2,qshift)
      acd38(3)=abb38(69)
      acd38(4)=dotproduct(qshift,spval5l6)
      acd38(5)=abb38(19)
      acd38(6)=abb38(62)
      acd38(7)=dotproduct(k7,qshift)
      acd38(8)=dotproduct(e7,qshift)
      acd38(9)=abb38(42)
      acd38(10)=dotproduct(qshift,spvak2k1)
      acd38(11)=abb38(16)
      acd38(12)=dotproduct(qshift,spvak2k7)
      acd38(13)=abb38(25)
      acd38(14)=dotproduct(qshift,spvak4k1)
      acd38(15)=abb38(20)
      acd38(16)=dotproduct(qshift,spvak4k7)
      acd38(17)=abb38(14)
      acd38(18)=dotproduct(qshift,spvae7k1)
      acd38(19)=abb38(10)
      acd38(20)=abb38(32)
      acd38(21)=dotproduct(l5,qshift)
      acd38(22)=abb38(56)
      acd38(23)=dotproduct(l6,qshift)
      acd38(24)=abb38(12)
      acd38(25)=abb38(13)
      acd38(26)=dotproduct(qshift,qshift)
      acd38(27)=abb38(26)
      acd38(28)=abb38(30)
      acd38(29)=abb38(28)
      acd38(30)=abb38(22)
      acd38(31)=abb38(18)
      acd38(32)=abb38(11)
      acd38(33)=abb38(23)
      acd38(34)=abb38(15)
      acd38(35)=dotproduct(qshift,spvak2l5)
      acd38(36)=abb38(27)
      acd38(37)=dotproduct(qshift,spvak2l6)
      acd38(38)=abb38(29)
      acd38(39)=dotproduct(qshift,spvak4k2)
      acd38(40)=abb38(17)
      acd38(41)=dotproduct(qshift,spvak4l5)
      acd38(42)=abb38(31)
      acd38(43)=dotproduct(qshift,spvak4l6)
      acd38(44)=abb38(21)
      acd38(45)=abb38(24)
      acd38(46)=acd38(9)*acd38(8)
      acd38(47)=acd38(11)*acd38(10)
      acd38(48)=acd38(13)*acd38(12)
      acd38(49)=acd38(15)*acd38(14)
      acd38(50)=acd38(17)*acd38(16)
      acd38(51)=acd38(19)*acd38(18)
      acd38(46)=-acd38(20)+acd38(51)+acd38(50)+acd38(49)+acd38(48)+acd38(47)+ac&
      &d38(46)
      acd38(46)=acd38(2)*acd38(46)
      acd38(47)=acd38(24)*acd38(8)
      acd38(48)=acd38(28)*acd38(10)
      acd38(49)=acd38(29)*acd38(12)
      acd38(50)=acd38(30)*acd38(14)
      acd38(51)=acd38(31)*acd38(16)
      acd38(52)=acd38(32)*acd38(18)
      acd38(47)=-acd38(33)+acd38(52)+acd38(51)+acd38(50)+acd38(49)+acd38(48)+ac&
      &d38(47)
      acd38(47)=acd38(4)*acd38(47)
      acd38(48)=acd38(3)*acd38(2)
      acd38(49)=-acd38(5)*acd38(4)
      acd38(48)=-acd38(6)+acd38(48)+acd38(49)
      acd38(49)=acd38(7)-acd38(1)
      acd38(48)=acd38(49)*acd38(48)
      acd38(49)=acd38(23)+acd38(21)
      acd38(49)=acd38(22)*acd38(49)
      acd38(50)=-acd38(25)*acd38(8)
      acd38(51)=acd38(27)*acd38(26)
      acd38(52)=-acd38(34)*acd38(18)
      acd38(53)=-acd38(36)*acd38(35)
      acd38(54)=-acd38(38)*acd38(37)
      acd38(55)=-acd38(40)*acd38(39)
      acd38(56)=-acd38(42)*acd38(41)
      acd38(57)=-acd38(44)*acd38(43)
      brack=acd38(45)+acd38(46)+acd38(47)+acd38(48)+acd38(49)+acd38(50)+acd38(5&
      &1)+acd38(52)+acd38(53)+acd38(54)+acd38(55)+acd38(56)+acd38(57)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd38h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd38
      complex(ki) :: brack
      acd38(1)=k1(iv1)
      acd38(2)=dotproduct(k2,qshift)
      acd38(3)=abb38(69)
      acd38(4)=dotproduct(qshift,spval5l6)
      acd38(5)=abb38(19)
      acd38(6)=abb38(62)
      acd38(7)=k2(iv1)
      acd38(8)=dotproduct(k1,qshift)
      acd38(9)=dotproduct(k7,qshift)
      acd38(10)=dotproduct(e7,qshift)
      acd38(11)=abb38(42)
      acd38(12)=dotproduct(qshift,spvak2k1)
      acd38(13)=abb38(16)
      acd38(14)=dotproduct(qshift,spvak2k7)
      acd38(15)=abb38(25)
      acd38(16)=dotproduct(qshift,spvak4k1)
      acd38(17)=abb38(20)
      acd38(18)=dotproduct(qshift,spvak4k7)
      acd38(19)=abb38(14)
      acd38(20)=dotproduct(qshift,spvae7k1)
      acd38(21)=abb38(10)
      acd38(22)=abb38(32)
      acd38(23)=l5(iv1)
      acd38(24)=abb38(56)
      acd38(25)=l6(iv1)
      acd38(26)=k7(iv1)
      acd38(27)=e7(iv1)
      acd38(28)=abb38(12)
      acd38(29)=abb38(13)
      acd38(30)=qshift(iv1)
      acd38(31)=abb38(26)
      acd38(32)=spval5l6(iv1)
      acd38(33)=abb38(30)
      acd38(34)=abb38(28)
      acd38(35)=abb38(22)
      acd38(36)=abb38(18)
      acd38(37)=abb38(11)
      acd38(38)=abb38(23)
      acd38(39)=spvak2k1(iv1)
      acd38(40)=spvak2k7(iv1)
      acd38(41)=spvak4k1(iv1)
      acd38(42)=spvak4k7(iv1)
      acd38(43)=spvae7k1(iv1)
      acd38(44)=abb38(15)
      acd38(45)=spvak2l5(iv1)
      acd38(46)=abb38(27)
      acd38(47)=spvak2l6(iv1)
      acd38(48)=abb38(29)
      acd38(49)=spvak4k2(iv1)
      acd38(50)=abb38(17)
      acd38(51)=spvak4l5(iv1)
      acd38(52)=abb38(31)
      acd38(53)=spvak4l6(iv1)
      acd38(54)=abb38(21)
      acd38(55)=acd38(36)*acd38(42)
      acd38(56)=acd38(35)*acd38(41)
      acd38(57)=acd38(34)*acd38(40)
      acd38(58)=acd38(33)*acd38(39)
      acd38(59)=acd38(43)*acd38(37)
      acd38(60)=acd38(27)*acd38(28)
      acd38(61)=acd38(1)-acd38(26)
      acd38(62)=acd38(5)*acd38(61)
      acd38(55)=acd38(62)+acd38(60)+acd38(59)+acd38(58)+acd38(57)+acd38(55)+acd&
      &38(56)
      acd38(55)=acd38(4)*acd38(55)
      acd38(56)=acd38(19)*acd38(42)
      acd38(57)=acd38(17)*acd38(41)
      acd38(58)=acd38(15)*acd38(40)
      acd38(59)=acd38(13)*acd38(39)
      acd38(60)=acd38(43)*acd38(21)
      acd38(62)=acd38(27)*acd38(11)
      acd38(63)=-acd38(3)*acd38(61)
      acd38(56)=acd38(63)+acd38(62)+acd38(60)+acd38(59)+acd38(58)+acd38(56)+acd&
      &38(57)
      acd38(56)=acd38(2)*acd38(56)
      acd38(57)=acd38(20)*acd38(37)
      acd38(58)=acd38(18)*acd38(36)
      acd38(59)=acd38(16)*acd38(35)
      acd38(60)=acd38(14)*acd38(34)
      acd38(62)=acd38(12)*acd38(33)
      acd38(63)=acd38(10)*acd38(28)
      acd38(64)=acd38(8)-acd38(9)
      acd38(65)=acd38(5)*acd38(64)
      acd38(57)=acd38(65)+acd38(63)+acd38(62)+acd38(60)+acd38(59)+acd38(58)-acd&
      &38(38)+acd38(57)
      acd38(57)=acd38(32)*acd38(57)
      acd38(58)=acd38(20)*acd38(21)
      acd38(59)=acd38(18)*acd38(19)
      acd38(60)=acd38(16)*acd38(17)
      acd38(62)=acd38(14)*acd38(15)
      acd38(63)=acd38(12)*acd38(13)
      acd38(65)=acd38(10)*acd38(11)
      acd38(64)=-acd38(3)*acd38(64)
      acd38(58)=acd38(64)+acd38(65)+acd38(63)+acd38(62)+acd38(60)+acd38(59)-acd&
      &38(22)+acd38(58)
      acd38(58)=acd38(7)*acd38(58)
      acd38(59)=acd38(6)*acd38(61)
      acd38(60)=-acd38(53)*acd38(54)
      acd38(61)=-acd38(51)*acd38(52)
      acd38(62)=-acd38(49)*acd38(50)
      acd38(63)=-acd38(47)*acd38(48)
      acd38(64)=-acd38(45)*acd38(46)
      acd38(65)=acd38(30)*acd38(31)
      acd38(66)=acd38(25)+acd38(23)
      acd38(66)=acd38(24)*acd38(66)
      acd38(67)=-acd38(43)*acd38(44)
      acd38(68)=-acd38(27)*acd38(29)
      brack=acd38(55)+acd38(56)+acd38(57)+acd38(58)+acd38(59)+acd38(60)+acd38(6&
      &1)+acd38(62)+acd38(63)+acd38(64)+2.0_ki*acd38(65)+acd38(66)+acd38(67)+ac&
      &d38(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd38h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd38
      complex(ki) :: brack
      acd38(1)=d(iv1,iv2)
      acd38(2)=abb38(26)
      acd38(3)=k1(iv1)
      acd38(4)=k2(iv2)
      acd38(5)=abb38(69)
      acd38(6)=spval5l6(iv2)
      acd38(7)=abb38(19)
      acd38(8)=k1(iv2)
      acd38(9)=k2(iv1)
      acd38(10)=spval5l6(iv1)
      acd38(11)=k7(iv2)
      acd38(12)=e7(iv2)
      acd38(13)=abb38(42)
      acd38(14)=spvak2k1(iv2)
      acd38(15)=abb38(16)
      acd38(16)=spvak2k7(iv2)
      acd38(17)=abb38(25)
      acd38(18)=spvak4k1(iv2)
      acd38(19)=abb38(20)
      acd38(20)=spvak4k7(iv2)
      acd38(21)=abb38(14)
      acd38(22)=spvae7k1(iv2)
      acd38(23)=abb38(10)
      acd38(24)=k7(iv1)
      acd38(25)=e7(iv1)
      acd38(26)=spvak2k1(iv1)
      acd38(27)=spvak2k7(iv1)
      acd38(28)=spvak4k1(iv1)
      acd38(29)=spvak4k7(iv1)
      acd38(30)=spvae7k1(iv1)
      acd38(31)=abb38(12)
      acd38(32)=abb38(30)
      acd38(33)=abb38(28)
      acd38(34)=abb38(22)
      acd38(35)=abb38(18)
      acd38(36)=abb38(11)
      acd38(37)=acd38(22)*acd38(36)
      acd38(38)=acd38(20)*acd38(35)
      acd38(39)=acd38(18)*acd38(34)
      acd38(40)=acd38(16)*acd38(33)
      acd38(41)=acd38(14)*acd38(32)
      acd38(42)=acd38(12)*acd38(31)
      acd38(43)=acd38(8)-acd38(11)
      acd38(44)=acd38(7)*acd38(43)
      acd38(37)=acd38(44)+acd38(42)+acd38(41)+acd38(40)+acd38(39)+acd38(37)+acd&
      &38(38)
      acd38(37)=acd38(10)*acd38(37)
      acd38(38)=acd38(22)*acd38(23)
      acd38(39)=acd38(20)*acd38(21)
      acd38(40)=acd38(18)*acd38(19)
      acd38(41)=acd38(16)*acd38(17)
      acd38(42)=acd38(14)*acd38(15)
      acd38(44)=acd38(12)*acd38(13)
      acd38(43)=-acd38(5)*acd38(43)
      acd38(38)=acd38(43)+acd38(44)+acd38(42)+acd38(41)+acd38(40)+acd38(38)+acd&
      &38(39)
      acd38(38)=acd38(9)*acd38(38)
      acd38(39)=acd38(30)*acd38(36)
      acd38(40)=acd38(29)*acd38(35)
      acd38(41)=acd38(28)*acd38(34)
      acd38(42)=acd38(27)*acd38(33)
      acd38(43)=acd38(26)*acd38(32)
      acd38(44)=acd38(25)*acd38(31)
      acd38(45)=acd38(3)-acd38(24)
      acd38(46)=acd38(7)*acd38(45)
      acd38(39)=acd38(46)+acd38(44)+acd38(43)+acd38(42)+acd38(41)+acd38(39)+acd&
      &38(40)
      acd38(39)=acd38(6)*acd38(39)
      acd38(40)=acd38(23)*acd38(30)
      acd38(41)=acd38(21)*acd38(29)
      acd38(42)=acd38(19)*acd38(28)
      acd38(43)=acd38(17)*acd38(27)
      acd38(44)=acd38(15)*acd38(26)
      acd38(46)=acd38(13)*acd38(25)
      acd38(45)=-acd38(5)*acd38(45)
      acd38(40)=acd38(45)+acd38(46)+acd38(44)+acd38(43)+acd38(42)+acd38(40)+acd&
      &38(41)
      acd38(40)=acd38(4)*acd38(40)
      acd38(41)=acd38(1)*acd38(2)
      brack=acd38(37)+acd38(38)+acd38(39)+acd38(40)+2.0_ki*acd38(41)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd38h2
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
      qshift = -k6-k5
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
!---#[ subroutine reconstruct_d38:
   subroutine     reconstruct_d38(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_38:
      coeffs%coeffs_38%c0 = derivative(czip)
      coeffs%coeffs_38%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_38%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_38%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_38%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_38%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_38%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_38%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_38%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_38%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_38%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_38%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_38%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_38%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_38%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_38:
   end subroutine reconstruct_d38
!---#] subroutine reconstruct_d38:
end module     p5_usbar_epnebbbarg_d38h2l1d
