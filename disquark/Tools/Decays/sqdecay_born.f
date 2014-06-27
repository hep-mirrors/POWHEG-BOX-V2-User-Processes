ccc function to calculate the BORN-contribution for the sq-decays
ccc so far implemented: sq->q chi_0_1 (== deccahn=1)
ccc takes complete flavour-structure, the index in the 
ccc born-flst, an index for the decay-channel and the momenta 
ccc for all particles
ccc bornjk: only one parton in FS-> only one entry!
	subroutine sqdec_born(bflav,bornind,decchan,p,born,bornjk)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'PhysPars.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h' 
	integer bornind,decchan,bflav(1:nlegborn)
	integer i
	integer ind1,ind2,chir,fla
	real*8 dotp,coup,born,bornjk
	real*8 p(0:3,1:nlegborn)
	real*8 Gatot
	ind1=0
	ind2=0

      chir=abs(bflav(bornind))/pdgfac
      fla=abs(bflav(bornind))-chir*pdgfac

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

ccc find indices of decay-particles 
ccc flst_cur_iborn: the current index of the born-sturctures
	  do i=bornind+1,nlegborn
          if(flst_bornres(i,flst_cur_iborn).eq.bornind) then
	      if(ind1.eq.0) then
               ind1=i
	      else if(ind2.eq.0) then
	         ind2=i
		else
		  write(*,*) 'Error in sqdec_born: for sq->q chi0 found'
	        write(*,*) 'more than 2 FS particles from sq-decay'
	        write(*,*) 'flst_resbonr=',flst_bornres(1:nlegborn,flst_cur_iborn)
	        write(*,*) 'check init_processes!'
	        call exit(-1)
	      endif
          endif
	  enddo

	  born=8d0*Pi*par_alphaem*coup*
     .            dotp(p(0:3,ind1),p(0:3,ind2))/Gatot

	  bornjk=4d0/3d0*born !sign according to POWHEG-convention
	endif
	end