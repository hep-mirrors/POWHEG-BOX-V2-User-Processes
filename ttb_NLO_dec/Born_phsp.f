      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'onshellmap.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'zerowidth.f'
      include 'process.f'
      include 'phasemin.f'
      include 'mxdim.f'
      real * 8 xborn(ndiminteg-3)

      double precision sqrts,taumn,xjac,smax,smin,z,s,
     1     swp,mwp,swm,mwm,st,mt,stb,mtb,lntaumn,tau,epcm,ycm,
     2     x1,x2,beta,vec(3)

      real * 8 powheginput
      external powheginput
      logical debug,ini

      data ini/.true./
      data debug/.false./

      integer ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,ib,ibb,ip

      common/inputprocind/ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,
     1     ib,ibb,ip

c      common/inputprocind/ii1,ii2,ii3,ii4,ii5,ii6,ii7,ii8,
c     1     ii9,ii10,ii11,ii12,ii13


      sqrts = sqrt(kn_sbeams)

      case='tt_bbl'

      if (debug)  write(*,*) 'Entering Born_phsp: ndiminteg', ndiminteg

      xjac = 1
c w plus invariant
      if(.not.offshelltop) then
         smax = (ph_tmass-ph_bmass)**2
      else
         smax = (sqrts - 2*ph_bmass)**2
      endif
      smin = 0
      z = xborn(1)
      call breit(z,smin,smax,ph_wmass,ph_wwidth,s,xjac)
c s of W+ (swp)
      swp = s
      mwp = sqrt(s)
c d s/(2 pi), include jacobian
      xjac = xjac/(2*pi)
c w minus s
      if(.not.offshelltop) then
         smax = (ph_tmass-ph_bmass)**2
      else
         smax = (sqrts - 2*ph_bmass - mwp)**2
      endif      
      smin = 0
      z=xborn(2)
      call breit(z,smin,smax,ph_wmass,ph_wwidth,s,xjac)
      swm = s
      mwm = sqrt(s)
      xjac = xjac/(2*pi)
c top s
      if(.not.offshelltop) then
         mt = ph_tmass
         st = mt**2
c The following factor is such that the squared amplidtude
c evaluated on-shell yields exactly the on shell cross section
c times the branching ratio. In fact, the on-shell propagator
c is 1/(tmass*twidth)**2, and calling M^2 the decay part of the
c amplitude, with the factor below we get
c tmass * twidth          M^2              1          M^2
c --------------  ------------------  = -------  ----------
c      2          (tmass * twidth)^2     twidth    2 tmass
c that upon integration of the decay phase space yields
c the branching ratio.
c Must make sure to use the SAME width value used in MCFM
c (see init_coupling)
         xjac = xjac * ph_tmass * ph_mcfm_twidth / 2
      else
         smax = (sqrts - ph_bmass - mwm)**2
         smin = (mwp+ph_bmass)**2
         z = xborn(3)
         call breit(z,smin,smax,ph_tmass,ph_twidth,s,xjac)
         st = s
         mt = sqrt(s)
         xjac = xjac/(2*pi)
      endif
c tbar s
      if(.not.offshelltop) then
         mtb = ph_tmass
         stb = mtb**2
         xjac = xjac * ph_tmass * ph_mcfm_twidth / 2
      else
         smax = (sqrts - mt)**2
         smin = (mwm+ph_bmass)**2
         z = xborn(4)
         call breit(z,smin,smax,ph_tmass,ph_twidth,s,xjac)
         stb = s
         mtb = sqrt(s)
         xjac = xjac/(2*pi)
      endif
c now tau
      taumn = (mt+mtb)**2/kn_sbeams
      z = xborn(5)
      lntaumn = log(taumn)
      tau = exp(lntaumn*z)
      xjac = xjac * tau * abs(lntaumn)
c     partonic cm final state energy
      epcm = sqrt(tau)*sqrts
c ycm
      z = xborn(6)
      call genrapidity(z,tau,ycm,xjac)
c Now begin generation of momenta; first, t tbar momenta
      x1 = xborn(7)
      x2 = xborn(8)
      call twobodyphsp0(1,x1,x2,mt,mtb,epcm,xjac,
     1     kn_cmpborn(:,it),kn_cmpborn(:,itb))
c Now top decay chain
c t->w+ b
      x1 = xborn(9)
      x2 = xborn(10)
      call twobodyphsp(x1,x2,mwp,ph_bmass,kn_cmpborn(:,it),xjac,
     1     kn_cmpborn(:,iwp),kn_cmpborn(:,ib))
c w+ -> f fbar
      x1 = xborn(11)
      x2 = xborn(12)
      call twobodyphsp(x1,x2,0d0,0d0,kn_cmpborn(:,iwp),xjac,
     1     kn_cmpborn(:,iwpf),kn_cmpborn(:,iwpa))
c Now tbar decay chain
c tb -> W- + bbar
      x1 = xborn(13)
      x2 = xborn(14)
      call twobodyphsp(x1,x2,mwm,ph_bmass,kn_cmpborn(:,itb),xjac,
     1     kn_cmpborn(:,iwm),kn_cmpborn(:,ibb))
c w+ -> f fbar
      x1 = xborn(15)
      x2 = xborn(16)
      call twobodyphsp(x1,x2,0d0,0d0,kn_cmpborn(:,iwm),xjac,
     1     kn_cmpborn(:,iwmf),kn_cmpborn(:,iwma))


      kn_cmpborn(0,1)=epcm/2
      kn_cmpborn(3,1)=kn_cmpborn(0,1)
      kn_cmpborn(1:2,1)=0
      kn_cmpborn(0,2)=kn_cmpborn(0,1)
      kn_cmpborn(3,2)=-kn_cmpborn(0,1)
      kn_cmpborn(1:2,2)=0

c Now the array cmpborn is completely filled; set the other
c kn_ variables
      kn_xb1 = sqrt(tau)*exp(ycm)
      kn_xb2 = tau/kn_xb1
c Find boost of hadronic CM with respect to Lab CM
      ycm = ycm + 0.5d0*log((kn_beams(0,1)+kn_beams(3,1))/
     1                      (kn_beams(0,2)-kn_beams(3,2)))


c check mom. cons.
c$$$      write(*,*) kn_cmpborn(:,1)+kn_cmpborn(:,2)-
c$$$     1     kn_cmpborn(:,it)-kn_cmpborn(:,itb)
c$$$      write(*,*) kn_cmpborn(:,it)-kn_cmpborn(:,iwp)-kn_cmpborn(:,ib)
c$$$      write(*,*) kn_cmpborn(:,itb)-kn_cmpborn(:,iwm)-kn_cmpborn(:,ibb)
c$$$      write(*,*) kn_cmpborn(:,iwp)-kn_cmpborn(:,iwpa)-kn_cmpborn(:,iwpf)
c$$$      write(*,*) kn_cmpborn(:,iwm)-kn_cmpborn(:,iwma)-kn_cmpborn(:,iwmf)
c$$$      write(*,*) ' invariants:'
c$$$      write(*,*) sqrt(kn_cmpborn(0,it)**2- kn_cmpborn(1,it)**2
c$$$     1     -kn_cmpborn(2,it)**2-kn_cmpborn(3,it)**2)
c$$$      write(*,*) sqrt(kn_cmpborn(0,itb)**2- kn_cmpborn(1,itb)**2
c$$$     1     -kn_cmpborn(2,itb)**2-kn_cmpborn(3,itb)**2)
c$$$      write(*,*) kn_cmpborn(0,iwp)**2- kn_cmpborn(1,iwp)**2
c$$$     1     -kn_cmpborn(2,iwp)**2-kn_cmpborn(3,iwp)**2 -swp
c$$$      write(*,*) kn_cmpborn(0,iwm)**2- kn_cmpborn(1,iwm)**2
c$$$     1     -kn_cmpborn(2,iwm)**2-kn_cmpborn(3,iwm)**2 -swm


      beta=tanh(ycm)
      vec(1)=0
      vec(2)=0
      vec(3)=1      
      call mboost(nlegborn,vec,beta,kn_cmpborn,kn_pborn)

      kn_sborn=epcm**2

      kn_jacborn = xjac

c$$$      call onshellmap(nlegborn,kn_cmpborn,cmpborn_os)
c$$$      write(*,*) sum(abs(kn_cmpborn-cmpborn_os))
      if(offshelltop) then
         cmpborn_os = kn_cmpborn
         pborn_os = kn_pborn
         call onshellmap(nlegborn,cmpborn_os,kn_cmpborn)
         call mboost(nlegborn,vec,beta,kn_cmpborn,kn_pborn)
         if(mockoffshelltop) then
c Each Breit-Wigner factor goes to pi delta(mt^2-ph_tmass^2) in the narrow
c width limit. Supply one factor of 2 for each Breit-Wigner (must match
c the d s/(2 pi) normalization).
            kn_jacborn = kn_jacborn * 4 * (ph_tmass*ph_twidth)**2 *
     1           (1/((mt**2-ph_tmass**2)**2+(ph_tmass*ph_twidth)**2)) *
     2           (1/((mtb**2-ph_tmass**2)**2+(ph_tmass*ph_twidth)**2))

c Running width; 
c            kn_jacborn = kn_jacborn * 4 * (ph_tmass*ph_twidth)**2 *
c     1     (1/((mt**2-ph_tmass**2)**2+(mt**2/ph_tmass*ph_twidth)**2)) *
c     2     (1/((mtb**2-ph_tmass**2)**2+(mtb**2/ph_tmass*ph_twidth)**2))

c Furthermore, mcfm matrix elements need m*gamma/2 factor.
c Remember that mcfm uses (mt+mtb)/2 as mass.

            kn_jacborn = kn_jacborn *
     1           ( (mt+mtb)/2 * ph_mcfm_twidth )**2 / 4

c            if(mt.lt.ph_tmass-8*ph_twidth.or.
c     1         mtb.lt.ph_tmass-8*ph_twidth.or.
c     2          mt.gt.ph_tmass+8*ph_twidth.or.
c     1         mtb.gt.ph_tmass+8*ph_twidth) kn_jacborn = 0
         endif
      endif

c     minimal final state mass 
      if(.not.offshelltop) then
         kn_minmass = 2*ph_tmass
      else
         kn_minmass = 2*ph_bmass
      endif

      end



      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'onshellmap.h'
      logical ini
      data ini/.true./
      real * 8 fact,pt2supp,powheginput,pt,bornsuppfact_ptcut
      save ini,pt2supp,pt,bornsuppfact_ptcut
      real *8 ptb2,ptbb2,mbb2,pbb(0:3)
      if (ini) then
         pt = powheginput("#bornsuppfact")         
         if(pt.lt.0.and.kn_masses(11).eq.0) then
            pt = 5
            write(*,*) 'WARNING!! zero b mass!'
         endif
         ini = .false.
         if(pt.gt.0) then
            write(*,*) 'will use born suppression on regions where bs'
            write(*,*) 'have very small pt or when mbb becomes small'
            write(*,*) 'with suppression scale = ',pt,' GeV'
c     optional extra-cut (not needed, suppression using off-shell momenta
c     does a good job when mb=0)
            bornsuppfact_ptcut=powheginput("#bornsuppfact_ptcut")
            if(bornsuppfact_ptcut.gt.0) then
               write(*,*) 'sharp cut if ptb < ',bornsuppfact_ptcut
            endif
         endif
      endif
      if (pt.lt.0) then
         fact=1d0
      else         
         fact=1d0
         ptb2=cmpborn_os(1,11)**2+cmpborn_os(2,11)**2
         ptbb2=cmpborn_os(1,12)**2+cmpborn_os(2,12)**2
         pbb(:)=cmpborn_os(:,11)+cmpborn_os(:,12)
         mbb2=(dabs(pbb(0)**2-pbb(1)**2-pbb(2)**2-pbb(3)**2))
         fact=fact*ptb2/(ptb2+pt**2)
         fact=fact*ptbb2/(ptbb2+pt**2)
         fact=fact*mbb2/(mbb2+(2*pt)**2)
         if(bornsuppfact_ptcut.gt.0) then
            if(sqrt(ptb2).lt.bornsuppfact_ptcut.or.
     $           sqrt(ptbb2).lt.bornsuppfact_ptcut) then
               fact=0d0
               write(*,*)
     $              'PS point required sharp ptcut in bornsuppression ',
     $              sqrt(ptb2),sqrt(ptbb2),sqrt(mbb2)
            endif
         endif
      endif
      end


      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'onshellmap.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      real *8 dotp,powheginput,mu0
      external dotp,powheginput
      integer scalechoice
      logical fixedscale,offshellscales
      save fixedscale,ini,scalechoice,offshellscales
      if (ini) then
         if(powheginput("#fixedscale").lt.0) then
            fixedscale=.false.
         else
            fixedscale=.true.
         endif
c 1 for Tevatron, 2 for LHC
         scalechoice = powheginput('#arXiv:1207.5018')
         offshellscales = powheginput('#offshellscales') .eq. 1
         write(*,*) '*****************************************'
         if(fixedscale) then
            write(*,*) ' mu0 = mt '
         else
            write(*,*) ' mu0= sqrt(sqrt(mt1^2+pt1^2)*sqrt(mt2^2+pt2^2))'
            if(offshellscales) then
               write(*,*) ' computing scales using off-shell kinematics'
            endif
         endif
         if(scalechoice.eq.2) then
            write(*,*) ' muf = mur = mu0/2'
         else
            write(*,*) ' muf = mur = mu0'
         endif
         ini=.false.
      endif
      if(fixedscale) then
         mu0 = ph_tmass
      else
         if(offshellscales) then
            if(flg_btildepart.eq.'b'.or.flg_btildepart.eq.'c') then
               mu0=
     1    sqrt( sqrt(ph_tmass**2+pborn_os(1,3)**2+pborn_os(2,3)**2)
     1  * sqrt(ph_tmass**2+pborn_os(1,4)**2+pborn_os(2,4)**2) )
            else
               call offshellmapreal
               mu0 =
     1    sqrt( sqrt(ph_tmass**2+preal_os(1,3)**2+preal_os(2,3)**2)
     1  * sqrt(ph_tmass**2+preal_os(1,4)**2+preal_os(2,4)**2) )
            endif            
         else
            if(flg_btildepart.eq.'b'.or.flg_btildepart.eq.'c') then
               mu0=
     1          sqrt(ph_tmass**2+kn_cmpborn(1,3)**2+kn_cmpborn(2,3)**2)
            else
               mu0 =
     1    sqrt( sqrt(ph_tmass**2+kn_cmpreal(1,3)**2+kn_cmpreal(2,3)**2)
     1  * sqrt(ph_tmass**2+kn_cmpreal(1,4)**2+kn_cmpreal(2,4)**2) )
            endif
         endif
      endif
      if(scalechoice .eq.2) then
c     LHC scale choice according to arXiv:1207.5018
         muf = mu0/2
         mur = mu0/2
      else
c     Conventional scale choice, or Tevatron scale choice according to arXiv:1207.5018
         muf = mu0
         mur = mu0
      endif
      end

