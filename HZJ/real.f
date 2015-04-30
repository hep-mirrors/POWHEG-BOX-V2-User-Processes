      subroutine setreal(p,rflav,amp2)
c Wrapper subroutine to call the MadGraph real emission matrix
c elements and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real * 8 p(0:3,nlegreal),amp2
      integer rflav(nlegreal)
      integer rflavtemp(nlegreal)
      real * 8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod   
      real * 8 kappa_ghb,kappa_ght,kappa_ghz
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghz
      integer decflav
      real * 8 multiplicity 

      multiplicity=1d0
      decflav=abs(rflav(4))
      call setZcouplings(decflav)
      rflavtemp = rflav
      rflavtemp(4) = -11
      rflavtemp(5) =  11

      call set_ebe_couplings
      call sreal_proc(p,rflavtemp,amp2)

c     Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi)) 

c     hadronic and inclusive Z decay: consider all possible Z decay products
c     ==> they have the same kinematics but different flavors:
c     1001: down-type decay: multiply by 3 (d, s, b)
c     1002: up-type decay: multiply by 2 (u, c)
c     11  : lepton decay: multiply by nleptfam (e,mu or e,mu,tau)
c     12  : neutrino decay: multiply by 3 (ve, vmu, vtau)
c     Factor (1 + alphas(mz)/pi) to take into account the corrections to
c     the Z decay products     
      if (vdecaymode.eq.0 .or. vdecaymode.eq.10
     $     .or. vdecaymode.eq.11 .or. vdecaymode.eq.12) then
         if (decflav.eq.11) then
c     leptons 
            multiplicity = nleptfam
         elseif(decflav.eq.12) then
c     neutrinos
            multiplicity = 3
         elseif(decflav.eq.1002) then
c     up-type quarks
            multiplicity = 2*opasopi*nc
         elseif (decflav.eq.1001) then
c     down-type quarks
            multiplicity = 3*opasopi*nc
         else
            write(*,*) 'Wrong case in real.f'
            call pwhg_exit(-1)
         endif
      endif
*********************************************************      
***   MODIFICATION OF Higgs-Z couplings:
***   (we assume multiplicative kappa factors)
      amp2 = multiplicity * kappa_ghz**2 * amp2
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

      subroutine setZcouplings(decflav)
      implicit none
      integer decflav
      include 'coupl.inc'
      real * 8 gzl1,gzl2
      common/cgzl/gzl1,gzl2
      if(decflav.eq.1001) then
c     down-type quark
         gzl(1)=gzd(1)
         gzl(2)=gzd(2)            
      elseif(decflav.eq.1002) then
c     up-type quark
         gzl(1)=gzu(1)
         gzl(2)=gzu(2)
      elseif(decflav.eq.11) then
c     lepton
         gzl(1)=gzl1
         gzl(2)=gzl2
      else
c     neutrino
         gzl(1)=gzn(1)
         gzl(2)=gzn(2)
      endif
      end
