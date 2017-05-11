module     p0_gg_hhg_d19h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d19h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d19
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd19
      complex(ki) :: brack
      acd19(1)=abb19(25)
      brack=acd19(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd19
      complex(ki) :: brack
      acd19(1)=k2(iv1)
      acd19(2)=abb19(22)
      acd19(3)=spvak2k1(iv1)
      acd19(4)=abb19(24)
      acd19(5)=spvak2l3(iv1)
      acd19(6)=abb19(26)
      acd19(7)=spvak2l4(iv1)
      acd19(8)=abb19(28)
      acd19(9)=spvak2k5(iv1)
      acd19(10)=abb19(16)
      acd19(11)=-acd19(2)*acd19(1)
      acd19(12)=acd19(4)*acd19(3)
      acd19(13)=acd19(6)*acd19(5)
      acd19(14)=acd19(8)*acd19(7)
      acd19(15)=acd19(10)*acd19(9)
      brack=acd19(11)+acd19(12)+acd19(13)+acd19(14)+acd19(15)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=abb19(22)
      acd19(3)=k2(iv1)
      acd19(4)=spvak2k1(iv2)
      acd19(5)=abb19(29)
      acd19(6)=spvak2k5(iv2)
      acd19(7)=abb19(18)
      acd19(8)=k2(iv2)
      acd19(9)=spvak2k1(iv1)
      acd19(10)=spvak2k5(iv1)
      acd19(11)=abb19(13)
      acd19(12)=abb19(17)
      acd19(13)=spvak2l3(iv2)
      acd19(14)=abb19(14)
      acd19(15)=spvak2l4(iv2)
      acd19(16)=abb19(11)
      acd19(17)=spval3l4(iv2)
      acd19(18)=abb19(15)
      acd19(19)=spval4l3(iv2)
      acd19(20)=abb19(21)
      acd19(21)=spvak2l3(iv1)
      acd19(22)=spvak2l4(iv1)
      acd19(23)=spval3l4(iv1)
      acd19(24)=spval4l3(iv1)
      acd19(25)=acd19(20)*acd19(24)
      acd19(26)=acd19(18)*acd19(23)
      acd19(27)=acd19(16)*acd19(22)
      acd19(28)=acd19(14)*acd19(21)
      acd19(29)=acd19(9)*acd19(11)
      acd19(30)=acd19(3)*acd19(7)
      acd19(31)=acd19(10)*acd19(12)
      acd19(25)=2.0_ki*acd19(31)+acd19(30)+acd19(29)+acd19(28)+acd19(27)+acd19(&
      &25)+acd19(26)
      acd19(25)=acd19(6)*acd19(25)
      acd19(26)=acd19(20)*acd19(19)
      acd19(27)=acd19(18)*acd19(17)
      acd19(28)=acd19(16)*acd19(15)
      acd19(29)=acd19(14)*acd19(13)
      acd19(30)=acd19(7)*acd19(8)
      acd19(31)=acd19(4)*acd19(11)
      acd19(26)=acd19(31)+acd19(30)+acd19(29)+acd19(28)+acd19(26)+acd19(27)
      acd19(26)=acd19(10)*acd19(26)
      acd19(27)=acd19(8)*acd19(9)
      acd19(28)=acd19(3)*acd19(4)
      acd19(27)=acd19(28)+acd19(27)
      acd19(27)=acd19(5)*acd19(27)
      acd19(28)=acd19(1)*acd19(2)
      brack=acd19(25)+acd19(26)+acd19(27)+2.0_ki*acd19(28)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=spvak2k1(iv3)
      acd19(3)=abb19(27)
      acd19(4)=spvak2l3(iv3)
      acd19(5)=abb19(12)
      acd19(6)=spvak2l4(iv3)
      acd19(7)=abb19(23)
      acd19(8)=spvak2k5(iv3)
      acd19(9)=abb19(20)
      acd19(10)=d(iv1,iv3)
      acd19(11)=spvak2k1(iv2)
      acd19(12)=spvak2l3(iv2)
      acd19(13)=spvak2l4(iv2)
      acd19(14)=spvak2k5(iv2)
      acd19(15)=d(iv2,iv3)
      acd19(16)=spvak2k1(iv1)
      acd19(17)=spvak2l3(iv1)
      acd19(18)=spvak2l4(iv1)
      acd19(19)=spvak2k5(iv1)
      acd19(20)=acd19(2)*acd19(3)
      acd19(21)=acd19(4)*acd19(5)
      acd19(22)=acd19(6)*acd19(7)
      acd19(23)=acd19(8)*acd19(9)
      acd19(20)=acd19(23)+acd19(22)+acd19(20)+acd19(21)
      acd19(20)=acd19(1)*acd19(20)
      acd19(21)=acd19(11)*acd19(3)
      acd19(22)=acd19(12)*acd19(5)
      acd19(23)=acd19(13)*acd19(7)
      acd19(24)=acd19(14)*acd19(9)
      acd19(21)=acd19(24)+acd19(23)+acd19(22)+acd19(21)
      acd19(21)=acd19(10)*acd19(21)
      acd19(22)=acd19(16)*acd19(3)
      acd19(23)=acd19(17)*acd19(5)
      acd19(24)=acd19(18)*acd19(7)
      acd19(25)=acd19(19)*acd19(9)
      acd19(22)=acd19(25)+acd19(24)+acd19(23)+acd19(22)
      acd19(22)=acd19(15)*acd19(22)
      acd19(20)=acd19(22)+acd19(21)+acd19(20)
      brack=2.0_ki*acd19(20)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd19
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd19h1
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
!---#[ subroutine reconstruct_d19:
   subroutine     reconstruct_d19(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_19:
      coeffs%coeffs_19%c0 = derivative(czip)
      coeffs%coeffs_19%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_19%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_19%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_19%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_19%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_19%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_19%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_19%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_19%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_19%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_19%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_19%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_19%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_19%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_19%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_19%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_19%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_19%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_19%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_19%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_19%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_19%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_19%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_19%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_19%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_19%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_19%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_19%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_19%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_19%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_19%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_19%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_19%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_19%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_19%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_19%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_19%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_19%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_19%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_19%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_19%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_19%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_19%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_19%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_19%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_19%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_19%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_19%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_19%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_19%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_19%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_19%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_19%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_19%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_19%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_19%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_19%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_19%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_19%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_19%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_19%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_19%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_19%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_19%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_19%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_19%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_19%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_19%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_19%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_19:
   end subroutine reconstruct_d19
!---#] subroutine reconstruct_d19:
end module     p0_gg_hhg_d19h1l1d
