module     p0_dbaru_epnebbbarg_d307h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d307h3l1d.f90
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
   public :: derivative , reconstruct_d307
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd307
      complex(ki) :: brack
      acd307(1)=dotproduct(k2,qshift)
      acd307(2)=dotproduct(qshift,qshift)
      acd307(3)=abb307(26)
      acd307(4)=dotproduct(qshift,spvak2k7)
      acd307(5)=abb307(10)
      acd307(6)=abb307(27)
      acd307(7)=dotproduct(l6,qshift)
      acd307(8)=abb307(21)
      acd307(9)=abb307(36)
      acd307(10)=abb307(14)
      acd307(11)=dotproduct(qshift,spvak2l6)
      acd307(12)=abb307(25)
      acd307(13)=abb307(18)
      acd307(14)=dotproduct(qshift,spvak1k2)
      acd307(15)=dotproduct(qshift,spvak2l5)
      acd307(16)=abb307(11)
      acd307(17)=abb307(15)
      acd307(18)=dotproduct(qshift,spvak4k2)
      acd307(19)=abb307(13)
      acd307(20)=dotproduct(qshift,spvak1l6)
      acd307(21)=abb307(19)
      acd307(22)=abb307(20)
      acd307(23)=dotproduct(qshift,spvak4l6)
      acd307(24)=abb307(24)
      acd307(25)=dotproduct(qshift,spval6k2)
      acd307(26)=abb307(16)
      acd307(27)=abb307(12)
      acd307(28)=abb307(22)
      acd307(29)=abb307(28)
      acd307(30)=abb307(23)
      acd307(31)=-acd307(15)*acd307(19)
      acd307(31)=acd307(31)+acd307(22)
      acd307(31)=acd307(18)*acd307(31)
      acd307(32)=acd307(23)*acd307(24)
      acd307(33)=acd307(20)*acd307(21)
      acd307(34)=acd307(25)*acd307(26)
      acd307(35)=-acd307(15)*acd307(16)
      acd307(35)=acd307(17)+acd307(35)
      acd307(35)=acd307(14)*acd307(35)
      acd307(36)=acd307(7)*acd307(8)
      acd307(37)=acd307(1)*acd307(5)
      acd307(38)=-acd307(2)*acd307(10)
      acd307(31)=acd307(38)+acd307(37)+acd307(36)+acd307(35)+acd307(34)+acd307(&
      &33)-acd307(27)+acd307(32)+acd307(31)
      acd307(31)=acd307(4)*acd307(31)
      acd307(32)=-acd307(11)*acd307(12)
      acd307(33)=-acd307(1)*acd307(3)
      acd307(32)=acd307(33)+acd307(13)+acd307(32)
      acd307(32)=acd307(2)*acd307(32)
      acd307(33)=-acd307(25)*acd307(29)
      acd307(34)=-acd307(11)*acd307(28)
      acd307(35)=-acd307(7)*acd307(9)
      acd307(36)=-acd307(1)*acd307(6)
      brack=acd307(30)+acd307(31)+acd307(32)+acd307(33)+acd307(34)+acd307(35)+a&
      &cd307(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd307
      complex(ki) :: brack
      acd307(1)=k2(iv1)
      acd307(2)=dotproduct(qshift,qshift)
      acd307(3)=abb307(26)
      acd307(4)=dotproduct(qshift,spvak2k7)
      acd307(5)=abb307(10)
      acd307(6)=abb307(27)
      acd307(7)=l6(iv1)
      acd307(8)=abb307(21)
      acd307(9)=abb307(36)
      acd307(10)=qshift(iv1)
      acd307(11)=dotproduct(k2,qshift)
      acd307(12)=abb307(14)
      acd307(13)=dotproduct(qshift,spvak2l6)
      acd307(14)=abb307(25)
      acd307(15)=abb307(18)
      acd307(16)=spvak2k7(iv1)
      acd307(17)=dotproduct(l6,qshift)
      acd307(18)=dotproduct(qshift,spvak1k2)
      acd307(19)=dotproduct(qshift,spvak2l5)
      acd307(20)=abb307(11)
      acd307(21)=abb307(15)
      acd307(22)=dotproduct(qshift,spvak4k2)
      acd307(23)=abb307(13)
      acd307(24)=dotproduct(qshift,spvak1l6)
      acd307(25)=abb307(19)
      acd307(26)=abb307(20)
      acd307(27)=dotproduct(qshift,spvak4l6)
      acd307(28)=abb307(24)
      acd307(29)=dotproduct(qshift,spval6k2)
      acd307(30)=abb307(16)
      acd307(31)=abb307(12)
      acd307(32)=spvak2l6(iv1)
      acd307(33)=abb307(22)
      acd307(34)=spvak1k2(iv1)
      acd307(35)=spvak2l5(iv1)
      acd307(36)=spvak1l6(iv1)
      acd307(37)=spvak4k2(iv1)
      acd307(38)=spvak4l6(iv1)
      acd307(39)=spval6k2(iv1)
      acd307(40)=abb307(28)
      acd307(41)=acd307(22)*acd307(23)
      acd307(42)=acd307(18)*acd307(20)
      acd307(41)=acd307(41)+acd307(42)
      acd307(42)=acd307(35)*acd307(41)
      acd307(43)=acd307(23)*acd307(37)
      acd307(44)=acd307(20)*acd307(34)
      acd307(43)=acd307(43)+acd307(44)
      acd307(43)=acd307(19)*acd307(43)
      acd307(44)=-acd307(30)*acd307(39)
      acd307(45)=-acd307(28)*acd307(38)
      acd307(46)=-acd307(26)*acd307(37)
      acd307(47)=-acd307(25)*acd307(36)
      acd307(48)=-acd307(21)*acd307(34)
      acd307(49)=-acd307(7)*acd307(8)
      acd307(50)=-acd307(1)*acd307(5)
      acd307(51)=2.0_ki*acd307(10)
      acd307(52)=acd307(12)*acd307(51)
      acd307(42)=acd307(52)+acd307(43)+acd307(50)+acd307(49)+acd307(48)+acd307(&
      &47)+acd307(46)+acd307(44)+acd307(45)+acd307(42)
      acd307(42)=acd307(4)*acd307(42)
      acd307(41)=acd307(19)*acd307(41)
      acd307(43)=-acd307(30)*acd307(29)
      acd307(44)=-acd307(28)*acd307(27)
      acd307(45)=-acd307(25)*acd307(24)
      acd307(46)=-acd307(8)*acd307(17)
      acd307(47)=-acd307(5)*acd307(11)
      acd307(48)=-acd307(22)*acd307(26)
      acd307(49)=-acd307(18)*acd307(21)
      acd307(50)=acd307(2)*acd307(12)
      acd307(41)=acd307(41)+acd307(50)+acd307(49)+acd307(48)+acd307(47)+acd307(&
      &46)+acd307(45)+acd307(44)+acd307(31)+acd307(43)
      acd307(41)=acd307(16)*acd307(41)
      acd307(43)=acd307(14)*acd307(13)
      acd307(44)=acd307(3)*acd307(11)
      acd307(43)=acd307(44)-acd307(15)+acd307(43)
      acd307(43)=acd307(43)*acd307(51)
      acd307(44)=acd307(2)*acd307(14)
      acd307(44)=acd307(44)+acd307(33)
      acd307(44)=acd307(32)*acd307(44)
      acd307(45)=acd307(39)*acd307(40)
      acd307(46)=acd307(7)*acd307(9)
      acd307(47)=acd307(2)*acd307(3)
      acd307(47)=acd307(6)+acd307(47)
      acd307(47)=acd307(1)*acd307(47)
      brack=acd307(41)+acd307(42)+acd307(43)+acd307(44)+acd307(45)+acd307(46)+a&
      &cd307(47)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd307
      complex(ki) :: brack
      acd307(1)=d(iv1,iv2)
      acd307(2)=dotproduct(k2,qshift)
      acd307(3)=abb307(26)
      acd307(4)=dotproduct(qshift,spvak2l6)
      acd307(5)=abb307(25)
      acd307(6)=dotproduct(qshift,spvak2k7)
      acd307(7)=abb307(14)
      acd307(8)=abb307(18)
      acd307(9)=k2(iv1)
      acd307(10)=qshift(iv2)
      acd307(11)=spvak2k7(iv2)
      acd307(12)=abb307(10)
      acd307(13)=k2(iv2)
      acd307(14)=qshift(iv1)
      acd307(15)=spvak2k7(iv1)
      acd307(16)=l6(iv1)
      acd307(17)=abb307(21)
      acd307(18)=l6(iv2)
      acd307(19)=spvak2l6(iv2)
      acd307(20)=spvak2l6(iv1)
      acd307(21)=spvak1k2(iv2)
      acd307(22)=dotproduct(qshift,spvak2l5)
      acd307(23)=abb307(11)
      acd307(24)=abb307(15)
      acd307(25)=spvak2l5(iv2)
      acd307(26)=dotproduct(qshift,spvak1k2)
      acd307(27)=dotproduct(qshift,spvak4k2)
      acd307(28)=abb307(13)
      acd307(29)=spvak1l6(iv2)
      acd307(30)=abb307(19)
      acd307(31)=spvak4k2(iv2)
      acd307(32)=abb307(20)
      acd307(33)=spvak4l6(iv2)
      acd307(34)=abb307(24)
      acd307(35)=spval6k2(iv2)
      acd307(36)=abb307(16)
      acd307(37)=spvak1k2(iv1)
      acd307(38)=spvak2l5(iv1)
      acd307(39)=spvak1l6(iv1)
      acd307(40)=spvak4k2(iv1)
      acd307(41)=spvak4l6(iv1)
      acd307(42)=spval6k2(iv1)
      acd307(43)=acd307(12)*acd307(9)
      acd307(44)=acd307(16)*acd307(17)
      acd307(45)=acd307(39)*acd307(30)
      acd307(46)=acd307(41)*acd307(34)
      acd307(47)=acd307(42)*acd307(36)
      acd307(43)=acd307(47)+acd307(46)+acd307(45)+acd307(44)+acd307(43)
      acd307(43)=acd307(11)*acd307(43)
      acd307(44)=acd307(18)*acd307(17)
      acd307(45)=acd307(29)*acd307(30)
      acd307(46)=acd307(33)*acd307(34)
      acd307(47)=acd307(35)*acd307(36)
      acd307(44)=acd307(47)+acd307(46)+acd307(45)+acd307(44)
      acd307(44)=acd307(15)*acd307(44)
      acd307(45)=-acd307(37)*acd307(23)
      acd307(46)=-acd307(40)*acd307(28)
      acd307(45)=acd307(46)+acd307(45)
      acd307(46)=acd307(22)*acd307(11)
      acd307(47)=acd307(25)*acd307(6)
      acd307(46)=acd307(46)+acd307(47)
      acd307(45)=acd307(46)*acd307(45)
      acd307(46)=-acd307(21)*acd307(23)
      acd307(47)=-acd307(31)*acd307(28)
      acd307(46)=acd307(47)+acd307(46)
      acd307(47)=acd307(22)*acd307(15)
      acd307(48)=acd307(38)*acd307(6)
      acd307(47)=acd307(47)+acd307(48)
      acd307(46)=acd307(47)*acd307(46)
      acd307(47)=-acd307(4)*acd307(1)
      acd307(48)=-acd307(19)*acd307(14)
      acd307(49)=-acd307(20)*acd307(10)
      acd307(47)=acd307(49)+acd307(48)+acd307(47)
      acd307(48)=2.0_ki*acd307(5)
      acd307(47)=acd307(48)*acd307(47)
      acd307(48)=-acd307(1)*acd307(6)
      acd307(49)=-acd307(10)*acd307(15)
      acd307(50)=-acd307(14)*acd307(11)
      acd307(48)=acd307(50)+acd307(48)+acd307(49)
      acd307(48)=acd307(7)*acd307(48)
      acd307(49)=-acd307(9)*acd307(10)
      acd307(50)=-acd307(2)*acd307(1)
      acd307(49)=acd307(50)+acd307(49)
      acd307(50)=2.0_ki*acd307(3)
      acd307(49)=acd307(50)*acd307(49)
      acd307(50)=-acd307(14)*acd307(50)
      acd307(51)=acd307(12)*acd307(15)
      acd307(50)=acd307(50)+acd307(51)
      acd307(50)=acd307(13)*acd307(50)
      acd307(51)=acd307(21)*acd307(15)
      acd307(52)=acd307(37)*acd307(11)
      acd307(51)=acd307(51)+acd307(52)
      acd307(51)=acd307(24)*acd307(51)
      acd307(52)=acd307(25)*acd307(15)
      acd307(53)=acd307(38)*acd307(11)
      acd307(52)=acd307(52)+acd307(53)
      acd307(53)=-acd307(26)*acd307(23)*acd307(52)
      acd307(52)=-acd307(27)*acd307(28)*acd307(52)
      acd307(54)=acd307(31)*acd307(15)
      acd307(55)=acd307(40)*acd307(11)
      acd307(54)=acd307(54)+acd307(55)
      acd307(54)=acd307(32)*acd307(54)
      acd307(55)=2.0_ki*acd307(1)
      acd307(55)=acd307(8)*acd307(55)
      brack=acd307(43)+acd307(44)+acd307(45)+acd307(46)+acd307(47)+2.0_ki*acd30&
      &7(48)+acd307(49)+acd307(50)+acd307(51)+acd307(52)+acd307(53)+acd307(54)+&
      &acd307(55)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd307
      complex(ki) :: brack
      acd307(1)=d(iv1,iv2)
      acd307(2)=k2(iv3)
      acd307(3)=abb307(26)
      acd307(4)=spvak2l6(iv3)
      acd307(5)=abb307(25)
      acd307(6)=spvak2k7(iv3)
      acd307(7)=abb307(14)
      acd307(8)=d(iv1,iv3)
      acd307(9)=k2(iv2)
      acd307(10)=spvak2l6(iv2)
      acd307(11)=spvak2k7(iv2)
      acd307(12)=d(iv2,iv3)
      acd307(13)=k2(iv1)
      acd307(14)=spvak2l6(iv1)
      acd307(15)=spvak2k7(iv1)
      acd307(16)=spvak1k2(iv2)
      acd307(17)=spvak2l5(iv3)
      acd307(18)=abb307(11)
      acd307(19)=spvak1k2(iv3)
      acd307(20)=spvak2l5(iv2)
      acd307(21)=spvak4k2(iv3)
      acd307(22)=abb307(13)
      acd307(23)=spvak4k2(iv2)
      acd307(24)=spvak1k2(iv1)
      acd307(25)=spvak2l5(iv1)
      acd307(26)=spvak4k2(iv1)
      acd307(27)=acd307(17)*acd307(15)
      acd307(28)=acd307(25)*acd307(6)
      acd307(27)=acd307(27)+acd307(28)
      acd307(28)=acd307(16)*acd307(27)
      acd307(29)=acd307(20)*acd307(15)
      acd307(30)=acd307(25)*acd307(11)
      acd307(29)=acd307(29)+acd307(30)
      acd307(30)=acd307(19)*acd307(29)
      acd307(31)=acd307(17)*acd307(11)
      acd307(32)=acd307(20)*acd307(6)
      acd307(31)=acd307(31)+acd307(32)
      acd307(32)=acd307(24)*acd307(31)
      acd307(28)=acd307(32)+acd307(30)+acd307(28)
      acd307(28)=acd307(18)*acd307(28)
      acd307(29)=acd307(21)*acd307(29)
      acd307(27)=acd307(23)*acd307(27)
      acd307(30)=acd307(26)*acd307(31)
      acd307(27)=acd307(30)+acd307(27)+acd307(29)
      acd307(27)=acd307(22)*acd307(27)
      acd307(29)=acd307(4)*acd307(1)
      acd307(30)=acd307(10)*acd307(8)
      acd307(31)=acd307(14)*acd307(12)
      acd307(29)=acd307(31)+acd307(30)+acd307(29)
      acd307(30)=2.0_ki*acd307(5)
      acd307(29)=acd307(30)*acd307(29)
      acd307(30)=acd307(2)*acd307(1)
      acd307(31)=acd307(9)*acd307(8)
      acd307(32)=acd307(13)*acd307(12)
      acd307(30)=acd307(32)+acd307(31)+acd307(30)
      acd307(31)=2.0_ki*acd307(3)
      acd307(30)=acd307(31)*acd307(30)
      acd307(31)=acd307(1)*acd307(6)
      acd307(32)=acd307(8)*acd307(11)
      acd307(33)=acd307(12)*acd307(15)
      acd307(31)=acd307(33)+acd307(31)+acd307(32)
      acd307(31)=acd307(7)*acd307(31)
      brack=acd307(27)+acd307(28)+acd307(29)+acd307(30)+2.0_ki*acd307(31)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd307h3
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
      qshift = k6
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
!---#[ subroutine reconstruct_d307:
   subroutine     reconstruct_d307(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_307:
      coeffs%coeffs_307%c0 = derivative(czip)
      coeffs%coeffs_307%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_307%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_307%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_307%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_307%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_307%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_307%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_307%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_307%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_307%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_307%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_307%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_307%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_307%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_307%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_307%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_307%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_307%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_307%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_307%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_307%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_307%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_307%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_307%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_307%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_307%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_307%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_307%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_307%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_307%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_307%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_307%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_307%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_307%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_307:
   end subroutine reconstruct_d307
!---#] subroutine reconstruct_d307:
end module     p0_dbaru_epnebbbarg_d307h3l1d
