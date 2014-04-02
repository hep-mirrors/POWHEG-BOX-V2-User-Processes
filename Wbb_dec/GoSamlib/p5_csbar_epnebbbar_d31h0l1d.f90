module     p5_csbar_epnebbbar_d31h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity0d31h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d31
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd31h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd31
      complex(ki) :: brack
      acd31(1)=dotproduct(k1,qshift)
      acd31(2)=abb31(9)
      acd31(3)=dotproduct(k2,qshift)
      acd31(4)=abb31(17)
      acd31(5)=dotproduct(l6,qshift)
      acd31(6)=abb31(12)
      acd31(7)=dotproduct(qshift,qshift)
      acd31(8)=abb31(8)
      acd31(9)=dotproduct(qshift,spvak2k1)
      acd31(10)=dotproduct(qshift,spval6k2)
      acd31(11)=abb31(15)
      acd31(12)=dotproduct(qshift,spvak4k1)
      acd31(13)=abb31(14)
      acd31(14)=abb31(19)
      acd31(15)=dotproduct(qshift,spvak4k2)
      acd31(16)=abb31(13)
      acd31(17)=dotproduct(qshift,spval6k1)
      acd31(18)=abb31(10)
      acd31(19)=abb31(11)
      acd31(20)=acd31(12)*acd31(13)
      acd31(21)=acd31(9)*acd31(11)
      acd31(20)=acd31(21)-acd31(14)+acd31(20)
      acd31(20)=acd31(10)*acd31(20)
      acd31(21)=-acd31(17)*acd31(18)
      acd31(22)=-acd31(15)*acd31(16)
      acd31(23)=acd31(7)*acd31(8)
      acd31(24)=-acd31(5)*acd31(6)
      acd31(25)=-acd31(3)*acd31(4)
      acd31(26)=-acd31(1)*acd31(2)
      brack=acd31(19)+acd31(20)+acd31(21)+acd31(22)+acd31(23)+acd31(24)+acd31(2&
      &5)+acd31(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd31h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd31
      complex(ki) :: brack
      acd31(1)=k1(iv1)
      acd31(2)=abb31(9)
      acd31(3)=k2(iv1)
      acd31(4)=abb31(17)
      acd31(5)=l6(iv1)
      acd31(6)=abb31(12)
      acd31(7)=qshift(iv1)
      acd31(8)=abb31(8)
      acd31(9)=spvak2k1(iv1)
      acd31(10)=dotproduct(qshift,spval6k2)
      acd31(11)=abb31(15)
      acd31(12)=spval6k2(iv1)
      acd31(13)=dotproduct(qshift,spvak2k1)
      acd31(14)=dotproduct(qshift,spvak4k1)
      acd31(15)=abb31(14)
      acd31(16)=abb31(19)
      acd31(17)=spvak4k1(iv1)
      acd31(18)=spvak4k2(iv1)
      acd31(19)=abb31(13)
      acd31(20)=spval6k1(iv1)
      acd31(21)=abb31(10)
      acd31(22)=-acd31(9)*acd31(11)
      acd31(23)=-acd31(17)*acd31(15)
      acd31(22)=acd31(23)+acd31(22)
      acd31(22)=acd31(10)*acd31(22)
      acd31(23)=-acd31(13)*acd31(11)
      acd31(24)=-acd31(14)*acd31(15)
      acd31(23)=acd31(16)+acd31(24)+acd31(23)
      acd31(23)=acd31(12)*acd31(23)
      acd31(24)=acd31(2)*acd31(1)
      acd31(25)=acd31(4)*acd31(3)
      acd31(26)=acd31(6)*acd31(5)
      acd31(27)=acd31(8)*acd31(7)
      acd31(28)=acd31(19)*acd31(18)
      acd31(29)=acd31(21)*acd31(20)
      brack=acd31(22)+acd31(23)+acd31(24)+acd31(25)+acd31(26)-2.0_ki*acd31(27)+&
      &acd31(28)+acd31(29)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd31h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd31
      complex(ki) :: brack
      acd31(1)=d(iv1,iv2)
      acd31(2)=abb31(8)
      acd31(3)=spvak2k1(iv1)
      acd31(4)=spval6k2(iv2)
      acd31(5)=abb31(15)
      acd31(6)=spvak2k1(iv2)
      acd31(7)=spval6k2(iv1)
      acd31(8)=spvak4k1(iv2)
      acd31(9)=abb31(14)
      acd31(10)=spvak4k1(iv1)
      acd31(11)=acd31(9)*acd31(8)
      acd31(12)=acd31(5)*acd31(6)
      acd31(11)=acd31(12)+acd31(11)
      acd31(11)=acd31(7)*acd31(11)
      acd31(12)=acd31(9)*acd31(10)
      acd31(13)=acd31(5)*acd31(3)
      acd31(12)=acd31(12)+acd31(13)
      acd31(12)=acd31(4)*acd31(12)
      acd31(13)=acd31(1)*acd31(2)
      brack=acd31(11)+acd31(12)+2.0_ki*acd31(13)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd31h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k6+k5
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d31:
   subroutine     reconstruct_d31(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_31:
      coeffs%coeffs_31%c0 = derivative(czip)
      coeffs%coeffs_31%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_31%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_31%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_31%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_31%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_31%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_31%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_31%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_31%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_31%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_31%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_31%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_31%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_31%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_31:
   end subroutine reconstruct_d31
!---#] subroutine reconstruct_d31:
end module     p5_csbar_epnebbbar_d31h0l1d
