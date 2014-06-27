ccc function to calculate the REAL-contribution for the sq-decays
ccc so far implemented: sq->q chi_0_1 (== decchan=1)
ccc takes index in flst_real, the index in the 
ccc real-flst and an index for the decay-channel

	subroutine sqdec_real(rflav,realind, decchan,p,amp2)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'PhysPars.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h'
	include 'pwhg_flg.h'
	include 'decay.h' 
	include 'pwhg_st.h'
	integer realind,decchan
	integer i,rflav(1:nlegreal)
	integer ind1,ind2,chir,fla
	real*8 dotp,coup,amp2
	real*8 k1k3,k2k3,k1k2,Pk1,PK2,Pk3
	real*8 p(0:3,1:nlegreal)
	real*8 Gatot
	ind1=0
	ind2=0

ccc take absolut values (results are identical for sq and antisq!)
      chir=abs(rflav(realind)/pdgfac)
      fla =abs(rflav(realind))-chir*pdgfac

	Gatot=par_wsq(fla,chir)

ccc sq-> q chi0
	if(decchan.eq.1) then
	  if(chir.eq.1) then !the left-handed case
	    if(mod(fla,2).eq.0) then !for up-type-squarks
            coup=par_GL(2)**2
	    else
	      coup=par_GL(1)**2
	    endif
	  else  !right-handed case
	    if(mod(fla,2).eq.0) then
            coup=par_GR(2)**2
	    else
	      coup=par_GR(1)**2
	    endif
	  endif
ccc find indices of decay-particles (last one is always the radiated parton!)
ccc NOTE: ind1== chi0, ind2==q, due to the POWHEG-ORDERING of the flst!!!
	  do i=realind+1,nlegreal-1
          if(flst_alrres(i,flst_cur_alr).eq.realind) then
	      if(ind1.eq.0) then
               ind1=i
	      else if(ind2.eq.0) then
	         ind2=i
		else
		  write(*,*) 'Error in sqdec_real: for sq->q chi0 g found'
	        write(*,*) 'more than 2 FS particles from sq-decay'
	        write(*,*) 'flst_resreal=',flst_alrres(1:nlegreal,flst_cur_alr)
	        write(*,*) 'check init_processes!'
	        call exit(-1)
	      endif
          endif
	  enddo

ccc some kinematics: (k1-> chi0, k2->q, k3->g)
	  k1k2=dotp(p(0:3,ind1),p(0:3,ind2))
	  k1k3=dotp(p(0:3,ind1),p(0:3,nlegreal))
	  k2k3=dotp(p(0:3,ind2),p(0:3,nlegreal))
	  Pk1=dotp(p(0:3,realind),p(0:3,ind1))
	  Pk2=dotp(p(0:3,realind),p(0:3,ind2))
	  Pk3=dotp(p(0:3,realind),p(0:3,nlegreal))

ccc as usually: strip off a factor alphas/2Pi!!!
ccc factor 1/3 for color
ccc divide already here by Gatot!!
	  amp2=256d0*Pi**3*par_alphaem*coup/3d0/Gatot

cc result obtained in Feynman-gauge, compared to MadGraph (lightcone-gauge-> OK)
	  amp2=amp2*(k1k2*(Pk3-kn_masses(realind)**2)/Pk3**2+
     .             k1k3/k2k3-(Pk1*k2k3-k1k3*Pk2+
     .             k1k2*(k2k3-2*Pk2-Pk3))/(Pk3*k2k3))
	endif
	end