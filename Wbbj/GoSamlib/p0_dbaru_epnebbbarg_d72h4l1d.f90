module     p0_dbaru_epnebbbarg_d72h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d72h4l1d.f90
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
   public :: derivative , reconstruct_d72
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd72
      complex(ki) :: brack
      acd72(1)=dotproduct(k1,qshift)
      acd72(2)=dotproduct(qshift,spvak1k2)
      acd72(3)=abb72(32)
      acd72(4)=abb72(35)
      acd72(5)=dotproduct(k3,qshift)
      acd72(6)=dotproduct(k4,qshift)
      acd72(7)=dotproduct(qshift,qshift)
      acd72(8)=abb72(27)
      acd72(9)=abb72(22)
      acd72(10)=dotproduct(qshift,spvak4k3)
      acd72(11)=dotproduct(qshift,spval5k2)
      acd72(12)=abb72(12)
      acd72(13)=dotproduct(qshift,spvak7k2)
      acd72(14)=abb72(8)
      acd72(15)=abb72(13)
      acd72(16)=abb72(33)
      acd72(17)=abb72(34)
      acd72(18)=dotproduct(qshift,spval5k1)
      acd72(19)=abb72(15)
      acd72(20)=dotproduct(qshift,spval5k3)
      acd72(21)=abb72(25)
      acd72(22)=dotproduct(qshift,spvak7k1)
      acd72(23)=abb72(36)
      acd72(24)=dotproduct(qshift,spvak7k3)
      acd72(25)=abb72(31)
      acd72(26)=abb72(11)
      acd72(27)=abb72(17)
      acd72(28)=abb72(20)
      acd72(29)=abb72(19)
      acd72(30)=abb72(14)
      acd72(31)=abb72(9)
      acd72(32)=abb72(10)
      acd72(33)=abb72(24)
      acd72(34)=abb72(21)
      acd72(35)=abb72(18)
      acd72(36)=dotproduct(qshift,spvak4k2)
      acd72(37)=abb72(23)
      acd72(38)=dotproduct(qshift,spval5l6)
      acd72(39)=abb72(16)
      acd72(40)=dotproduct(qshift,spvak7l6)
      acd72(41)=abb72(26)
      acd72(42)=abb72(28)
      acd72(43)=-acd72(8)*acd72(7)
      acd72(44)=acd72(16)*acd72(11)
      acd72(45)=acd72(17)*acd72(13)
      acd72(46)=acd72(19)*acd72(18)
      acd72(47)=acd72(21)*acd72(20)
      acd72(48)=acd72(23)*acd72(22)
      acd72(49)=acd72(25)*acd72(24)
      acd72(43)=acd72(45)+acd72(44)-acd72(26)+acd72(49)+acd72(48)+acd72(47)+acd&
      &72(46)+acd72(43)
      acd72(43)=acd72(2)*acd72(43)
      acd72(44)=-acd72(12)*acd72(11)
      acd72(45)=-acd72(14)*acd72(13)
      acd72(44)=acd72(15)+acd72(45)+acd72(44)
      acd72(44)=acd72(44)*acd72(2)
      acd72(45)=acd72(27)*acd72(11)
      acd72(46)=acd72(28)*acd72(13)
      acd72(44)=-acd72(29)+acd72(46)+acd72(45)+acd72(44)
      acd72(44)=acd72(10)*acd72(44)
      acd72(45)=acd72(6)-acd72(1)+acd72(5)
      acd72(46)=acd72(3)*acd72(2)
      acd72(46)=acd72(46)-acd72(4)
      acd72(45)=acd72(46)*acd72(45)
      acd72(46)=acd72(9)*acd72(7)
      acd72(47)=-acd72(30)*acd72(11)
      acd72(48)=-acd72(31)*acd72(13)
      acd72(49)=-acd72(32)*acd72(18)
      acd72(50)=-acd72(33)*acd72(20)
      acd72(51)=-acd72(34)*acd72(22)
      acd72(52)=-acd72(35)*acd72(24)
      acd72(53)=-acd72(37)*acd72(36)
      acd72(54)=-acd72(39)*acd72(38)
      acd72(55)=-acd72(41)*acd72(40)
      brack=acd72(42)+acd72(43)+acd72(44)+acd72(45)+acd72(46)+acd72(47)+acd72(4&
      &8)+acd72(49)+acd72(50)+acd72(51)+acd72(52)+acd72(53)+acd72(54)+acd72(55)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd72
      complex(ki) :: brack
      acd72(1)=k1(iv1)
      acd72(2)=dotproduct(qshift,spvak1k2)
      acd72(3)=abb72(32)
      acd72(4)=abb72(35)
      acd72(5)=k3(iv1)
      acd72(6)=k4(iv1)
      acd72(7)=qshift(iv1)
      acd72(8)=abb72(27)
      acd72(9)=abb72(22)
      acd72(10)=spvak1k2(iv1)
      acd72(11)=dotproduct(k1,qshift)
      acd72(12)=dotproduct(k3,qshift)
      acd72(13)=dotproduct(k4,qshift)
      acd72(14)=dotproduct(qshift,qshift)
      acd72(15)=dotproduct(qshift,spvak4k3)
      acd72(16)=dotproduct(qshift,spval5k2)
      acd72(17)=abb72(12)
      acd72(18)=dotproduct(qshift,spvak7k2)
      acd72(19)=abb72(8)
      acd72(20)=abb72(13)
      acd72(21)=abb72(33)
      acd72(22)=abb72(34)
      acd72(23)=dotproduct(qshift,spval5k1)
      acd72(24)=abb72(15)
      acd72(25)=dotproduct(qshift,spval5k3)
      acd72(26)=abb72(25)
      acd72(27)=dotproduct(qshift,spvak7k1)
      acd72(28)=abb72(36)
      acd72(29)=dotproduct(qshift,spvak7k3)
      acd72(30)=abb72(31)
      acd72(31)=abb72(11)
      acd72(32)=spvak4k3(iv1)
      acd72(33)=abb72(17)
      acd72(34)=abb72(20)
      acd72(35)=abb72(19)
      acd72(36)=spval5k2(iv1)
      acd72(37)=abb72(14)
      acd72(38)=spvak7k2(iv1)
      acd72(39)=abb72(9)
      acd72(40)=spval5k1(iv1)
      acd72(41)=abb72(10)
      acd72(42)=spval5k3(iv1)
      acd72(43)=abb72(24)
      acd72(44)=spvak7k1(iv1)
      acd72(45)=abb72(21)
      acd72(46)=spvak7k3(iv1)
      acd72(47)=abb72(18)
      acd72(48)=spvak4k2(iv1)
      acd72(49)=abb72(23)
      acd72(50)=spval5l6(iv1)
      acd72(51)=abb72(16)
      acd72(52)=spvak7l6(iv1)
      acd72(53)=abb72(26)
      acd72(54)=acd72(18)*acd72(19)
      acd72(55)=acd72(16)*acd72(17)
      acd72(54)=-acd72(20)+acd72(54)+acd72(55)
      acd72(55)=-acd72(32)*acd72(54)
      acd72(56)=-acd72(38)*acd72(19)
      acd72(57)=-acd72(36)*acd72(17)
      acd72(56)=acd72(56)+acd72(57)
      acd72(56)=acd72(15)*acd72(56)
      acd72(57)=acd72(30)*acd72(46)
      acd72(58)=acd72(28)*acd72(44)
      acd72(59)=acd72(26)*acd72(42)
      acd72(60)=acd72(24)*acd72(40)
      acd72(61)=2.0_ki*acd72(7)
      acd72(62)=-acd72(8)*acd72(61)
      acd72(63)=acd72(38)*acd72(22)
      acd72(64)=acd72(36)*acd72(21)
      acd72(65)=-acd72(6)+acd72(1)-acd72(5)
      acd72(66)=-acd72(3)*acd72(65)
      acd72(55)=acd72(56)+acd72(66)+acd72(55)+acd72(64)+acd72(63)+acd72(62)+acd&
      &72(60)+acd72(59)+acd72(57)+acd72(58)
      acd72(55)=acd72(2)*acd72(55)
      acd72(54)=-acd72(15)*acd72(54)
      acd72(56)=acd72(30)*acd72(29)
      acd72(57)=acd72(28)*acd72(27)
      acd72(58)=acd72(26)*acd72(25)
      acd72(59)=acd72(24)*acd72(23)
      acd72(60)=-acd72(8)*acd72(14)
      acd72(62)=acd72(18)*acd72(22)
      acd72(63)=acd72(16)*acd72(21)
      acd72(64)=-acd72(11)+acd72(13)+acd72(12)
      acd72(64)=acd72(3)*acd72(64)
      acd72(54)=acd72(54)+acd72(64)+acd72(63)+acd72(62)+acd72(60)+acd72(59)+acd&
      &72(58)+acd72(57)-acd72(31)+acd72(56)
      acd72(54)=acd72(10)*acd72(54)
      acd72(56)=acd72(18)*acd72(34)
      acd72(57)=acd72(16)*acd72(33)
      acd72(56)=acd72(57)-acd72(35)+acd72(56)
      acd72(56)=acd72(32)*acd72(56)
      acd72(57)=acd72(38)*acd72(34)
      acd72(58)=acd72(36)*acd72(33)
      acd72(57)=acd72(57)+acd72(58)
      acd72(57)=acd72(15)*acd72(57)
      acd72(58)=-acd72(52)*acd72(53)
      acd72(59)=-acd72(50)*acd72(51)
      acd72(60)=-acd72(48)*acd72(49)
      acd72(62)=-acd72(46)*acd72(47)
      acd72(63)=-acd72(44)*acd72(45)
      acd72(64)=-acd72(42)*acd72(43)
      acd72(66)=-acd72(40)*acd72(41)
      acd72(61)=acd72(9)*acd72(61)
      acd72(65)=acd72(4)*acd72(65)
      acd72(67)=-acd72(38)*acd72(39)
      acd72(68)=-acd72(36)*acd72(37)
      brack=acd72(54)+acd72(55)+acd72(56)+acd72(57)+acd72(58)+acd72(59)+acd72(6&
      &0)+acd72(61)+acd72(62)+acd72(63)+acd72(64)+acd72(65)+acd72(66)+acd72(67)&
      &+acd72(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=dotproduct(qshift,spvak1k2)
      acd72(3)=abb72(27)
      acd72(4)=abb72(22)
      acd72(5)=k1(iv1)
      acd72(6)=spvak1k2(iv2)
      acd72(7)=abb72(32)
      acd72(8)=k1(iv2)
      acd72(9)=spvak1k2(iv1)
      acd72(10)=k3(iv1)
      acd72(11)=k3(iv2)
      acd72(12)=k4(iv1)
      acd72(13)=k4(iv2)
      acd72(14)=qshift(iv1)
      acd72(15)=qshift(iv2)
      acd72(16)=spvak4k3(iv2)
      acd72(17)=dotproduct(qshift,spval5k2)
      acd72(18)=abb72(12)
      acd72(19)=dotproduct(qshift,spvak7k2)
      acd72(20)=abb72(8)
      acd72(21)=abb72(13)
      acd72(22)=spval5k2(iv2)
      acd72(23)=dotproduct(qshift,spvak4k3)
      acd72(24)=abb72(33)
      acd72(25)=spvak7k2(iv2)
      acd72(26)=abb72(34)
      acd72(27)=spval5k1(iv2)
      acd72(28)=abb72(15)
      acd72(29)=spval5k3(iv2)
      acd72(30)=abb72(25)
      acd72(31)=spvak7k1(iv2)
      acd72(32)=abb72(36)
      acd72(33)=spvak7k3(iv2)
      acd72(34)=abb72(31)
      acd72(35)=spvak4k3(iv1)
      acd72(36)=spval5k2(iv1)
      acd72(37)=spvak7k2(iv1)
      acd72(38)=spval5k1(iv1)
      acd72(39)=spval5k3(iv1)
      acd72(40)=spvak7k1(iv1)
      acd72(41)=spvak7k3(iv1)
      acd72(42)=abb72(17)
      acd72(43)=abb72(20)
      acd72(44)=acd72(20)*acd72(19)
      acd72(45)=acd72(18)*acd72(17)
      acd72(44)=-acd72(21)+acd72(44)+acd72(45)
      acd72(45)=-acd72(16)*acd72(44)
      acd72(46)=acd72(18)*acd72(23)
      acd72(46)=acd72(46)-acd72(24)
      acd72(47)=-acd72(22)*acd72(46)
      acd72(48)=acd72(20)*acd72(23)
      acd72(48)=acd72(48)-acd72(26)
      acd72(49)=-acd72(25)*acd72(48)
      acd72(50)=acd72(34)*acd72(33)
      acd72(51)=acd72(32)*acd72(31)
      acd72(52)=acd72(30)*acd72(29)
      acd72(53)=acd72(28)*acd72(27)
      acd72(54)=2.0_ki*acd72(3)
      acd72(55)=-acd72(15)*acd72(54)
      acd72(56)=-acd72(8)+acd72(13)+acd72(11)
      acd72(56)=acd72(7)*acd72(56)
      acd72(45)=acd72(45)+acd72(56)+acd72(55)+acd72(53)+acd72(52)+acd72(50)+acd&
      &72(51)+acd72(49)+acd72(47)
      acd72(45)=acd72(9)*acd72(45)
      acd72(44)=-acd72(35)*acd72(44)
      acd72(47)=-acd72(37)*acd72(48)
      acd72(46)=-acd72(36)*acd72(46)
      acd72(48)=acd72(34)*acd72(41)
      acd72(49)=acd72(32)*acd72(40)
      acd72(50)=acd72(30)*acd72(39)
      acd72(51)=acd72(28)*acd72(38)
      acd72(52)=-acd72(14)*acd72(54)
      acd72(53)=-acd72(5)+acd72(12)+acd72(10)
      acd72(53)=acd72(7)*acd72(53)
      acd72(44)=acd72(44)+acd72(53)+acd72(52)+acd72(51)+acd72(50)+acd72(48)+acd&
      &72(49)+acd72(46)+acd72(47)
      acd72(44)=acd72(6)*acd72(44)
      acd72(46)=acd72(20)*acd72(2)
      acd72(46)=acd72(46)-acd72(43)
      acd72(47)=-acd72(25)*acd72(46)
      acd72(48)=acd72(18)*acd72(2)
      acd72(48)=acd72(48)-acd72(42)
      acd72(49)=-acd72(22)*acd72(48)
      acd72(47)=acd72(49)+acd72(47)
      acd72(47)=acd72(35)*acd72(47)
      acd72(46)=-acd72(37)*acd72(46)
      acd72(48)=-acd72(36)*acd72(48)
      acd72(46)=acd72(48)+acd72(46)
      acd72(46)=acd72(16)*acd72(46)
      acd72(48)=-acd72(2)*acd72(3)
      acd72(48)=acd72(4)+acd72(48)
      acd72(48)=acd72(1)*acd72(48)
      brack=acd72(44)+acd72(45)+acd72(46)+acd72(47)+2.0_ki*acd72(48)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=spvak1k2(iv3)
      acd72(3)=abb72(27)
      acd72(4)=d(iv1,iv3)
      acd72(5)=spvak1k2(iv2)
      acd72(6)=d(iv2,iv3)
      acd72(7)=spvak1k2(iv1)
      acd72(8)=spvak4k3(iv2)
      acd72(9)=spval5k2(iv3)
      acd72(10)=abb72(12)
      acd72(11)=spvak7k2(iv3)
      acd72(12)=abb72(8)
      acd72(13)=spvak4k3(iv3)
      acd72(14)=spval5k2(iv2)
      acd72(15)=spvak7k2(iv2)
      acd72(16)=spvak4k3(iv1)
      acd72(17)=spval5k2(iv1)
      acd72(18)=spvak7k2(iv1)
      acd72(19)=acd72(8)*acd72(7)
      acd72(20)=acd72(16)*acd72(5)
      acd72(19)=acd72(19)+acd72(20)
      acd72(20)=-acd72(9)*acd72(19)
      acd72(21)=acd72(13)*acd72(7)
      acd72(22)=acd72(16)*acd72(2)
      acd72(21)=acd72(21)+acd72(22)
      acd72(22)=-acd72(14)*acd72(21)
      acd72(23)=acd72(8)*acd72(2)
      acd72(24)=acd72(13)*acd72(5)
      acd72(23)=acd72(23)+acd72(24)
      acd72(24)=-acd72(17)*acd72(23)
      acd72(20)=acd72(24)+acd72(22)+acd72(20)
      acd72(20)=acd72(10)*acd72(20)
      acd72(19)=-acd72(11)*acd72(19)
      acd72(21)=-acd72(15)*acd72(21)
      acd72(22)=-acd72(18)*acd72(23)
      acd72(19)=acd72(22)+acd72(21)+acd72(19)
      acd72(19)=acd72(12)*acd72(19)
      acd72(21)=-acd72(1)*acd72(2)
      acd72(22)=-acd72(4)*acd72(5)
      acd72(23)=-acd72(6)*acd72(7)
      acd72(21)=acd72(23)+acd72(22)+acd72(21)
      acd72(22)=2.0_ki*acd72(3)
      acd72(21)=acd72(22)*acd72(21)
      brack=acd72(19)+acd72(20)+acd72(21)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h4
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d72:
   subroutine     reconstruct_d72(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_72:
      coeffs%coeffs_72%c0 = derivative(czip)
      coeffs%coeffs_72%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_72%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_72%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_72%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_72%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_72%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_72%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_72%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_72%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_72%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_72%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_72%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_72%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_72%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_72%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_72%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_72%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_72%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_72%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_72%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_72%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_72%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_72%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_72%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_72%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_72%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_72%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_72%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_72%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_72%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_72%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_72%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_72%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_72%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_72:
   end subroutine reconstruct_d72
!---#] subroutine reconstruct_d72:
end module     p0_dbaru_epnebbbarg_d72h4l1d
