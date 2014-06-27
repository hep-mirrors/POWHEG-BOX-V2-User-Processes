cc Subroutine to assign PDG-numbers to SUSY-Particles

	function assignPDG(particle)
	implicit none
	character*10 particle
	integer assignPDG
ccc   convention is uL,uR,dL,dR and so on for squarks
ccc                 uLbar,uRbar,dLbar and so on for antisquarks
	if(particle.eq.'uL') then
		assignPDG = 1000002
	else if(particle.eq.'uR') then
		assignPDG = 2000002
	else if(particle.eq.'dL') then
		assignPDG = 1000001
	else if(particle.eq.'dR') then
		assignPDG = 2000001
	else if(particle.eq.'cL') then
		assignPDG = 1000004
	else if(particle.eq.'cR') then
		assignPDG = 2000004
	else if(particle.eq.'sL') then
		assignPDG = 1000003
	else if(particle.eq.'sR') then
		assignPDG = 2000003
	else if(particle.eq.'bL') then
		assignPDG = 1000005
	else if(particle.eq.'bR') then
		assignPDG = 2000005
	else if(particle.eq.'tL') then
		assignPDG = 1000006
	else if(particle.eq.'tR') then
		assignPDG = 2000006
	else if(particle.eq.'uLbar') then
		assignPDG = -1000002
	else if(particle.eq.'uRbar') then
		assignPDG = -2000002
	else if(particle.eq.'dLbar') then
		assignPDG = -1000001
	else if(particle.eq.'dRbar') then
		assignPDG = -2000001
	else if(particle.eq.'cLbar') then
		assignPDG = -1000004
	else if(particle.eq.'cRbar') then
		assignPDG = -2000004
	else if(particle.eq.'sLbar') then
		assignPDG = -1000003
	else if(particle.eq.'sRbar') then
		assignPDG = -2000003
	else if(particle.eq.'bLbar') then
		assignPDG = -1000005
	else if(particle.eq.'bRbar') then
		assignPDG = -2000005
	else if(particle.eq.'tLbar') then
		assignPDG = -1000006
	else if(particle.eq.'tRbar') then
		assignPDG = -2000006
cccccccccccccccccccccc
	else if(particle.eq.'u') then
		assignPDG = 2
	else if(particle.eq.'d') then
		assignPDG = 1
	else if(particle.eq.'c') then
		assignPDG = 4
	else if(particle.eq.'s') then
		assignPDG = 3
	else if(particle.eq.'b') then
		assignPDG = 5
	else if(particle.eq.'t') then
		assignPDG = 6
	else if(particle.eq.'ubar') then
		assignPDG = -2
	else if(particle.eq.'dbar') then
		assignPDG = -1
	else if(particle.eq.'cbar') then
		assignPDG = -4
	else if(particle.eq.'sbar') then
		assignPDG = -3
	else if(particle.eq.'bbar') then
		assignPDG = -5
	else if(particle.eq.'tbar') then
		assignPDG = -6
cccccccccccccccccccccccccccccccccccccccccccc
	else if (particle.eq.'go') then
		assignPDG=1000021
	else if (particle.eq.'chi10') then
		assignPDG = 1000022
	else if (particle.eq.'chi20') then
		assignPDG = 1000023
	else if (particle.eq.'chi30') then
		assignPDG = 1000025
	else if (particle.eq.'chi40') then
		assignPDG = 1000035
cccccccccccccccccccccccccccccccccccccccccc
	else if (particle.eq.'chi1+') then
		assignPDG = 1000024
	else if (particle.eq.'chi1-') then
		assignPDG = -1000024
	else if (particle.eq.'chi2+') then
		assignPDG = 1000037
	else if (particle.eq.'chi2-') then
		assignPDG = -1000037
cccccccccccccccccccccccccccccccccccccccccccc
	else if (particle.eq.'H+') then
		assignPDG = 37
	else if (particle.eq.'H-') then
		assignPDG = -37
	else if (particle.eq.'h0') then
		assignPDG = 25
	else if (particle.eq.'H0') then
		assignPDG = 35
	else if (particle.eq.'A0') then
		assignPDG = 36
cccccccccccccccccccccccccccccccccccccccccccccccc
	else if (particle.eq.'W+') then
		assignPDG = 24
	else if (particle.eq.'W-') then
		assignPDG = -24
	else if (particle.eq.'Z0') then
		assignPDG = 23
cccccccccccccccccccccccccccccccccccccccccccccccccc
	else if (particle.eq.'e-') then
		assignPDG=11
	else if (particle.eq.'e+') then
		assignPDG=-11
	else if (particle.eq.'mu-') then
		assignPDG=13
	else if (particle.eq.'mu+') then
		assignPDG=-13
	else if (particle.eq.'tau-') then
		assignPDG=15
	else if (particle.eq.'tau+') then
		assignPDG=-15
	else if (particle.eq.'nue') then
		assignPDG=12
	else if (particle.eq.'numu') then
		assignPDG=14
	else if (particle.eq.'nutau') then
		assignPDG=16
	else if (particle.eq.'nuebar') then
		assignPDG=-12
	else if (particle.eq.'numubar') then
		assignPDG=-14
	else if (particle.eq.'nutaubar') then
		assignPDG=-16
cccccccccccccccccccccccccccccccccccccccccccccccccc
	else if (particle.eq.'eL') then
		assignPDG=1000011
	else if (particle.eq.'eL-') then
		assignPDG=1000011
	else if (particle.eq.'eL+') then
		assignPDG=-1000011
	else if (particle.eq.'muL') then
		assignPDG=1000013
	else if (particle.eq.'muL-') then
		assignPDG=1000013
	else if (particle.eq.'muL+') then
		assignPDG=-1000013
	else if (particle.eq.'tau1-') then
		assignPDG=1000015
	else if (particle.eq.'tau1') then
		assignPDG=1000015
	else if (particle.eq.'tau1+') then
		assignPDG=-1000015
	else if (particle.eq.'eR') then
		assignPDG=2000011
	else if (particle.eq.'eR-') then
		assignPDG=2000011
	else if (particle.eq.'eR+') then
		assignPDG=-2000011
	else if (particle.eq.'muR') then
		assignPDG=2000013
	else if (particle.eq.'muR-') then
		assignPDG=2000013
	else if (particle.eq.'muR+') then
		assignPDG=-2000013
	else if (particle.eq.'tau2-') then
		assignPDG=2000015
	else if (particle.eq.'tau2') then
		assignPDG=2000015
	else if (particle.eq.'tau2+') then
		assignPDG=-2000015
	else if (particle.eq.'nueL') then
		assignPDG=1000012
	else if (particle.eq.'numuL') then
		assignPDG=1000014
	else if (particle.eq.'nutauL') then
		assignPDG=1000016
	else if (particle.eq.'nueR') then
		assignPDG=2000012
	else if (particle.eq.'numuR') then
		assignPDG=2000014
	else if (particle.eq.'nutauR') then
		assignPDG=2000016
	else if (particle.eq.'nueLbar') then
		assignPDG=-1000012
	else if (particle.eq.'numuLbar') then
		assignPDG=-1000014
	else if (particle.eq.'nutauLbar') then
		assignPDG=-1000016
	else if (particle.eq.'nueRbar') then
		assignPDG=-2000012
	else if (particle.eq.'numuRbar') then
		assignPDG=-2000014
	else if (particle.eq.'nutauRbar') then
		assignPDG=-2000016
	else
         write(*,*) 'You have to enter a valid particle-name in'
         write(*,*) ' powheg.input. STOP!'
	 write(*,*) 'entered value is ',particle
	   call exit(-1)
	endif

	end
		

cc function to assign particle-name from PDG
	function PDG2name(PDG)
	implicit none
	character*20 PDG2name,tempname
	integer PDG
ccc   convention is uL,uR,dL,dR and so on for squarks
ccc                 uLbar,uRbar,dLbar and so on for antisquarks
	if(PDG.eq.1000002) then
		tempname = 'uL'
	else if(PDG.eq.2000002) then
		tempname = 'uR'
	else if(PDG.eq.1000001) then
		tempname = 'dL'
	else if(PDG.eq.2000001) then
		tempname = 'dR'
	else if(PDG.eq.1000004) then
		tempname = 'cL'
	else if(PDG.eq. 2000004) then
		tempname ='cR'
	else if(PDG.eq.1000003) then
		tempname = 'sL'
	else if(PDG.eq.2000003) then
		tempname = 'sR'
	else if(PDG.eq.1000005) then
		tempname = 'bL'
	else if(PDG.eq.2000005) then
		tempname = 'bR'
	else if(PDG.eq.1000006) then
		tempname = 'tL'
	else if(PDG.eq.2000006) then
		tempname = 'tR'
	else if(PDG.eq.-1000002) then
		tempname = 'uLbar'
	else if(PDG.eq.-2000002) then
		tempname = 'uRbar'
	else if(PDG.eq.-1000001) then
		tempname = 'dLbar'
	else if(PDG.eq.-2000001) then
		tempname = 'dRbar'
	else if(PDG.eq.-1000004) then
		tempname = 'cLbar'
	else if(PDG.eq.-2000004) then
		tempname = 'cRbar'
	else if(PDG.eq.-1000003) then
		tempname = 'sLbar'
	else if(PDG.eq.-2000003) then
		tempname = 'sRbar'
	else if(PDG.eq.-1000005) then
		tempname = 'bLbar'
	else if(PDG.eq.-2000005) then
		tempname = 'bRbar'
	else if(PDG.eq.1000006) then
		tempname = 'tLbar'
	else if(PDG.eq.-2000006) then
		tempname = 'tRbar'
	else if(PDG.eq.2) then
		tempname = 'u'
	else if(PDG.eq.1) then
		tempname = 'd'
	else if(PDG.eq.4) then
		tempname = 'c'
	else if(PDG.eq.3) then
		tempname = 's'
	else if(PDG.eq.6) then
		tempname = 't'
	else if(PDG.eq. 5) then
		tempname ='b'
	else if(PDG.eq.-2) then
		tempname = 'ubar'
	else if(PDG.eq.-1) then
		tempname = 'dbar'
	else if(PDG.eq.-4) then
		tempname = 'cbar'
	else if(PDG.eq.-3) then
		tempname = 'sbar'
	else if(PDG.eq.-6) then
		tempname = 'tbar'
	else if(PDG.eq. -5) then
		tempname ='bbar'
	else if(PDG.eq.21.or.PDG.eq.0) then !0 corresponds to POWHEG-naming
		tempname='g'
	else
         write(*,*) 'You have to enter a valid particle-name in'
         write(*,*) ' powheg.input. STOP!'
	   call exit(-1)
	endif
	PDG2name=trim(tempname)
	end
	
