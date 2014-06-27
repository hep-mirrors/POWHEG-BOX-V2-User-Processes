c subroutine to get the parameters for the masses, couplings,... by means of a SLHA2-file
      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'pwhg_rad.h'
	include 'pwhg_flst.h' !only needed for the check of the masses in partial-sumup-mode
	include 'pwhg_math.h'
 	include 'coupl.inc' !contains the MG-couplings
 	include 'sm_read_values.inc' !contains the alfas-value used in the spectrum-calc
      logical readlha,invalidsumup
      real*8 powheginput
      external powheginput
	integer partsumup,avgsqmass,nextfla
	integer i,j,PDG1,PDG2,chir1,chir2,fla1,fla2,tempflst
	real*8 sqmass,tempm1,tempm2
	character*100 filename

! if we perform a partial sumup
	partsumup=powheginput("#partialsumup")
cc if we sumup all squarks: have option to read in some masses or use an exisiting SLHA-file 
	if(flst_sumup.eq.1) then
	  avgsqmass=powheginput("#avgslhamass")
	else
	  avgsqmass=0
	endif

cc the number of Flavours produced (different flags fro sqsq and sqantisq!!)
! 	if(flst_born(1,1)*flst_born(2,1).gt.0) then !only qq-IS (or qbar qbar)
! 	  nextfla=powheginput("nextfla")
	  nextfla=4
! 	else !either gg or qqbar
! 	  nextfla=powheginput("nextflaFS")
! 	endif

	if(flst_sumup.eq.1.and.avgsqmass.le.0.and.flg_decay) then
	  write(*,*) 'Trying to run in sumup-mode with decays'
	  write(*,*) 'without reading in a SLHA-file'
	  write(*,*) 'Could not determine the widths for the squarks, stop!'
	  call exit(-1)
	endif
	
!set all parameter-arrays to 0:
	do i=1,6
	   par_msq(i,1)=0D0
	   par_msq(i,2)=0D0
	enddo
	do i=11,16
	   par_msl(11:16,1)=0d0
	   par_msl(11:16,2)=0d0
	enddo
	do i=1,4
	   par_mchi0(i)=0d0
	   do j=1,4
	     par_chi0mix(i,j)=0d0
	   enddo
	enddo
	par_mchic(1)=0d0
	par_mchic(2)=0d0

!need no slha-file if we sum up all squark-channels
	if (flst_sumup.ne.1.or.flg_decay.or.avgsqmass.eq.1) call powheginputstring("SLHA",filename)

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     get PDG-codes of particles, only if no sumup performed...
	if(flst_sumup.ne.1.and.partsumup.ne.1) then
	    PDG1=abs(flst_born(3,1))
	    PDG2=abs(flst_born(4,1))
	    readlha=.true.
	else if(flg_decay.or.avgsqmass.eq.1.or.partsumup.eq.1) then
	  readlha=.true.
ccc if we sumup all channels wo decays: no need to read SLHA-file
	else !if we consider really only summed-up squark-production wo decay...
        readlha=.false.    !no readin of slha-file necessary
	endif                !if we sum up all squark-channels as in prospino:

c use the standard-tools provided by MG4 to initialize couplings for HELAS:
	call setpara(trim(filename),readlha)
	
	if(readlha) then !check this only if we really have an slha-file...
	  par_mt=tmass !use the top-mass from the SLHA-file!! 
	  par_alphaem=alpha !the ew coupling constant for the decays 
	  par_GF=gfermi
c the neutralino-mixing-matrix is read direclty in read_slha.f
ccc use 10.11 from PDG for sw^2 (similar to SDECAY)
	  par_cw=dsqrt(dsqrt(0.25d0-pi*par_alphaem/dsqrt(2d0)/par_GF/zmass**2)+0.5d0)
	  par_mb=0d0 

	  par_mglu= mgo
 	  par_wglu= wgo
	endif

	flg_keepdir=powheginput("#keepdir")
	if(flg_keepdir.ne.2.and.flg_keepdir.ne.3) then
	  flg_keepdir=2 !default-value
	endif

	par_wglu_res=powheginput("widthgluino")

c the cutoff used in the generation of radiation to avoit negative R-R_subtra-values
	par_radcut=powheginput("radcut")

c     d~
      par_msq(1,1)=mdl!mass
	par_msq(1,2)=mdr
      par_wsq(1,1)=wdl!witdh, these have to be neglected in the MG-
	par_wsq(1,2)=wdr! routines anyway, but assign the sign-tags for later use in other processes...
c     u~
      par_msq(2,1)=mul
	par_msq(2,2)=mur
      par_wsq(2,1)=wul
	par_wsq(2,2)=wur
c     s~
      par_msq(3,1)=msl
	par_msq(3,2)=msr
      par_wsq(3,1)=wsl
	par_wsq(3,2)=wsr
c     c~
      par_msq(4,1)=mcl
	par_msq(4,2)=mcr
      par_wsq(4,1)=wcl
	par_wsq(4,2)=wcr
c     b~
      par_msq(5,1)=mb1
	par_msq(5,2)=mb2
      par_wsq(5,1)=wb1
	par_wsq(5,2)=wb2
c     t~
      par_msq(6,1)=mt1
	par_msq(6,2)=mt2
      par_wsq(6,1)=wt1
	par_wsq(6,2)=wt2

ccc find the minial squark-mass (only of the first 2 generations)
	par_msqmin=1d20
	do i=1,4
	  if (par_msq(i,1).lt.par_msqmin) par_msqmin=par_msq(i,1)
	  if (par_msq(i,2).lt.par_msqmin) par_msqmin=par_msq(i,2)
	enddo

cccc additional susy-particles: sleptons:
	par_msl(11,1)=mel
	par_msl(11,2)=mer
	par_msl(12,1)=mve
	par_msl(13,1)=mml
	par_msl(13,2)=mmr
	par_msl(14,1)=mvm
	par_msl(15,1)=ml1
	par_msl(15,2)=ml2
	par_msl(16,1)=mvt

c neutralinos:
	par_mchi0(1)=mn1
	par_mchi0(2)=mn2
	par_mchi0(3)=mn3
	par_mchi0(4)=mn4

c charginos:
	par_mchic(1)=mx1
	par_mchic(2)=mx2

c the stop-mixing-matrix
	do i=1,2
	  do j=1,2
	    par_stopmix(i,j) = stopmix(i,j)
	  enddo
	enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c for the comparison with Prospino: override the above values: all squarks
c have the same mass (even stops...), take top- and go-mass from powheg.input
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
	if(flst_sumup.eq.1) then
	   if(avgsqmass.le.0) then
	     sqmass=powheginput("msquark")
	     par_mglu=powheginput("mgluino")
	     par_mt=powheginput("mtop")
	   else
ccc form average of sq-masses of the relevant squarks (nextflaFS!!!), overwrite all sq-masses
		sqmass=(Sum(par_msq(1:nextfla,1))+Sum(par_msq(1:nextfla,2)))/nextfla/2d0
	   endif

	   do i=1,6
	     do j=1,2
		 par_msq(i,j)=sqmass
	     enddo
	   enddo
	   par_msqmin=sqmass

	   par_stopmix(1,1)=1d0 !set stop-mixing-matrix to diagonal matrix
	   par_stopmix(1,2)=0d0 !all other mixing-matrices in the virtual-rout
	   par_stopmix(2,1)=0d0 !are diagonal per default
	   par_stopmix(2,2)=1d0
	   write(*,*) '**********************************************'
	   write(*,*) 'Warning: running Powheg in the sumup-mode:'
	   write(*,*) ' all channels will be summed up, using a degenerate'
	   write(*,*) 'squark-mass ',sqmass,', a go-mass',par_mglu,' and a top-mass',par_mt
	   write(*,*) '**********************************************'
	   if(avgsqmass.eq.1.and.flg_decay.and.powheginput('#CalcGatot').ne.1) then
	     write(*,*) '**********************************************'
	     write(*,*) 'Warning: you read-in mass-values from a SLHA-file'
	     write(*,*) 'and sum-up all channels with an average sq-mass while'
	     write(*,*) 'performing decay-> you MUST make sure that the'
	     write(*,*) 'Total widths in the SLHA-FILE are correctly calculated'
	     write(*,*) '**********************************************'
	     if(par_wsq(1,1).ne.par_wsq(3,1).or.par_wsq(1,2).ne.par_wsq(3,2).or.
     1        par_wsq(2,1).ne.par_wsq(4,1).or.par_wsq(2,2).ne.par_wsq(4,2)) then
	      write(*,*) 'This is not the case for the first 4 generations:'
	      write(*,*) par_wsq(1:4,1:2)
	      call exit(-1)
	   endif
	  endif
	endif

	if(flg_decay) then
         write(*,*) '**********************************************'
	   if(par_decchan1.eq.1.or.par_decchan2.eq.1) then
	      write(*,*) 'ew parameters for the decay sq->q chi0:'	
	      write(*,*) 'm_chi0_1:',par_mchi0(1)
	      write(*,*) 'alpha_em:',par_alphaem
	      write(*,*) 'sw^2:',1d0-par_cw**2
	      write(*,*) 'Z_11:',par_chi0mix(1,1),'Z_12:',par_chi0mix(1,2)
	   endif
	   write(*,*) '**********************************************'
	endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccc  Set the masses of the FS-Squarks
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
	chir1=PDG1/pdgfac
	chir2=PDG2/pdgfac
	fla1=mod(PDG1,pdgfac)
	fla2=mod(PDG2,pdgfac)

cc set kn_masses, use simply the first flst (all should involve the same masses)
	do i=1,nlegborn
	  call getmass(flst_born(i,1), kn_masses(i))
	enddo
	kn_masses(nlegreal)=0d0
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc if we sumup several channels (but not a completely degenerate spectrum):
cc check here if the considered channels have the same FS-masses
	if(powheginput("#partialsumup").eq.1) then
	  invalidsumup=.false.
	  do i=1,flst_nborn
	    PDG1=abs(flst_born(3,i))
	    PDG2=abs(flst_born(4,i))
	    chir1=PDG1/pdgfac
	    chir2=PDG2/pdgfac
	    fla1=mod(PDG1,pdgfac)
	    fla2=mod(PDG2,pdgfac)
	    tempm1=par_msq(fla1,chir1)
	    tempm2=par_msq(fla2,chir2)

	    if(.not.(tempm1.eq.kn_masses(3).and.tempm2.eq.kn_masses(4))) then
	      if(.not.(tempm1.eq.kn_masses(4).and.tempm2.eq.kn_masses(3))) then
		 write(*,*) 'The specified channels in the partial-sumup-mode'
		 write(*,*) 'contain an invalid flst_born: masses are different!'
		 write(*,*) 'masses of first (reference) flst:'
		 write(*,*) 'PDG1,PDG2:',flst_born(3:4,1),', masses:',kn_masses(3:4)
		 write(*,*) 'masses of current pair:'
		 write(*,*) 'PDG1,PDG2:',PDG1,PDG2,', masses:',tempm1,tempm2
		 invalidsumup=.true.
	     else
		 tempflst=flst_born(3,i)
		 flst_born(3,i)=flst_born(4,i)
		 flst_born(4,i)=tempflst
	     endif
	    endif
	  enddo

ccc Same for the real contributions
	  do i=1,flst_nreal
	    PDG1=abs(flst_real(3,i))
	    PDG2=abs(flst_real(4,i))
	    chir1=PDG1/pdgfac
	    chir2=PDG2/pdgfac
	    fla1=mod(PDG1,pdgfac)
	    fla2=mod(PDG2,pdgfac)
	    tempm1=par_msq(fla1,chir1)
	    tempm2=par_msq(fla2,chir2)

	    if(.not.(tempm1.eq.kn_masses(3).and.tempm2.eq.kn_masses(4))) then
	      if(.not.(tempm1.eq.kn_masses(4).and.tempm2.eq.kn_masses(3))) then
		 write(*,*) 'The specified channels in the partial-sumup-mode'
		 write(*,*) 'contain an invalid flst_real: masses are different!'
		 write(*,*) 'masses of first (reference) flst:'
		 write(*,*) 'PDG1,PDG2:',flst_real(3:4,1),', masses:',kn_masses(3:4)
		 write(*,*) 'masses of current pair:'
		 write(*,*) 'PDG1,PDG2:',PDG1,PDG2,', masses:',tempm1,tempm2
		 invalidsumup=.true.
	     else
		 tempflst=flst_real(3,i)
		 flst_real(3,i)=flst_real(4,i)
		 flst_real(4,i)=tempflst
	     endif
	    endif
	  enddo
	  if(invalidsumup) then
	    write(*,*) 'Fix the specified channels in the input-file and try again...'
	    call exit(-1)
	  endif
	endif

      kn_minmass= kn_masses(3)+kn_masses(4)

cc if desired: calculate the sq-widths explicitly at NLO
	if(powheginput('#CalcGatot').eq.1.and.flg_decay) then !.and.(.not.par_readBR)) then
        if(powheginput('#fixedscale').eq.1) then
	    write(*,*) '######################################'
	    write(*,*) '# Calculating squark-widths at NLO   #'
	    write(*,*) '######################################'
	    call setscalesbtilde
	   else
	    write(*,*) '##################################################'
	    write(*,*) '# Calculating squark-widths at NLO               #'
	    write(*,*) '# for running scale: use muR=msq in the width    #'
	    write(*,*) '##################################################'
	   endif
	    call CalcGammatot
	endif

	if(flg_decay) then
	    write(*,*) 'Gamma_uL',par_wsq(2,1)
	    write(*,*) 'Gamma_uR',par_wsq(2,2)
	    write(*,*) 'Gamma_dL',par_wsq(1,1)
	    write(*,*) 'Gamma_dR',par_wsq(1,2)
	    write(*,*) 'Gamma_cL',par_wsq(4,1)
	    write(*,*) 'Gamma_cR',par_wsq(4,2)
	    write(*,*) 'Gamma_sL',par_wsq(3,1)
	    write(*,*) 'Gamma_sR',par_wsq(3,2)
	endif

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc calculate couplings for the decays:
cc 1.) for sq-> q chi0
	if(flg_decay) then
	  par_GL(1)=-dsqrt(2d0)*(-0.5d0/dsqrt(1d0-par_cw**2)*par_chi0mix(1,2)+
     .                       1d0/6d0/par_cw*par_chi0mix(1,1)) !for DOWN-Type squarks_L
	  par_GL(2)=-dsqrt(2d0)*(0.5d0/dsqrt(1d0-par_cw**2)*par_chi0mix(1,2)+
     .                       1d0/6d0/par_cw*par_chi0mix(1,1)) !for UP-Type squarks_L
	  par_GR(1)=-dsqrt(2d0)*1d0/3d0*par_chi0mix(1,1)/par_cw   !for DOWN-Type squarksR
	  par_GR(2)=dsqrt(2d0)*2d0/3d0*par_chi0mix(1,1)/par_cw    !for UP-Type squarks_R

ccc redundancy-check:
	  if((par_wsq(fla1,chir1).eq.0d0.or.par_wsq(fla2,chir2).eq.0d0)
     &       .and.powheginput('#fixedscale').eq.1) then
	       write(*,*) '##################################################'
	       write(*,*) '# Trying to perform decays, but no width given   #'
	       write(*,*) '##################################################'
	       call exit(-1)
	  endif
	endif
cc if flg_split is set, but we need not to subtract anything: simply reset it to 0 again!!
cc only for sq-(anti)squar, otherwise: change!!!
	if(flg_split.ne.0) then
	  if(kn_masses(3).gt.par_mglu.and.kn_masses(4).gt.par_mglu) then
	    write(*,*) '##############################################'
	    write(*,*) 'Flg_split is set to !=0, although we do not need'
	    write(*,*) 'to subtract anything -> simply set it to 0 again!'
	    write(*,*) '##############################################'
	    flg_split=0
	    flst_nregularsplit=0 !  in principle this is not necessary, but ok...
	  else
          if(.not.flg_withnegweights) then
	      write(*,*) '##############################################'
	      write(*,*) 'Flg_split is set to !=0, but neg. weights are '
	      write(*,*) 'swithced off-> not sensible, set withnegweights=1'
	      write(*,*) '##############################################'
		flg_withnegweights=.true.
	    endif
	  endif
	endif
cc  turn off subtraction if not needed (for sqsq and sqantisq-cases!)
	if(flg_submethod.ne.0) then
	  if(kn_masses(3).gt.par_mglu.and.kn_masses(4).gt.par_mglu) then
	    write(*,*) '##############################################'
	    write(*,*) 'Flg_submethod is set to !=0, although we do not need'
	    write(*,*) 'to subtract anything -> simply set it to 0!'
	    write(*,*) '##############################################'
	    flg_submethod=0
	  endif
	endif
	end