module     p0_dbaru_epnebbbarg_d113h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d113h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d113
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd113
      complex(ki) :: brack
      acd113(1)=abb113(62)
      brack=acd113(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd113
      complex(ki) :: brack
      acd113(1)=k2(iv1)
      acd113(2)=abb113(31)
      acd113(3)=k7(iv1)
      acd113(4)=abb113(24)
      acd113(5)=e7(iv1)
      acd113(6)=abb113(70)
      acd113(7)=spvak1k2(iv1)
      acd113(8)=abb113(41)
      acd113(9)=spvak1l5(iv1)
      acd113(10)=abb113(27)
      acd113(11)=spvak1l6(iv1)
      acd113(12)=abb113(30)
      acd113(13)=spvak1k7(iv1)
      acd113(14)=abb113(29)
      acd113(15)=spvak4k2(iv1)
      acd113(16)=abb113(65)
      acd113(17)=spvak4l5(iv1)
      acd113(18)=abb113(40)
      acd113(19)=spvak4l6(iv1)
      acd113(20)=abb113(51)
      acd113(21)=spvak4k7(iv1)
      acd113(22)=abb113(42)
      acd113(23)=spval5k2(iv1)
      acd113(24)=abb113(28)
      acd113(25)=spval6k2(iv1)
      acd113(26)=abb113(47)
      acd113(27)=spvak7k2(iv1)
      acd113(28)=abb113(15)
      acd113(29)=spvae7k2(iv1)
      acd113(30)=abb113(10)
      acd113(31)=-acd113(2)*acd113(1)
      acd113(32)=-acd113(4)*acd113(3)
      acd113(33)=-acd113(6)*acd113(5)
      acd113(34)=-acd113(8)*acd113(7)
      acd113(35)=-acd113(10)*acd113(9)
      acd113(36)=-acd113(12)*acd113(11)
      acd113(37)=-acd113(14)*acd113(13)
      acd113(38)=-acd113(16)*acd113(15)
      acd113(39)=-acd113(18)*acd113(17)
      acd113(40)=-acd113(20)*acd113(19)
      acd113(41)=-acd113(22)*acd113(21)
      acd113(42)=-acd113(24)*acd113(23)
      acd113(43)=-acd113(26)*acd113(25)
      acd113(44)=-acd113(28)*acd113(27)
      acd113(45)=-acd113(30)*acd113(29)
      brack=acd113(31)+acd113(32)+acd113(33)+acd113(34)+acd113(35)+acd113(36)+a&
      &cd113(37)+acd113(38)+acd113(39)+acd113(40)+acd113(41)+acd113(42)+acd113(&
      &43)+acd113(44)+acd113(45)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd113
      complex(ki) :: brack
      acd113(1)=d(iv1,iv2)
      acd113(2)=abb113(16)
      acd113(3)=k2(iv1)
      acd113(4)=spvak1k2(iv2)
      acd113(5)=abb113(46)
      acd113(6)=spvak4k2(iv2)
      acd113(7)=abb113(26)
      acd113(8)=spval5k2(iv2)
      acd113(9)=abb113(38)
      acd113(10)=spval6k2(iv2)
      acd113(11)=abb113(20)
      acd113(12)=spvae7k2(iv2)
      acd113(13)=abb113(105)
      acd113(14)=k2(iv2)
      acd113(15)=spvak1k2(iv1)
      acd113(16)=spvak4k2(iv1)
      acd113(17)=spval5k2(iv1)
      acd113(18)=spval6k2(iv1)
      acd113(19)=spvae7k2(iv1)
      acd113(20)=l5(iv1)
      acd113(21)=abb113(23)
      acd113(22)=l5(iv2)
      acd113(23)=l6(iv1)
      acd113(24)=l6(iv2)
      acd113(25)=k7(iv1)
      acd113(26)=abb113(44)
      acd113(27)=abb113(45)
      acd113(28)=abb113(33)
      acd113(29)=abb113(36)
      acd113(30)=abb113(56)
      acd113(31)=k7(iv2)
      acd113(32)=e7(iv1)
      acd113(33)=abb113(43)
      acd113(34)=abb113(53)
      acd113(35)=abb113(49)
      acd113(36)=abb113(58)
      acd113(37)=spvak7k2(iv2)
      acd113(38)=abb113(18)
      acd113(39)=e7(iv2)
      acd113(40)=spvak7k2(iv1)
      acd113(41)=abb113(9)
      acd113(42)=abb113(35)
      acd113(43)=spvak1k7(iv2)
      acd113(44)=abb113(39)
      acd113(45)=spvak4k7(iv2)
      acd113(46)=abb113(59)
      acd113(47)=spvak1k7(iv1)
      acd113(48)=spvak4k7(iv1)
      acd113(49)=abb113(22)
      acd113(50)=abb113(57)
      acd113(51)=abb113(37)
      acd113(52)=abb113(55)
      acd113(53)=acd113(45)*acd113(52)
      acd113(54)=acd113(43)*acd113(51)
      acd113(55)=acd113(37)*acd113(50)
      acd113(56)=acd113(39)*acd113(36)
      acd113(57)=acd113(31)*acd113(29)
      acd113(58)=acd113(14)*acd113(11)
      acd113(59)=acd113(12)*acd113(49)
      acd113(53)=acd113(59)+acd113(58)+acd113(57)+acd113(56)+acd113(55)+acd113(&
      &53)+acd113(54)
      acd113(53)=acd113(18)*acd113(53)
      acd113(54)=acd113(45)*acd113(46)
      acd113(55)=acd113(43)*acd113(44)
      acd113(56)=acd113(37)*acd113(42)
      acd113(57)=acd113(39)*acd113(35)
      acd113(58)=acd113(31)*acd113(28)
      acd113(59)=acd113(14)*acd113(9)
      acd113(60)=acd113(12)*acd113(41)
      acd113(54)=acd113(60)+acd113(59)+acd113(58)+acd113(57)+acd113(56)+acd113(&
      &54)+acd113(55)
      acd113(54)=acd113(17)*acd113(54)
      acd113(55)=acd113(48)*acd113(52)
      acd113(56)=acd113(47)*acd113(51)
      acd113(57)=acd113(40)*acd113(50)
      acd113(58)=acd113(32)*acd113(36)
      acd113(59)=acd113(25)*acd113(29)
      acd113(60)=acd113(3)*acd113(11)
      acd113(61)=acd113(19)*acd113(49)
      acd113(55)=acd113(61)+acd113(60)+acd113(59)+acd113(58)+acd113(57)+acd113(&
      &55)+acd113(56)
      acd113(55)=acd113(10)*acd113(55)
      acd113(56)=acd113(46)*acd113(48)
      acd113(57)=acd113(44)*acd113(47)
      acd113(58)=acd113(40)*acd113(42)
      acd113(59)=acd113(32)*acd113(35)
      acd113(60)=acd113(25)*acd113(28)
      acd113(61)=acd113(3)*acd113(9)
      acd113(62)=acd113(19)*acd113(41)
      acd113(56)=acd113(62)+acd113(61)+acd113(60)+acd113(59)+acd113(58)+acd113(&
      &56)+acd113(57)
      acd113(56)=acd113(8)*acd113(56)
      acd113(57)=acd113(40)*acd113(38)
      acd113(58)=acd113(16)*acd113(34)
      acd113(59)=acd113(15)*acd113(33)
      acd113(57)=acd113(59)+acd113(57)+acd113(58)
      acd113(57)=acd113(39)*acd113(57)
      acd113(58)=acd113(37)*acd113(38)
      acd113(59)=acd113(6)*acd113(34)
      acd113(60)=acd113(4)*acd113(33)
      acd113(58)=acd113(60)+acd113(58)+acd113(59)
      acd113(58)=acd113(32)*acd113(58)
      acd113(59)=-acd113(24)-acd113(22)
      acd113(59)=acd113(21)*acd113(59)
      acd113(60)=acd113(31)*acd113(30)
      acd113(61)=acd113(14)*acd113(13)
      acd113(59)=acd113(61)+acd113(59)+acd113(60)
      acd113(59)=acd113(19)*acd113(59)
      acd113(60)=-acd113(23)-acd113(20)
      acd113(60)=acd113(21)*acd113(60)
      acd113(61)=acd113(25)*acd113(30)
      acd113(62)=acd113(3)*acd113(13)
      acd113(60)=acd113(62)+acd113(60)+acd113(61)
      acd113(60)=acd113(12)*acd113(60)
      acd113(61)=acd113(16)*acd113(27)
      acd113(62)=acd113(15)*acd113(26)
      acd113(61)=acd113(61)+acd113(62)
      acd113(61)=acd113(31)*acd113(61)
      acd113(62)=acd113(6)*acd113(27)
      acd113(63)=acd113(4)*acd113(26)
      acd113(62)=acd113(62)+acd113(63)
      acd113(62)=acd113(25)*acd113(62)
      acd113(63)=acd113(16)*acd113(7)
      acd113(64)=acd113(15)*acd113(5)
      acd113(63)=acd113(63)+acd113(64)
      acd113(63)=acd113(14)*acd113(63)
      acd113(64)=acd113(6)*acd113(7)
      acd113(65)=acd113(4)*acd113(5)
      acd113(64)=acd113(64)+acd113(65)
      acd113(64)=acd113(3)*acd113(64)
      acd113(65)=acd113(1)*acd113(2)
      brack=acd113(53)+acd113(54)+acd113(55)+acd113(56)+acd113(57)+acd113(58)+a&
      &cd113(59)+acd113(60)+acd113(61)+acd113(62)+acd113(63)+acd113(64)+2.0_ki*&
      &acd113(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd113
      complex(ki) :: brack
      acd113(1)=d(iv1,iv2)
      acd113(2)=spvak1k2(iv3)
      acd113(3)=abb113(14)
      acd113(4)=spvak4k2(iv3)
      acd113(5)=abb113(13)
      acd113(6)=spval5k2(iv3)
      acd113(7)=abb113(61)
      acd113(8)=spval6k2(iv3)
      acd113(9)=abb113(71)
      acd113(10)=spvae7k2(iv3)
      acd113(11)=abb113(107)
      acd113(12)=d(iv1,iv3)
      acd113(13)=spvak1k2(iv2)
      acd113(14)=spvak4k2(iv2)
      acd113(15)=spval5k2(iv2)
      acd113(16)=spval6k2(iv2)
      acd113(17)=spvae7k2(iv2)
      acd113(18)=d(iv2,iv3)
      acd113(19)=spvak1k2(iv1)
      acd113(20)=spvak4k2(iv1)
      acd113(21)=spval5k2(iv1)
      acd113(22)=spval6k2(iv1)
      acd113(23)=spvae7k2(iv1)
      acd113(24)=e7(iv1)
      acd113(25)=abb113(12)
      acd113(26)=abb113(17)
      acd113(27)=abb113(11)
      acd113(28)=abb113(25)
      acd113(29)=e7(iv2)
      acd113(30)=e7(iv3)
      acd113(31)=-acd113(2)*acd113(1)
      acd113(32)=-acd113(13)*acd113(12)
      acd113(33)=-acd113(19)*acd113(18)
      acd113(31)=acd113(33)+acd113(31)+acd113(32)
      acd113(31)=acd113(3)*acd113(31)
      acd113(32)=-acd113(4)*acd113(1)
      acd113(33)=-acd113(14)*acd113(12)
      acd113(34)=-acd113(20)*acd113(18)
      acd113(32)=acd113(34)+acd113(32)+acd113(33)
      acd113(32)=acd113(5)*acd113(32)
      acd113(33)=-acd113(6)*acd113(1)
      acd113(34)=-acd113(15)*acd113(12)
      acd113(35)=-acd113(21)*acd113(18)
      acd113(33)=acd113(35)+acd113(33)+acd113(34)
      acd113(33)=acd113(7)*acd113(33)
      acd113(34)=-acd113(8)*acd113(1)
      acd113(35)=-acd113(16)*acd113(12)
      acd113(36)=-acd113(22)*acd113(18)
      acd113(34)=acd113(36)+acd113(34)+acd113(35)
      acd113(34)=acd113(9)*acd113(34)
      acd113(31)=acd113(31)+acd113(32)+acd113(33)+acd113(34)
      acd113(32)=acd113(8)*acd113(26)
      acd113(33)=-acd113(6)*acd113(25)
      acd113(33)=acd113(33)-acd113(32)
      acd113(33)=acd113(13)*acd113(33)
      acd113(34)=acd113(6)*acd113(27)
      acd113(35)=acd113(8)*acd113(28)
      acd113(34)=acd113(34)+acd113(35)
      acd113(35)=-acd113(14)*acd113(34)
      acd113(36)=-acd113(2)*acd113(25)
      acd113(37)=-acd113(4)*acd113(27)
      acd113(36)=acd113(36)+acd113(37)
      acd113(36)=acd113(15)*acd113(36)
      acd113(37)=-acd113(2)*acd113(26)
      acd113(38)=-acd113(4)*acd113(28)
      acd113(37)=acd113(37)+acd113(38)
      acd113(37)=acd113(16)*acd113(37)
      acd113(33)=acd113(37)+acd113(36)+acd113(33)+acd113(35)
      acd113(33)=acd113(24)*acd113(33)
      acd113(35)=-acd113(10)*acd113(1)
      acd113(36)=-acd113(17)*acd113(12)
      acd113(37)=-acd113(23)*acd113(18)
      acd113(35)=acd113(37)+acd113(36)+acd113(35)
      acd113(36)=2.0_ki*acd113(11)
      acd113(35)=acd113(36)*acd113(35)
      acd113(36)=acd113(15)*acd113(30)
      acd113(37)=-acd113(6)*acd113(29)
      acd113(37)=-acd113(36)+acd113(37)
      acd113(37)=acd113(25)*acd113(37)
      acd113(32)=-acd113(29)*acd113(32)
      acd113(38)=acd113(16)*acd113(30)
      acd113(39)=-acd113(26)*acd113(38)
      acd113(32)=acd113(39)+acd113(32)+acd113(37)
      acd113(32)=acd113(19)*acd113(32)
      acd113(34)=-acd113(29)*acd113(34)
      acd113(36)=-acd113(27)*acd113(36)
      acd113(37)=-acd113(28)*acd113(38)
      acd113(34)=acd113(37)+acd113(36)+acd113(34)
      acd113(34)=acd113(20)*acd113(34)
      acd113(36)=acd113(2)*acd113(29)
      acd113(37)=acd113(13)*acd113(30)
      acd113(36)=acd113(36)+acd113(37)
      acd113(37)=-acd113(25)*acd113(36)
      acd113(38)=acd113(4)*acd113(29)
      acd113(39)=acd113(14)*acd113(30)
      acd113(38)=acd113(38)+acd113(39)
      acd113(39)=-acd113(27)*acd113(38)
      acd113(37)=acd113(39)+acd113(37)
      acd113(37)=acd113(21)*acd113(37)
      acd113(36)=-acd113(26)*acd113(36)
      acd113(38)=-acd113(28)*acd113(38)
      acd113(36)=acd113(38)+acd113(36)
      acd113(36)=acd113(22)*acd113(36)
      brack=2.0_ki*acd113(31)+acd113(32)+acd113(33)+acd113(34)+acd113(35)+acd11&
      &3(36)+acd113(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = 0
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d113:
   subroutine     reconstruct_d113(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_113:
      coeffs%coeffs_113%c0 = derivative(czip)
      coeffs%coeffs_113%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_113%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_113%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_113%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_113%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_113%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_113%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_113%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_113%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_113%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_113%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_113%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_113%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_113%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_113%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_113%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_113%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_113%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_113%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_113%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_113%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_113%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_113%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_113%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_113%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_113%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_113%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_113%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_113%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_113%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_113%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_113%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_113%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_113%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_113:
   end subroutine reconstruct_d113
!---#] subroutine reconstruct_d113:
end module     p0_dbaru_epnebbbarg_d113h0l1d