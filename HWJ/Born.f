      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn),bornFG
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer j,mu
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam
      real * 8 kappa_ghb,kappa_ght,kappa_ghw
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghw
      real *8 multiplicity

      multiplicity = 1d0
      call set_ebe_couplings

      if(idvecbos.eq.-24) then
         call cconj(bflav,nlegborn)
         call pconj(p,nlegborn)
      endif

      call sborn_proc(p,bflav,born,bornjk,bmunu)

      if(idvecbos.eq.-24) then
         call cconj(bflav,nlegborn)
         call pconj(p,nlegborn)
         do j=1,nlegborn
            do mu=1,3
               bmunu(0,mu,j)=-bmunu(0,mu,j)
               bmunu(mu,0,j)=-bmunu(mu,0,j)
            enddo
         enddo
      endif

      if(vdecaymode.eq.0) then
c     sum over the hadronic W decay products: multiply by the sum of the 
c     squared CKM matrix elements -> all the elements apart from the 
c     top-quark ones
c     Factor (1 + alphas(mw)/pi) to take into account the corrections to
c     the decay products
         multiplicity = sumCKM*opasopi*nc
      elseif(vdecaymode.eq.10) then
c     sumCKM*(1 + alphas(mw)/pi) from sum over hadronic W decay products 
c     and to take into account the corrections to the decay products, 
c     nleptfam for leptonic W decay products
         multiplicity = nleptfam+sumCKM*opasopi*nc
      elseif(vdecaymode.eq.112) then
c     nleptfam for leptonic W decay products
         multiplicity = nleptfam
      endif
*********************************************************      
***   MODIFICATION OF Higgs-W couplings:
***   (we assume multiplicative kappa factors)
      born   = multiplicity * kappa_ghw**2 * born
      bornjk = multiplicity * kappa_ghw**2 * bornjk
      bmunu  = multiplicity * kappa_ghw**2 * bmunu 
      end
      
      subroutine pconj(p,n)
      implicit none
      real * 8 p(0:3,n)
      integer n,j,mu
      do j=1,n
         do mu=1,3
            p(mu,j)=-p(mu,j)
         enddo
      enddo
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
      include 'pwhg_math.h'
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
      real * 8 random,rand_num
      external random
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam

      do j=1,nlegborn
c     Higgs and W decay products
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

c     W decay into quarks
      if(vdecaymode.eq.0) then
         if(idvecbos.lt.0) then
            icolup(1,4) = 503
            icolup(2,4) = 0
            icolup(1,5) = 0
            icolup(2,5) = 503
         elseif(idvecbos.gt.0) then
            icolup(1,4) = 0
            icolup(2,4) = 503
            icolup(1,5) = 503
            icolup(2,5) = 0
         endif
      endif
c     inclusive W decay: the type of decay (hadronic or leptonic) must
c     be decided here rather than in finalize_lh, because otherwise the
c     colour connections could not be assigned properly:  
c     sumCKM*(1+as/pi)/(nleptfam+sumCKM*(1+as/pi)) probability that
c     the decay is hadronic, 1 minus the above that it is leptonic
c     ==>  in the latter case, no colour connections
      if(vdecaymode.eq.10) then
         rand_num=random() 
         if(rand_num.le.sumCKM*opasopi*nc/(nleptfam+sumCKM*opasopi*nc))
     $        then
            if(idvecbos.lt.0) then
               icolup(1,4) = 503
               icolup(2,4) = 0
               icolup(1,5) = 0
               icolup(2,5) = 503
            elseif(idvecbos.gt.0) then
               icolup(1,4) = 0
               icolup(2,4) = 503
               icolup(1,5) = 503
               icolup(2,5) = 0
            endif
         endif
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


C$$$      subroutine borncolour_lh
C$$$c Wrapper subroutine to call the MadGraph code to associate
C$$$c a (leading) color structure to an event.
C$$$      implicit none
C$$$      include 'nlegborn.h'
C$$$      include 'LesHouches.h'
C$$$      integer bflav(nlegborn),color(2,nlegborn)
C$$$      integer i,j,itmp
C$$$      integer idvecbos,vdecaymode
C$$$      common/cvecbos/idvecbos,vdecaymode
C$$$      do i=1,nlegborn
C$$$         bflav(i)=idup(i)
C$$$         if (bflav(i).eq.21) bflav(i)=0
C$$$      enddo

C$$$      if(idvecbos.eq.-24) then
C$$$         call cconj(bflav,nlegborn)
C$$$      endif

C$$$      call born_color(bflav,color)

C$$$      if(idvecbos.eq.-24) then
C$$$         call cconj(bflav,nlegborn)
C$$$         do j=1,nlegborn
C$$$            itmp = color(1,j)
C$$$            color(1,j) = color(2,j)
C$$$            color(2,j) = itmp
C$$$         enddo
C$$$      endif

C$$$      do i=1,2
C$$$         do j=1,nlegborn
C$$$            icolup(i,j)=color(i,j)
C$$$         enddo
C$$$      enddo

C$$$      end





      subroutine finalize_lh
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "LesHouches.h"
      include "PhysPars.h"
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer id5,id6
      real * 8 random,rand_num
      external random
      logical init
      data init/.true./
      save init
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam
      real * 8 int_ud,int_us,int_ub,int_cd,int_cs,Wsign,norm
      save int_ud,int_us,int_ub,int_cd,int_cs,Wsign
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
      call add_resonance(idvecbos,4,5)

c     fix here the flavours of the quarks coming from W decay, 
c     in case of hadronic W decay
      if(vdecaymode.eq.0.or.vdecaymode.eq.10.or.vdecaymode.eq.112) then
         if(init) then
            int_ud =          ph_CKM(1,1)**2/sumCKM
            int_us = int_ud + ph_CKM(1,2)**2/sumCKM
            int_ub = int_us + ph_CKM(1,3)**2/sumCKM
            int_cd = int_ub + ph_CKM(2,1)**2/sumCKM
            int_cs = int_cd + ph_CKM(2,2)**2/sumCKM
            Wsign = idvecbos/abs(idvecbos)
            init = .false.
         endif
         rand_num=random() 
         if(vdecaymode.eq.0) then
            if(rand_num.lt.int_ud) then
               idup(5) = Wsign*(-1)
               idup(6) = Wsign*2
            elseif(rand_num.lt.int_us) then
               idup(5) = Wsign*(-3)
               idup(6) = Wsign*2
            elseif(rand_num.lt.int_ub) then
               idup(5) = Wsign*(-5)
               idup(6) = Wsign*2
            elseif(rand_num.lt.int_cd) then
               idup(5) = Wsign*(-1)
               idup(6) = Wsign*4
            elseif(rand_num.lt.int_cs) then
               idup(5) = Wsign*(-3)
               idup(6) = Wsign*4
            elseif(rand_num.ge.int_cs) then
               idup(5) = Wsign*(-5)
               idup(6) = Wsign*4
            endif
         elseif(vdecaymode.eq.10.or.vdecaymode.eq.112) then
            if(icolup(1,5).eq.0.and.icolup(2,5).eq.0) then
c           leptonic decay
               if(rand_num.le.1d0/nleptfam) then
                  idup(5) = Wsign*(-11)
                  idup(6) = Wsign*12
               elseif(rand_num.le.2d0/nleptfam) then
                  idup(5) = Wsign*(-13)
                  idup(6) = Wsign*14
               else
                  idup(5) = Wsign*(-15)
                  idup(6) = Wsign*16
               endif
            else
c           hadronic decay
               if(rand_num.lt.int_ud) then
                  idup(5) = Wsign*(-1)
                  idup(6) = Wsign*2
               elseif(rand_num.lt.int_us) then
                  idup(5) = Wsign*(-3)
                  idup(6) = Wsign*2
               elseif(rand_num.lt.int_ub) then
                  idup(5) = Wsign*(-5)
                  idup(6) = Wsign*2
               elseif(rand_num.lt.int_cd) then
                  idup(5) = Wsign*(-1)
                  idup(6) = Wsign*4
               elseif(rand_num.lt.int_cs) then
                  idup(5) = Wsign*(-3)
                  idup(6) = Wsign*4
               elseif(rand_num.ge.int_cs) then
                  idup(5) = Wsign*(-5)
                  idup(6) = Wsign*4
               endif
            endif
         endif
      else
         idup(5)=vdecaymode
         idup(6)=-vdecaymode + sign(1,idvecbos) 
      endif   
c      call change_id_particles(5,6,id5,id6)
      call lhefinitemasses
      end


c$$$      subroutine change_id_particles(i1,i2,id1,id2)
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$      integer i1,i2,id1,id2
c$$$      idup(i1)=id1
c$$$      idup(i2)=id2
c$$$      end

