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
      real * 8 r0,rc,rs,rcs,rapp,dampfac,h,oh,m2,pt2,
     1     powheginput,dotp,amp,ratio,hnew_damp
      logical ini
      data ini/.true./
      logical new_damp
      integer numopt,em
      save ini,h,new_damp,hnew_damp
      external powheginput,dotp
      if(ini) then
         new_damp = powheginput("#new_damp") .eq. 1
         numopt = 0
         if(new_damp) numopt = numopt + 1
         if(new_damp) then
            write(*,*) ' using new, better default damp function'            
c if less than 0 will not be used
            hnew_damp =  powheginput("#hnew_damp")
            if(hnew_damp.gt.0) then
               write(*,*) ' Using hnew_damp=',hnew_damp
            endif
         endif
         h=powheginput("#hdamp")
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
         if(h.gt.0) then
            write(*,*)'***************************************'
            write(*,*)' Using a damping factor h**2/(pt2+h**2)'
            write(*,*)' to separate real contributions between'
            write(*,*)' Sudakov and remnants    h=',h,' GeV   ' 
            write(*,*)'***************************************'
         endif
          ini=.false.
      endif

      if(flg_bornzerodamp) then
         if(new_damp) then
            rapp = rc+rs-rcs
            if(hnew_damp.gt.0) then
               em = flst_emitter(alr)
               if(em.le.2) then
                  pt2 = kn_cmpreal(1,5)**2+kn_cmpreal(2,5)**2
               else
                  pt2 = (2*dotp(kn_cmpreal(:,em),kn_cmpreal(:,5))
     1              +kn_masses(em)**2)*kn_cmpreal(0,em)*kn_cmpreal(0,5)
     2                 / (kn_cmpreal(0,em) + kn_cmpreal(0,5))**2
               endif
               m2 = 2*dotp(kn_cmpreal(:,3),kn_cmpreal(:,4))
               rapp = rapp*hnew_damp**2*m2/(pt2+m2*hnew_damp**2)
            endif
            dampfac= min(1d0,rapp/r0)
            dampfac = max(dampfac,0d0)
         elseif(r0.gt.5*rc.and.r0.gt.5*rs) then
            dampfac=0
c we might as well return here, dampfac already zero ...
            return
         else
            dampfac = 1
         endif
      else
         dampfac = 1
      endif

c local variables
      if(h.gt.0) then
         pt2 = kn_cmpreal(1,5)**2+kn_cmpreal(2,5)**2
         m2 = 2*dotp(kn_cmpreal(:,3),kn_cmpreal(:,4))
         dampfac = dampfac*h**2*m2/(pt2+m2*h**2)
      endif

      if(dampfac.gt.1) dampfac = 1

      end
