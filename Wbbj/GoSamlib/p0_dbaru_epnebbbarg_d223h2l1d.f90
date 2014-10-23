module     p0_dbaru_epnebbbarg_d223h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d223h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d223
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd223h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd223
      complex(ki) :: brack
      acd223(1)=dotproduct(k1,qshift)
      acd223(2)=abb223(49)
      acd223(3)=dotproduct(k2,qshift)
      acd223(4)=dotproduct(qshift,spvak2k7)
      acd223(5)=abb223(30)
      acd223(6)=abb223(16)
      acd223(7)=dotproduct(k3,qshift)
      acd223(8)=dotproduct(k4,qshift)
      acd223(9)=dotproduct(l5,qshift)
      acd223(10)=abb223(15)
      acd223(11)=abb223(32)
      acd223(12)=dotproduct(l6,qshift)
      acd223(13)=dotproduct(k7,qshift)
      acd223(14)=abb223(18)
      acd223(15)=dotproduct(qshift,qshift)
      acd223(16)=abb223(19)
      acd223(17)=dotproduct(qshift,spvak1k2)
      acd223(18)=abb223(23)
      acd223(19)=dotproduct(qshift,spvak1l6)
      acd223(20)=abb223(14)
      acd223(21)=dotproduct(qshift,spvak4k2)
      acd223(22)=abb223(20)
      acd223(23)=dotproduct(qshift,spvak4l6)
      acd223(24)=abb223(17)
      acd223(25)=dotproduct(qshift,spval5k2)
      acd223(26)=abb223(12)
      acd223(27)=dotproduct(qshift,spval5l6)
      acd223(28)=abb223(36)
      acd223(29)=abb223(11)
      acd223(30)=dotproduct(qshift,spvak1k7)
      acd223(31)=abb223(21)
      acd223(32)=abb223(22)
      acd223(33)=abb223(26)
      acd223(34)=dotproduct(qshift,spvak4k7)
      acd223(35)=abb223(40)
      acd223(36)=abb223(13)
      acd223(37)=acd223(5)*acd223(3)
      acd223(38)=acd223(18)*acd223(17)
      acd223(39)=acd223(20)*acd223(19)
      acd223(40)=acd223(22)*acd223(21)
      acd223(41)=acd223(24)*acd223(23)
      acd223(42)=acd223(26)*acd223(25)
      acd223(43)=acd223(28)*acd223(27)
      acd223(37)=-acd223(29)+acd223(43)+acd223(42)+acd223(41)+acd223(40)+acd223&
      &(39)+acd223(38)+acd223(37)
      acd223(37)=acd223(4)*acd223(37)
      acd223(38)=acd223(12)+acd223(9)
      acd223(39)=acd223(10)*acd223(4)
      acd223(39)=acd223(39)-acd223(11)
      acd223(38)=acd223(39)*acd223(38)
      acd223(39)=-acd223(8)-acd223(7)+acd223(1)
      acd223(39)=acd223(2)*acd223(39)
      acd223(40)=-acd223(6)*acd223(3)
      acd223(41)=-acd223(14)*acd223(13)
      acd223(42)=acd223(16)*acd223(15)
      acd223(43)=-acd223(31)*acd223(30)
      acd223(44)=-acd223(32)*acd223(25)
      acd223(45)=-acd223(33)*acd223(27)
      acd223(46)=-acd223(35)*acd223(34)
      brack=acd223(36)+acd223(37)+acd223(38)+acd223(39)+acd223(40)+acd223(41)+a&
      &cd223(42)+acd223(43)+acd223(44)+acd223(45)+acd223(46)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd223h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd223
      complex(ki) :: brack
      acd223(1)=k1(iv1)
      acd223(2)=abb223(49)
      acd223(3)=k2(iv1)
      acd223(4)=dotproduct(qshift,spvak2k7)
      acd223(5)=abb223(30)
      acd223(6)=abb223(16)
      acd223(7)=k3(iv1)
      acd223(8)=k4(iv1)
      acd223(9)=l5(iv1)
      acd223(10)=abb223(15)
      acd223(11)=abb223(32)
      acd223(12)=l6(iv1)
      acd223(13)=k7(iv1)
      acd223(14)=abb223(18)
      acd223(15)=qshift(iv1)
      acd223(16)=abb223(19)
      acd223(17)=spvak2k7(iv1)
      acd223(18)=dotproduct(k2,qshift)
      acd223(19)=dotproduct(l5,qshift)
      acd223(20)=dotproduct(l6,qshift)
      acd223(21)=dotproduct(qshift,spvak1k2)
      acd223(22)=abb223(23)
      acd223(23)=dotproduct(qshift,spvak1l6)
      acd223(24)=abb223(14)
      acd223(25)=dotproduct(qshift,spvak4k2)
      acd223(26)=abb223(20)
      acd223(27)=dotproduct(qshift,spvak4l6)
      acd223(28)=abb223(17)
      acd223(29)=dotproduct(qshift,spval5k2)
      acd223(30)=abb223(12)
      acd223(31)=dotproduct(qshift,spval5l6)
      acd223(32)=abb223(36)
      acd223(33)=abb223(11)
      acd223(34)=spvak1k2(iv1)
      acd223(35)=spvak1l6(iv1)
      acd223(36)=spvak1k7(iv1)
      acd223(37)=abb223(21)
      acd223(38)=spvak4k2(iv1)
      acd223(39)=spvak4l6(iv1)
      acd223(40)=spval5k2(iv1)
      acd223(41)=abb223(22)
      acd223(42)=spval5l6(iv1)
      acd223(43)=abb223(26)
      acd223(44)=spvak4k7(iv1)
      acd223(45)=abb223(40)
      acd223(46)=acd223(20)+acd223(19)
      acd223(46)=acd223(46)*acd223(10)
      acd223(47)=acd223(18)*acd223(5)
      acd223(48)=acd223(21)*acd223(22)
      acd223(49)=acd223(23)*acd223(24)
      acd223(50)=acd223(25)*acd223(26)
      acd223(51)=acd223(27)*acd223(28)
      acd223(52)=acd223(29)*acd223(30)
      acd223(53)=acd223(31)*acd223(32)
      acd223(46)=acd223(46)-acd223(33)+acd223(53)+acd223(52)+acd223(51)+acd223(&
      &50)+acd223(49)+acd223(48)+acd223(47)
      acd223(46)=acd223(17)*acd223(46)
      acd223(47)=acd223(5)*acd223(3)
      acd223(48)=acd223(40)*acd223(30)
      acd223(49)=acd223(42)*acd223(32)
      acd223(50)=acd223(34)*acd223(22)
      acd223(51)=acd223(35)*acd223(24)
      acd223(52)=acd223(38)*acd223(26)
      acd223(53)=acd223(39)*acd223(28)
      acd223(47)=acd223(53)+acd223(52)+acd223(51)+acd223(50)+acd223(49)+acd223(&
      &48)+acd223(47)
      acd223(47)=acd223(4)*acd223(47)
      acd223(48)=acd223(12)+acd223(9)
      acd223(49)=acd223(10)*acd223(4)
      acd223(49)=acd223(49)-acd223(11)
      acd223(48)=acd223(49)*acd223(48)
      acd223(49)=-acd223(8)-acd223(7)+acd223(1)
      acd223(49)=acd223(2)*acd223(49)
      acd223(50)=-acd223(6)*acd223(3)
      acd223(51)=-acd223(14)*acd223(13)
      acd223(52)=acd223(16)*acd223(15)
      acd223(53)=-acd223(37)*acd223(36)
      acd223(54)=-acd223(41)*acd223(40)
      acd223(55)=-acd223(43)*acd223(42)
      acd223(56)=-acd223(45)*acd223(44)
      brack=acd223(46)+acd223(47)+acd223(48)+acd223(49)+acd223(50)+acd223(51)+2&
      &.0_ki*acd223(52)+acd223(53)+acd223(54)+acd223(55)+acd223(56)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd223h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd223
      complex(ki) :: brack
      acd223(1)=d(iv1,iv2)
      acd223(2)=abb223(19)
      acd223(3)=k2(iv1)
      acd223(4)=spvak2k7(iv2)
      acd223(5)=abb223(30)
      acd223(6)=k2(iv2)
      acd223(7)=spvak2k7(iv1)
      acd223(8)=l5(iv1)
      acd223(9)=abb223(15)
      acd223(10)=l5(iv2)
      acd223(11)=l6(iv1)
      acd223(12)=l6(iv2)
      acd223(13)=spvak1k2(iv2)
      acd223(14)=abb223(23)
      acd223(15)=spvak1l6(iv2)
      acd223(16)=abb223(14)
      acd223(17)=spvak4k2(iv2)
      acd223(18)=abb223(20)
      acd223(19)=spvak4l6(iv2)
      acd223(20)=abb223(17)
      acd223(21)=spval5k2(iv2)
      acd223(22)=abb223(12)
      acd223(23)=spval5l6(iv2)
      acd223(24)=abb223(36)
      acd223(25)=spvak1k2(iv1)
      acd223(26)=spvak1l6(iv1)
      acd223(27)=spvak4k2(iv1)
      acd223(28)=spvak4l6(iv1)
      acd223(29)=spval5k2(iv1)
      acd223(30)=spval5l6(iv1)
      acd223(31)=acd223(24)*acd223(23)
      acd223(32)=acd223(22)*acd223(21)
      acd223(33)=acd223(20)*acd223(19)
      acd223(34)=acd223(18)*acd223(17)
      acd223(35)=acd223(16)*acd223(15)
      acd223(36)=acd223(14)*acd223(13)
      acd223(37)=acd223(5)*acd223(6)
      acd223(38)=acd223(12)+acd223(10)
      acd223(38)=acd223(9)*acd223(38)
      acd223(31)=acd223(38)+acd223(37)+acd223(36)+acd223(35)+acd223(34)+acd223(&
      &33)+acd223(31)+acd223(32)
      acd223(31)=acd223(7)*acd223(31)
      acd223(32)=acd223(24)*acd223(30)
      acd223(33)=acd223(22)*acd223(29)
      acd223(34)=acd223(20)*acd223(28)
      acd223(35)=acd223(18)*acd223(27)
      acd223(36)=acd223(16)*acd223(26)
      acd223(37)=acd223(14)*acd223(25)
      acd223(38)=acd223(5)*acd223(3)
      acd223(39)=acd223(11)+acd223(8)
      acd223(39)=acd223(9)*acd223(39)
      acd223(32)=acd223(39)+acd223(38)+acd223(37)+acd223(36)+acd223(35)+acd223(&
      &34)+acd223(32)+acd223(33)
      acd223(32)=acd223(4)*acd223(32)
      acd223(33)=acd223(1)*acd223(2)
      brack=acd223(31)+acd223(32)+2.0_ki*acd223(33)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h2
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
      qshift = -k2+k7
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
!---#[ subroutine reconstruct_d223:
   subroutine     reconstruct_d223(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_223:
      coeffs%coeffs_223%c0 = derivative(czip)
      coeffs%coeffs_223%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_223%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_223%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_223%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_223%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_223%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_223%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_223%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_223%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_223%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_223%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_223%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_223%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_223%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_223:
   end subroutine reconstruct_d223
!---#] subroutine reconstruct_d223:
end module     p0_dbaru_epnebbbarg_d223h2l1d
