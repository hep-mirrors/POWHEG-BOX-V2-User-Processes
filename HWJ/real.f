      subroutine setreal(p,rflav,amp2)
c Wrapper subroutine to call the MadGraph real emission matrix
c elements and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      real *8 powheginput
      external powheginput
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam
      real * 8 kappa_ghb,kappa_ght,kappa_ghw
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghw

      if(idvecbos.eq.-24) then
         call cconj(rflav,nlegreal)
         call pconj(p,nlegreal)
      endif

      call set_ebe_couplings
      call sreal_proc(p,rflav,amp2)
c Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi))     

      if(idvecbos.eq.-24) then
         call cconj(rflav,nlegreal)
         call pconj(p,nlegreal)
      endif

*********************************************************      
***   MODIFICATION OF Higgs-W couplings:
***   (we assume multiplicative kappa factors)
      amp2 = amp2*kappa_ghw**2

      if(vdecaymode.eq.0) then
c     sum over the hadronic W decay products: multiply by the sum of the 
c     squared CKM matrix elements -> all the elements apart from the 
c     top-quark ones
c     Factor (1 + alphas(mw)/pi) to take into account the corrections
c     to the decay products
         amp2 = sumCKM*opasopi*nc*amp2
      elseif(vdecaymode.eq.10) then
c     sumCKM*(1 + alphas(mw)/pi) from sum over hadronic W decay products 
c     and to take into account the corrections to the decay products, 
c     nleptfam for leptonic W decay products
         amp2 = (nleptfam+sumCKM*opasopi*nc)*amp2
      elseif(vdecaymode.eq.112) then
c     nleptfam for leptonic W decay products
         amp2 = (nleptfam)*amp2
      endif
      end



      subroutine realcolour_lh
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      integer rflav(nlegreal),color(2,nlegreal)
      integer i,j
      do i=1,nlegreal
         rflav(i)=idup(i)
         if (rflav(i).eq.21) rflav(i)=0
      enddo
      call real_color(rflav,color)
      do i=1,2
         do j=1,nlegreal
            icolup(i,j)=color(i,j)
         enddo
      enddo
      end

