module     p5_csbar_epnebbbar_d27h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity2d27h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d27
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd27h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd27
      complex(ki) :: brack
      acd27(1)=dotproduct(k1,qshift)
      acd27(2)=dotproduct(qshift,spvak2k1)
      acd27(3)=abb27(12)
      acd27(4)=dotproduct(qshift,spvak4k1)
      acd27(5)=abb27(41)
      acd27(6)=dotproduct(qshift,spvak4k3)
      acd27(7)=abb27(20)
      acd27(8)=dotproduct(qshift,spvak4l6)
      acd27(9)=abb27(52)
      acd27(10)=abb27(27)
      acd27(11)=dotproduct(k2,qshift)
      acd27(12)=abb27(11)
      acd27(13)=abb27(56)
      acd27(14)=abb27(58)
      acd27(15)=abb27(25)
      acd27(16)=dotproduct(l6,qshift)
      acd27(17)=abb27(53)
      acd27(18)=dotproduct(qshift,qshift)
      acd27(19)=abb27(10)
      acd27(20)=abb27(51)
      acd27(21)=abb27(59)
      acd27(22)=abb27(15)
      acd27(23)=abb27(8)
      acd27(24)=abb27(7)
      acd27(25)=dotproduct(qshift,spvak2k3)
      acd27(26)=abb27(16)
      acd27(27)=dotproduct(qshift,spvak2l6)
      acd27(28)=abb27(14)
      acd27(29)=abb27(9)
      acd27(30)=abb27(18)
      acd27(31)=abb27(13)
      acd27(32)=dotproduct(qshift,spvak1l6)
      acd27(33)=abb27(17)
      acd27(34)=abb27(54)
      acd27(35)=abb27(22)
      acd27(36)=dotproduct(qshift,spvak2l5)
      acd27(37)=abb27(39)
      acd27(38)=dotproduct(qshift,spval6k1)
      acd27(39)=abb27(34)
      acd27(40)=abb27(19)
      acd27(41)=acd27(1)-acd27(16)
      acd27(42)=-acd27(3)*acd27(41)
      acd27(43)=acd27(25)*acd27(26)
      acd27(44)=acd27(27)*acd27(28)
      acd27(45)=-acd27(18)*acd27(19)
      acd27(46)=-acd27(11)*acd27(12)
      acd27(46)=acd27(24)+acd27(46)
      acd27(46)=acd27(6)*acd27(46)
      acd27(47)=acd27(2)*acd27(23)
      acd27(42)=acd27(47)+acd27(46)+acd27(45)+acd27(44)-acd27(29)+acd27(43)+acd&
      &27(42)
      acd27(42)=acd27(2)*acd27(42)
      acd27(43)=acd27(8)*acd27(14)
      acd27(44)=acd27(4)*acd27(13)
      acd27(43)=acd27(44)+acd27(43)-acd27(15)
      acd27(43)=acd27(11)*acd27(43)
      acd27(44)=-acd27(8)*acd27(21)
      acd27(45)=-acd27(4)*acd27(20)
      acd27(44)=acd27(45)+acd27(22)+acd27(44)
      acd27(44)=acd27(18)*acd27(44)
      acd27(45)=acd27(8)*acd27(9)
      acd27(46)=acd27(4)*acd27(5)
      acd27(45)=acd27(45)+acd27(46)
      acd27(46)=-acd27(17)-acd27(45)
      acd27(46)=acd27(16)*acd27(46)
      acd27(45)=-acd27(10)+acd27(45)
      acd27(45)=acd27(1)*acd27(45)
      acd27(41)=acd27(18)-acd27(41)
      acd27(41)=acd27(7)*acd27(41)
      acd27(47)=acd27(27)*acd27(30)
      acd27(41)=-acd27(31)+acd27(47)+acd27(41)
      acd27(41)=acd27(6)*acd27(41)
      acd27(47)=-acd27(38)*acd27(39)
      acd27(48)=-acd27(36)*acd27(37)
      acd27(49)=-acd27(32)*acd27(33)
      acd27(50)=-acd27(25)*acd27(34)
      acd27(51)=-acd27(27)*acd27(35)
      brack=acd27(40)+acd27(41)+acd27(42)+acd27(43)+acd27(44)+acd27(45)+acd27(4&
      &6)+acd27(47)+acd27(48)+acd27(49)+acd27(50)+acd27(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd27h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd27
      complex(ki) :: brack
      acd27(1)=k1(iv1)
      acd27(2)=dotproduct(qshift,spvak2k1)
      acd27(3)=abb27(12)
      acd27(4)=dotproduct(qshift,spvak4k1)
      acd27(5)=abb27(41)
      acd27(6)=dotproduct(qshift,spvak4k3)
      acd27(7)=abb27(20)
      acd27(8)=dotproduct(qshift,spvak4l6)
      acd27(9)=abb27(52)
      acd27(10)=abb27(27)
      acd27(11)=k2(iv1)
      acd27(12)=abb27(11)
      acd27(13)=abb27(56)
      acd27(14)=abb27(58)
      acd27(15)=abb27(25)
      acd27(16)=l6(iv1)
      acd27(17)=abb27(53)
      acd27(18)=qshift(iv1)
      acd27(19)=abb27(10)
      acd27(20)=abb27(51)
      acd27(21)=abb27(59)
      acd27(22)=abb27(15)
      acd27(23)=spvak2k1(iv1)
      acd27(24)=dotproduct(k1,qshift)
      acd27(25)=dotproduct(k2,qshift)
      acd27(26)=dotproduct(l6,qshift)
      acd27(27)=dotproduct(qshift,qshift)
      acd27(28)=abb27(8)
      acd27(29)=abb27(7)
      acd27(30)=dotproduct(qshift,spvak2k3)
      acd27(31)=abb27(16)
      acd27(32)=dotproduct(qshift,spvak2l6)
      acd27(33)=abb27(14)
      acd27(34)=abb27(9)
      acd27(35)=spvak4k1(iv1)
      acd27(36)=spvak4k3(iv1)
      acd27(37)=abb27(18)
      acd27(38)=abb27(13)
      acd27(39)=spvak4l6(iv1)
      acd27(40)=spvak1l6(iv1)
      acd27(41)=abb27(17)
      acd27(42)=spvak2k3(iv1)
      acd27(43)=abb27(54)
      acd27(44)=spvak2l6(iv1)
      acd27(45)=abb27(22)
      acd27(46)=spvak2l5(iv1)
      acd27(47)=abb27(39)
      acd27(48)=spval6k1(iv1)
      acd27(49)=abb27(34)
      acd27(50)=acd27(1)-acd27(16)
      acd27(51)=acd27(3)*acd27(50)
      acd27(52)=-acd27(31)*acd27(42)
      acd27(53)=-acd27(44)*acd27(33)
      acd27(54)=2.0_ki*acd27(18)
      acd27(55)=acd27(19)*acd27(54)
      acd27(56)=acd27(25)*acd27(12)
      acd27(56)=acd27(56)-acd27(29)
      acd27(57)=acd27(36)*acd27(56)
      acd27(58)=acd27(6)*acd27(11)*acd27(12)
      acd27(59)=acd27(23)*acd27(28)
      acd27(51)=-2.0_ki*acd27(59)+acd27(58)+acd27(57)+acd27(55)+acd27(52)+acd27&
      &(53)+acd27(51)
      acd27(51)=acd27(2)*acd27(51)
      acd27(52)=-acd27(32)*acd27(33)
      acd27(53)=-acd27(31)*acd27(30)
      acd27(55)=acd27(27)*acd27(19)
      acd27(57)=acd27(24)-acd27(26)
      acd27(58)=acd27(3)*acd27(57)
      acd27(56)=acd27(6)*acd27(56)
      acd27(52)=acd27(56)+acd27(58)+acd27(55)+acd27(53)+acd27(34)+acd27(52)
      acd27(52)=acd27(23)*acd27(52)
      acd27(53)=-acd27(9)*acd27(39)
      acd27(55)=-acd27(5)*acd27(35)
      acd27(53)=acd27(55)+acd27(53)
      acd27(53)=acd27(57)*acd27(53)
      acd27(55)=-acd27(8)*acd27(14)
      acd27(56)=-acd27(4)*acd27(13)
      acd27(55)=acd27(56)+acd27(55)+acd27(15)
      acd27(55)=acd27(11)*acd27(55)
      acd27(56)=acd27(39)*acd27(21)
      acd27(58)=acd27(35)*acd27(20)
      acd27(56)=acd27(56)+acd27(58)
      acd27(56)=acd27(27)*acd27(56)
      acd27(58)=-acd27(39)*acd27(14)
      acd27(59)=-acd27(35)*acd27(13)
      acd27(58)=acd27(58)+acd27(59)
      acd27(58)=acd27(25)*acd27(58)
      acd27(59)=acd27(8)*acd27(21)
      acd27(60)=acd27(4)*acd27(20)
      acd27(59)=acd27(60)-acd27(22)+acd27(59)
      acd27(59)=acd27(59)*acd27(54)
      acd27(60)=acd27(8)*acd27(9)
      acd27(61)=acd27(4)*acd27(5)
      acd27(60)=acd27(60)+acd27(61)
      acd27(61)=acd27(17)+acd27(60)
      acd27(61)=acd27(16)*acd27(61)
      acd27(60)=acd27(10)-acd27(60)
      acd27(60)=acd27(1)*acd27(60)
      acd27(62)=-acd27(32)*acd27(37)
      acd27(57)=-acd27(27)+acd27(57)
      acd27(57)=acd27(7)*acd27(57)
      acd27(57)=acd27(57)+acd27(38)+acd27(62)
      acd27(57)=acd27(36)*acd27(57)
      acd27(50)=-acd27(54)+acd27(50)
      acd27(50)=acd27(7)*acd27(50)
      acd27(54)=-acd27(44)*acd27(37)
      acd27(50)=acd27(54)+acd27(50)
      acd27(50)=acd27(6)*acd27(50)
      acd27(54)=acd27(48)*acd27(49)
      acd27(62)=acd27(46)*acd27(47)
      acd27(63)=acd27(40)*acd27(41)
      acd27(64)=acd27(42)*acd27(43)
      acd27(65)=acd27(44)*acd27(45)
      brack=acd27(50)+acd27(51)+acd27(52)+acd27(53)+acd27(54)+acd27(55)+acd27(5&
      &6)+acd27(57)+acd27(58)+acd27(59)+acd27(60)+acd27(61)+acd27(62)+acd27(63)&
      &+acd27(64)+acd27(65)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd27h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=dotproduct(qshift,spvak2k1)
      acd27(3)=abb27(10)
      acd27(4)=dotproduct(qshift,spvak4k1)
      acd27(5)=abb27(51)
      acd27(6)=dotproduct(qshift,spvak4k3)
      acd27(7)=abb27(20)
      acd27(8)=dotproduct(qshift,spvak4l6)
      acd27(9)=abb27(59)
      acd27(10)=abb27(15)
      acd27(11)=k1(iv1)
      acd27(12)=spvak2k1(iv2)
      acd27(13)=abb27(12)
      acd27(14)=spvak4k1(iv2)
      acd27(15)=abb27(41)
      acd27(16)=spvak4k3(iv2)
      acd27(17)=spvak4l6(iv2)
      acd27(18)=abb27(52)
      acd27(19)=k1(iv2)
      acd27(20)=spvak2k1(iv1)
      acd27(21)=spvak4k1(iv1)
      acd27(22)=spvak4k3(iv1)
      acd27(23)=spvak4l6(iv1)
      acd27(24)=k2(iv1)
      acd27(25)=abb27(11)
      acd27(26)=abb27(56)
      acd27(27)=abb27(58)
      acd27(28)=k2(iv2)
      acd27(29)=l6(iv1)
      acd27(30)=l6(iv2)
      acd27(31)=qshift(iv1)
      acd27(32)=qshift(iv2)
      acd27(33)=abb27(8)
      acd27(34)=dotproduct(k2,qshift)
      acd27(35)=abb27(7)
      acd27(36)=spvak2k3(iv2)
      acd27(37)=abb27(16)
      acd27(38)=spvak2l6(iv2)
      acd27(39)=abb27(14)
      acd27(40)=spvak2k3(iv1)
      acd27(41)=spvak2l6(iv1)
      acd27(42)=abb27(18)
      acd27(43)=-acd27(31)*acd27(12)
      acd27(44)=-acd27(32)*acd27(20)
      acd27(45)=-acd27(2)*acd27(1)
      acd27(43)=acd27(45)+acd27(43)+acd27(44)
      acd27(43)=acd27(3)*acd27(43)
      acd27(44)=-acd27(31)*acd27(14)
      acd27(45)=-acd27(32)*acd27(21)
      acd27(44)=acd27(44)+acd27(45)
      acd27(44)=acd27(5)*acd27(44)
      acd27(45)=-acd27(31)*acd27(17)
      acd27(46)=-acd27(32)*acd27(23)
      acd27(45)=acd27(45)+acd27(46)
      acd27(45)=acd27(9)*acd27(45)
      acd27(46)=acd27(16)*acd27(7)
      acd27(47)=acd27(31)*acd27(46)
      acd27(48)=acd27(22)*acd27(7)
      acd27(49)=acd27(32)*acd27(48)
      acd27(43)=acd27(45)+acd27(47)+acd27(49)+acd27(43)+acd27(44)
      acd27(44)=acd27(13)*acd27(20)
      acd27(45)=acd27(21)*acd27(15)
      acd27(47)=acd27(23)*acd27(18)
      acd27(44)=-acd27(45)-acd27(47)+acd27(44)+acd27(48)
      acd27(45)=acd27(30)-acd27(19)
      acd27(44)=acd27(44)*acd27(45)
      acd27(45)=acd27(13)*acd27(12)
      acd27(47)=acd27(15)*acd27(14)
      acd27(48)=acd27(18)*acd27(17)
      acd27(45)=-acd27(46)-acd27(45)+acd27(47)+acd27(48)
      acd27(46)=-acd27(29)+acd27(11)
      acd27(45)=acd27(45)*acd27(46)
      acd27(46)=acd27(39)*acd27(38)
      acd27(47)=acd27(33)*acd27(12)
      acd27(48)=acd27(36)*acd27(37)
      acd27(46)=acd27(48)+2.0_ki*acd27(47)+acd27(46)
      acd27(46)=acd27(20)*acd27(46)
      acd27(47)=2.0_ki*acd27(1)
      acd27(48)=acd27(7)*acd27(47)
      acd27(49)=acd27(24)*acd27(25)
      acd27(50)=-acd27(12)*acd27(49)
      acd27(51)=acd27(28)*acd27(25)
      acd27(52)=-acd27(20)*acd27(51)
      acd27(48)=acd27(52)+acd27(48)+acd27(50)
      acd27(48)=acd27(6)*acd27(48)
      acd27(50)=acd27(16)*acd27(20)
      acd27(52)=acd27(22)*acd27(12)
      acd27(50)=acd27(50)+acd27(52)
      acd27(52)=-acd27(34)*acd27(25)
      acd27(52)=acd27(35)+acd27(52)
      acd27(50)=acd27(50)*acd27(52)
      acd27(52)=acd27(41)*acd27(39)
      acd27(53)=acd27(40)*acd27(37)
      acd27(52)=acd27(53)+acd27(52)
      acd27(52)=acd27(12)*acd27(52)
      acd27(53)=-acd27(4)*acd27(5)
      acd27(54)=-acd27(8)*acd27(9)
      acd27(53)=acd27(10)+acd27(54)+acd27(53)
      acd27(47)=acd27(47)*acd27(53)
      acd27(49)=-acd27(16)*acd27(49)
      acd27(51)=-acd27(22)*acd27(51)
      acd27(49)=acd27(49)+acd27(51)
      acd27(49)=acd27(2)*acd27(49)
      acd27(51)=acd27(24)*acd27(14)
      acd27(53)=acd27(28)*acd27(21)
      acd27(51)=acd27(51)+acd27(53)
      acd27(51)=acd27(26)*acd27(51)
      acd27(53)=acd27(24)*acd27(17)
      acd27(54)=acd27(28)*acd27(23)
      acd27(53)=acd27(53)+acd27(54)
      acd27(53)=acd27(27)*acd27(53)
      acd27(54)=acd27(38)*acd27(22)
      acd27(55)=acd27(41)*acd27(16)
      acd27(54)=acd27(54)+acd27(55)
      acd27(54)=acd27(42)*acd27(54)
      brack=2.0_ki*acd27(43)+acd27(44)+acd27(45)+acd27(46)+acd27(47)+acd27(48)+&
      &acd27(49)+acd27(50)+acd27(51)+acd27(52)+acd27(53)+acd27(54)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd27h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=spvak2k1(iv3)
      acd27(3)=abb27(10)
      acd27(4)=spvak4k1(iv3)
      acd27(5)=abb27(51)
      acd27(6)=spvak4k3(iv3)
      acd27(7)=abb27(20)
      acd27(8)=spvak4l6(iv3)
      acd27(9)=abb27(59)
      acd27(10)=d(iv1,iv3)
      acd27(11)=spvak2k1(iv2)
      acd27(12)=spvak4k1(iv2)
      acd27(13)=spvak4k3(iv2)
      acd27(14)=spvak4l6(iv2)
      acd27(15)=d(iv2,iv3)
      acd27(16)=spvak2k1(iv1)
      acd27(17)=spvak4k1(iv1)
      acd27(18)=spvak4k3(iv1)
      acd27(19)=spvak4l6(iv1)
      acd27(20)=k2(iv1)
      acd27(21)=abb27(11)
      acd27(22)=k2(iv2)
      acd27(23)=k2(iv3)
      acd27(24)=acd27(9)*acd27(19)
      acd27(25)=-acd27(7)*acd27(18)
      acd27(26)=acd27(5)*acd27(17)
      acd27(27)=acd27(3)*acd27(16)
      acd27(24)=acd27(27)+acd27(26)+acd27(24)+acd27(25)
      acd27(24)=acd27(15)*acd27(24)
      acd27(25)=acd27(9)*acd27(14)
      acd27(26)=-acd27(7)*acd27(13)
      acd27(27)=acd27(5)*acd27(12)
      acd27(28)=acd27(3)*acd27(11)
      acd27(25)=acd27(28)+acd27(27)+acd27(25)+acd27(26)
      acd27(25)=acd27(10)*acd27(25)
      acd27(26)=acd27(9)*acd27(8)
      acd27(27)=-acd27(6)*acd27(7)
      acd27(28)=acd27(5)*acd27(4)
      acd27(29)=acd27(2)*acd27(3)
      acd27(26)=acd27(29)+acd27(28)+acd27(26)+acd27(27)
      acd27(26)=acd27(1)*acd27(26)
      acd27(24)=acd27(26)+acd27(24)+acd27(25)
      acd27(25)=acd27(13)*acd27(16)
      acd27(26)=acd27(11)*acd27(18)
      acd27(25)=acd27(25)+acd27(26)
      acd27(25)=acd27(23)*acd27(25)
      acd27(26)=acd27(16)*acd27(22)
      acd27(27)=acd27(11)*acd27(20)
      acd27(26)=acd27(26)+acd27(27)
      acd27(26)=acd27(6)*acd27(26)
      acd27(27)=acd27(18)*acd27(22)
      acd27(28)=acd27(13)*acd27(20)
      acd27(27)=acd27(27)+acd27(28)
      acd27(27)=acd27(2)*acd27(27)
      acd27(25)=acd27(27)+acd27(26)+acd27(25)
      acd27(25)=acd27(21)*acd27(25)
      brack=2.0_ki*acd27(24)+acd27(25)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd27h2
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
!---#[ subroutine reconstruct_d27:
   subroutine     reconstruct_d27(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_27:
      coeffs%coeffs_27%c0 = derivative(czip)
      coeffs%coeffs_27%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_27%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_27%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_27%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_27%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_27%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_27%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_27%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_27%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_27%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_27%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_27%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_27%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_27%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_27%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_27%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_27%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_27%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_27%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_27%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_27%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_27%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_27%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_27%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_27%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_27%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_27%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_27%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_27%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_27%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_27%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_27%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_27%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_27%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_27:
   end subroutine reconstruct_d27
!---#] subroutine reconstruct_d27:
end module     p5_csbar_epnebbbar_d27h2l1d
