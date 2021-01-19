      SUBROUTINE momstdform(pin,n,pout)
      implicit none
      integer, intent(in) :: n
      real(kind(1d0)), intent(in) :: pin(1:5,n)
      real(kind(1d0)), intent(out) :: pout(0:3,n)

      pout(0,:) = pin(4,:)
      pout(1:3,:) = pin(1:3,:)

      return
      END SUBROUTINE

      FUNCTION FlavourMap(ifl) result(fl)
      implicit none
      integer, intent(in) :: ifl
      integer fl

      if( ifl .eq. -1 .OR. ifl .eq. -3 .OR. ifl .eq. -5) then 
        fl = -1
      elseif( ifl .eq. 1 .OR. ifl .eq. 3 .OR. ifl .eq. 5) then 
        fl = 1
      elseif( ifl .eq. 2 .OR. ifl .eq. 4 ) then 
        fl = 2
      elseif( ifl .eq. -2 .OR. ifl .eq. -4 ) then 
        fl = -2
      else 
        fl = ifl
      endif

      return
      END FUNCTION
