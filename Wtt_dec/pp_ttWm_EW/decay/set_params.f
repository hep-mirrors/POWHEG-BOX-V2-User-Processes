      SUBROUTINE set_MG5_parameter(key, val) 
      implicit none
      include 'coupl.inc'
      include 'input.inc'
      character (len = *), intent(in) ::  key
      real(kind(1d0)), intent(in) :: val

      ! Particle masses
      if( trim(key) .eq. "MDL_MT" ) then 
        print*, "Setting: MDL_MT = ", val
        MDL_MT = val
        MDL_YMT = val
      else if( trim(key) .eq.  "MDL_MW" ) then 
        print*, "Setting: MDL_MW = ", val
        MDL_MW = val
      else if( trim(key) .eq.  "MDL_MZ" ) then 
        print*, "Setting: MDL_MZ = ", val
        MDL_MZ = val
      else if( trim(key) .eq.  "MDL_MTA" ) then 
        print*, "Setting: MDL_MTA = ", val
        MDL_MTA = val
        MDL_YMTAU = val
      else if( trim(key) .eq.  "MDL_MB" ) then 
        print*, "Setting: MDL_MB = ", val
        MDL_MB = val
        MDL_YMB = val
      else if( trim(key) .eq.  "MDL_MH" ) then 
        print*, "Setting: MDL_MH = ", val
        MDL_MH = val
      endif

      ! Particle widths
      if( trim(key) .eq. "MDL_WZ" ) then
        print*, "Setting: MDL_WZ = ", val
        MDL_WZ = val
      else if( trim(key) .eq. "MDL_WH" ) then
        print*, "Setting: MDL_WH = ", val
        MDL_WH = val
      else if( trim(key) .eq. "MDL_WW" ) then
        print*, "Setting: MDL_WW = ", val
        MDL_WW = val
      else if( trim(key) .eq. "MDL_WT" ) then
        print*, "Setting: MDL_WT = ", val
        MDL_WT = val
      endif

      ! couplings and other constants
      if( trim(key) .eq. "MDL_AEW" ) then 
        print*, "Setting: MDL_AEW = ", val
        MDL_AEW = val
      else if( trim(key) .eq. "AEWM1" ) then 
        print*, "Setting: AEWM1 = ", val
        AEWM1 = val
      else if( trim(key) .eq. "MDL_GF" ) then 
        print*, "Setting: MDL_GF = ", val
        MDL_GF = val
      else if( trim(key) .eq. "AS" ) then 
        AS = val
      endif
      END SUBROUTINE
