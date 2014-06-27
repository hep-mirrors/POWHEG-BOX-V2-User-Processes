c -*- Fortran -*-

c rad_ubornidx: current index of underlying born
c rad_alr_list: list of alr's that share the current underlying born
c rad_alr_nlist: length of the above list
c rad_realidx: index in rad_alr_list of current alr
c rad_realalr: current alr
c rad_realreg: index of regular contribution in the array flst_regular
c CH: added 1 more for split contribution (not necessary to sep. res in 35 and 45)
      integer rad_ubornidx,rad_alr_list(maxalr),rad_alr_nlist,
     #     rad_realidx,rad_realalr,rad_realreg
      integer rad_realsplit
c rad_kinreg: index in current kinematic region
c rad_nkinreg: number of kinematic regions
c     kinematic regions are numbered as:
c     1: initial state region
c     2 ... rad_nkinreg: final state regions with increasing
c                        emitter
c     rad_kinreg_on(rad_nkinreg): logical, entry j is true if there is a region
c     with rad_kinreg=j associated with current underlying born.
      integer rad_kinreg,rad_nkinreg
      logical rad_kinreg_on(nlegborn-1)
c rad_ncsiynormsmx: maximum number of csi-y subdivision when computing
c                   the upper bounds
c rad_ncsinorms,rad_nynorms: effective number of csi and y subdivisions
      integer rad_ncsiynormsmx
      parameter (rad_ncsiynormsmx=100)
      integer rad_ncsinorms,rad_nynorms
c 1 for Btilde event, 2 for remnant, 3 for regular
      integer rad_type
c Signed total, absolute value total, positive total and negative total
c obtained in the integration of btilde
      real * 8
     1     rad_totbtl,rad_etotbtl,
     2     rad_totabsbtl,rad_etotabsbtl,
     3     rad_totposbtl,rad_etotposbtl,
     4     rad_totnegbtl,rad_etotnegbtl,
c     5     rad_totrm,rad_etotrm,
     6     rad_totbtlgen,rad_etotbtlgen,
     7     rad_totgen,rad_etotgen,
     8     rad_tot,rad_etot,
c CH: added the following variables for regular, remnant and "split"-results
c     meaning is the same as for btilde
     1     rad_totreg,rad_etotreg,
     2     rad_totabsreg,rad_etotabsreg,
     3     rad_totposreg,rad_etotposreg,
     4     rad_totnegreg,rad_etotnegreg,
     5     rad_totrem,rad_etotrem,
     6     rad_totabsrem,rad_etotabsrem,
     7     rad_totposrem,rad_etotposrem,
     8     rad_totnegrem,rad_etotnegrem,
     9     rad_totsplit35,rad_etotsplit35,
     1     rad_totabssplit35,rad_etotabssplit35,
     2     rad_totpossplit35,rad_etotpossplit35,
     3     rad_totnegsplit35,rad_etotnegsplit35,!keep the two res. phase-spaces
     9     rad_totsplit45,rad_etotsplit45,      !separate!!!
     1     rad_totabssplit45,rad_etotabssplit45,
     2     rad_totpossplit45,rad_etotpossplit45,
     3     rad_totnegsplit45,rad_etotnegsplit45,
c CH: similar to btlgen, the following variables are set either to totabs... (if
c     neg. weights are kept) or to totreg.... 
     4     rad_totreggen,rad_etotreggen,
     5     rad_totremgen,rad_etotremgen,
     6     rad_totsplitgen35,rad_etotsplitgen35, !keep the two res. phase-spaces
     6     rad_totsplitgen45,rad_etotsplitgen45  !separate!!!
c CH: added the following equivalence-statement to save some space:
      real*8 rad_totarr(2,27)
      equivalence
     1 (rad_totbtl,  rad_totarr(1,1)),
     e (rad_etotbtl,  rad_totarr(2,1)),
     2 (rad_totabsbtl,  rad_totarr(1,2)),
     e (rad_etotabsbtl,  rad_totarr(2,2)),
     3 (rad_totposbtl,  rad_totarr(1,3)),
     e (rad_etotposbtl,  rad_totarr(2,3)),
     4 (rad_totnegbtl,  rad_totarr(1,4)),
     e (rad_etotnegbtl,  rad_totarr(2,4)),
     5 (rad_totreg,  rad_totarr(1,5)),
     e (rad_etotreg,  rad_totarr(2,5)),
     6 (rad_totabsreg,  rad_totarr(1,6)),
     e (rad_etotabsreg,  rad_totarr(2,6)),
     7 (rad_totposreg,  rad_totarr(1,7)),
     e (rad_etotposreg,  rad_totarr(2,7)),
     8 (rad_totnegreg,  rad_totarr(1,8)),
     e (rad_etotnegreg,  rad_totarr(2,8)),
     9 (rad_totrem,  rad_totarr(1,9)),
     e (rad_etotrem,  rad_totarr(2,9)),
     1 (rad_totabsrem,  rad_totarr(1,10)),
     e (rad_etotabsrem,  rad_totarr(2,10)),
     2 (rad_totposrem,  rad_totarr(1,11)),
     e (rad_etotposrem,  rad_totarr(2,11)),
     3 (rad_totnegrem,  rad_totarr(1,12)),
     e (rad_etotnegrem,  rad_totarr(2,12)),
     4 (rad_totsplit35,  rad_totarr(1,13)),
     e (rad_etotsplit35,  rad_totarr(2,13)),
     5 (rad_totabssplit35,  rad_totarr(1,14)),
     e (rad_etotabssplit35,  rad_totarr(2,14)),
     6 (rad_totpossplit35,  rad_totarr(1,15)),
     e (rad_etotpossplit35,  rad_totarr(2,15)),
     7 (rad_totnegsplit35,  rad_totarr(1,16)),
     e (rad_etotnegsplit35,  rad_totarr(2,16)),
     4 (rad_totsplit45,  rad_totarr(1,17)),
     e (rad_etotsplit45,  rad_totarr(2,17)),
     5 (rad_totabssplit45,  rad_totarr(1,18)),
     e (rad_etotabssplit45,  rad_totarr(2,18)),
     6 (rad_totpossplit45,  rad_totarr(1,19)),
     e (rad_etotpossplit45,  rad_totarr(2,19)),
     7 (rad_totnegsplit45,  rad_totarr(1,20)),
     e (rad_etotnegsplit45,  rad_totarr(2,20)),     
     8 (rad_totbtlgen,  rad_totarr(1,21)),
     e (rad_etotbtlgen,  rad_totarr(2,21)),
     9 (rad_totreggen,  rad_totarr(1,22)),
     e (rad_etotreggen,  rad_totarr(2,22)),
     1 (rad_totremgen,  rad_totarr(1,23)),
     e (rad_etotremgen,  rad_totarr(2,23)),
     2 (rad_totsplitgen35,  rad_totarr(1,24)),
     e (rad_etotsplitgen35,  rad_totarr(2,24)),
     2 (rad_totsplitgen45,  rad_totarr(1,25)),
     e (rad_etotsplitgen45,  rad_totarr(2,25)),
     3 (rad_tot,  rad_totarr(1,26)),
     e (rad_etot,  rad_totarr(2,26)),
     4 (rad_totgen,  rad_totarr(1,27)),
     e (rad_etotgen,  rad_totarr(2,27))

c Grid of the upper bounds of the ratio (R*kn_jacreal/B)/upper_bounding function
c for each given kinematic region and underlying born
      real * 8 rad_csiynorms(rad_ncsiynormsmx,
     #     rad_ncsiynormsmx,nlegborn-1,maxprocborn)
c as above, on the whole grid, for each given underlying born
      real * 8 rad_norms(nlegborn-1,maxprocborn)
c value of btilde for each given underlying Born;
c filled after each final call to btilde.
      real * 8 rad_btilde_arr(maxprocborn)
c stores the sign of the above results in case the BOX is used
c with withnegweights=1.
      integer  rad_btilde_sign(maxprocborn)
c filled with contributions to real cross section after
c a call to sigreal_rad, according to the mapping rad_realalr
      real * 8 rad_real_arr(maxalr)
c filled with contributions of the real remnants after a call to
c sigremnants; rad_damp_rem_tot=Sum rad_damp_rem_arr-> commented out, CH
      real * 8 rad_damp_rem_arr(maxalr)!,rad_damp_rem_tot
      integer rad_damp_rem_sign(maxalr)
c filled with contributions of the regular real graphs (graphs with no singular
c regions), filled after a call to sigremnants;
c rad_reg_tot=Sum rad_reg_arr-> commented out, CH
      real * 8 rad_reg_arr(maxprocreal)!,rad_reg_tot
      integer rad_reg_sign(maxprocreal) !added CH
c CH: added the following for the contributions of the "split" amps and their signs:
c     keep here the results from the two tan-mapped (and restr.) phase-spaces separate
      real*8 rad_split_arr35(maxprocreal),rad_split_arr45(maxprocreal)
      integer rad_split_sign35(maxprocreal),rad_split_sign45(maxprocreal)
c CH: introduce this array to save the rnd-numbers for the generic phase-spaces:
      real*8 rad_xradsplit(ndiminteg)

c radiation variables in sigremnant call
      real * 8 rad_xradremn(3)
c user provided factor, to increase the upper bounding ratios
      real * 8 rad_normfact
c minimum pt-squared
      real * 8 rad_ptsqmin,rad_charmthr2,rad_bottomthr2
c LambdaLL for upper bounding coupling (see notes: running_coupling)
      real * 8 rad_lamll
c Hardest radiation kt2
      real * 8 rad_pt2max
c Branching ratio (useful to change xsecup properly when a decay is
c added a posteriori)
      real * 8 rad_branching
c Current event weight, needed when doing reweghting    
      real  * 8 rad_currentweight
      integer rad_iupperfsr,rad_iupperisr
      
c CH: adapted the common-blocks:
      common/pwhg_rad/
c     1     rad_totbtl,rad_etotbtl,
c     2     rad_totabsbtl,rad_etotabsbtl,
c     3     rad_totposbtl,rad_etotposbtl,
c     4     rad_totnegbtl,rad_etotnegbtl,
c     5     rad_totrm,rad_etotrm,
c     6     rad_totbtlgen,rad_etotbtlgen,
c     7     rad_totgen,rad_etotgen,
c     8     rad_tot,rad_etot,
c     9     rad_damp_rem_arr,rad_damp_rem_tot,rad_reg_arr,rad_reg_tot,
     9     rad_damp_rem_arr,rad_reg_arr,rad_split_arr35,rad_split_arr45, !added CH
     1     rad_totarr,rad_csiynorms,rad_norms,rad_btilde_arr,rad_real_arr,
     2     rad_normfact,rad_ptsqmin,rad_charmthr2,rad_bottomthr2,
     3     rad_lamll,rad_xradremn,rad_pt2max,
     4     rad_branching,rad_currentweight,
     5     rad_xradsplit,   !added CH
c     integers
     1     rad_ubornidx,rad_alr_list,rad_alr_nlist,
     2     rad_realidx,rad_realalr,rad_realreg,
     3     rad_kinreg,rad_nkinreg,
     4     rad_ncsinorms,rad_nynorms,rad_type,rad_btilde_sign,
     5     rad_reg_sign,rad_damp_rem_sign,rad_split_sign35,
     5     rad_split_sign45,rad_realsplit, !added CH
     6     rad_iupperfsr,rad_iupperisr,
c     logical
     6     rad_kinreg_on
      save /pwhg_rad/
