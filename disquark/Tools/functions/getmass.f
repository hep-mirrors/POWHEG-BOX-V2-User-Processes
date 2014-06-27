cccccccccccccccccccccccccccccc
c return mass of certain particle
	subroutine getmass(PDG,mass)
	implicit none
	include 'pwhg_math.h'
	include 'PhysPars.h'
	real*8 mass
	integer PDG

	if(abs(PDG).le.5.or.PDG.eq.21) then !quarks
	   mass=0d0
	   return
	endif
ccc sparticles
	if(abs(PDG).ge.pdgfac) then
	  if(mod(PDG,pdgfac).ge.22) then
	    select case (PDG)
	      case (1000022)
		  mass=par_mchi0(1)
	      case (1000023)
		  mass=par_mchi0(2)
	      case (1000025)
		  mass=par_mchi0(3)
	      case (1000035)
		  mass=par_mchi0(4)
	      case (1000024)
		  mass=par_mchic(1)
	      case (1000037)
		  mass=par_mchic(2)
	      case default
		  print*,'A weird particle occured in calculation:',PDG
		  call exit(-1)
	    end select
	  elseif(mod(abs(PDG),pdgfac).le.6) then
	    mass= par_msq(mod(abs(PDG),pdgfac),abs(PDG)/pdgfac)
	  elseif(mod(PDG,pdgfac).le.16) then
	    mass= par_msl(mod(PDG,pdgfac),PDG/pdgfac)
	  elseif(PDG.eq.1000021) then
	    mass=par_mglu
        endif
	endif
	end
