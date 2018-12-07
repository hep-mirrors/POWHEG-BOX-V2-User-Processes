c############### PhysPars.h ############################################
c last modified by Julien Baglio, 27.03.2015

c formcalc model definitions
#include "model_sm.h"
c madgraph definitions
#include "coupl.inc"

c common definitions
	double precision  par_alpha,par_CKM(3,3)
	double precision  par_Zmass,par_Wmass,par_Hmass
	double precision  par_Zwidth,par_Wwidth,par_Hwidth
	double precision  par_Zmass2,par_Wmass2, par_Hmass2
	double precision  par_HmHw,par_Hmass2low,par_Hmass2high
        
        common/par_common/ 
     &        par_alpha,                       ! fine structure constant
     &        par_Zmass,par_Zwidth,            ! mass and width of Z boson
     &        par_Wmass,par_Wwidth,            ! mass and width of W boson
     &        par_Zmass2,par_Wmass2,           ! squared masses
     &        par_Hmass, par_Hmass2,           ! mass and mass squared of H boson
     &        par_Hwidth,                      ! width of H boson
     &	      par_HmHw,par_Hmass2low,          ! parameters for the Born
     &	      par_Hmass2high,		       ! phase space
     &	      par_CKM		               ! CKM matrix elements

c############### end PhysPars.h ########################################
