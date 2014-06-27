c -*- fortran -*-
c  declare the occurring parameters used in subsequent calculations
c  chi0 and chi+ have no "ordered" PDG-codes-> use intern 1:4 and 1:2, respectively
c  par_wglu_res is the (non-physical) width for the gluino used in the 
c  calculation of on-shell intermediate gluinos
c par_radcut is the cut used in the generation of radiation to avoid the region
c close to m_go in the invariant mass of squark/antiquark

c par_decchan1,2: the decay-channels for the squarks
c par_NLOwhich: select contributions where NLO corrections shall be added: either prod. or decay or both
c par_NWAapproach : select approach how to determine the denomintaor..
c par_wsqNLO: the NLO contributions (assume that LO are in par_wsq(..)

	real*8 par_mt,par_mb,par_mglu,par_wglu,par_msq(6,2),par_wsq(6,2),par_wsqNLO(6,2),
     &       par_stopmix(2,2),par_msl(11:16,2),par_mchi0(1:4),par_mchic(1:2),
     &       par_msqmin,par_wglu_res,par_radcut
	integer par_decchan1,par_decchan2,par_NLOwhich,par_NWAapproach
		      
	common/PhysPars/par_mt,par_mb,par_mglu,par_wglu,par_msq,par_wsq,par_wsqNLO,
     &                par_stopmix,par_msl,par_mchi0,par_mchic,par_msqmin,
     &                par_wglu_res,par_radcut,par_decchan1,
     &                par_decchan2,par_NLOwhich,par_NWAapproach
	
	save/PhysPars/

c   if a generic phase-space with tan-mapping is used for the reals: the following
c   parameter decides if the resonant propagators are absorbed into the jacobian or not
	logical tan_map_abs
cc	parameter(tan_map_abs=.true.) !assign in init_coup
	common/tanmapping/tan_map_abs
	
c   parameters (total widths and Branching-ratios) used in the decays of SUSY-particles:
c par_GL/R: the coupling-constants for sq->q chi0 decays for down (1) and up(2) type squarks
c par_alphaem: for the sq->q chi0 decays: the em coupling
c par_cw: cos(theta_W)
c par_chi0mix: the neutralino-mixing-matrix
c par_chipmUmix: the chargino-U-mixing-matirx (same for Vmix)
c par_GF: G_Fermi

	integer par_maxchannels,par_maxpart !V1-> correct..
	parameter(par_maxchannels = 120) !maximal number of channels in spec. SUSY-DECAY
	parameter(par_maxpart = 12) !maximal number of FS-particles in a decay-chain
	real*8 par_Gatot(1:37,1:2),par_BR(1:37,1:2,1:par_maxchannels,1:3),par_totxscorr
	logical par_dodec(1:37,1:2,1:par_maxchannels),par_dodecay!,par_readbr
	
	real*8 par_GL(2),par_GR(2),par_alphaem,par_GF,par_cw,par_chi0mix(4,4),par_chipmUmix(2,2),par_chipmVmix(2,2)
	
	common/Decays/par_GL,par_GR,par_alphaem,par_GF,par_cw,par_chi0mix,par_chipmUmix,
     &              par_chipmVmix,par_dodec,par_Gatot,par_BR,par_totxscorr,par_dodecay!,par_readbr
	
	save/Decays/

