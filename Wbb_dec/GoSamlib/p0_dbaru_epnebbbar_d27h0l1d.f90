module     p0_dbaru_epnebbbar_d27h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity0d27h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
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
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd27
      complex(ki) :: brack
      acd27(1)=dotproduct(k2,qshift)
      acd27(2)=dotproduct(qshift,spvak1k2)
      acd27(3)=abb27(17)
      acd27(4)=dotproduct(qshift,spval5k2)
      acd27(5)=abb27(37)
      acd27(6)=abb27(18)
      acd27(7)=dotproduct(l5,qshift)
      acd27(8)=abb27(12)
      acd27(9)=abb27(24)
      acd27(10)=dotproduct(qshift,qshift)
      acd27(11)=abb27(19)
      acd27(12)=abb27(27)
      acd27(13)=dotproduct(qshift,spvak4k3)
      acd27(14)=abb27(8)
      acd27(15)=abb27(25)
      acd27(16)=dotproduct(qshift,spval5k1)
      acd27(17)=abb27(9)
      acd27(18)=dotproduct(qshift,spval5k3)
      acd27(19)=abb27(23)
      acd27(20)=dotproduct(qshift,spval5l6)
      acd27(21)=abb27(21)
      acd27(22)=abb27(11)
      acd27(23)=abb27(10)
      acd27(24)=abb27(39)
      acd27(25)=dotproduct(qshift,spvak4k2)
      acd27(26)=abb27(14)
      acd27(27)=dotproduct(qshift,spval6k2)
      acd27(28)=abb27(20)
      acd27(29)=abb27(31)
      acd27(30)=abb27(38)
      acd27(31)=abb27(16)
      acd27(32)=abb27(30)
      acd27(33)=abb27(13)
      acd27(34)=abb27(28)
      acd27(35)=abb27(22)
      acd27(36)=acd27(20)*acd27(21)
      acd27(37)=acd27(18)*acd27(19)
      acd27(38)=acd27(16)*acd27(17)
      acd27(39)=-acd27(10)*acd27(11)
      acd27(40)=acd27(7)*acd27(8)
      acd27(41)=acd27(1)*acd27(3)
      acd27(42)=-acd27(13)*acd27(14)
      acd27(42)=acd27(15)+acd27(42)
      acd27(42)=acd27(4)*acd27(42)
      acd27(36)=acd27(42)+acd27(41)+acd27(40)+acd27(39)+acd27(38)+acd27(37)-acd&
      &27(22)+acd27(36)
      acd27(36)=acd27(2)*acd27(36)
      acd27(37)=acd27(27)*acd27(28)
      acd27(38)=acd27(25)*acd27(26)
      acd27(39)=acd27(13)*acd27(24)
      acd27(40)=acd27(1)*acd27(5)
      acd27(41)=acd27(4)*acd27(23)
      acd27(37)=acd27(41)+acd27(40)+acd27(39)+acd27(38)-acd27(29)+acd27(37)
      acd27(37)=acd27(4)*acd27(37)
      acd27(38)=-acd27(27)*acd27(34)
      acd27(39)=-acd27(25)*acd27(33)
      acd27(40)=-acd27(20)*acd27(32)
      acd27(41)=-acd27(18)*acd27(31)
      acd27(42)=-acd27(16)*acd27(30)
      acd27(43)=acd27(10)*acd27(12)
      acd27(44)=-acd27(7)*acd27(9)
      acd27(45)=-acd27(1)*acd27(6)
      brack=acd27(35)+acd27(36)+acd27(37)+acd27(38)+acd27(39)+acd27(40)+acd27(4&
      &1)+acd27(42)+acd27(43)+acd27(44)+acd27(45)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd27
      complex(ki) :: brack
      acd27(1)=k2(iv1)
      acd27(2)=dotproduct(qshift,spvak1k2)
      acd27(3)=abb27(17)
      acd27(4)=dotproduct(qshift,spval5k2)
      acd27(5)=abb27(37)
      acd27(6)=abb27(18)
      acd27(7)=l5(iv1)
      acd27(8)=abb27(12)
      acd27(9)=abb27(24)
      acd27(10)=qshift(iv1)
      acd27(11)=abb27(19)
      acd27(12)=abb27(27)
      acd27(13)=spvak1k2(iv1)
      acd27(14)=dotproduct(k2,qshift)
      acd27(15)=dotproduct(l5,qshift)
      acd27(16)=dotproduct(qshift,qshift)
      acd27(17)=dotproduct(qshift,spvak4k3)
      acd27(18)=abb27(8)
      acd27(19)=abb27(25)
      acd27(20)=dotproduct(qshift,spval5k1)
      acd27(21)=abb27(9)
      acd27(22)=dotproduct(qshift,spval5k3)
      acd27(23)=abb27(23)
      acd27(24)=dotproduct(qshift,spval5l6)
      acd27(25)=abb27(21)
      acd27(26)=abb27(11)
      acd27(27)=spval5k2(iv1)
      acd27(28)=abb27(10)
      acd27(29)=abb27(39)
      acd27(30)=dotproduct(qshift,spvak4k2)
      acd27(31)=abb27(14)
      acd27(32)=dotproduct(qshift,spval6k2)
      acd27(33)=abb27(20)
      acd27(34)=abb27(31)
      acd27(35)=spvak4k3(iv1)
      acd27(36)=spval5k1(iv1)
      acd27(37)=abb27(38)
      acd27(38)=spval5k3(iv1)
      acd27(39)=abb27(16)
      acd27(40)=spval5l6(iv1)
      acd27(41)=abb27(30)
      acd27(42)=spvak4k2(iv1)
      acd27(43)=abb27(13)
      acd27(44)=spval6k2(iv1)
      acd27(45)=abb27(28)
      acd27(46)=-acd27(25)*acd27(40)
      acd27(47)=-acd27(23)*acd27(38)
      acd27(48)=-acd27(21)*acd27(36)
      acd27(49)=2.0_ki*acd27(10)
      acd27(50)=acd27(11)*acd27(49)
      acd27(51)=-acd27(7)*acd27(8)
      acd27(52)=-acd27(1)*acd27(3)
      acd27(53)=acd27(17)*acd27(18)
      acd27(53)=acd27(53)-acd27(19)
      acd27(54)=acd27(27)*acd27(53)
      acd27(55)=acd27(4)*acd27(18)*acd27(35)
      acd27(46)=acd27(55)+acd27(54)+acd27(52)+acd27(51)+acd27(50)+acd27(48)+acd&
      &27(46)+acd27(47)
      acd27(46)=acd27(2)*acd27(46)
      acd27(47)=-acd27(25)*acd27(24)
      acd27(48)=-acd27(23)*acd27(22)
      acd27(50)=-acd27(21)*acd27(20)
      acd27(51)=acd27(11)*acd27(16)
      acd27(52)=-acd27(8)*acd27(15)
      acd27(54)=-acd27(3)*acd27(14)
      acd27(53)=acd27(4)*acd27(53)
      acd27(47)=acd27(53)+acd27(54)+acd27(52)+acd27(51)+acd27(50)+acd27(48)+acd&
      &27(26)+acd27(47)
      acd27(47)=acd27(13)*acd27(47)
      acd27(48)=-acd27(33)*acd27(44)
      acd27(50)=-acd27(31)*acd27(42)
      acd27(51)=-acd27(29)*acd27(35)
      acd27(52)=-acd27(1)*acd27(5)
      acd27(53)=acd27(27)*acd27(28)
      acd27(48)=-2.0_ki*acd27(53)+acd27(52)+acd27(51)+acd27(48)+acd27(50)
      acd27(48)=acd27(4)*acd27(48)
      acd27(50)=-acd27(33)*acd27(32)
      acd27(51)=-acd27(31)*acd27(30)
      acd27(52)=-acd27(5)*acd27(14)
      acd27(53)=-acd27(17)*acd27(29)
      acd27(50)=acd27(53)+acd27(52)+acd27(51)+acd27(34)+acd27(50)
      acd27(50)=acd27(27)*acd27(50)
      acd27(51)=acd27(44)*acd27(45)
      acd27(52)=acd27(42)*acd27(43)
      acd27(53)=acd27(40)*acd27(41)
      acd27(54)=acd27(38)*acd27(39)
      acd27(55)=acd27(36)*acd27(37)
      acd27(49)=-acd27(12)*acd27(49)
      acd27(56)=acd27(7)*acd27(9)
      acd27(57)=acd27(1)*acd27(6)
      brack=acd27(46)+acd27(47)+acd27(48)+acd27(49)+acd27(50)+acd27(51)+acd27(5&
      &2)+acd27(53)+acd27(54)+acd27(55)+acd27(56)+acd27(57)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=dotproduct(qshift,spvak1k2)
      acd27(3)=abb27(19)
      acd27(4)=abb27(27)
      acd27(5)=k2(iv1)
      acd27(6)=spvak1k2(iv2)
      acd27(7)=abb27(17)
      acd27(8)=spval5k2(iv2)
      acd27(9)=abb27(37)
      acd27(10)=k2(iv2)
      acd27(11)=spvak1k2(iv1)
      acd27(12)=spval5k2(iv1)
      acd27(13)=l5(iv1)
      acd27(14)=abb27(12)
      acd27(15)=l5(iv2)
      acd27(16)=qshift(iv1)
      acd27(17)=qshift(iv2)
      acd27(18)=dotproduct(qshift,spvak4k3)
      acd27(19)=abb27(8)
      acd27(20)=abb27(25)
      acd27(21)=spvak4k3(iv2)
      acd27(22)=dotproduct(qshift,spval5k2)
      acd27(23)=spval5k1(iv2)
      acd27(24)=abb27(9)
      acd27(25)=spval5k3(iv2)
      acd27(26)=abb27(23)
      acd27(27)=spval5l6(iv2)
      acd27(28)=abb27(21)
      acd27(29)=spvak4k3(iv1)
      acd27(30)=spval5k1(iv1)
      acd27(31)=spval5k3(iv1)
      acd27(32)=spval5l6(iv1)
      acd27(33)=abb27(10)
      acd27(34)=abb27(39)
      acd27(35)=spvak4k2(iv2)
      acd27(36)=abb27(14)
      acd27(37)=spval6k2(iv2)
      acd27(38)=abb27(20)
      acd27(39)=spvak4k2(iv1)
      acd27(40)=spval6k2(iv1)
      acd27(41)=acd27(28)*acd27(27)
      acd27(42)=acd27(26)*acd27(25)
      acd27(43)=acd27(24)*acd27(23)
      acd27(44)=acd27(14)*acd27(15)
      acd27(45)=acd27(7)*acd27(10)
      acd27(46)=2.0_ki*acd27(3)
      acd27(47)=-acd27(17)*acd27(46)
      acd27(48)=acd27(19)*acd27(22)
      acd27(49)=-acd27(21)*acd27(48)
      acd27(50)=acd27(19)*acd27(18)
      acd27(50)=acd27(50)-acd27(20)
      acd27(51)=-acd27(8)*acd27(50)
      acd27(41)=acd27(51)+acd27(49)+acd27(47)+acd27(45)+acd27(44)+acd27(43)+acd&
      &27(41)+acd27(42)
      acd27(41)=acd27(11)*acd27(41)
      acd27(42)=acd27(28)*acd27(32)
      acd27(43)=acd27(26)*acd27(31)
      acd27(44)=acd27(24)*acd27(30)
      acd27(45)=acd27(14)*acd27(13)
      acd27(47)=acd27(5)*acd27(7)
      acd27(46)=-acd27(16)*acd27(46)
      acd27(48)=-acd27(29)*acd27(48)
      acd27(49)=-acd27(12)*acd27(50)
      acd27(42)=acd27(49)+acd27(48)+acd27(46)+acd27(47)+acd27(45)+acd27(44)+acd&
      &27(42)+acd27(43)
      acd27(42)=acd27(6)*acd27(42)
      acd27(43)=acd27(19)*acd27(2)
      acd27(43)=acd27(43)-acd27(34)
      acd27(44)=-acd27(29)*acd27(43)
      acd27(45)=acd27(38)*acd27(40)
      acd27(46)=acd27(36)*acd27(39)
      acd27(47)=acd27(5)*acd27(9)
      acd27(48)=acd27(12)*acd27(33)
      acd27(44)=2.0_ki*acd27(48)+acd27(47)+acd27(45)+acd27(46)+acd27(44)
      acd27(44)=acd27(8)*acd27(44)
      acd27(43)=-acd27(21)*acd27(43)
      acd27(45)=acd27(38)*acd27(37)
      acd27(46)=acd27(36)*acd27(35)
      acd27(47)=acd27(9)*acd27(10)
      acd27(43)=acd27(47)+acd27(45)+acd27(46)+acd27(43)
      acd27(43)=acd27(12)*acd27(43)
      acd27(45)=-acd27(2)*acd27(3)
      acd27(45)=acd27(4)+acd27(45)
      acd27(45)=acd27(1)*acd27(45)
      brack=acd27(41)+acd27(42)+acd27(43)+acd27(44)+2.0_ki*acd27(45)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd27h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=spvak1k2(iv3)
      acd27(3)=abb27(19)
      acd27(4)=d(iv1,iv3)
      acd27(5)=spvak1k2(iv2)
      acd27(6)=d(iv2,iv3)
      acd27(7)=spvak1k2(iv1)
      acd27(8)=spvak4k3(iv2)
      acd27(9)=spval5k2(iv3)
      acd27(10)=abb27(8)
      acd27(11)=spvak4k3(iv3)
      acd27(12)=spval5k2(iv2)
      acd27(13)=spvak4k3(iv1)
      acd27(14)=spval5k2(iv1)
      acd27(15)=acd27(11)*acd27(12)
      acd27(16)=acd27(8)*acd27(9)
      acd27(15)=acd27(15)+acd27(16)
      acd27(15)=acd27(7)*acd27(15)
      acd27(16)=acd27(11)*acd27(14)
      acd27(17)=acd27(9)*acd27(13)
      acd27(16)=acd27(16)+acd27(17)
      acd27(16)=acd27(5)*acd27(16)
      acd27(17)=acd27(12)*acd27(13)
      acd27(18)=acd27(8)*acd27(14)
      acd27(17)=acd27(17)+acd27(18)
      acd27(17)=acd27(2)*acd27(17)
      acd27(15)=acd27(17)+acd27(15)+acd27(16)
      acd27(15)=acd27(10)*acd27(15)
      acd27(16)=acd27(7)*acd27(6)
      acd27(17)=acd27(5)*acd27(4)
      acd27(18)=acd27(2)*acd27(1)
      acd27(16)=acd27(18)+acd27(16)+acd27(17)
      acd27(16)=acd27(3)*acd27(16)
      brack=acd27(15)+2.0_ki*acd27(16)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd27h0
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
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group3
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
end module     p0_dbaru_epnebbbar_d27h0l1d
