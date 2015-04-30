      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      integer bflav(nlegborn)
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
      integer bflavtemp(nlegborn)
      real * 8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      real * 8 kappa_ghb,kappa_ght,kappa_ghz
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghz
      integer decflav
      real * 8 multiplicity 

      multiplicity=1d0
      decflav=abs(bflav(4)) 

      call setZcouplings(decflav)
      bflavtemp = bflav
      bflavtemp(4) = -11
      bflavtemp(5) =  11

      call set_ebe_couplings
      call sborn_proc(p,bflavtemp,born,bornjk,bmunu)

c     hadronic and inclusive Z decay: consider all possible Z decay products
c     ==> they have the same kinematics but different flavors:
c     1001: down-type decay: multiply by 3 (d, s, b)
c     1002: up-type decay: multiply by 2 (u, c)
c     11  : lepton decay: multiply by nleptfam (e,mu, or e,mu,tau)
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
            write(*,*) 'Wrong case in Born.f'
            call pwhg_exit(-1)
         endif
      endif
*********************************************************      
***   MODIFICATION OF Higgs-Z couplings:
***   (we assume multiplicative kappa factors)
      born   =  multiplicity * kappa_ghz**2 * born
      bornjk =  multiplicity * kappa_ghz**2 * bornjk
      bmunu  =  multiplicity * kappa_ghz**2 * bmunu
      end



      subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c colours of incoming quarks, antiquarks
      integer icolqi(2),icolai(2),icolgi(2),
     #        icolqf(2),icolaf(2),icolgf(2)
      data icolqi/ 501, 0   /
      data icolai/ 0  , 502 /
      data icolgi/ 502, 501 /
      data icolqf/ 502, 0   /
      data icolaf/ 0  , 501 /
      data icolgf/ 501, 502 /
      save icolqi,icolai,icolgi,icolqf,icolaf,icolgf
      
      do j=1,nlegborn
c     Higgs and Z decay products
         if(j.eq.3.or.j.eq.4.or.j.eq.5) then
            icolup(1,j)=0
            icolup(2,j)=0
         else
            if(idup(j).gt.0.and.idup(j).le.5) then
               if(j.le.2) then
                  icolup(1,j)=icolqi(1)
                  icolup(2,j)=icolqi(2)
               else
                  icolup(1,j)=icolqf(1)
                  icolup(2,j)=icolqf(2)
               endif
            elseif(idup(j).lt.0.and.idup(j).ge.-5) then
               if(j.le.2) then
                  icolup(1,j)=icolai(1)
                  icolup(2,j)=icolai(2)
               else
                  icolup(1,j)=icolaf(1)
                  icolup(2,j)=icolaf(2)
               endif
            elseif(idup(j).eq.21) then
               if(j.le.2) then
                  icolup(1,j)=icolgi(1)
                  icolup(2,j)=icolgi(2)
               else
                  icolup(1,j)=icolgf(1)
                  icolup(2,j)=icolgf(2)
               endif
            else
               write(*,*) '*** invalid flavour in borncolour_lh ***'
               call pwhg_exit(-1)
            endif
         endif
      enddo

c     hadronic and inclusive Z decay
      if(idup(4).eq.-1001.or.idup(4).eq.-1002) then
         icolup(1,4) = 0
         icolup(2,4) = 503
         icolup(1,5) = 503
         icolup(2,5) = 0
      endif

      end
      


c$$$
c$$$      subroutine borncolour_lh
c$$$c Wrapper subroutine to call the MadGraph code to associate
c$$$c a (leading) color structure to an event.
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      include 'pwhg_rad.h'
c$$$      integer equivto(maxprocborn)
c$$$      common/cequivtoborn/equivto
c$$$      include 'LesHouches.h'
c$$$      integer bflav0(nlegborn),bflav(nlegborn),color(2,nlegborn)
c$$$      integer i,j,iborn
c$$$      logical samecol,conjcol
c$$$c We should reach the madgraph flavour configuration that
c$$$c was actually computed, in case smartsig is on
c$$$      iborn = rad_ubornidx
c$$$      bflav0 = flst_born(:,iborn)
c$$$      do while(equivto(iborn).ne.-1)
c$$$         iborn=equivto(iborn)
c$$$      enddo
c$$$      bflav = flst_born(:,iborn)
c$$$      call born_color(bflav,color)
c$$$c Now we have the colour configuration associated with the
c$$$c amplitude that was computed instead of rad_ubornidx.
c$$$c However, that amplitude may differ from the original one
c$$$c by charge conjugation. Check if this is the case
c$$$      call matchcolour(nlegborn,bflav0,color)
c$$$      icolup(:,1:nlegborn)=color(:,1:nlegborn)
c$$$      end
c$$$


      subroutine finalize_lh
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "LesHouches.h"
      include "PhysPars.h"
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode,Vdecmod,id5,id6
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      real * 8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      real * 8 random,rand_num
      external random
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface
      call add_resonance(idvecbos,4,5)

c     fix here the Z decay mode
      if(vdecaymode.eq.0.or.vdecaymode.eq.10  
     $     .or. vdecaymode.eq.11 .or. vdecaymode.eq.12) then
         rand_num=random()
         if(idup(5).eq.-1001) then
c        down-type quark
            if(rand_num.le.1d0/3d0) then
               idup(5) = -1
               idup(6) =  1
            elseif(rand_num.gt.1d0/3d0.and.rand_num.le.2d0/3d0) then
               idup(5) = -3
               idup(6) =  3
            else
               idup(5) = -5
               idup(6) =  5
            endif         
         elseif(idup(5).eq.-1002) then
c        up-type quark
            if(rand_num.le.1d0/2d0) then
               idup(5) = -2
               idup(6) =  2
            else
               idup(5) = -4
               idup(6) =  4                  
            endif
         elseif (idup(5).eq.-11) then
c        lepton
            if(rand_num.le.1d0/nleptfam) then
               idup(5) = -11
               idup(6) =  11
            elseif(rand_num.gt.1d0/nleptfam.and.
     $              rand_num.le.2d0/nleptfam) then
               idup(5) = -13
               idup(6) =  13
            else
               idup(5) = -15
               idup(6) =  15
            endif         
         elseif (idup(5).eq.-12) then
c        neutrino
            if(rand_num.le.1d0/3d0) then
               idup(5) = -12
               idup(6) =  12
            elseif(rand_num.gt.1d0/3d0.and.rand_num.le.2d0/3d0) then
               idup(5) = -14
               idup(6) =  14
            else
               idup(5) = -16
               idup(6) =  16
            endif         
         else
            write(*,*) 'Error in finalize_lh'
            call pwhg_exit(-1)
         endif
      else
         idup(5) =  vdecaymode
         idup(6) = -vdecaymode
      endif
      call lhefinitemasses
      end


c$$$      subroutine change_id_particles(i1,i2,id1,id2)
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$      integer i1,i2,id1,id2
c$$$      idup(i1)=id1
c$$$      idup(i2)=id2
c$$$      end
