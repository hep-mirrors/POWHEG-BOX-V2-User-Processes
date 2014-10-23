module     p0_dbaru_epnebbbarg_d303h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d303h6l1d.f90
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
   public :: derivative , reconstruct_d303
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd303
      complex(ki) :: brack
      acd303(1)=dotproduct(k2,qshift)
      acd303(2)=dotproduct(qshift,spval5k2)
      acd303(3)=abb303(22)
      acd303(4)=dotproduct(qshift,spvak7k2)
      acd303(5)=abb303(19)
      acd303(6)=dotproduct(l5,qshift)
      acd303(7)=abb303(17)
      acd303(8)=dotproduct(k7,qshift)
      acd303(9)=abb303(34)
      acd303(10)=dotproduct(qshift,qshift)
      acd303(11)=abb303(31)
      acd303(12)=abb303(15)
      acd303(13)=abb303(16)
      acd303(14)=dotproduct(qshift,spvak7l6)
      acd303(15)=abb303(12)
      acd303(16)=abb303(21)
      acd303(17)=dotproduct(qshift,spvak1k2)
      acd303(18)=dotproduct(qshift,spval5l6)
      acd303(19)=abb303(20)
      acd303(20)=abb303(24)
      acd303(21)=dotproduct(qshift,spvak4k2)
      acd303(22)=abb303(23)
      acd303(23)=abb303(13)
      acd303(24)=abb303(18)
      acd303(25)=abb303(14)
      acd303(26)=abb303(10)
      acd303(27)=abb303(26)
      acd303(28)=abb303(11)
      acd303(29)=abb303(27)
      acd303(30)=-acd303(19)*acd303(17)
      acd303(31)=-acd303(22)*acd303(21)
      acd303(30)=acd303(23)+acd303(31)+acd303(30)
      acd303(30)=acd303(30)*acd303(18)
      acd303(31)=acd303(5)*acd303(1)
      acd303(32)=acd303(7)*acd303(6)
      acd303(33)=-acd303(12)*acd303(10)
      acd303(34)=acd303(20)*acd303(17)
      acd303(35)=acd303(24)*acd303(21)
      acd303(30)=acd303(35)+acd303(34)+acd303(30)-acd303(25)+acd303(33)+acd303(&
      &32)+acd303(31)
      acd303(30)=acd303(4)*acd303(30)
      acd303(31)=acd303(3)*acd303(1)
      acd303(32)=acd303(9)*acd303(8)
      acd303(33)=-acd303(11)*acd303(10)
      acd303(34)=acd303(13)*acd303(4)
      acd303(35)=acd303(15)*acd303(14)
      acd303(31)=-acd303(16)+acd303(35)+acd303(34)+acd303(33)+acd303(32)+acd303&
      &(31)
      acd303(31)=acd303(2)*acd303(31)
      acd303(32)=acd303(26)*acd303(18)
      acd303(32)=-acd303(27)+acd303(32)
      acd303(32)=acd303(17)*acd303(32)
      acd303(33)=acd303(28)*acd303(18)
      acd303(33)=-acd303(29)+acd303(33)
      acd303(33)=acd303(21)*acd303(33)
      brack=acd303(30)+acd303(31)+acd303(32)+acd303(33)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd303
      complex(ki) :: brack
      acd303(1)=k2(iv1)
      acd303(2)=dotproduct(qshift,spval5k2)
      acd303(3)=abb303(22)
      acd303(4)=dotproduct(qshift,spvak7k2)
      acd303(5)=abb303(19)
      acd303(6)=l5(iv1)
      acd303(7)=abb303(17)
      acd303(8)=k7(iv1)
      acd303(9)=abb303(34)
      acd303(10)=qshift(iv1)
      acd303(11)=abb303(31)
      acd303(12)=abb303(15)
      acd303(13)=spval5k2(iv1)
      acd303(14)=dotproduct(k2,qshift)
      acd303(15)=dotproduct(k7,qshift)
      acd303(16)=dotproduct(qshift,qshift)
      acd303(17)=abb303(16)
      acd303(18)=dotproduct(qshift,spvak7l6)
      acd303(19)=abb303(12)
      acd303(20)=abb303(21)
      acd303(21)=spvak7k2(iv1)
      acd303(22)=dotproduct(l5,qshift)
      acd303(23)=dotproduct(qshift,spvak1k2)
      acd303(24)=dotproduct(qshift,spval5l6)
      acd303(25)=abb303(20)
      acd303(26)=abb303(24)
      acd303(27)=dotproduct(qshift,spvak4k2)
      acd303(28)=abb303(23)
      acd303(29)=abb303(13)
      acd303(30)=abb303(18)
      acd303(31)=abb303(14)
      acd303(32)=spvak1k2(iv1)
      acd303(33)=abb303(10)
      acd303(34)=abb303(26)
      acd303(35)=spval5l6(iv1)
      acd303(36)=abb303(11)
      acd303(37)=spvak4k2(iv1)
      acd303(38)=abb303(27)
      acd303(39)=spvak7l6(iv1)
      acd303(40)=acd303(27)*acd303(28)
      acd303(41)=acd303(23)*acd303(25)
      acd303(40)=-acd303(29)+acd303(40)+acd303(41)
      acd303(41)=acd303(35)*acd303(40)
      acd303(42)=acd303(37)*acd303(28)
      acd303(43)=acd303(32)*acd303(25)
      acd303(42)=acd303(42)+acd303(43)
      acd303(42)=acd303(24)*acd303(42)
      acd303(43)=2.0_ki*acd303(10)
      acd303(44)=acd303(12)*acd303(43)
      acd303(45)=-acd303(7)*acd303(6)
      acd303(46)=-acd303(1)*acd303(5)
      acd303(47)=-acd303(37)*acd303(30)
      acd303(48)=-acd303(32)*acd303(26)
      acd303(49)=-acd303(13)*acd303(17)
      acd303(41)=acd303(42)+acd303(49)+acd303(41)+acd303(48)+acd303(47)+acd303(&
      &46)+acd303(44)+acd303(45)
      acd303(41)=acd303(4)*acd303(41)
      acd303(40)=acd303(24)*acd303(40)
      acd303(42)=acd303(12)*acd303(16)
      acd303(44)=-acd303(7)*acd303(22)
      acd303(45)=-acd303(5)*acd303(14)
      acd303(46)=-acd303(27)*acd303(30)
      acd303(47)=-acd303(23)*acd303(26)
      acd303(48)=-acd303(2)*acd303(17)
      acd303(40)=acd303(40)+acd303(48)+acd303(47)+acd303(46)+acd303(45)+acd303(&
      &44)+acd303(31)+acd303(42)
      acd303(40)=acd303(21)*acd303(40)
      acd303(42)=-acd303(19)*acd303(39)
      acd303(43)=acd303(11)*acd303(43)
      acd303(44)=-acd303(9)*acd303(8)
      acd303(45)=-acd303(1)*acd303(3)
      acd303(42)=acd303(45)+acd303(44)+acd303(42)+acd303(43)
      acd303(42)=acd303(2)*acd303(42)
      acd303(43)=-acd303(19)*acd303(18)
      acd303(44)=acd303(11)*acd303(16)
      acd303(45)=-acd303(9)*acd303(15)
      acd303(46)=-acd303(3)*acd303(14)
      acd303(43)=acd303(46)+acd303(45)+acd303(44)+acd303(20)+acd303(43)
      acd303(43)=acd303(13)*acd303(43)
      acd303(44)=-acd303(27)*acd303(36)
      acd303(45)=-acd303(23)*acd303(33)
      acd303(44)=acd303(44)+acd303(45)
      acd303(44)=acd303(35)*acd303(44)
      acd303(45)=-acd303(37)*acd303(36)
      acd303(46)=-acd303(32)*acd303(33)
      acd303(45)=acd303(45)+acd303(46)
      acd303(45)=acd303(24)*acd303(45)
      acd303(46)=acd303(37)*acd303(38)
      acd303(47)=acd303(32)*acd303(34)
      brack=acd303(40)+acd303(41)+acd303(42)+acd303(43)+acd303(44)+acd303(45)+a&
      &cd303(46)+acd303(47)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=dotproduct(qshift,spval5k2)
      acd303(3)=abb303(31)
      acd303(4)=dotproduct(qshift,spvak7k2)
      acd303(5)=abb303(15)
      acd303(6)=k2(iv1)
      acd303(7)=spval5k2(iv2)
      acd303(8)=abb303(22)
      acd303(9)=spvak7k2(iv2)
      acd303(10)=abb303(19)
      acd303(11)=k2(iv2)
      acd303(12)=spval5k2(iv1)
      acd303(13)=spvak7k2(iv1)
      acd303(14)=l5(iv1)
      acd303(15)=abb303(17)
      acd303(16)=l5(iv2)
      acd303(17)=k7(iv1)
      acd303(18)=abb303(34)
      acd303(19)=k7(iv2)
      acd303(20)=qshift(iv1)
      acd303(21)=qshift(iv2)
      acd303(22)=abb303(16)
      acd303(23)=spvak7l6(iv2)
      acd303(24)=abb303(12)
      acd303(25)=spvak7l6(iv1)
      acd303(26)=spvak1k2(iv2)
      acd303(27)=dotproduct(qshift,spval5l6)
      acd303(28)=abb303(20)
      acd303(29)=abb303(24)
      acd303(30)=spval5l6(iv2)
      acd303(31)=dotproduct(qshift,spvak1k2)
      acd303(32)=dotproduct(qshift,spvak4k2)
      acd303(33)=abb303(23)
      acd303(34)=abb303(13)
      acd303(35)=spvak4k2(iv2)
      acd303(36)=abb303(18)
      acd303(37)=spvak1k2(iv1)
      acd303(38)=spval5l6(iv1)
      acd303(39)=spvak4k2(iv1)
      acd303(40)=abb303(10)
      acd303(41)=abb303(11)
      acd303(42)=acd303(33)*acd303(32)
      acd303(43)=acd303(28)*acd303(31)
      acd303(42)=acd303(42)+acd303(43)-acd303(34)
      acd303(43)=-acd303(30)*acd303(42)
      acd303(44)=acd303(28)*acd303(27)
      acd303(44)=acd303(44)-acd303(29)
      acd303(45)=-acd303(26)*acd303(44)
      acd303(46)=acd303(33)*acd303(27)
      acd303(46)=acd303(46)-acd303(36)
      acd303(47)=-acd303(35)*acd303(46)
      acd303(48)=acd303(15)*acd303(16)
      acd303(49)=acd303(10)*acd303(11)
      acd303(50)=2.0_ki*acd303(5)
      acd303(51)=-acd303(21)*acd303(50)
      acd303(52)=acd303(7)*acd303(22)
      acd303(43)=acd303(43)+acd303(52)+acd303(51)+acd303(48)+acd303(49)+acd303(&
      &47)+acd303(45)
      acd303(43)=acd303(13)*acd303(43)
      acd303(42)=-acd303(38)*acd303(42)
      acd303(45)=-acd303(39)*acd303(46)
      acd303(44)=-acd303(37)*acd303(44)
      acd303(46)=acd303(15)*acd303(14)
      acd303(47)=acd303(6)*acd303(10)
      acd303(48)=-acd303(20)*acd303(50)
      acd303(49)=acd303(12)*acd303(22)
      acd303(42)=acd303(42)+acd303(49)+acd303(48)+acd303(46)+acd303(47)+acd303(&
      &44)+acd303(45)
      acd303(42)=acd303(9)*acd303(42)
      acd303(44)=acd303(24)*acd303(23)
      acd303(45)=acd303(18)*acd303(19)
      acd303(46)=acd303(8)*acd303(11)
      acd303(47)=2.0_ki*acd303(3)
      acd303(48)=-acd303(21)*acd303(47)
      acd303(44)=acd303(48)+acd303(46)+acd303(44)+acd303(45)
      acd303(44)=acd303(12)*acd303(44)
      acd303(45)=acd303(24)*acd303(25)
      acd303(46)=acd303(18)*acd303(17)
      acd303(48)=acd303(6)*acd303(8)
      acd303(49)=-acd303(20)*acd303(47)
      acd303(45)=acd303(49)+acd303(48)+acd303(45)+acd303(46)
      acd303(45)=acd303(7)*acd303(45)
      acd303(46)=-acd303(2)*acd303(47)
      acd303(47)=-acd303(4)*acd303(50)
      acd303(46)=acd303(47)+acd303(46)
      acd303(46)=acd303(1)*acd303(46)
      acd303(47)=acd303(33)*acd303(4)
      acd303(47)=acd303(47)-acd303(41)
      acd303(48)=-acd303(35)*acd303(47)
      acd303(49)=acd303(28)*acd303(4)
      acd303(49)=acd303(49)-acd303(40)
      acd303(50)=-acd303(26)*acd303(49)
      acd303(48)=acd303(50)+acd303(48)
      acd303(48)=acd303(38)*acd303(48)
      acd303(47)=-acd303(39)*acd303(47)
      acd303(49)=-acd303(37)*acd303(49)
      acd303(47)=acd303(49)+acd303(47)
      acd303(47)=acd303(30)*acd303(47)
      brack=acd303(42)+acd303(43)+acd303(44)+acd303(45)+acd303(46)+acd303(47)+a&
      &cd303(48)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=spval5k2(iv3)
      acd303(3)=abb303(31)
      acd303(4)=spvak7k2(iv3)
      acd303(5)=abb303(15)
      acd303(6)=d(iv1,iv3)
      acd303(7)=spval5k2(iv2)
      acd303(8)=spvak7k2(iv2)
      acd303(9)=d(iv2,iv3)
      acd303(10)=spval5k2(iv1)
      acd303(11)=spvak7k2(iv1)
      acd303(12)=spvak1k2(iv2)
      acd303(13)=spval5l6(iv3)
      acd303(14)=abb303(20)
      acd303(15)=spvak1k2(iv3)
      acd303(16)=spval5l6(iv2)
      acd303(17)=spvak4k2(iv3)
      acd303(18)=abb303(23)
      acd303(19)=spvak4k2(iv2)
      acd303(20)=spvak1k2(iv1)
      acd303(21)=spval5l6(iv1)
      acd303(22)=spvak4k2(iv1)
      acd303(23)=acd303(13)*acd303(11)
      acd303(24)=acd303(21)*acd303(4)
      acd303(23)=acd303(23)+acd303(24)
      acd303(24)=acd303(12)*acd303(23)
      acd303(25)=acd303(16)*acd303(11)
      acd303(26)=acd303(21)*acd303(8)
      acd303(25)=acd303(25)+acd303(26)
      acd303(26)=acd303(15)*acd303(25)
      acd303(27)=acd303(13)*acd303(8)
      acd303(28)=acd303(16)*acd303(4)
      acd303(27)=acd303(27)+acd303(28)
      acd303(28)=acd303(20)*acd303(27)
      acd303(24)=acd303(28)+acd303(26)+acd303(24)
      acd303(24)=acd303(14)*acd303(24)
      acd303(25)=acd303(17)*acd303(25)
      acd303(23)=acd303(19)*acd303(23)
      acd303(26)=acd303(22)*acd303(27)
      acd303(23)=acd303(26)+acd303(23)+acd303(25)
      acd303(23)=acd303(18)*acd303(23)
      acd303(25)=acd303(2)*acd303(1)
      acd303(26)=acd303(7)*acd303(6)
      acd303(27)=acd303(10)*acd303(9)
      acd303(25)=acd303(27)+acd303(26)+acd303(25)
      acd303(26)=2.0_ki*acd303(3)
      acd303(25)=acd303(26)*acd303(25)
      acd303(26)=acd303(1)*acd303(4)
      acd303(27)=acd303(6)*acd303(8)
      acd303(28)=acd303(9)*acd303(11)
      acd303(26)=acd303(28)+acd303(26)+acd303(27)
      acd303(26)=acd303(5)*acd303(26)
      brack=acd303(23)+acd303(24)+acd303(25)+2.0_ki*acd303(26)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h6
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
      qshift = k5
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
!---#[ subroutine reconstruct_d303:
   subroutine     reconstruct_d303(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_303:
      coeffs%coeffs_303%c0 = derivative(czip)
      coeffs%coeffs_303%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_303%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_303%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_303%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_303%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_303%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_303%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_303%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_303%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_303%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_303%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_303%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_303%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_303%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_303%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_303%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_303%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_303%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_303%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_303%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_303%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_303%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_303%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_303%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_303%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_303%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_303%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_303%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_303%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_303%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_303%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_303%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_303%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_303%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_303:
   end subroutine reconstruct_d303
!---#] subroutine reconstruct_d303:
end module     p0_dbaru_epnebbbarg_d303h6l1d
