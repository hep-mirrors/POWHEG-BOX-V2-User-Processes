c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data
      subroutine init_hist
	implicit none
	include 'nlegborn.h'
	include 'pwhg_bookhist-multi.h'
	include 'pwhg_math.h'
	include 'pwhg_flg.h'
	include 'pwhg_kn.h'
	include 'PhysPars.h'
      call inihists

c adapt this here: end-goal would be to have hists with/wo cuts in case
c with/wo decays sq->q neutr
ccc 1.) without decay:
      if(.not.flg_decay) then
        call bookupeqbins('sig',1d0,0d0,1d0)
        call bookupeqbins('pt_sq',20d0,0d0,2000d0)
        call bookupeqbins('y_sq',0.04d0,-2d0,2d0)
        call bookupeqbins('eta_sq',0.04d0,-2d0,2d0)
c separately plot the squarks/antisquarks:
        call bookupeqbins('pt_sq1',20d0,0d0,2000d0)
        call bookupeqbins('y_sq1',0.04d0,-2d0,2d0)
        call bookupeqbins('eta_sq1',0.04d0,-2d0,2d0)
        call bookupeqbins('pt_sq2',20d0,0d0,2000d0)
        call bookupeqbins('y_sq2',0.04d0,-2d0,2d0)
        call bookupeqbins('eta_sq2',0.04d0,-2d0,2d0)
        call bookupeqbins('pt_j',10d0,0d0,2000d0)
        call bookupeqbins('pt_j_zoom',2d0,0d0,200d0)
        call bookupeqbins('eta_j',0.04d0,-4d0,4d0)
        call bookupeqbins('y_j',0.04d0,-4d0,4d0)
        call bookupeqbins('e_j',20d0,0d0,2000d0)
        call bookupeqbins('px_j',20d0,0d0,2000d0)
        call bookupeqbins('py_j',20d0,0d0,2000d0)
        call bookupeqbins('pz_j',20d0,0d0,2000d0)
        call bookupeqbins('m_sq_antisq',100d0,2*par_msqmin-mod(2*par_msqmin,100d0),2*par_msqmin-mod(2*par_msqmin,100d0)+100d0*30)
        call bookupeqbins('m_sq1_j',100d0,par_msqmin-mod(par_msqmin,100d0),par_msqmin-mod(par_msqmin,100d0)+100d0*30)
        call bookupeqbins('m_sq2_j',100d0,par_msqmin-mod(par_msqmin,100d0),par_msqmin-mod(par_msqmin,100d0)+100d0*30)
        call bookupeqbins('m_sq_j',100d0,par_msqmin-mod(par_msqmin,100d0),par_msqmin-mod(par_msqmin,100d0)+100d0*30)
        call bookupeqbins('eta_sq_antisq',0.04d0,-2d0,2d0)
        call bookupeqbins('y_sq_antisq',0.04d0,-2d0,2d0)
        call bookupeqbins('pt_sq_antisq',10d0,0d0,2000d0)
        call bookupeqbins('phi_sq',2d0*Pi/100d0,-Pi,Pi)

        call bookupeqbins('phi_sq1',2d0*Pi/100d0,-Pi,Pi)
        call bookupeqbins('phi_sq2',2d0*Pi/100d0,-Pi,Pi)
      else if(flg_decay) then
       call bookupeqbins('sig',1d0,0d0,1d0)
	 if(flg_cuts) call bookupeqbins('sig_cuts',1d0,0d0,1d0)
       call bookupeqbins('pt_inv',20d0,0d0,2000d0)
       call bookupeqbins('pt_j1',20d0,0d0,3000d0)
       call bookupeqbins('pt_j2',20d0,0d0,2500d0)
       call bookupeqbins('pt_j3',20d0,0d0,2000d0)
       call bookupeqbins('pt_j1_zoom',5d0,0d0,400d0)
       call bookupeqbins('pt_j2_zoom',5d0,0d0,400d0)
       call bookupeqbins('pt_j3_zoom',2d0,0d0,200d0)
       call bookupeqbins('phi_j1',2d0*Pi/100d0,-Pi,Pi)
       call bookupeqbins('phi_j2',2d0*Pi/100d0,-Pi,Pi)
       call bookupeqbins('phi_j3',2d0*Pi/100d0,-Pi,Pi)
       call bookupeqbins('eta_j1',0.04d0,-4d0,4d0)
       call bookupeqbins('eta_j2',0.04d0,-4d0,4d0)
       call bookupeqbins('eta_j3',0.04d0,-4d0,4d0)
       call bookupeqbins('y_j1',0.04d0,-4d0,4d0)
       call bookupeqbins('y_j2',0.04d0,-4d0,4d0)
       call bookupeqbins('y_j3',0.04d0,-4d0,4d0)
       call bookupeqbins('eta_j1_j2',0.04d0,-2d0,2d0)
       call bookupeqbins('ht',100d0,0d0,10000d0)
       call bookupeqbins('m_j1_j2',100d0,0d0,5000d0)
       call bookupeqbins('m_j1_j2_zoom',20d0,0d0,1000d0)
	 call bookupeqbins('meff',50d0,0d0,8000d0)
	 call bookupeqbins('meffincl',50d0,0d0,8000d0)
	 call bookupeqbins('deltaphi_j1_ptinv',0.02d0,0d0,pi)
	 call bookupeqbins('deltaphi_j2_ptinv',0.02d0,0d0,pi)
	 call bookupeqbins('deltaphi_j3_ptinv',0.02d0,0d0,pi)
!! number of jets
       call bookupeqbins('n_j',1d0,0.5d0,10.5d0) !in principle only 3 jets possible, but OK, keep up to 10 jets
       endif
       end
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      subroutine analysis(dsig)
	implicit none
      include 'nlegborn.h'
	include 'hepevt.h'
	include 'pwhg_math.h'
	include 'LesHouches.h'
      include 'pwhg_flg.h'
      include 'PhysPars.h'
      real * 8 dsig,dsigcp
      integer ihep,mjets,maxjet,maxinv,maxsquark
      parameter (maxjet=50,maxsquark=10,maxinv=10)
	integer nsquarks,npartons,ninvisible
	real*8  ktj(maxjet),etaj(maxjet),yj(maxjet),
     1    phij(maxjet),pj(1:4,maxjet),rr,jetalgo
	real*8 ptmin
	real*8 ptmiss,pinv(4,maxinv),pinv_sum(4),deltaphi(maxjet)
	real*8 ptsq(maxsquark),phisq(maxsquark),psq(4,maxsquark),ysq(maxsquark),etasq(maxsquark)
      real*8 eta_sqsq,y_sqsq,m_sqsq,m_sq1j,m_sq2j,pt_sqsq
	real*8 m_jj,eta_jj,ht_tot,meff,njet_real,meffincl
      real*8 getinvmass, etafrom2p,ptfrom2p,yfrom2p,getdeltaphi
      integer i,j
      integer nminjets 
      real*8 ptjcut(1:9),ptjmincut,etajcut,ptinvcut
	real*8 ptsqcut(1:2),ptsqsqmincut
	real*8 meffinclcut,ratiocut,deltaphicut(1:3)
      real*8 dir(3)
      data dir/0d0,0d0,1d0/
	real*8 corrtotxs,readcuts,powheginput
      logical issquark,ini,passcuts
      external issquark,corrtotxs,readcuts,powheginput
      data ini/.true./
      save ini
      common/pwganajetcuts/ptjcut,ptjmincut,etajcut
	rr=powheginput('#Rpara')
	ptmin=powheginput('#ptjmin')
	jetalgo=powheginput('#jetalgo')
	if(rr.eq.-1d6) rr=0.7 !use some standard-values!!
	if(ptmin.eq.-1d6) ptmin=1.0
	if(jetalgo.eq.-1d6) jetalgo=-1.0 !anti-kt!
c get cut-values from readcuts.f
      if(ini) then
         write (*,*) '********************************************'
         write(*,*) '       NLO analysis'
         write(*,*) '*****************************'
         nminjets=0
         if(flg_cuts) then
           write(*,*) 'Using the following values for the cuts:'
	    if(flg_decay) then
            do i=1,9
	       ptjcut(i)=readcuts('ptj',i)
	       if(ptjcut(i).gt.0d0) nminjets=nminjets+1 !require nminjets in the end
	      enddo
	      ptjmincut=readcuts('ptjmin',0)
	      etajcut=readcuts('etaj',0)
	      ptinvcut=readcuts('ptinv',0)
            write(*,*) 'pt-cuts on hardest jets:'
            write(*,*) ptjcut(1:3)
            write(*,*) 'minimal pt_miss: ',ptinvcut
ccc NEW: ATLAS cuts
		meffinclcut=readcuts('meffincl',0)
	      ratiocut=readcuts('rptinvmeff',0)
		do i=1,3
	        deltaphicut=readcuts('deltaphi',i)
		enddo
            write(*,*) 'cut on meff_incl:',meffinclcut
	      write(*,*) 'cut on pt_miss/meff_excl:',ratiocut
		write(*,*) 'cuts on deltaphi(j_i,ptmiss):'
            write(*,*) deltaphicut(1:3)
          else
	      do i=1,2 
              ptsqcut(i)=readcuts('ptsq',i)
	      enddo
	      ptsqsqmincut=readcuts('ptsqsq',0)
		ptjmincut=readcuts('ptjmin',0)
	      etajcut=readcuts('etaj',0)
            write(*,*) 'pt-cuts on squarks:'
            write(*,*) ptsqcut(1:2)
		write(*,*) 'cut on pt_sqsq:',ptsqsqmincut
	    endif
	     if(ptjmincut.lt.ptmin) then
	       write(*,*) 'You entered a ptjmincut which is smaller than the ptmin-value in the input-file'
		 write(*,*) 'Set ptjmincut to ptmin, as below this value no jets will be present anyway'
		 ptjmincut=ptmin
	     endif
           write(*,*) 'general cut on minimum jet-pt: ',ptjmincut
           write(*,*) 'eta_j: ', etajcut
         else
          do i=1,9
	       ptjcut(i)=0d0
	    enddo
	    ptjmincut=0d0
	    etajcut=1d6
	    ptinvcut=0d0
	    ptsqsqmincut=0d0
	    do i=1,2
		ptsqcut(i)=0d0
	    enddo
           write(*,*) 'Using no cuts!'
         endif
	   if(flg_decay) then
		write(*,*) 'Using jet-alogrithm with R=',rr
		write(*,*) 'Chosen number is ',jetalgo,', where 1->kt, 2-> antikt, 3-> CambAa'
	   endif
	   write(*,*) 'Minimal pt required for jets is ',ptmin
         ini=.false.
       endif

	nsquarks=0
	npartons=0
	ninvisible=0
      mjets=0

	do i=1,maxjet
	  ktj(i)=0d0
	  etaj(i)=0d0
	  yj(i)=0d0
	  phij(i)=0d0
	  deltaphi(i)=0d0
	enddo
	m_jj=0d0
	meff=0d0
	meffincl=0d0
	eta_jj=0d0
	ht_tot=0d0

	do i=1,4
	  pinv_sum(i)=0d0
	enddo

	do i=1,maxsquark
	 ptsq(i)=0d0
	 phisq(i)=0d0
	 ysq(i)=0d0
	 etasq(i)=0d0
	enddo
	eta_sqsq=0d0
	pt_sqsq=0d0
	m_sqsq=0d0
	dsigcp=dsig
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c first of all the case wo squark-decays:
       if(.not.flg_decay) then
c get info on squarks etc
	  do ihep=1,nhep
	   if(isthep(ihep).eq.1) then !outgoing
c this is in principle redundant: we have at this level only squarks and gluons
            if(issquark(idhep(ihep))) then !susy-particle and (anti)-squark
		   nsquarks=nsquarks+1
	         do i=1,4
	           psq(i,nsquarks)=phep(i,ihep) ! the first entry is always the squark, the second the antisquark
               enddo
cc im principle the first squark should really be a squark, not an antisquark
cc -> redundancy check!
	         if(nsquarks.eq.1.and.idhep(ihep).lt.0) then
		     write(*,*) 'WARNING: in analysis: first squark is antisquark!'
	         endif
	      elseif(abs(idhep(ihep)).lt.6.or.idhep(ihep).eq.21) then
	         npartons=npartons+1
               do j=1,4
                 pj(j,npartons)=phep(j,nhep)
               enddo
	      endif
	   endif
	  enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c get partons/neutralinos from decays
      else
	  do i=5,nlegborn !loop over FS-particles (not the radiated gluon, only produced susy-particles)
          if(abs(idhep(i)).le.5.or.idhep(i).eq.21) then !FS partons
		npartons=npartons+1
            do j=1,4
              pj(j,npartons)=phep(j,i)
            enddo
	    elseif(idhep(i).eq.1000022) then
	      ninvisible=ninvisible+1
            do j=1,4
              pinv(j,ninvisible)=phep(j,i)
            enddo
	    endif
	  enddo

cc NOTE: the real radiation parton is always the last one in the pj-array
         if(nhep.eq.nlegreal) then !we have an add. jet
           npartons=npartons+1
           do j=1,4
             pj(j,npartons)=phep(j,nhep)
           enddo
         endif

cc get ptmiss 
	  ptmiss=0d0
	  do j=1,ninvisible
	    do i=1,4
	     pinv_sum(i)=pinv_sum(i)+pinv(i,j)
	    enddo
	  enddo
	  ptmiss=dsqrt(pinv_sum(1)**2+pinv_sum(2)**2)
      endif

      if(.not.flg_decay) then
	  if(nsquarks.eq.0.or.mod(nsquarks,2).ne.0) then
	    write(*,*) 'No viable SUSY-event!'
	    return
	  endif
        if(npartons.gt.1) then
            write(*,*) 'created >1 parton wo decay?!'
            return
        endif
      else
       if(ninvisible.eq.0) then !assume chi0 to be lsp
           write(*,*) 'After decay no LSP...'
           return
       endif
      endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccc create jets
c we perform only the NLO-analysis here, so we have in case of no decay at max one "jet" at hand-> not necessary to use fastjet:)
	if(flg_decay) then
          call buildjets(mjets,npartons,rr,jetalgo,ktj,etaj,yj,phij,m_jj,eta_jj,pj,ptmin)
cccc now calc h_T
          ht_tot=0d0
          do i=1,mjets
            ht_tot=ht_tot+ktj(i)
	      meffincl=meffincl+ktj(i) !the inclusive version used for the cuts
		deltaphi(i)=getdeltaphi(pj(1:4,i),pinv_sum(1:4)) !delta phi between ith jet and the direction of invisible particles
          enddo
	    meff=ktj(1)+ktj(2)+ptmiss
	    meffincl=meffincl+ptmiss
       else
ccccc handle squarks
	  do ihep=1,nsquarks
	   call getyetaptphi(psq(1:4,ihep),ysq(ihep),etasq(ihep),ptsq(ihep),phisq(ihep))
	  enddo
	  m_sqsq=getinvmass(psq(1:4,1),psq(1:4,2))
	  eta_sqsq=etafrom2p(psq(1:4,1),psq(1:4,2))
	  y_sqsq=yfrom2p(psq(1:4,1),psq(1:4,2))
	  pt_sqsq=ptfrom2p(psq(1:4,1),psq(1:4,2))
cccc  get p_t,... of jet (if one is present)
	 if(npartons.ne.0) then
            mjets=1
            call getyetaptphi(pj(1:4,1),yj(1),etaj(1),ktj(1),phij(1))
            m_sq1j=getinvmass(psq(1:4,1),pj(1:4,1))
            m_sq2j=getinvmass(psq(1:4,2),pj(1:4,1))
	 endif
      endif
cccccccccccccccccccccccccccccccccccccccccccc
cccc handle jets; the jets constructed with the provided wrapper are already pt-orderd
c    sanity-check if this is true??
! ! 	do j=1,mjets-1
! ! 	   if(ktj(j+1).gt.ktj(j)) then
! ! 		print*, 'Warning: jets not pt-ordered:'
! ! 	      print*,ktj(1:mjets)
! ! 	   endif
! ! 	enddo
      call filld('sig', 0.0d0, dsigcp) !always save the total cross-section
cccccccccccccccccccc
c Cuts
	passcuts=.true.
	if(flg_cuts) then
	  if(flg_decay) then
c cuts on jets are already performed in buildjets, but we still have to make sure that 
c enough jets passed them
           if(mjets.lt.nminjets) passcuts=.false.
	     if(ptmiss.lt.ptinvcut) passcuts=.false.
ccc the ATLAS cuts:
	     if(meffincl.lt.meffinclcut) passcuts=.false.
	     if(ptmiss/meff.lt.ratiocut) passcuts=.false.
	     if(deltaphi(1).lt.deltaphicut(1)) passcuts=.false.
	     if(deltaphi(2).lt.deltaphicut(2)) passcuts=.false.
ccc this cut is only relevant if a third jet is present:
	     if(mjets.gt.2) then
	       if(deltaphi(3).lt.deltaphicut(3)) passcuts=.false.
	     endif
	  else
	   do i=1,nsquarks
	      if (ptsq(i).lt.ptsqcut(i)) passcuts=.false.
	    enddo
	    if(pt_sqsq.lt.ptsqsqmincut) passcuts=.false.
	  endif
	endif

c   Fill histograms
       if(.not.flg_decay.and.passcuts) then
         do i=1,nsquarks
           call filld('pt_sq',ptsq(i),dsigcp)
           call filld('y_sq',ysq(i),dsigcp)
           call filld('eta_sq',etasq(i),dsigcp)
           call filld('phi_sq',phisq(i),dsigcp)
         enddo
cc now the same for the single-histograms:
         call filld('pt_sq1',ptsq(1),dsigcp)
         call filld('y_sq1',ysq(1),dsigcp)
         call filld('eta_sq1',etasq(1),dsigcp)
         call filld('phi_sq1',phisq(1),dsigcp)

         call filld('pt_sq2',ptsq(2),dsigcp)
         call filld('y_sq2',ysq(2),dsigcp)
         call filld('eta_sq2',etasq(2),dsigcp)
         call filld('phi_sq2',phisq(2),dsigcp)

cc the single-jet:         
	   if(ktj(1).ge.ptjmincut.and.abs(etaj(1)).le.etajcut.and.mjets.ge.1) then !keep a minimal pt-value for 1-jets as well!!
           call filld('pt_j',ktj(1),dsigcp) !at max one "jet" present!
           call filld('pt_j_zoom',ktj(1),dsigcp) !at max one "jet" present!
           call filld('eta_j',etaj(1),dsigcp)
           call filld('y_j',yj(1),dsigcp)
           call filld('e_j',pj(4,1),dsigcp)
           call filld('px_j',pj(1,1),dsigcp)
           call filld('py_j',pj(2,1),dsigcp)
           call filld('pz_j',pj(3,1),dsigcp)
           call filld('m_sq1_j',m_sq1j,dsigcp)
           call filld('m_sq2_j',m_sq2j,dsigcp)
           call filld('m_sq_j',m_sq1j,dsigcp)
           call filld('m_sq_j',m_sq2j,dsigcp)
	     call filld('pt_sq_antisq',pt_sqsq,dsigcp) !we need pt_sqsq to compare wiht the pt_j-distribution-> only fill if pt_sqsq>ptj_min!!!
	   endif
         call filld('m_sq_antisq',m_sqsq,dsigcp)
         call filld('eta_sq_antisq',eta_sqsq,dsigcp)
         call filld('y_sq_antisq',y_sqsq,dsigcp)
	 elseif(flg_decay.and.passcuts) then !passcuts is set to true if no decays performed
	   if(flg_cuts) call filld('sig_cuts',0.0d0,dsigcp)
         call filld('pt_inv',ptmiss,dsigcp)
         njet_real=real(mjets)
         call filld('n_j',njet_real,dsigcp)
	   call filld('meffincl',meffincl,dsigcp)

         if(mjets.ge.3) then !took care of the cuts already in buildjets...
           call filld('pt_j3',ktj(3),dsigcp)
           call filld('pt_j3_zoom',ktj(3),dsigcp)
           call filld('eta_j3',etaj(3),dsigcp)
           call filld('y_j3',yj(3),dsigcp)
           call filld('phi_j3',phij(3),dsigcp)
	     call filld('deltaphi_j3_ptinv',deltaphi(3),dsigcp)
         endif
         if(mjets.ge.2) then
           call filld('pt_j2',ktj(2),dsigcp)
           call filld('pt_j2_zoom',ktj(2),dsigcp)
           call filld('phi_j2',phij(2),dsigcp)
           call filld('eta_j2',etaj(2),dsigcp)
           call filld('y_j2',yj(2),dsigcp)
           call filld('eta_j1_j2',eta_jj,dsigcp)
           call filld('m_j1_j2',m_jj,dsigcp)
           call filld('m_j1_j2_zoom',m_jj,dsigcp)
	     call filld('meff',meff,dsigcp)
	     call filld('deltaphi_j2_ptinv',deltaphi(2),dsigcp)
         endif

         if(mjets.ge.1) then
           call filld('pt_j1',ktj(1),dsigcp)
           call filld('pt_j1_zoom',ktj(1),dsigcp)
           call filld('phi_j1',phij(1),dsigcp)
           call filld('eta_j1',etaj(1),dsigcp)
           call filld('y_j1',yj(1),dsigcp)
	     call filld('deltaphi_j1_ptinv',deltaphi(1),dsigcp)
           call filld('ht',ht_tot,dsigcp)
         endif
       endif
	end
