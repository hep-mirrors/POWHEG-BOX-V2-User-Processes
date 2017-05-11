module     pb_gg_hh_d6h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d6h1l1d.f90
   ! generator: buildfortran_d.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d6
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd6
      complex(ki) :: brack
      acd6(1)=dotproduct(k1,qshift)
      acd6(2)=dotproduct(qshift,spvak2k1)
      acd6(3)=abb6(11)
      acd6(4)=abb6(8)
      acd6(5)=dotproduct(k2,qshift)
      acd6(6)=abb6(14)
      acd6(7)=dotproduct(l3,qshift)
      acd6(8)=dotproduct(qshift,qshift)
      acd6(9)=abb6(6)
      acd6(10)=abb6(7)
      acd6(11)=abb6(9)
      acd6(12)=dotproduct(qshift,spvak2l3)
      acd6(13)=abb6(13)
      acd6(14)=dotproduct(qshift,spval3k1)
      acd6(15)=abb6(10)
      acd6(16)=abb6(12)
      acd6(17)=acd6(1)-acd6(7)
      acd6(17)=acd6(3)*acd6(17)
      acd6(18)=acd6(8)*acd6(9)
      acd6(19)=-acd6(5)*acd6(6)
      acd6(17)=acd6(19)+acd6(11)+acd6(18)+acd6(17)
      acd6(17)=acd6(2)*acd6(17)
      acd6(18)=acd6(1)-acd6(5)
      acd6(18)=acd6(4)*acd6(18)
      acd6(19)=acd6(14)*acd6(15)
      acd6(20)=acd6(12)*acd6(13)
      acd6(21)=-acd6(8)*acd6(10)
      acd6(17)=acd6(17)+acd6(21)+acd6(20)-acd6(16)+acd6(19)+acd6(18)
      brack=acd6(17)*acd6(2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd6
      complex(ki) :: brack
      acd6(1)=k1(iv1)
      acd6(2)=dotproduct(qshift,spvak2k1)
      acd6(3)=abb6(11)
      acd6(4)=abb6(8)
      acd6(5)=k2(iv1)
      acd6(6)=abb6(14)
      acd6(7)=l3(iv1)
      acd6(8)=qshift(iv1)
      acd6(9)=abb6(6)
      acd6(10)=abb6(7)
      acd6(11)=spvak2k1(iv1)
      acd6(12)=dotproduct(k1,qshift)
      acd6(13)=dotproduct(k2,qshift)
      acd6(14)=dotproduct(l3,qshift)
      acd6(15)=dotproduct(qshift,qshift)
      acd6(16)=abb6(9)
      acd6(17)=dotproduct(qshift,spvak2l3)
      acd6(18)=abb6(13)
      acd6(19)=dotproduct(qshift,spval3k1)
      acd6(20)=abb6(10)
      acd6(21)=abb6(12)
      acd6(22)=spvak2l3(iv1)
      acd6(23)=spval3k1(iv1)
      acd6(24)=-acd6(9)*acd6(15)
      acd6(25)=acd6(6)*acd6(13)
      acd6(26)=acd6(14)-acd6(12)
      acd6(26)=acd6(3)*acd6(26)
      acd6(24)=acd6(26)+acd6(25)-acd6(16)+acd6(24)
      acd6(24)=acd6(11)*acd6(24)
      acd6(25)=2.0_ki*acd6(8)
      acd6(26)=-acd6(9)*acd6(25)
      acd6(27)=acd6(5)*acd6(6)
      acd6(28)=acd6(7)-acd6(1)
      acd6(28)=acd6(3)*acd6(28)
      acd6(26)=acd6(28)+acd6(26)+acd6(27)
      acd6(26)=acd6(2)*acd6(26)
      acd6(27)=-acd6(20)*acd6(23)
      acd6(28)=-acd6(18)*acd6(22)
      acd6(25)=acd6(10)*acd6(25)
      acd6(29)=acd6(5)-acd6(1)
      acd6(29)=acd6(4)*acd6(29)
      acd6(24)=acd6(26)+2.0_ki*acd6(24)+acd6(29)+acd6(25)+acd6(27)+acd6(28)
      acd6(24)=acd6(2)*acd6(24)
      acd6(25)=-acd6(20)*acd6(19)
      acd6(26)=-acd6(18)*acd6(17)
      acd6(27)=acd6(10)*acd6(15)
      acd6(28)=acd6(13)-acd6(12)
      acd6(28)=acd6(4)*acd6(28)
      acd6(25)=acd6(28)+acd6(27)+acd6(26)+acd6(21)+acd6(25)
      acd6(25)=acd6(11)*acd6(25)
      brack=acd6(24)+acd6(25)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=dotproduct(qshift,spvak2k1)
      acd6(3)=abb6(6)
      acd6(4)=abb6(7)
      acd6(5)=k1(iv1)
      acd6(6)=spvak2k1(iv2)
      acd6(7)=abb6(11)
      acd6(8)=abb6(8)
      acd6(9)=k1(iv2)
      acd6(10)=spvak2k1(iv1)
      acd6(11)=k2(iv1)
      acd6(12)=abb6(14)
      acd6(13)=k2(iv2)
      acd6(14)=l3(iv1)
      acd6(15)=l3(iv2)
      acd6(16)=qshift(iv1)
      acd6(17)=qshift(iv2)
      acd6(18)=dotproduct(k1,qshift)
      acd6(19)=dotproduct(k2,qshift)
      acd6(20)=dotproduct(l3,qshift)
      acd6(21)=dotproduct(qshift,qshift)
      acd6(22)=abb6(9)
      acd6(23)=spvak2l3(iv2)
      acd6(24)=abb6(13)
      acd6(25)=spval3k1(iv2)
      acd6(26)=abb6(10)
      acd6(27)=spvak2l3(iv1)
      acd6(28)=spval3k1(iv1)
      acd6(29)=-acd6(12)*acd6(11)
      acd6(30)=2.0_ki*acd6(3)
      acd6(31)=acd6(16)*acd6(30)
      acd6(32)=-acd6(14)+acd6(5)
      acd6(32)=acd6(7)*acd6(32)
      acd6(29)=acd6(32)+acd6(29)+acd6(31)
      acd6(31)=2.0_ki*acd6(2)
      acd6(29)=acd6(29)*acd6(31)
      acd6(32)=-acd6(12)*acd6(19)
      acd6(33)=acd6(3)*acd6(21)
      acd6(34)=-acd6(20)+acd6(18)
      acd6(34)=acd6(7)*acd6(34)
      acd6(32)=acd6(34)+acd6(33)+acd6(22)+acd6(32)
      acd6(32)=acd6(10)*acd6(32)
      acd6(33)=acd6(26)*acd6(28)
      acd6(34)=acd6(24)*acd6(27)
      acd6(35)=2.0_ki*acd6(4)
      acd6(36)=-acd6(16)*acd6(35)
      acd6(37)=-acd6(11)+acd6(5)
      acd6(37)=acd6(8)*acd6(37)
      acd6(29)=2.0_ki*acd6(32)+acd6(29)+acd6(37)+acd6(36)+acd6(33)+acd6(34)
      acd6(29)=acd6(6)*acd6(29)
      acd6(32)=-acd6(12)*acd6(13)
      acd6(30)=acd6(17)*acd6(30)
      acd6(33)=-acd6(15)+acd6(9)
      acd6(33)=acd6(7)*acd6(33)
      acd6(30)=acd6(33)+acd6(32)+acd6(30)
      acd6(30)=acd6(30)*acd6(31)
      acd6(32)=acd6(26)*acd6(25)
      acd6(33)=acd6(24)*acd6(23)
      acd6(34)=-acd6(17)*acd6(35)
      acd6(35)=-acd6(13)+acd6(9)
      acd6(35)=acd6(8)*acd6(35)
      acd6(30)=acd6(30)+acd6(35)+acd6(34)+acd6(32)+acd6(33)
      acd6(30)=acd6(10)*acd6(30)
      acd6(32)=acd6(2)*acd6(3)
      acd6(32)=-acd6(4)+acd6(32)
      acd6(31)=acd6(31)*acd6(1)*acd6(32)
      brack=acd6(29)+acd6(30)+acd6(31)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=spvak2k1(iv3)
      acd6(3)=dotproduct(qshift,spvak2k1)
      acd6(4)=abb6(6)
      acd6(5)=abb6(7)
      acd6(6)=d(iv1,iv3)
      acd6(7)=spvak2k1(iv2)
      acd6(8)=d(iv2,iv3)
      acd6(9)=spvak2k1(iv1)
      acd6(10)=k1(iv1)
      acd6(11)=abb6(11)
      acd6(12)=k1(iv2)
      acd6(13)=k1(iv3)
      acd6(14)=k2(iv1)
      acd6(15)=abb6(14)
      acd6(16)=k2(iv2)
      acd6(17)=k2(iv3)
      acd6(18)=l3(iv1)
      acd6(19)=l3(iv2)
      acd6(20)=l3(iv3)
      acd6(21)=qshift(iv1)
      acd6(22)=qshift(iv2)
      acd6(23)=qshift(iv3)
      acd6(24)=acd6(15)*acd6(16)
      acd6(25)=acd6(19)-acd6(12)
      acd6(25)=acd6(11)*acd6(25)
      acd6(26)=2.0_ki*acd6(4)
      acd6(27)=-acd6(22)*acd6(26)
      acd6(24)=acd6(27)+acd6(24)+acd6(25)
      acd6(24)=acd6(9)*acd6(24)
      acd6(25)=acd6(15)*acd6(14)
      acd6(27)=acd6(18)-acd6(10)
      acd6(27)=acd6(11)*acd6(27)
      acd6(28)=-acd6(21)*acd6(26)
      acd6(25)=acd6(28)+acd6(25)+acd6(27)
      acd6(25)=acd6(7)*acd6(25)
      acd6(27)=acd6(26)*acd6(3)
      acd6(27)=acd6(27)-acd6(5)
      acd6(28)=-acd6(1)*acd6(27)
      acd6(24)=acd6(25)+acd6(24)+acd6(28)
      acd6(24)=acd6(2)*acd6(24)
      acd6(25)=acd6(15)*acd6(17)
      acd6(28)=acd6(20)-acd6(13)
      acd6(28)=acd6(11)*acd6(28)
      acd6(26)=-acd6(23)*acd6(26)
      acd6(25)=acd6(26)+acd6(25)+acd6(28)
      acd6(25)=acd6(9)*acd6(25)
      acd6(26)=-acd6(6)*acd6(27)
      acd6(25)=acd6(25)+acd6(26)
      acd6(25)=acd6(7)*acd6(25)
      acd6(26)=-acd6(9)*acd6(8)*acd6(27)
      acd6(24)=acd6(24)+acd6(26)+acd6(25)
      brack=2.0_ki*acd6(24)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(14) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=spvak2k1(iv3)
      acd6(3)=spvak2k1(iv4)
      acd6(4)=abb6(6)
      acd6(5)=d(iv1,iv3)
      acd6(6)=spvak2k1(iv2)
      acd6(7)=d(iv1,iv4)
      acd6(8)=d(iv2,iv3)
      acd6(9)=spvak2k1(iv1)
      acd6(10)=d(iv2,iv4)
      acd6(11)=d(iv3,iv4)
      acd6(12)=acd6(8)*acd6(3)
      acd6(13)=acd6(10)*acd6(2)
      acd6(14)=acd6(11)*acd6(6)
      acd6(12)=acd6(14)+acd6(13)+acd6(12)
      acd6(12)=acd6(12)*acd6(9)
      acd6(13)=acd6(5)*acd6(3)
      acd6(14)=acd6(7)*acd6(2)
      acd6(13)=acd6(14)+acd6(13)
      acd6(13)=acd6(13)*acd6(6)
      acd6(14)=acd6(1)*acd6(2)*acd6(3)
      acd6(12)=acd6(14)+acd6(12)+acd6(13)
      brack=4.0_ki*acd6(12)*acd6(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd6h1
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
!---#[ subroutine reconstruct_d6:
   subroutine     reconstruct_d6(coeffs)
      use pb_gg_hh_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_6:
      coeffs%coeffs_6%c0 = derivative(czip)
      coeffs%coeffs_6%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_6%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_6%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_6%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_6%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_6%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_6%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_6%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_6%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_6%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_6%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_6%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_6%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_6%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_6%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_6%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_6%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_6%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_6%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_6%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_6%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_6%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_6%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_6%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_6%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_6%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_6%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_6%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_6%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_6%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_6%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_6%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_6%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_6%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_6%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_6%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_6%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_6%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_6%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_6%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_6%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_6%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_6%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_6%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_6%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_6%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_6%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_6%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_6%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_6%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_6%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_6%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_6%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_6%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_6%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_6%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_6%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_6%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_6%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_6%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_6%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_6%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_6%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_6%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_6%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_6%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_6:
   end subroutine reconstruct_d6
!---#] subroutine reconstruct_d6:
end module     pb_gg_hh_d6h1l1d
