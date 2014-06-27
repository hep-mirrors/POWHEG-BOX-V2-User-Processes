cc Similar to heavy-quark phase space in the PowhegBox
      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
	include 'pwhg_flg.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
	include 'PhysPars.h'
c --- convention: xborn(1)-> tau, xborn(2)-> Y, xborn(3)-> cosTheta
      real*8 xborn(ndiminteg-3)
      integer ixx_tau,ixx_y,ixx_cth
      real*8 vec(3),phidec,shat,beta,m1,m2
      real*8 tau,tau_max,tau_min,y, y_max,y_min,cth,cth_max,cth_min,sth
	real*8 abs_mom,tmp
	real*8 dotp
      integer mu
      parameter(ixx_tau=1,ixx_y=2,ixx_cth=3)
      integer psgen
	integer ind1,ind2,i,j
	real*8 jacotemp

	external dotp
      kn_jacborn=1.D0

C -   Phase space: 1 /(16 pi) d tau d y d cth * sqrt[shat^2 - 2*shat*(m1^2+m2^2) + (m1^2-m2^2)^2]/shat
C -   kn_minmasses**2 / S < tau < 1
C -   |y| < ln(tau)/2
C -   |cth1| < 1
c --- Parameter to select phase space importance sampling (always flat in y and cth!):
c --- psgen=0:     flat in 1/tau
c --- psgen=1:     flat in tau
c --- psgen=2:     flat in log tau
       psgen=1

c ---   Set minimum and maximum tau values 
	tau_min=kn_minmass**2/kn_sbeams
	tau_max=1.d0

      if(psgen.eq.0)then
C -      Sampling flat in 1/tau
         tmp  = 1.0d0/tau_max+xborn(ixx_tau) * (1d0/tau_min-1d0/tau_max)
         tau  = 1.0d0/ tmp
         kn_jacborn = kn_jacborn * tau**2 * (1d0/tau_min-1d0/tau_max)
      elseif(psgen.eq.1) then
C -      Sampling flat in tau
         tau  = tau_min + xborn(ixx_tau) * (tau_max-tau_min)
         kn_jacborn = kn_jacborn * (tau_max-tau_min)
      elseif(psgen.eq.2) then
C -      Flat in log(tau)
         tau = tau_min*exp(xborn(ixx_tau) * log(tau_max/tau_min))
         kn_jacborn = kn_jacborn * tau * log(tau_max/tau_min)
      else
         write(*,*) 'Wrong psgen in gen_born_vars'
         call exit(1)
      endif

c --- now calulate shat
      shat=kn_sbeams*tau
	kn_sborn=shat

C -   Set minimum and maximum y values 
      y_min =  dlog(tau)/2.D0
      y_max = -dlog(tau)/2.D0
c --- flat sampling in y
	y = (y_max-y_min)*xborn(ixx_y) + y_min
	kn_jacborn = kn_jacborn * (y_max-y_min)

C -   Set minimum and maximum cth values 
      cth_min =  -1.D0
      cth_max =   1.D0
c --- flat sampling in cth
	cth = (cth_max-cth_min)*xborn(ixx_cth) + cth_min
	kn_jacborn = kn_jacborn * (cth_max-cth_min)

	sth = dsqrt(1.D0-cth**2)
c --- calculate the x1,x2-values
      kn_xb1=dsqrt(tau)*exp(y)
      kn_xb2=dsqrt(tau)*exp(-y)

c --- calculate the momenta in the partonic CMS-system and boost them to the lab-system
C -   Initial state momenta in the partonic CMS:
      kn_cmpborn(0,1) =  dsqrt(kn_sborn)/2.d0    ! E
      kn_cmpborn(0,2) =  kn_cmpborn(0,1)         !
      kn_cmpborn(3,1) =  kn_cmpborn(0,1)         ! Pz
      kn_cmpborn(3,2) = -kn_cmpborn(0,2)         !
      kn_cmpborn(1,1) = 0.D0                     ! Px
      kn_cmpborn(1,2) = 0.D0                     !
      kn_cmpborn(2,1) = 0.D0                     ! Py
      kn_cmpborn(2,2) = 0.D0                     !

C -   With this choice px_3 is always positive, but at the
C -   end the whole event will be randomly rotated around z-axis
      phidec      = 0d0

	m1=kn_masses(3)
	m2=kn_masses(4)
c --- the absolute value of the final-state-momenta in the partonic CMS:
	abs_mom = 1.d0/(2.d0*dsqrt(shat))*dsqrt(shat**2
     &          -2d0*shat*(m1**2+m2**2)+(m1**2-m2**2)**2)

C -   Final state momenta in the partonic CMS:
      kn_cmpborn(0,3) = dsqrt(m1**2+abs_mom**2)        ! E
      kn_cmpborn(0,4) = dsqrt(m2**2+abs_mom**2)        !
      kn_cmpborn(3,3) =  abs_mom*cth                            ! Pz
      kn_cmpborn(3,4) = -kn_cmpborn(3,3)                        !
      kn_cmpborn(1,3) = abs_mom*sth*dcos(phidec)                 ! Px
      kn_cmpborn(1,4) = -kn_cmpborn(1,3)                        !
      kn_cmpborn(2,3) = abs_mom*sth*dsin(phidec)                 ! Py
      kn_cmpborn(2,4) = -kn_cmpborn(2,3)                        !

ccc if we decay the squarks explicitly here: call the massive phase-space
ccc form more involved channels: use (maybe) other phase-space-routines
	if(flg_decay) then
        if(par_decchan1.eq.1) then !decay or first squark to q chi1_0
	    ind1=5
	    ind2=7
          call oneto2_phasespace(kn_cmpborn(0:3,3),kn_masses(3),
     &                        kn_masses(ind1),kn_masses(ind2),xborn(4:5),
     &                        kn_cmpborn(0:3,ind1),kn_cmpborn(0:3,ind2),jacotemp)
	    kn_jacborn=kn_jacborn*jacotemp
	  endif
        if(par_decchan2.eq.1) then!decay or second squark to q chi1_0
	    ind1=6
	    ind2=8
          call oneto2_phasespace(kn_cmpborn(0:3,4),kn_masses(4),
     &                        kn_masses(ind1),kn_masses(ind2),xborn(6:7),
     &                        kn_cmpborn(0:3,ind1),kn_cmpborn(0:3,ind2),jacotemp)
	    kn_jacborn=kn_jacborn*jacotemp
	  endif
	else  !if we do not consider decays: reset all momenta
	  do i=0,3
	    do j=5,nlegborn
		kn_cmpborn(i,j)=0d0
	    enddo
	  enddo
	endif

C -   Boost to the LAB frame:
      beta=(kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)
      vec(1)=0d0
      vec(2)=0d0
      vec(3)=1d0
      call mboost(nlegborn-2,vec,beta,kn_cmpborn(0,3),kn_pborn(0,3))

c --- kn_beams are chosen in a way that x,y-components are = 0 and z-components have different signs 
      do mu=0,3
         kn_pborn(mu,1)=kn_xb1*kn_beams(mu,1)
         kn_pborn(mu,2)=kn_xb2*kn_beams(mu,2)
      enddo
 
c -   calculate the rest of the jacobian
      kn_jacborn = kn_jacborn/8.0d0/pi * abs_mom/dsqrt(shat)

c -   some debug-info:
      if(kn_jacborn.lt.0.0) then
         write(6,*) 'born_phsp: Error kn_jacborn < 0. !'
         write(*,*) 'kn_jacborn        = ', kn_jacborn
         write(*,*) 'sqrt(kn_sborn)    = ', sqrt(kn_sborn)
         write(*,*) 'cth1_max-cth1_min = ', (cth_max-cth_min)
      endif
	end

	subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_st.h'
	include 'pwhg_rad.h'
      real*8 muf,mur
      logical ini1,ini2
      data ini1/.true./
      data ini2/.true./
	integer dynscale
      logical runningscales,scalein
      save runningscales,dynscale
      real*8 pt2,mT1,mT2
      real*8 powheginput,pwhg_pt2
      external powheginput,pwhg_pt2
      if(ini1) then
         if(powheginput('#fixedscale').eq.1) then
            runningscales=.false.
         else
            runningscales=.true.
         endif
      endif

      if (runningscales.or.flg_btildepart.eq.'r') then !New feature in Powheg: if btildepart='r'/'c': use the pt_sqsq from the real contributions
         if (ini1) then
            if(flg_btildepart.eq.'r') then
              write(*,*) '****************************************'
              write(*,*) '****************************************'
              write(*,*) '**   for calc of NLO-R:               **'
              write(*,*) '**   muf=mur=pt_sqsq(go)              **'
              write(*,*) '****************************************'
              write(*,*) '****************************************'
		endif
            if(runningscales) then !use a dynamic scale
              dynscale=powheginput('#dynscalechoice')
              if(dynscale.lt.0) then !default is the transverse mass
                dynscale=1
              endif
              write(*,*) '****************************************'
              write(*,*) '****************************************'
              write(*,*) '**   use running scales:              **'
              if(dynscale.eq.1) write(*,*) '**   muf=mur=average(sqrt(pt^2+m^2))     **'
		  if(st_renfact.ne.1) write(*,*) '** multiply ren-scale by ',st_renfact,'**'
		  if(st_facfact.ne.1) write(*,*) '** multiply fac-scale by ',st_facfact,'**'
              write(*,*) '****************************************'
              write(*,*) '****************************************'
            endif
            ini1=.false.            
         endif
c take the transverse mass (i.e. the average of the 2 transverse masses)
	    if(dynscale.eq.1) then
		mT1=dsqrt(kn_masses(3)**2+kn_pborn(1,3)**2+kn_pborn(2,3)**2)
		mT2=dsqrt(kn_masses(4)**2+kn_pborn(1,4)**2+kn_pborn(2,4)**2)
		mur=(mT1+mT2)/2.d0
		muf=mur
c take the invariant mass of the 2 squarks(gluinos)
	    elseif(dynscale.eq.2) then
		mur=dsqrt((kn_pborn(0,3)+kn_pborn(0,4))**2-(kn_pborn(1,3)+kn_pborn(1,4))**2-(kn_pborn(2,3)+kn_pborn(2,4))**2-(kn_pborn(3,3)+kn_pborn(3,4))**2)
		muf=mur
          endif
c  this corresponds to the POWHEG-radiation-scale 
c  it overwrites the dynamic scales!!!
          if(flg_btildepart.eq.'r') then
             pt2=(kn_cmpreal(1,3)+kn_cmpreal(1,4))**2+(kn_cmpreal(2,3)+kn_cmpreal(2,4))**2
             if(pt2.lt.rad_ptsqmin) then
               pt2=rad_ptsqmin
	       endif           
             mur=dsqrt(pt2)
             muf=mur
	   endif
      else
         if(powheginput('#setscale').gt.0) then !default is -1d6 for #-values!!
	    muf=powheginput('#setscale')
	    scalein=.true.
	  else
	    muf=kn_minmass/2.d0
	    scalein=.false.
	  endif
	  mur=muf
         if (ini2) then
ccc new feature: read in the scales DIRECTLY-> simplifies calls
           write(*,*) '*************************************'
           write(*,*) '*************************************'
           write(*,*) '    Factorization and renormalization '
           if (scalein) then
             write(*,*) '    scales read from powheg.input    '
	     else
	       write(*,*) '    scales set to (m1+m2)/2     '
	     endif
	     write(*,*) '   which means muF=',muf,', mur=',mur
	     if(st_renfact.ne.1) write(*,*) '** multiply ren-scale by ',st_renfact,'**'
	     if(st_facfact.ne.1) write(*,*) '** multiply fac-scale by ',st_facfact,'**'
           write(*,*) '*************************************'
           write(*,*) '*************************************'
           ini2=.false.
         endif
      endif
      end

      subroutine born_suppression(fact)
      implicit none
      logical ini
      data ini/.true./
      real * 8 fact
      if (ini) then
         write(*,*) '**************************'
         write(*,*) 'No Born suppression factor'
         write(*,*) '**************************'
         ini=.false.
      endif
      fact=1d0
      end
