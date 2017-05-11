module p0_gg_hhg_d17h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d17h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d17
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd17
      complex(ki) :: brack
      acd17(1)=dotproduct(k2,qshift)
      acd17(2)=dotproduct(qshift,spvak2k5)
      acd17(3)=abb17(34)
      acd17(4)=abb17(33)
      acd17(5)=dotproduct(l3,qshift)
      acd17(6)=abb17(24)
      acd17(7)=abb17(29)
      acd17(8)=dotproduct(l4,qshift)
      acd17(9)=abb17(25)
      acd17(10)=dotproduct(k5,qshift)
      acd17(11)=dotproduct(qshift,spvak2k1)
      acd17(12)=abb17(17)
      acd17(13)=abb17(23)
      acd17(14)=dotproduct(qshift,qshift)
      acd17(15)=abb17(18)
      acd17(16)=abb17(21)
      acd17(17)=dotproduct(qshift,spvak2l3)
      acd17(18)=abb17(13)
      acd17(19)=dotproduct(qshift,spvak2l4)
      acd17(20)=abb17(41)
      acd17(21)=abb17(19)
      acd17(22)=abb17(38)
      acd17(23)=abb17(11)
      acd17(24)=abb17(37)
      acd17(25)=abb17(43)
      acd17(26)=dotproduct(qshift,spval3k5)
      acd17(27)=abb17(36)
      acd17(28)=dotproduct(qshift,spval3l4)
      acd17(29)=abb17(26)
      acd17(30)=dotproduct(qshift,spval4l3)
      acd17(31)=abb17(14)
      acd17(32)=dotproduct(qshift,spvak5l3)
      acd17(33)=abb17(35)
      acd17(34)=abb17(22)
      acd17(35)=abb17(12)
      acd17(36)=abb17(20)
      acd17(37)=abb17(39)
      acd17(38)=abb17(40)
      acd17(39)=dotproduct(qshift,spval4k5)
      acd17(40)=abb17(16)
      acd17(41)=abb17(27)
      acd17(42)=acd17(32)*acd17(33)
      acd17(43)=acd17(30)*acd17(31)
      acd17(44)=acd17(28)*acd17(29)
      acd17(45)=acd17(26)*acd17(27)
      acd17(46)=-acd17(5)*acd17(6)
      acd17(47)=acd17(1)*acd17(3)
      acd17(48)=acd17(19)*acd17(25)
      acd17(49)=acd17(17)*acd17(24)
      acd17(50)=-acd17(14)*acd17(15)
      acd17(51)=acd17(11)*acd17(23)
      acd17(52)=acd17(2)*acd17(22)
      acd17(42)=acd17(52)+acd17(51)+acd17(50)+acd17(49)+acd17(48)+acd17(47)+acd&
      &17(46)+acd17(45)+acd17(44)+acd17(43)-acd17(34)+acd17(42)
      acd17(42)=acd17(2)*acd17(42)
      acd17(43)=acd17(26)*acd17(35)
      acd17(44)=acd17(10)*acd17(12)
      acd17(45)=-acd17(14)*acd17(16)
      acd17(43)=acd17(45)+acd17(44)-acd17(36)+acd17(43)
      acd17(43)=acd17(11)*acd17(43)
      acd17(44)=-acd17(19)*acd17(20)
      acd17(45)=acd17(17)*acd17(18)
      acd17(44)=acd17(45)+acd17(21)+acd17(44)
      acd17(44)=acd17(14)*acd17(44)
      acd17(45)=-acd17(39)*acd17(40)
      acd17(46)=-acd17(8)*acd17(9)
      acd17(47)=-acd17(10)*acd17(13)
      acd17(48)=-acd17(5)*acd17(7)
      acd17(49)=-acd17(1)*acd17(4)
      acd17(50)=-acd17(19)*acd17(38)
      acd17(51)=-acd17(17)*acd17(37)
      brack=acd17(41)+acd17(42)+acd17(43)+acd17(44)+acd17(45)+acd17(46)+acd17(4&
      &7)+acd17(48)+acd17(49)+acd17(50)+acd17(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd17
      complex(ki) :: brack
      acd17(1)=k2(iv1)
      acd17(2)=dotproduct(qshift,spvak2k5)
      acd17(3)=abb17(34)
      acd17(4)=abb17(33)
      acd17(5)=l3(iv1)
      acd17(6)=abb17(24)
      acd17(7)=abb17(29)
      acd17(8)=l4(iv1)
      acd17(9)=abb17(25)
      acd17(10)=k5(iv1)
      acd17(11)=dotproduct(qshift,spvak2k1)
      acd17(12)=abb17(17)
      acd17(13)=abb17(23)
      acd17(14)=qshift(iv1)
      acd17(15)=abb17(18)
      acd17(16)=abb17(21)
      acd17(17)=dotproduct(qshift,spvak2l3)
      acd17(18)=abb17(13)
      acd17(19)=dotproduct(qshift,spvak2l4)
      acd17(20)=abb17(41)
      acd17(21)=abb17(19)
      acd17(22)=spvak2k5(iv1)
      acd17(23)=dotproduct(k2,qshift)
      acd17(24)=dotproduct(l3,qshift)
      acd17(25)=dotproduct(qshift,qshift)
      acd17(26)=abb17(38)
      acd17(27)=abb17(11)
      acd17(28)=abb17(37)
      acd17(29)=abb17(43)
      acd17(30)=dotproduct(qshift,spval3k5)
      acd17(31)=abb17(36)
      acd17(32)=dotproduct(qshift,spval3l4)
      acd17(33)=abb17(26)
      acd17(34)=dotproduct(qshift,spval4l3)
      acd17(35)=abb17(14)
      acd17(36)=dotproduct(qshift,spvak5l3)
      acd17(37)=abb17(35)
      acd17(38)=abb17(22)
      acd17(39)=spvak2k1(iv1)
      acd17(40)=dotproduct(k5,qshift)
      acd17(41)=abb17(12)
      acd17(42)=abb17(20)
      acd17(43)=spvak2l3(iv1)
      acd17(44)=abb17(39)
      acd17(45)=spvak2l4(iv1)
      acd17(46)=abb17(40)
      acd17(47)=spval3k5(iv1)
      acd17(48)=spval3l4(iv1)
      acd17(49)=spval4l3(iv1)
      acd17(50)=spvak5l3(iv1)
      acd17(51)=spval4k5(iv1)
      acd17(52)=abb17(16)
      acd17(53)=acd17(37)*acd17(36)
      acd17(54)=acd17(35)*acd17(34)
      acd17(55)=acd17(33)*acd17(32)
      acd17(56)=acd17(30)*acd17(31)
      acd17(57)=acd17(19)*acd17(29)
      acd17(58)=acd17(17)*acd17(28)
      acd17(59)=-acd17(6)*acd17(24)
      acd17(60)=acd17(3)*acd17(23)
      acd17(61)=-acd17(25)*acd17(15)
      acd17(62)=acd17(11)*acd17(27)
      acd17(63)=acd17(2)*acd17(26)
      acd17(53)=2.0_ki*acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(59)+acd17(&
      &58)+acd17(57)+acd17(56)+acd17(55)+acd17(54)-acd17(38)+acd17(53)
      acd17(53)=acd17(22)*acd17(53)
      acd17(54)=acd17(37)*acd17(50)
      acd17(55)=acd17(35)*acd17(49)
      acd17(56)=acd17(33)*acd17(48)
      acd17(57)=acd17(31)*acd17(47)
      acd17(58)=-acd17(5)*acd17(6)
      acd17(59)=acd17(1)*acd17(3)
      acd17(60)=acd17(45)*acd17(29)
      acd17(61)=acd17(43)*acd17(28)
      acd17(62)=acd17(39)*acd17(27)
      acd17(63)=2.0_ki*acd17(14)
      acd17(64)=-acd17(15)*acd17(63)
      acd17(54)=acd17(64)+acd17(62)+acd17(61)+acd17(60)+acd17(59)+acd17(58)+acd&
      &17(57)+acd17(56)+acd17(54)+acd17(55)
      acd17(54)=acd17(2)*acd17(54)
      acd17(55)=acd17(30)*acd17(41)
      acd17(56)=acd17(12)*acd17(40)
      acd17(57)=-acd17(25)*acd17(16)
      acd17(55)=acd17(57)+acd17(56)-acd17(42)+acd17(55)
      acd17(55)=acd17(39)*acd17(55)
      acd17(56)=-acd17(19)*acd17(20)
      acd17(57)=acd17(17)*acd17(18)
      acd17(58)=-acd17(11)*acd17(16)
      acd17(56)=acd17(58)+acd17(57)+acd17(21)+acd17(56)
      acd17(56)=acd17(56)*acd17(63)
      acd17(57)=-acd17(45)*acd17(20)
      acd17(58)=acd17(43)*acd17(18)
      acd17(57)=acd17(57)+acd17(58)
      acd17(57)=acd17(25)*acd17(57)
      acd17(58)=acd17(41)*acd17(47)
      acd17(59)=acd17(10)*acd17(12)
      acd17(58)=acd17(58)+acd17(59)
      acd17(58)=acd17(11)*acd17(58)
      acd17(59)=-acd17(51)*acd17(52)
      acd17(60)=-acd17(8)*acd17(9)
      acd17(61)=-acd17(10)*acd17(13)
      acd17(62)=-acd17(5)*acd17(7)
      acd17(63)=-acd17(1)*acd17(4)
      acd17(64)=-acd17(45)*acd17(46)
      acd17(65)=-acd17(43)*acd17(44)
      brack=acd17(53)+acd17(54)+acd17(55)+acd17(56)+acd17(57)+acd17(58)+acd17(5&
      &9)+acd17(60)+acd17(61)+acd17(62)+acd17(63)+acd17(64)+acd17(65)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=dotproduct(qshift,spvak2k1)
      acd17(3)=abb17(21)
      acd17(4)=dotproduct(qshift,spvak2l3)
      acd17(5)=abb17(13)
      acd17(6)=dotproduct(qshift,spvak2l4)
      acd17(7)=abb17(41)
      acd17(8)=dotproduct(qshift,spvak2k5)
      acd17(9)=abb17(18)
      acd17(10)=abb17(19)
      acd17(11)=k2(iv1)
      acd17(12)=spvak2k5(iv2)
      acd17(13)=abb17(34)
      acd17(14)=k2(iv2)
      acd17(15)=spvak2k5(iv1)
      acd17(16)=l3(iv1)
      acd17(17)=abb17(24)
      acd17(18)=l3(iv2)
      acd17(19)=k5(iv1)
      acd17(20)=spvak2k1(iv2)
      acd17(21)=abb17(17)
      acd17(22)=k5(iv2)
      acd17(23)=spvak2k1(iv1)
      acd17(24)=qshift(iv1)
      acd17(25)=spvak2l3(iv2)
      acd17(26)=spvak2l4(iv2)
      acd17(27)=qshift(iv2)
      acd17(28)=spvak2l3(iv1)
      acd17(29)=spvak2l4(iv1)
      acd17(30)=abb17(11)
      acd17(31)=spval3k5(iv2)
      acd17(32)=abb17(12)
      acd17(33)=spval3k5(iv1)
      acd17(34)=abb17(37)
      acd17(35)=abb17(43)
      acd17(36)=abb17(38)
      acd17(37)=abb17(36)
      acd17(38)=spval3l4(iv2)
      acd17(39)=abb17(26)
      acd17(40)=spval4l3(iv2)
      acd17(41)=abb17(14)
      acd17(42)=spvak5l3(iv2)
      acd17(43)=abb17(35)
      acd17(44)=spval3l4(iv1)
      acd17(45)=spval4l3(iv1)
      acd17(46)=spvak5l3(iv1)
      acd17(47)=acd17(43)*acd17(46)
      acd17(48)=acd17(41)*acd17(45)
      acd17(49)=acd17(39)*acd17(44)
      acd17(50)=acd17(33)*acd17(37)
      acd17(51)=acd17(29)*acd17(35)
      acd17(52)=acd17(28)*acd17(34)
      acd17(53)=-acd17(17)*acd17(16)
      acd17(54)=acd17(13)*acd17(11)
      acd17(55)=2.0_ki*acd17(24)
      acd17(56)=-acd17(9)*acd17(55)
      acd17(57)=acd17(23)*acd17(30)
      acd17(58)=acd17(15)*acd17(36)
      acd17(47)=2.0_ki*acd17(58)+acd17(57)+acd17(56)+acd17(54)+acd17(53)+acd17(&
      &52)+acd17(51)+acd17(50)+acd17(49)+acd17(47)+acd17(48)
      acd17(47)=acd17(12)*acd17(47)
      acd17(48)=acd17(43)*acd17(42)
      acd17(49)=acd17(41)*acd17(40)
      acd17(50)=acd17(39)*acd17(38)
      acd17(51)=acd17(31)*acd17(37)
      acd17(52)=acd17(26)*acd17(35)
      acd17(53)=acd17(25)*acd17(34)
      acd17(54)=-acd17(17)*acd17(18)
      acd17(56)=acd17(13)*acd17(14)
      acd17(57)=2.0_ki*acd17(27)
      acd17(58)=-acd17(9)*acd17(57)
      acd17(59)=acd17(20)*acd17(30)
      acd17(48)=acd17(59)+acd17(58)+acd17(56)+acd17(54)+acd17(53)+acd17(52)+acd&
      &17(51)+acd17(50)+acd17(48)+acd17(49)
      acd17(48)=acd17(15)*acd17(48)
      acd17(49)=-acd17(9)*acd17(8)
      acd17(50)=-acd17(7)*acd17(6)
      acd17(51)=acd17(5)*acd17(4)
      acd17(52)=-acd17(3)*acd17(2)
      acd17(49)=acd17(52)+acd17(51)+acd17(50)+acd17(10)+acd17(49)
      acd17(49)=acd17(1)*acd17(49)
      acd17(50)=-acd17(7)*acd17(29)
      acd17(51)=acd17(5)*acd17(28)
      acd17(50)=acd17(50)+acd17(51)
      acd17(50)=acd17(27)*acd17(50)
      acd17(51)=-acd17(7)*acd17(26)
      acd17(52)=acd17(5)*acd17(25)
      acd17(51)=acd17(51)+acd17(52)
      acd17(51)=acd17(24)*acd17(51)
      acd17(49)=acd17(49)+acd17(50)+acd17(51)
      acd17(50)=acd17(31)*acd17(32)
      acd17(51)=acd17(21)*acd17(22)
      acd17(52)=-acd17(3)*acd17(57)
      acd17(50)=acd17(52)+acd17(50)+acd17(51)
      acd17(50)=acd17(23)*acd17(50)
      acd17(51)=acd17(32)*acd17(33)
      acd17(52)=acd17(21)*acd17(19)
      acd17(53)=-acd17(3)*acd17(55)
      acd17(51)=acd17(53)+acd17(51)+acd17(52)
      acd17(51)=acd17(20)*acd17(51)
      brack=acd17(47)+acd17(48)+2.0_ki*acd17(49)+acd17(50)+acd17(51)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=spvak2k1(iv3)
      acd17(3)=abb17(21)
      acd17(4)=spvak2l3(iv3)
      acd17(5)=abb17(13)
      acd17(6)=spvak2l4(iv3)
      acd17(7)=abb17(41)
      acd17(8)=spvak2k5(iv3)
      acd17(9)=abb17(18)
      acd17(10)=d(iv1,iv3)
      acd17(11)=spvak2k1(iv2)
      acd17(12)=spvak2l3(iv2)
      acd17(13)=spvak2l4(iv2)
      acd17(14)=spvak2k5(iv2)
      acd17(15)=d(iv2,iv3)
      acd17(16)=spvak2k1(iv1)
      acd17(17)=spvak2l3(iv1)
      acd17(18)=spvak2l4(iv1)
      acd17(19)=spvak2k5(iv1)
      acd17(20)=-acd17(2)*acd17(3)
      acd17(21)=acd17(4)*acd17(5)
      acd17(22)=-acd17(6)*acd17(7)
      acd17(23)=-acd17(8)*acd17(9)
      acd17(20)=acd17(23)+acd17(22)+acd17(20)+acd17(21)
      acd17(20)=acd17(1)*acd17(20)
      acd17(21)=-acd17(11)*acd17(3)
      acd17(22)=acd17(12)*acd17(5)
      acd17(23)=-acd17(13)*acd17(7)
      acd17(24)=-acd17(14)*acd17(9)
      acd17(21)=acd17(24)+acd17(23)+acd17(22)+acd17(21)
      acd17(21)=acd17(10)*acd17(21)
      acd17(22)=-acd17(16)*acd17(3)
      acd17(23)=acd17(17)*acd17(5)
      acd17(24)=-acd17(18)*acd17(7)
      acd17(25)=-acd17(19)*acd17(9)
      acd17(22)=acd17(25)+acd17(24)+acd17(23)+acd17(22)
      acd17(22)=acd17(15)*acd17(22)
      acd17(20)=acd17(22)+acd17(21)+acd17(20)
      brack=2.0_ki*acd17(20)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd17
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d17:
   subroutine     reconstruct_d17(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_17:
      coeffs%coeffs_17%c0 = derivative(czip)
      coeffs%coeffs_17%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_17%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_17%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_17%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_17%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_17%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_17%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_17%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_17%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_17%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_17%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_17%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_17%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_17%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_17%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_17%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_17%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_17%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_17%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_17%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_17%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_17%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_17%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_17%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_17%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_17%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_17%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_17%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_17%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_17%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_17%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_17%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_17%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_17%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_17%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_17%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_17%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_17%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_17%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_17%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_17%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_17%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_17%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_17%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_17%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_17%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_17%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_17%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_17%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_17%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_17%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_17%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_17%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_17%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_17%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_17%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_17%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_17%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_17%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_17%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_17%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_17%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_17%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_17%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_17:
   end subroutine reconstruct_d17
!---#] subroutine reconstruct_d17:
end module p0_gg_hhg_d17h1l1d_qp
