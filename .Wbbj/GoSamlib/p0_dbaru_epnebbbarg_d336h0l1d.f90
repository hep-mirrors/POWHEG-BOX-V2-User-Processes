module     p0_dbaru_epnebbbarg_d336h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d336h0l1d.f90
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
   public :: derivative , reconstruct_d336
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd336
      complex(ki) :: brack
      acd336(1)=dotproduct(k2,qshift)
      acd336(2)=dotproduct(e7,qshift)
      acd336(3)=abb336(26)
      acd336(4)=abb336(25)
      acd336(5)=dotproduct(l5,qshift)
      acd336(6)=abb336(13)
      acd336(7)=abb336(21)
      acd336(8)=dotproduct(k7,qshift)
      acd336(9)=abb336(22)
      acd336(10)=dotproduct(qshift,spvak1k2)
      acd336(11)=abb336(20)
      acd336(12)=dotproduct(qshift,spvak1k3)
      acd336(13)=abb336(18)
      acd336(14)=dotproduct(qshift,spvak4k2)
      acd336(15)=abb336(14)
      acd336(16)=dotproduct(qshift,spval5k2)
      acd336(17)=abb336(12)
      acd336(18)=dotproduct(qshift,spval5k3)
      acd336(19)=abb336(59)
      acd336(20)=dotproduct(qshift,spval5k7)
      acd336(21)=abb336(35)
      acd336(22)=dotproduct(qshift,spval6k2)
      acd336(23)=abb336(24)
      acd336(24)=dotproduct(qshift,spval6k3)
      acd336(25)=abb336(44)
      acd336(26)=dotproduct(qshift,spvak7k2)
      acd336(27)=abb336(28)
      acd336(28)=abb336(10)
      acd336(29)=dotproduct(qshift,qshift)
      acd336(30)=abb336(19)
      acd336(31)=abb336(11)
      acd336(32)=abb336(15)
      acd336(33)=abb336(17)
      acd336(34)=abb336(56)
      acd336(35)=abb336(37)
      acd336(36)=abb336(16)
      acd336(37)=acd336(3)*acd336(1)
      acd336(38)=acd336(6)*acd336(5)
      acd336(39)=acd336(9)*acd336(8)
      acd336(40)=acd336(11)*acd336(10)
      acd336(41)=acd336(13)*acd336(12)
      acd336(42)=acd336(15)*acd336(14)
      acd336(43)=acd336(17)*acd336(16)
      acd336(44)=acd336(19)*acd336(18)
      acd336(45)=acd336(21)*acd336(20)
      acd336(46)=acd336(23)*acd336(22)
      acd336(47)=acd336(25)*acd336(24)
      acd336(48)=acd336(27)*acd336(26)
      acd336(37)=-acd336(28)+acd336(48)+acd336(47)+acd336(46)+acd336(45)+acd336&
      &(44)+acd336(43)+acd336(42)+acd336(41)+acd336(40)+acd336(39)+acd336(38)+a&
      &cd336(37)
      acd336(37)=acd336(2)*acd336(37)
      acd336(38)=-acd336(5)-acd336(8)
      acd336(38)=acd336(7)*acd336(38)
      acd336(39)=-acd336(4)*acd336(1)
      acd336(40)=acd336(30)*acd336(29)
      acd336(41)=-acd336(31)*acd336(10)
      acd336(42)=-acd336(32)*acd336(12)
      acd336(43)=-acd336(33)*acd336(14)
      acd336(44)=-acd336(34)*acd336(22)
      acd336(45)=-acd336(35)*acd336(24)
      brack=acd336(36)+acd336(37)+acd336(38)+acd336(39)+acd336(40)+acd336(41)+a&
      &cd336(42)+acd336(43)+acd336(44)+acd336(45)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd336
      complex(ki) :: brack
      acd336(1)=k2(iv1)
      acd336(2)=dotproduct(e7,qshift)
      acd336(3)=abb336(26)
      acd336(4)=abb336(25)
      acd336(5)=l5(iv1)
      acd336(6)=abb336(13)
      acd336(7)=abb336(21)
      acd336(8)=k7(iv1)
      acd336(9)=abb336(22)
      acd336(10)=e7(iv1)
      acd336(11)=dotproduct(k2,qshift)
      acd336(12)=dotproduct(l5,qshift)
      acd336(13)=dotproduct(k7,qshift)
      acd336(14)=dotproduct(qshift,spvak1k2)
      acd336(15)=abb336(20)
      acd336(16)=dotproduct(qshift,spvak1k3)
      acd336(17)=abb336(18)
      acd336(18)=dotproduct(qshift,spvak4k2)
      acd336(19)=abb336(14)
      acd336(20)=dotproduct(qshift,spval5k2)
      acd336(21)=abb336(12)
      acd336(22)=dotproduct(qshift,spval5k3)
      acd336(23)=abb336(59)
      acd336(24)=dotproduct(qshift,spval5k7)
      acd336(25)=abb336(35)
      acd336(26)=dotproduct(qshift,spval6k2)
      acd336(27)=abb336(24)
      acd336(28)=dotproduct(qshift,spval6k3)
      acd336(29)=abb336(44)
      acd336(30)=dotproduct(qshift,spvak7k2)
      acd336(31)=abb336(28)
      acd336(32)=abb336(10)
      acd336(33)=qshift(iv1)
      acd336(34)=abb336(19)
      acd336(35)=spvak1k2(iv1)
      acd336(36)=abb336(11)
      acd336(37)=spvak1k3(iv1)
      acd336(38)=abb336(15)
      acd336(39)=spvak4k2(iv1)
      acd336(40)=abb336(17)
      acd336(41)=spval5k2(iv1)
      acd336(42)=spval5k3(iv1)
      acd336(43)=spval5k7(iv1)
      acd336(44)=spval6k2(iv1)
      acd336(45)=abb336(56)
      acd336(46)=spval6k3(iv1)
      acd336(47)=abb336(37)
      acd336(48)=spvak7k2(iv1)
      acd336(49)=-acd336(3)*acd336(1)
      acd336(50)=-acd336(6)*acd336(5)
      acd336(51)=-acd336(9)*acd336(8)
      acd336(52)=-acd336(35)*acd336(15)
      acd336(53)=-acd336(37)*acd336(17)
      acd336(54)=-acd336(39)*acd336(19)
      acd336(55)=-acd336(44)*acd336(27)
      acd336(56)=-acd336(46)*acd336(29)
      acd336(57)=-acd336(41)*acd336(21)
      acd336(58)=-acd336(42)*acd336(23)
      acd336(59)=-acd336(43)*acd336(25)
      acd336(60)=-acd336(48)*acd336(31)
      acd336(49)=acd336(60)+acd336(59)+acd336(58)+acd336(57)+acd336(56)+acd336(&
      &55)+acd336(54)+acd336(53)+acd336(52)+acd336(51)+acd336(49)+acd336(50)
      acd336(49)=acd336(2)*acd336(49)
      acd336(50)=-acd336(11)*acd336(3)
      acd336(51)=-acd336(12)*acd336(6)
      acd336(52)=-acd336(13)*acd336(9)
      acd336(53)=-acd336(14)*acd336(15)
      acd336(54)=-acd336(16)*acd336(17)
      acd336(55)=-acd336(18)*acd336(19)
      acd336(56)=-acd336(20)*acd336(21)
      acd336(57)=-acd336(22)*acd336(23)
      acd336(58)=-acd336(24)*acd336(25)
      acd336(59)=-acd336(26)*acd336(27)
      acd336(60)=-acd336(28)*acd336(29)
      acd336(61)=-acd336(30)*acd336(31)
      acd336(50)=acd336(32)+acd336(61)+acd336(60)+acd336(59)+acd336(58)+acd336(&
      &57)+acd336(56)+acd336(55)+acd336(54)+acd336(53)+acd336(52)+acd336(51)+ac&
      &d336(50)
      acd336(50)=acd336(10)*acd336(50)
      acd336(51)=acd336(8)+acd336(5)
      acd336(51)=acd336(7)*acd336(51)
      acd336(52)=acd336(4)*acd336(1)
      acd336(53)=acd336(34)*acd336(33)
      acd336(54)=acd336(36)*acd336(35)
      acd336(55)=acd336(38)*acd336(37)
      acd336(56)=acd336(40)*acd336(39)
      acd336(57)=acd336(45)*acd336(44)
      acd336(58)=acd336(47)*acd336(46)
      brack=acd336(49)+acd336(50)+acd336(51)+acd336(52)-2.0_ki*acd336(53)+acd33&
      &6(54)+acd336(55)+acd336(56)+acd336(57)+acd336(58)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd336
      complex(ki) :: brack
      acd336(1)=d(iv1,iv2)
      acd336(2)=abb336(19)
      acd336(3)=k2(iv1)
      acd336(4)=e7(iv2)
      acd336(5)=abb336(26)
      acd336(6)=k2(iv2)
      acd336(7)=e7(iv1)
      acd336(8)=l5(iv1)
      acd336(9)=abb336(13)
      acd336(10)=l5(iv2)
      acd336(11)=k7(iv1)
      acd336(12)=abb336(22)
      acd336(13)=k7(iv2)
      acd336(14)=spvak1k2(iv2)
      acd336(15)=abb336(20)
      acd336(16)=spvak1k3(iv2)
      acd336(17)=abb336(18)
      acd336(18)=spvak4k2(iv2)
      acd336(19)=abb336(14)
      acd336(20)=spval5k2(iv2)
      acd336(21)=abb336(12)
      acd336(22)=spval5k3(iv2)
      acd336(23)=abb336(59)
      acd336(24)=spval5k7(iv2)
      acd336(25)=abb336(35)
      acd336(26)=spval6k2(iv2)
      acd336(27)=abb336(24)
      acd336(28)=spval6k3(iv2)
      acd336(29)=abb336(44)
      acd336(30)=spvak7k2(iv2)
      acd336(31)=abb336(28)
      acd336(32)=spvak1k2(iv1)
      acd336(33)=spvak1k3(iv1)
      acd336(34)=spvak4k2(iv1)
      acd336(35)=spval5k2(iv1)
      acd336(36)=spval5k3(iv1)
      acd336(37)=spval5k7(iv1)
      acd336(38)=spval6k2(iv1)
      acd336(39)=spval6k3(iv1)
      acd336(40)=spvak7k2(iv1)
      acd336(41)=acd336(3)*acd336(5)
      acd336(42)=acd336(8)*acd336(9)
      acd336(43)=acd336(11)*acd336(12)
      acd336(44)=acd336(32)*acd336(15)
      acd336(45)=acd336(33)*acd336(17)
      acd336(46)=acd336(34)*acd336(19)
      acd336(47)=acd336(35)*acd336(21)
      acd336(48)=acd336(36)*acd336(23)
      acd336(49)=acd336(37)*acd336(25)
      acd336(50)=acd336(38)*acd336(27)
      acd336(51)=acd336(39)*acd336(29)
      acd336(52)=acd336(40)*acd336(31)
      acd336(41)=acd336(52)+acd336(51)+acd336(50)+acd336(49)+acd336(48)+acd336(&
      &47)+acd336(46)+acd336(45)+acd336(44)+acd336(43)+acd336(42)+acd336(41)
      acd336(41)=acd336(4)*acd336(41)
      acd336(42)=acd336(6)*acd336(5)
      acd336(43)=acd336(10)*acd336(9)
      acd336(44)=acd336(13)*acd336(12)
      acd336(45)=acd336(14)*acd336(15)
      acd336(46)=acd336(16)*acd336(17)
      acd336(47)=acd336(18)*acd336(19)
      acd336(48)=acd336(20)*acd336(21)
      acd336(49)=acd336(22)*acd336(23)
      acd336(50)=acd336(24)*acd336(25)
      acd336(51)=acd336(26)*acd336(27)
      acd336(52)=acd336(28)*acd336(29)
      acd336(53)=acd336(30)*acd336(31)
      acd336(42)=acd336(53)+acd336(52)+acd336(51)+acd336(50)+acd336(49)+acd336(&
      &48)+acd336(47)+acd336(46)+acd336(45)+acd336(44)+acd336(43)+acd336(42)
      acd336(42)=acd336(7)*acd336(42)
      acd336(43)=acd336(2)*acd336(1)
      brack=acd336(41)+acd336(42)+2.0_ki*acd336(43)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd336h0
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d336:
   subroutine     reconstruct_d336(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_336:
      coeffs%coeffs_336%c0 = derivative(czip)
      coeffs%coeffs_336%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_336%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_336%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_336%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_336%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_336%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_336%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_336%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_336%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_336%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_336%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_336%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_336%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_336%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_336:
   end subroutine reconstruct_d336
!---#] subroutine reconstruct_d336:
end module     p0_dbaru_epnebbbarg_d336h0l1d
