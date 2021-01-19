      subroutine bornzerodamp(alr,r0,rc,rs,rcs,dampfac)
c given the R_alpha region (i.e. the alr) and the associated
c real contribution r (without pdf factor),
c returns in dampfac the damping factor to be applied to
c the real contribution to implement Born zero suppression
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_math.h'
      integer alr
      real(kind(1d0)) :: r0, rc, rs, rcs, dampfac, pt2
      real(kind(1d0)), external :: pwhg_pt2, powheginput, get_dynamic_h
      real(kind(1d0)), save :: h, hbzd, xi
      logical, save :: firstcall = .true.
      logical, save :: use_hdamp = .false.
      logical, save :: use_dyn_hdamp = .false.

      if( firstcall ) then
        firstcall = .false.

        ! rescaling factor h_damp -> xi*h_damp
        xi = powheginput('#dampscfact')
        if( xi < 0d0 ) xi = 1d0

        h = powheginput("#hdamp")
        h = xi * h
        if( h > 0d0 ) use_hdamp = .true.

        if( powheginput("#dynamic_hdamp") == 1 ) then
          use_dyn_hdamp = .true.
          use_hdamp = .true.
        endif

        if( use_hdamp ) then 
          if( use_dyn_hdamp ) then 
            print*, '***************************************'
            print*, ' Using a damping factor h**2/(pt2+h**2)'
            print*, ' to separate real contributions between'
            print*, ' Sudakov and remnants with dynamic h   ' 
            print*, ' and xi = ', xi 
            print*, '***************************************'
          else
            print*, '***************************************'
            print*, ' Using a damping factor h**2/(pt2+h**2)'
            print*, ' to separate real contributions between'
            print*, ' Sudakov and remnants    h = ',h,' GeV ' 
            print*, '***************************************'
          endif
        endif

        hbzd = powheginput("#hbzd")
        if( hbzd < 0d0 ) hbzd = 5.0d0
        if( flg_bornzerodamp ) then
          print*, '***************************************'
          print*, ' Setting bornzero damping to           '
          print*, '   hbzd = ', hbzd
          print*, '***************************************'
        endif
      endif

      ! h_damp
      if( use_hdamp ) then
         pt2 = pwhg_pt2()
         if( use_dyn_hdamp ) h = xi*get_dynamic_h()
         dampfac = h**2 / (pt2 + h**2)
      else 
        dampfac = 1d0
      endif

      ! Bornzero damping
      if( flg_bornzerodamp ) then 
        if( r0 > hbzd*rc .AND. r0 > hbzd*rs ) dampfac = 0d0
      endif

      end

      real(kind(1d0)) FUNCTION get_dynamic_h()
c     Computes a dynamic hdamp factor for use with ttW
c     This function is always called on born kinematics
      implicit none
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'PhysPars.h'
      real(kind(1d0)) :: pW(0:3), ptop(0:3), ptbar(0:3)
      real(kind(1d0)) :: mt_W, mt_top, mt_tbar

      pW(:)     = kn_pborn(:,3) !W
      ptop(:)   = kn_pborn(:,4) !top
      ptbar(:)  = kn_pborn(:,5) !tbar

      mt_W    = dsqrt(ph_Wmass**2 + pW(1)**2 + pW(2)**2)
      mt_top  = dsqrt(ph_tmass**2 + ptop(1)**2 + ptop(2)**2)
      mt_tbar = dsqrt(ph_tmass**2 + ptbar(1)**2 + ptbar(2)**2)

      get_dynamic_h = 0.5d0 * (mt_W + mt_top + mt_tbar)

      END FUNCTION
