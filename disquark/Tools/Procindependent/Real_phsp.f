ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc the following subroutine creates a phase-space for 2->3 with
cc a tan-mapping for the invariant mass between particles 4 and 5 or 3 and 5
cc is used to calculate the resonant contributions in qg->sqsqqbar with
cc intermediate resonant gluino-contribution
cc pass an additional flag res45: if true, the resonant go is connected to
cc part. 4 and 5, else it is connected to 3 and 5
cc in BOTH casses the masses have ALWAYS the meaning msq1-> spectator, msq2
cc -> squark from go-decays!!!!
cc for the tan-mapping: the flag tan_map_abs: if true, the resonant
cc propagator must NOT be attached in the calling routines, as it is combined
cc with the jacobian of the tan-mapping (quite sensible to do so...)
cc only perform a tan-mapping if there is a (possible) resonance, otherwise:
cc flat sampling in s4!

cc if the phase-space is to be restricted: this affects only t1-> do so by
cc modifying the jacobian kn_jacborn!!!
cc NOTE: this phase-space-routine includes the flux-factor in the jacobian
cc            as we call a special ME-routine (not the usual powheg-routine) which
cc            does not attach the flux-factor to the result
	subroutine realps(msq1,msq2,xx,res45)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_math.h'
	include 'pwhg_kn.h'
	include 'PhysPars.h'
	real*8 xx(ndiminteg) !include integration over s4-> 6 integration-variables
	integer i,j
	integer specnum,resnum
	real*8 tau,y,ran1,ran2
	real*8 tau_min,tau_max,y_min,y_max
	real*8 s4,s4min,s4max,x,xmin,xmax
	real*8 jaco
	real*8 prest(0:3,1:2),beta_rest(3)
	real*8 absp_cms,absp_rest
	real*8 cosTh23,phib,t1
	real*8 t1max,t1min
	real*8 cosTh1
	real*8 msq1,msq2,mgo,wgo
	real*8 lambda,dotp
	real*8 vec(3),beta
	logical res45
	external lambda,dotp
	jaco=1d0
	mgo=par_mglu
	wgo=par_wglu_res !use the small regulator-width here, as in the ME!!

c create the IS-kinematics:
	ran1=xx(1)
	ran2=xx(2)

c do not restrict the integration over IS when performing the subtraction: simply attach a theta-function a la sqrt(shat)-msq1-mgo when performing the subtraction
	tau_min=(msq1+msq2)**2/kn_sbeams

	tau_max=1.d0
      tau=tau_min+ran1*(tau_max-tau_min)
      jaco=jaco*(tau_max-tau_min)

      y_min=dlog(tau)/2.D0
      y_max=-dlog(tau)/2.D0
	y=(y_max-y_min)*ran2 + y_min
	jaco=jaco*(y_max-y_min)

c --- proton momenta fractions
c --- use kn_x1 here, as this routine is only used for REAL amplitudes
      kn_x1=dsqrt(tau)*exp(y)
      kn_x2=dsqrt(tau)*exp(-y)
      kn_sreal=kn_sbeams*tau

c --- kinematics of IS-particles already fixed in partonic CMS!!:
	kn_cmpreal(0,1)=dsqrt(kn_sreal)/2.d0
	kn_cmpreal(1,1)=0d0
	kn_cmpreal(2,1)=0d0
	kn_cmpreal(3,1)=dsqrt(kn_sreal)/2.d0

	kn_cmpreal(0,2)=dsqrt(kn_sreal)/2.d0
	kn_cmpreal(1,2)=0d0
	kn_cmpreal(2,2)=0d0
	kn_cmpreal(3,2)=-dsqrt(kn_sreal)/2.d0

c --- perfrom "s4"-integration via tan-mapping:
c with the flag res45: does only change the "numbering" of the squark-momenta;
c see comment above: masses are ALWAYS! msq1-> spectator, msq2-> from go-decay!
c only necessary if msq2<=mgo!!!!! otherwise: set ga to 0, sample s4 flat!!
	s4max=(dsqrt(kn_sreal)-msq1)**2
	s4min=msq2**2
	if(msq2.le.par_mglu) then
	  xmax=atan((s4max-mgo**2)/(mgo*wgo))
	  xmin=atan((s4min-mgo**2)/(mgo*wgo))
	  x=(xmax-xmin)*xx(3)+xmin

	  s4=mgo**2+mgo*wgo*tan(x)

	  if(tan_map_abs) then
	    jaco=jaco*(xmax-xmin)/mgo/wgo !IF THE PROPAGATOR IS LEFT-OUT: no need to apply the factor from the transformation!
	  else
	    jaco=jaco*(xmax-xmin)*mgo*wgo/dcos(x)**2 !include extra-jacobian from tan-mapping
	  endif
	else
	  s4=(s4max-s4min)*xx(3)+s4min
	  jaco=jaco*(s4max-s4min)
	endif
cccccccccccccccccccccccccccccccccccccccccccccccccccc
c avoid unstable s4-values...
	if(s4min+1d-12.gt.s4 .or. s4max-1d-12.lt.s4) then
	  jaco=0d0
	  return
	endif

c --- get t1:
	  t1max=msq1**2-0.5d0*((kn_sreal-s4+msq1**2)
     .        -dsqrt(lambda(kn_sreal,s4,msq1**2)))
	  t1min=msq1**2-0.5d0*((kn_sreal-s4+msq1**2)
     .        +dsqrt(lambda(kn_sreal,s4,msq1**2)))
       
	t1=(t1max-t1min)*xx(4)+t1min
	jaco=jaco*(t1max-t1min)

c --- get cosTh23_b3
	cosTh23=2d0*xx(5)-1.d0
	jaco=2d0*jaco

c --- get phib:
	phib=2d0*pi*xx(6)
	jaco=jaco*2d0*pi
	
c --- p1 (=^ spectator) in the CMS:
	   absp_cms=0.5d0/dsqrt(kn_sreal)*dsqrt(kn_sreal**2-2d0*kn_sreal*(s4+msq1**2)+
     .                                 (s4-msq1**2)**2)
c --- get cosTh1 from t1:
	cosTh1=(t1-msq1**2+dsqrt(kn_sreal)*dsqrt(absp_cms**2+msq1**2))/dsqrt(kn_sreal)/absp_cms
c --- reject numerically unstable values
	if(abs(cosTh1).gt.1d0) then
	  kn_jacborn=0d0
	  return
	endif
c	phi1=0d0 ! by convention-> *2pi in the end

c --- now we have p1 (or p2) in the CMS:
c depending on which particles form the resonant pair, either set p3 or p4 (the spectator)
	if(res45) then
	  specnum=3
	  resnum=4
	else
	  specnum=4
	  resnum=3
	endif
	
	kn_cmpreal(0,specnum)=dsqrt(msq1**2+absp_cms**2)
	kn_cmpreal(1,specnum)=absp_cms*dsqrt(1d0-cosTh1**2)!*dcos(phi1)
! 	kn_cmpreal(2,specnum)=absp_cms*dsqrt(1d0-cosTh1**2)*dsin(phi1)
	kn_cmpreal(2,specnum)=0d0
	kn_cmpreal(3,specnum)=absp_cms*cosTh1
ccccccccccccccccc
c --- p2/p3 in the rest-system of the gluino:
	absp_rest=abs(s4-msq2**2)/2d0/dsqrt(s4) 

c -- the sq from go-decay: in the go-rest-system
	prest(0,1)=dsqrt(absp_rest**2+msq2**2)
	prest(1,1)=absp_rest*dsqrt(1d0-cosTh23**2)*dcos(phib)
	prest(2,1)=absp_rest*dsqrt(1d0-cosTh23**2)*dsin(phib)
	prest(3,1)=absp_rest*cosTh23

c --- the qbar
	prest(0,2)=absp_rest
	prest(1,2)=-prest(1,1)
	prest(2,2)=-prest(2,1)
	prest(3,2)=-prest(3,1)

c --- now boost these particles to the CMS:
      do i=1,3
	 beta_rest(i)=-kn_cmpreal(i,specnum)/dsqrt(s4+absp_cms**2)
      enddo
      call boost(beta_rest,prest(0:3,1),kn_cmpreal(0:3,resnum)) !resnum is either p4 (for res. in 4_5) or p3 (for res in 3_5)
      call boost(beta_rest,prest(0:3,2),kn_cmpreal(0:3,nlegreal))

cc set all other momenta to 0, they are not needed here
	do i=5,nlegreal-1
        do j=0,3
	    kn_cmpreal(j,i)=0d0
	  enddo
	enddo
c --- the further phase-space-factors (for mgo>msq2!!!)
c if we restrict the phase-space: this jacobian is modified in the main-routine
	  jaco=jaco/16.d0/kn_sreal/2d0/kn_sreal/2d0/s4*abs(s4-msq2**2)/16.d0/pi**4
	
	kn_jacborn=jaco !do not introduce a new jacobian-variable-> should be unambiguous

C -   Boost to the LAB frame:
       beta=(kn_x1-kn_x2)/(kn_x1+kn_x2)
       vec(1)=0d0
       vec(2)=0d0
       vec(3)=1d0
       call mboost(nlegreal,vec,beta,kn_cmpreal(0,1),kn_preal(0,1))
	end

cccccccccccccccccccccccccccccccccccccc
cc this function defines the scale for the radiation from the split-reals
cc per default simply take the value of mur,muf (which are set to a fixed-values
cc if flg_split is set!)
      real*8 function pt2max_split()
      implicit none
cc per default: use the scale of the hard process (so far a "running" scale is not supported here!)
      include 'pwhg_st.h'
      pt2max_split=st_mufact2
      return
      end