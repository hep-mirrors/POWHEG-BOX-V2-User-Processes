module     p0_dbaru_epnebbbarg_d124h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d124h4l1d.f90
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
   public :: derivative , reconstruct_d124
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd124
      complex(ki) :: brack
      acd124(1)=dotproduct(k7,qshift)
      acd124(2)=dotproduct(qshift,spvak4k2)
      acd124(3)=abb124(18)
      acd124(4)=dotproduct(qshift,spvak7k2)
      acd124(5)=abb124(22)
      acd124(6)=dotproduct(qshift,qshift)
      acd124(7)=abb124(15)
      acd124(8)=abb124(20)
      acd124(9)=abb124(12)
      acd124(10)=abb124(13)
      acd124(11)=abb124(26)
      acd124(12)=dotproduct(qshift,spvak1k2)
      acd124(13)=dotproduct(qshift,spvak4k3)
      acd124(14)=abb124(14)
      acd124(15)=dotproduct(qshift,spval5k2)
      acd124(16)=abb124(11)
      acd124(17)=dotproduct(qshift,spval6k2)
      acd124(18)=abb124(16)
      acd124(19)=dotproduct(qshift,spvak1k3)
      acd124(20)=abb124(10)
      acd124(21)=dotproduct(qshift,spvak1k7)
      acd124(22)=abb124(21)
      acd124(23)=dotproduct(qshift,spval5k3)
      acd124(24)=abb124(9)
      acd124(25)=dotproduct(qshift,spval5k7)
      acd124(26)=abb124(23)
      acd124(27)=dotproduct(qshift,spval6k3)
      acd124(28)=abb124(17)
      acd124(29)=dotproduct(qshift,spval6k7)
      acd124(30)=abb124(30)
      acd124(31)=-acd124(17)*acd124(18)
      acd124(32)=-acd124(15)*acd124(16)
      acd124(33)=-acd124(12)*acd124(14)
      acd124(31)=acd124(33)+acd124(31)+acd124(32)
      acd124(31)=acd124(13)*acd124(31)
      acd124(32)=acd124(29)*acd124(30)
      acd124(33)=acd124(27)*acd124(28)
      acd124(34)=acd124(25)*acd124(26)
      acd124(35)=acd124(23)*acd124(24)
      acd124(36)=acd124(21)*acd124(22)
      acd124(37)=acd124(19)*acd124(20)
      acd124(38)=acd124(1)*acd124(5)
      acd124(39)=-acd124(6)*acd124(8)
      acd124(40)=acd124(2)*acd124(10)
      acd124(41)=acd124(4)*acd124(11)
      acd124(31)=acd124(41)+acd124(40)+acd124(39)+acd124(31)+acd124(38)+acd124(&
      &37)+acd124(36)+acd124(35)+acd124(34)+acd124(32)+acd124(33)
      acd124(31)=acd124(4)*acd124(31)
      acd124(32)=acd124(1)*acd124(3)
      acd124(33)=-acd124(6)*acd124(7)
      acd124(32)=acd124(32)+acd124(33)
      acd124(32)=acd124(2)*acd124(32)
      acd124(33)=acd124(6)*acd124(9)
      brack=acd124(31)+acd124(32)+acd124(33)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd124
      complex(ki) :: brack
      acd124(1)=k7(iv1)
      acd124(2)=dotproduct(qshift,spvak4k2)
      acd124(3)=abb124(18)
      acd124(4)=dotproduct(qshift,spvak7k2)
      acd124(5)=abb124(22)
      acd124(6)=qshift(iv1)
      acd124(7)=abb124(15)
      acd124(8)=abb124(20)
      acd124(9)=abb124(12)
      acd124(10)=spvak4k2(iv1)
      acd124(11)=dotproduct(k7,qshift)
      acd124(12)=dotproduct(qshift,qshift)
      acd124(13)=abb124(13)
      acd124(14)=spvak7k2(iv1)
      acd124(15)=abb124(26)
      acd124(16)=dotproduct(qshift,spvak1k2)
      acd124(17)=dotproduct(qshift,spvak4k3)
      acd124(18)=abb124(14)
      acd124(19)=dotproduct(qshift,spval5k2)
      acd124(20)=abb124(11)
      acd124(21)=dotproduct(qshift,spval6k2)
      acd124(22)=abb124(16)
      acd124(23)=dotproduct(qshift,spvak1k3)
      acd124(24)=abb124(10)
      acd124(25)=dotproduct(qshift,spvak1k7)
      acd124(26)=abb124(21)
      acd124(27)=dotproduct(qshift,spval5k3)
      acd124(28)=abb124(9)
      acd124(29)=dotproduct(qshift,spval5k7)
      acd124(30)=abb124(23)
      acd124(31)=dotproduct(qshift,spval6k3)
      acd124(32)=abb124(17)
      acd124(33)=dotproduct(qshift,spval6k7)
      acd124(34)=abb124(30)
      acd124(35)=spvak1k2(iv1)
      acd124(36)=spvak4k3(iv1)
      acd124(37)=spvak1k3(iv1)
      acd124(38)=spvak1k7(iv1)
      acd124(39)=spval5k2(iv1)
      acd124(40)=spval6k2(iv1)
      acd124(41)=spval5k3(iv1)
      acd124(42)=spval5k7(iv1)
      acd124(43)=spval6k3(iv1)
      acd124(44)=spval6k7(iv1)
      acd124(45)=acd124(22)*acd124(21)
      acd124(46)=acd124(20)*acd124(19)
      acd124(47)=acd124(18)*acd124(16)
      acd124(45)=acd124(47)+acd124(45)+acd124(46)
      acd124(46)=acd124(36)*acd124(45)
      acd124(47)=acd124(22)*acd124(40)
      acd124(48)=acd124(20)*acd124(39)
      acd124(49)=acd124(18)*acd124(35)
      acd124(47)=acd124(49)+acd124(47)+acd124(48)
      acd124(47)=acd124(17)*acd124(47)
      acd124(48)=-acd124(34)*acd124(44)
      acd124(49)=-acd124(32)*acd124(43)
      acd124(50)=-acd124(30)*acd124(42)
      acd124(51)=-acd124(28)*acd124(41)
      acd124(52)=-acd124(26)*acd124(38)
      acd124(53)=-acd124(24)*acd124(37)
      acd124(54)=-acd124(1)*acd124(5)
      acd124(55)=-acd124(10)*acd124(13)
      acd124(56)=2.0_ki*acd124(6)
      acd124(57)=acd124(8)*acd124(56)
      acd124(58)=acd124(14)*acd124(15)
      acd124(46)=-2.0_ki*acd124(58)+acd124(47)+acd124(57)+acd124(55)+acd124(54)&
      &+acd124(53)+acd124(52)+acd124(51)+acd124(50)+acd124(48)+acd124(49)+acd12&
      &4(46)
      acd124(46)=acd124(4)*acd124(46)
      acd124(45)=acd124(17)*acd124(45)
      acd124(47)=-acd124(34)*acd124(33)
      acd124(48)=-acd124(32)*acd124(31)
      acd124(49)=-acd124(30)*acd124(29)
      acd124(50)=-acd124(28)*acd124(27)
      acd124(51)=-acd124(26)*acd124(25)
      acd124(52)=-acd124(24)*acd124(23)
      acd124(53)=acd124(8)*acd124(12)
      acd124(54)=-acd124(5)*acd124(11)
      acd124(55)=-acd124(2)*acd124(13)
      acd124(45)=acd124(45)+acd124(55)+acd124(54)+acd124(53)+acd124(52)+acd124(&
      &51)+acd124(50)+acd124(49)+acd124(47)+acd124(48)
      acd124(45)=acd124(14)*acd124(45)
      acd124(47)=acd124(7)*acd124(12)
      acd124(48)=-acd124(3)*acd124(11)
      acd124(47)=acd124(47)+acd124(48)
      acd124(47)=acd124(10)*acd124(47)
      acd124(48)=-acd124(1)*acd124(3)
      acd124(49)=acd124(7)*acd124(56)
      acd124(48)=acd124(48)+acd124(49)
      acd124(48)=acd124(2)*acd124(48)
      acd124(49)=-acd124(9)*acd124(56)
      brack=acd124(45)+acd124(46)+acd124(47)+acd124(48)+acd124(49)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=dotproduct(qshift,spvak4k2)
      acd124(3)=abb124(15)
      acd124(4)=dotproduct(qshift,spvak7k2)
      acd124(5)=abb124(20)
      acd124(6)=abb124(12)
      acd124(7)=k7(iv1)
      acd124(8)=spvak4k2(iv2)
      acd124(9)=abb124(18)
      acd124(10)=spvak7k2(iv2)
      acd124(11)=abb124(22)
      acd124(12)=k7(iv2)
      acd124(13)=spvak4k2(iv1)
      acd124(14)=spvak7k2(iv1)
      acd124(15)=qshift(iv1)
      acd124(16)=qshift(iv2)
      acd124(17)=abb124(13)
      acd124(18)=abb124(26)
      acd124(19)=spvak1k2(iv2)
      acd124(20)=dotproduct(qshift,spvak4k3)
      acd124(21)=abb124(14)
      acd124(22)=spvak4k3(iv2)
      acd124(23)=dotproduct(qshift,spvak1k2)
      acd124(24)=dotproduct(qshift,spval5k2)
      acd124(25)=abb124(11)
      acd124(26)=dotproduct(qshift,spval6k2)
      acd124(27)=abb124(16)
      acd124(28)=spvak1k3(iv2)
      acd124(29)=abb124(10)
      acd124(30)=spvak1k7(iv2)
      acd124(31)=abb124(21)
      acd124(32)=spval5k2(iv2)
      acd124(33)=spval6k2(iv2)
      acd124(34)=spval5k3(iv2)
      acd124(35)=abb124(9)
      acd124(36)=spval5k7(iv2)
      acd124(37)=abb124(23)
      acd124(38)=spval6k3(iv2)
      acd124(39)=abb124(17)
      acd124(40)=spval6k7(iv2)
      acd124(41)=abb124(30)
      acd124(42)=spvak1k2(iv1)
      acd124(43)=spvak4k3(iv1)
      acd124(44)=spvak1k3(iv1)
      acd124(45)=spvak1k7(iv1)
      acd124(46)=spval5k2(iv1)
      acd124(47)=spval6k2(iv1)
      acd124(48)=spval5k3(iv1)
      acd124(49)=spval5k7(iv1)
      acd124(50)=spval6k3(iv1)
      acd124(51)=spval6k7(iv1)
      acd124(52)=acd124(11)*acd124(7)
      acd124(53)=acd124(18)*acd124(14)
      acd124(54)=acd124(44)*acd124(29)
      acd124(55)=acd124(45)*acd124(31)
      acd124(56)=acd124(48)*acd124(35)
      acd124(57)=acd124(49)*acd124(37)
      acd124(58)=acd124(50)*acd124(39)
      acd124(59)=acd124(51)*acd124(41)
      acd124(52)=acd124(59)+acd124(58)+acd124(57)+acd124(56)+acd124(55)+acd124(&
      &54)+2.0_ki*acd124(53)+acd124(52)
      acd124(52)=acd124(10)*acd124(52)
      acd124(53)=acd124(28)*acd124(29)
      acd124(54)=acd124(30)*acd124(31)
      acd124(55)=acd124(34)*acd124(35)
      acd124(56)=acd124(36)*acd124(37)
      acd124(57)=acd124(38)*acd124(39)
      acd124(58)=acd124(40)*acd124(41)
      acd124(53)=acd124(58)+acd124(57)+acd124(56)+acd124(55)+acd124(54)+acd124(&
      &53)
      acd124(53)=acd124(14)*acd124(53)
      acd124(54)=-acd124(42)*acd124(21)
      acd124(55)=-acd124(46)*acd124(25)
      acd124(56)=-acd124(47)*acd124(27)
      acd124(54)=acd124(54)+acd124(56)+acd124(55)
      acd124(55)=acd124(20)*acd124(10)
      acd124(56)=acd124(22)*acd124(4)
      acd124(55)=acd124(55)+acd124(56)
      acd124(54)=acd124(55)*acd124(54)
      acd124(55)=-acd124(19)*acd124(21)
      acd124(56)=-acd124(32)*acd124(25)
      acd124(57)=-acd124(33)*acd124(27)
      acd124(55)=acd124(57)+acd124(56)+acd124(55)
      acd124(56)=acd124(20)*acd124(14)
      acd124(57)=acd124(43)*acd124(4)
      acd124(56)=acd124(56)+acd124(57)
      acd124(55)=acd124(56)*acd124(55)
      acd124(56)=-acd124(23)*acd124(21)
      acd124(57)=-acd124(24)*acd124(25)
      acd124(58)=-acd124(26)*acd124(27)
      acd124(56)=acd124(58)+acd124(57)+acd124(56)
      acd124(57)=acd124(22)*acd124(14)
      acd124(58)=acd124(43)*acd124(10)
      acd124(57)=acd124(57)+acd124(58)
      acd124(56)=acd124(57)*acd124(56)
      acd124(57)=-acd124(5)*acd124(10)
      acd124(58)=-acd124(8)*acd124(3)
      acd124(57)=acd124(57)+acd124(58)
      acd124(57)=acd124(15)*acd124(57)
      acd124(58)=-acd124(5)*acd124(14)
      acd124(59)=-acd124(13)*acd124(3)
      acd124(58)=acd124(58)+acd124(59)
      acd124(58)=acd124(16)*acd124(58)
      acd124(57)=acd124(57)+acd124(58)
      acd124(58)=-acd124(5)*acd124(4)
      acd124(59)=-acd124(2)*acd124(3)
      acd124(58)=acd124(6)+acd124(59)+acd124(58)
      acd124(59)=2.0_ki*acd124(1)
      acd124(58)=acd124(59)*acd124(58)
      acd124(59)=acd124(9)*acd124(13)
      acd124(60)=acd124(11)*acd124(14)
      acd124(59)=acd124(59)+acd124(60)
      acd124(59)=acd124(12)*acd124(59)
      acd124(60)=acd124(8)*acd124(14)
      acd124(61)=acd124(13)*acd124(10)
      acd124(60)=acd124(60)+acd124(61)
      acd124(60)=acd124(17)*acd124(60)
      acd124(61)=acd124(9)*acd124(7)*acd124(8)
      brack=acd124(52)+acd124(53)+acd124(54)+acd124(55)+acd124(56)+2.0_ki*acd12&
      &4(57)+acd124(58)+acd124(59)+acd124(60)+acd124(61)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=spvak4k2(iv3)
      acd124(3)=abb124(15)
      acd124(4)=spvak7k2(iv3)
      acd124(5)=abb124(20)
      acd124(6)=d(iv1,iv3)
      acd124(7)=spvak4k2(iv2)
      acd124(8)=spvak7k2(iv2)
      acd124(9)=d(iv2,iv3)
      acd124(10)=spvak4k2(iv1)
      acd124(11)=spvak7k2(iv1)
      acd124(12)=spvak1k2(iv2)
      acd124(13)=spvak4k3(iv3)
      acd124(14)=abb124(14)
      acd124(15)=spvak1k2(iv3)
      acd124(16)=spvak4k3(iv2)
      acd124(17)=spval5k2(iv3)
      acd124(18)=abb124(11)
      acd124(19)=spval6k2(iv3)
      acd124(20)=abb124(16)
      acd124(21)=spval5k2(iv2)
      acd124(22)=spval6k2(iv2)
      acd124(23)=spvak1k2(iv1)
      acd124(24)=spvak4k3(iv1)
      acd124(25)=spval5k2(iv1)
      acd124(26)=spval6k2(iv1)
      acd124(27)=acd124(23)*acd124(14)
      acd124(28)=acd124(25)*acd124(18)
      acd124(29)=acd124(26)*acd124(20)
      acd124(27)=acd124(27)+acd124(29)+acd124(28)
      acd124(28)=acd124(13)*acd124(8)
      acd124(29)=acd124(16)*acd124(4)
      acd124(28)=acd124(28)+acd124(29)
      acd124(27)=acd124(28)*acd124(27)
      acd124(28)=acd124(12)*acd124(14)
      acd124(29)=acd124(21)*acd124(18)
      acd124(30)=acd124(22)*acd124(20)
      acd124(28)=acd124(30)+acd124(29)+acd124(28)
      acd124(29)=acd124(13)*acd124(11)
      acd124(30)=acd124(24)*acd124(4)
      acd124(29)=acd124(29)+acd124(30)
      acd124(28)=acd124(29)*acd124(28)
      acd124(29)=acd124(15)*acd124(14)
      acd124(30)=acd124(17)*acd124(18)
      acd124(31)=acd124(19)*acd124(20)
      acd124(29)=acd124(31)+acd124(30)+acd124(29)
      acd124(30)=acd124(16)*acd124(11)
      acd124(31)=acd124(24)*acd124(8)
      acd124(30)=acd124(30)+acd124(31)
      acd124(29)=acd124(30)*acd124(29)
      acd124(30)=acd124(2)*acd124(1)
      acd124(31)=acd124(7)*acd124(6)
      acd124(32)=acd124(10)*acd124(9)
      acd124(30)=acd124(32)+acd124(31)+acd124(30)
      acd124(31)=2.0_ki*acd124(3)
      acd124(30)=acd124(31)*acd124(30)
      acd124(31)=acd124(1)*acd124(4)
      acd124(32)=acd124(6)*acd124(8)
      acd124(33)=acd124(9)*acd124(11)
      acd124(31)=acd124(33)+acd124(31)+acd124(32)
      acd124(31)=acd124(5)*acd124(31)
      brack=acd124(27)+acd124(28)+acd124(29)+acd124(30)+2.0_ki*acd124(31)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h4
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
      qshift = k2
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
!---#[ subroutine reconstruct_d124:
   subroutine     reconstruct_d124(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_124:
      coeffs%coeffs_124%c0 = derivative(czip)
      coeffs%coeffs_124%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_124%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_124%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_124%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_124%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_124%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_124%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_124%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_124%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_124%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_124%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_124%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_124%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_124%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_124%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_124%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_124%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_124%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_124%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_124%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_124%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_124%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_124%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_124%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_124%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_124%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_124%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_124%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_124%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_124%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_124%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_124%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_124%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_124%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_124:
   end subroutine reconstruct_d124
!---#] subroutine reconstruct_d124:
end module     p0_dbaru_epnebbbarg_d124h4l1d
