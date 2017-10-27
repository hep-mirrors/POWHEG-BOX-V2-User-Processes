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
      include 'PhysPars.h'
      integer alr
      real * 8 r0,rc,rs,rcs,dampfac,h,pwhg_pt2,pt2,powheginput
c Added for ttH
      real * 8 get_dynamic_h
c Added for ttH
      logical ini
      data ini/.true./
      save ini,h
      external pwhg_pt2,powheginput
      logical dynamic_hdamp 
      save dynamic_hdamp
      
      if(ini) then
         h=powheginput("#hdamp")
         dynamic_hdamp = (powheginput("#dynamic_hdamp").eq.1)         
         if(h.lt.0) then
            h=powheginput("#hfact")
            if(h.gt.0) then
               write(*,*)'***************************************'
               write(*,*)' Warning: hfact is here for backward'
               write(*,*)' compatibility with older inplementations'
               write(*,*)' New implementations will use hdamp and'
               write(*,*)' bornzerodamp independently.'
               write(*,*)'***************************************'
            endif
         endif
c check if hdamp is active
         if(h.gt.0) then
            write(*,*)'***************************************'
            write(*,*)' Using a damping factor h**2/(pt2+h**2)'
            write(*,*)' to separate real contributions between'
            write(*,*)' Sudakov and remnants    h=',h,' GeV   ' 
            write(*,*)'***************************************'
         endif
c EITHER hdamp OR dynamic_hdamp is active
         if (h.gt.0 .and. dynamic_hdamp) then
            write(*,*)'***************************************'
            write(*,*)' The dynamical scale for hdamp is active'
            write(*,*)' but also a fixed value of hdamp is given'
            write(*,*)' The two options are incompatible'
            write(*,*)' Please comment out one of the twos'
            write(*,*)'***************************************'
            call pwhg_exit(-1)
         endif
         ini=.false.
      endif
c local variables
      if (dynamic_hdamp) then
c     Added for ttH
         h = get_dynamic_h()
c     h = ph_tmass + 0.5d0*ph_Hmass
      endif
c
      if(h.gt.0) then
         pt2=pwhg_pt2()
         dampfac=h**2/(pt2+h**2)
      else
         dampfac=1
      endif

      if(flg_bornzerodamp.and.r0.gt.5*rc.and.r0.gt.5*rs) then
         dampfac=0
      endif
c      write(*,*) ' bornzerodamp: r0=',r0,'  rc=',rc,'  rs=',rs,
c     # ' dampfac=',dampfac
      end

      real*8 function get_dynamic_h()
c     Computes a dynamic hdamp factor for use with ttH
      implicit none
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'PhysPars.h'
      real*8 phiggs(0:3),ptop(0:3),ptbar(0:3)
      real*8 mt_higgs,mt_top,mt_tbar

      if(flg_btildepart.eq.'r') then
         phiggs(:) = kn_preal(:,3) !Higgs
         ptop(:)   = kn_preal(:,4) !top
         ptbar(:)  = kn_preal(:,5) !tbar
      else   
         phiggs(:) = kn_pborn(:,3) !Higgs
         ptop(:)   = kn_pborn(:,4) !top
         ptbar(:)  = kn_pborn(:,5) !tbar
      endif

      mt_higgs = dsqrt(ph_Hmass**2 + phiggs(1)**2 + phiggs(2)**2)
      mt_top = dsqrt(ph_tmass**2 + ptop(1)**2 + ptop(2)**2)
      mt_tbar = dsqrt(ph_tmass**2 + ptbar(1)**2 + ptbar(2)**2)

      get_dynamic_h = 0.5d0 * (mt_higgs + mt_top + mt_tbar)
      end
