cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc Modified SDecay for standalone-calls to calculate
cc total widths for squark-decays (sup,sdown,sstrange,scharm)
cc NOTE: in contrast to SDECAY, we do not assume
cc       that the first two generations are mass-degenerate
cc Moreover, we take ALWAYS into account the NLO contributions
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      subroutine CalcGammatot
	implicit none
	include 'PhysPars.h' 
	include 'pwhg_st.h'
	include 'pwhg_math.h'
	include 'pwhg_flg.h'
	real*8 gs2,g2
	integer k,i
	integer fla,chir,flatype
	real*8 achi0(1:2,1:4,1:2),bchi0(1:2,1:4,1:2) !!first index is for L(==1),R(==2) 
	real*8 achipm(1:2,1:2,1:2) !! same for the chi+-
	real*8 zp(4,4),sw,tw
	real*8 muren2
	real*8 msq,mgo,mchi0,mchipm,thet,rval
	real*8 born(1:2,1:4),QCD(1:2,1:4),borngo(1:2,1:4),QCDgo(1:2,1:4),tempborn,tempQCD
      real*8 QCDscale(1:2,1:4),borngoscale(1:2,1:4),QCDgoscale(1:2,1:4)
	real*8 SD_lamb,SD_ftotqcd,SD_gama,SD_gamfcap,SD_gamglui2CH,SD_gamrendec
	real*8 powheginput
	real*8 BR_qchi0LO(1:2,1:4,1:4),BR_qchi0NLO(1:2,1:4,1:4) !for debugging: BRatios for the decays into neutralinos
	real*8 wsq_LO(1:4,1:2)
      real * 8 pwhg_alphas,pwhg_alphas0
	real*8 partwidthLO(1:2,1:4,1:7)
	real*8 partwidthNLO(1:2,1:4,1:7)
      external pwhg_alphas,pwhg_alphas0,powheginput

	mgo=par_mglu

ccc the following stuff is scale-independent!!
	g2=par_alphaem*4d0*pi/(1d0-par_cw**2) !see SDECAY-ini routine: 1/sw ^2 absorbed in coupling
	sw=dsqrt(1d0-par_cw**2)
	tw=sw/par_cw

ccc the stop-mixing-angle
      thet=dacos(par_stopmix(1,1))
      if(par_stopmix(1,2).le.0.D0) then
       if(thet.ge.0.D0) then
          thet = -1.D0*thet
       endif
      endif

ccc combinations with the neutralino-mixing-matrix
      do k=1,4
       zp(k,1) =  par_chi0mix(k,1)*par_cw+par_chi0mix(k,2)*sw
       zp(k,2) = -par_chi0mix(k,1)*sw+par_chi0mix(k,2)*par_cw
       zp(k,3) = par_chi0mix(k,3)
       zp(k,4) = par_chi0mix(k,4)
      enddo

ccc directly taken form ini-routine, cu=cd=1d0, su=sd=0d0
      do k=1,4
       achi0(1,k,1) = -dsqrt(2.D0)*(2.D0/3.D0*zp(k,1)*sw+(0.5D0
     .            -2.D0/3.D0*sw**2)*zp(k,2)/par_cw)
       achi0(2,k,1) = 0d0
       achi0(1,k,2) = dsqrt(2.D0)*(zp(k,1)*sw/3.D0+(0.5D0
     .            -1.D0/3.D0*sw**2)*zp(k,2)/par_cw)
       achi0(2,k,2) = 0d0

       bchi0(1,k,1) = 0d0
       bchi0(2,k,1) = -2.D0*dsqrt(2.D0)*sw*(zp(k,2)*tw-
     .            zp(k,1))/3.D0 !!up-type
       bchi0(1,k,2) = 0d0
       bchi0(2,k,2) = dsqrt(2.D0)*sw*(zp(k,2)*tw-zp(k,1))/3.D0 !!down-type
      enddo

ccc the chargino-mixing (again cu=cd=1, su=sd=0)
      do k=1,2
       achipm(1,k,1) = -par_chipmVmix(k,1)
       achipm(2,k,1) =  0d0
       achipm(1,k,2) = -par_chipmUmix(k,1)
       achipm(2,k,2) =  0d0
      enddo

	do fla=1,4
	 do chir=1,2
	   QCD(chir,fla)=0d0
	   born(chir,fla)=0d0
	   borngo(chir,fla)=0d0
	   QCDgo(chir,fla)=0d0
	 enddo
	enddo

	do fla=1,4
	 do chir=1,2
	    msq=par_msq(fla,chir)

	    flatype=1 !up-type
	    if(fla.eq.1.or.fla.eq.3)  flatype=2 !down-type
	    
ccc sumup of all contributions for the individual 
ccc - 1.) Neutralino-decays:
	    do i=1,4
	      mchi0=par_mchi0(i)
            if(mchi0.le.msq) then
              tempborn=g2*(achi0(chir,i,flatype)**2+bchi0(chir,i,flatype)**2)*(msq**2
     .         -mchi0**2)*SD_lamb(0.d0,mchi0/msq)/(16*pi*msq)
		  partwidthLO(chir,fla,i)=tempborn
              born(chir,fla)=born(chir,fla)+tempborn
		  tempQCD=4.D0/3.D0/(4.D0*pi)/pi*tempborn* !strip gs2-factor!!
     .           SD_ftotqcd(mchi0**2/msq**2,mgo**2/msq**2)
	        QCD(chir,fla)=QCD(chir,fla)+tempQCD
		  partwidthNLO(chir,fla,i)=tempQCD
	        BR_qchi0LO(chir,fla,i)=tempborn
	        BR_qchi0NLO(chir,fla,i)=tempQCD
            endif
	    enddo

ccc - 2.) Chargino-decays:
	    do i=1,2
		mchipm=par_mchic(i)
            if(mchipm.le.msq) then
              tempborn=g2*achipm(chir,i,flatype)**2*(msq**2
     .           -mchipm**2)*SD_lamb(0.d0,mchipm/msq)/(16*pi*msq)
	        partwidthLO(chir,fla,i+4)=tempborn
              born(chir,fla)=born(chir,fla)+tempborn
		  tempQCD=4.D0/3.D0/(4.D0*pi)/pi*tempborn* !strip gs2-factor!!
     .           SD_ftotqcd(mchipm**2/msq**2,mgo**2/msq**2)
	        QCD(chir,fla)=QCD(chir,fla)+tempQCD
	        partwidthNLO(chir,fla,4+i)=tempQCD
            endif
	    enddo

ccc - 3.) Gluino-decays:
	    if(msq.gt.mgo) then
		borngo(chir,fla)=8.D0*(msq**2-mgo**2)* !strip factor gs2
     .            SD_lamb(0.D0,mgo/msq)/(16.D0*pi*msq)/3.D0

	      rval=mgo**2/msq**2 !NOTE: this is different from the original SDECAY-implementation	

	      QCDgo(chir,fla)=borngo(chir,fla)*(ca*SD_gama(rval) + !stripped factor gs2*st_alpha/pi
     .          cf*SD_gamfcap(rval) + 
!      .        4.D0*SD_gamf(rval) + 
cc change this: calculate the respective contributions for every squark of 
cc the first 5 generations separately
cc using the stop-example for diagonal mixing matrix with mt->0 
cc NOTE: we set the scale explicitly to msq, the mass of the decaying squark!!!
     .        2.D0*pi**2/mgo**2*(
     .        SD_gamglui2CH(par_msq(1,1),par_msq(1,2),0d0,0d0,mgo,msq)+
     .        SD_gamglui2CH(par_msq(2,1),par_msq(2,2),0d0,0d0,mgo,msq)+
     .        SD_gamglui2CH(par_msq(3,1),par_msq(3,2),0d0,0d0,mgo,msq)+
     .        SD_gamglui2CH(par_msq(4,1),par_msq(4,2),0d0,0d0,mgo,msq)+
     .        SD_gamglui2CH(par_msq(5,1),par_msq(5,2),0d0,0d0,mgo,msq)+
     .        SD_gamglui2CH(par_msq(6,1),par_msq(6,2),par_mt,thet,mgo,msq)))
	    endif
	  enddo
	enddo

ccc add scale-dependent stuff here
	do fla=1,4
	  do chir=1,2  
	    msq=par_msq(fla,chir)
	    muren2=st_muren2
	    if(powheginput('fixedscale').ne.1) then !use sq-mass as scale...
	       muren2=msq**2*st_renfact**2
	    endif
          st_alpha  = pwhg_alphas(muren2,st_lambda5MSB,st_nlight)
	    gs2=st_alpha*4d0*pi
    

	    QCDscale(chir,fla)=QCD(chir,fla)*gs2 !we stripped a factor gs2 here
	    borngoscale(chir,fla)=borngo(chir,fla)*gs2 
	    partwidthLO(chir,fla,7)=borngoscale(chir,fla)
	    QCDgoscale(chir,fla)=QCDgo(chir,fla)*gs2*st_alpha/pi
	    if(msq.gt.mgo) then
	      QCDgoscale(chir,fla)=QCDgoscale(chir,fla)+borngoscale(chir,fla)*
     .                           st_alpha/pi*SD_gamrendec(msq,muren2)
	    endif

	    partwidthNLO(chir,fla,7)=QCDgoscale(chir,fla)
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
	    if (par_NWAapproach.eq.2) then
cc rescale the total stuff only with the LO width...
             par_wsq(fla,chir)=born(chir,fla)+borngoscale(chir,fla)
	    else
             par_wsq(fla,chir)=born(chir,fla)+QCDscale(chir,fla)+borngoscale(chir,fla)+QCDgoscale(chir,fla)
	    endif

	    wsq_LO(fla,chir)=born(chir,fla)+borngoscale(chir,fla)
	    do i=1,4
            BR_qchi0LO(chir,fla,i)=BR_qchi0LO(chir,fla,i)/wsq_LO(fla,chir)
	      BR_qchi0NLO(chir,fla,i)=BR_qchi0NLO(chir,fla,i)*gs2/par_wsq(fla,chir)
	    enddo
	  enddo
	enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc for the rescaling of the btildeborn: 
	if (par_NWAapproach.eq.2) then
	  do fla=1,4
	   do chir=1,2  
	     par_wsqNLO(fla,chir)=sum(partwidthNLO(chir,fla,1:7))
	   enddo
	  enddo
	endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
	write(*,*) '############################################'
	write(*,*) ' Branching ratios (LO,NLO-LO),for sq->q chi0_1:         '
	write(*,*) 'uL',BR_qchi0LO(1,2,1),BR_qchi0NLO(1,2,1)
	write(*,*) 'uR',BR_qchi0LO(2,2,1),BR_qchi0NLO(2,2,1)
	write(*,*) 'dL',BR_qchi0LO(1,1,1),BR_qchi0NLO(1,1,1)
	write(*,*) 'dR',BR_qchi0LO(2,1,1),BR_qchi0NLO(2,1,1)
	write(*,*) 'cL',BR_qchi0LO(1,4,1),BR_qchi0NLO(1,4,1)
	write(*,*) 'cR',BR_qchi0LO(2,4,1),BR_qchi0NLO(2,4,1)
	write(*,*) 'sL',BR_qchi0LO(1,3,1),BR_qchi0NLO(1,3,1)
	write(*,*) 'sR',BR_qchi0LO(2,3,1),BR_qchi0NLO(2,3,1)
	write(*,*) '###########################################'
	write(*,*) ' Total width (LO,NLO):'
	write(*,*) 'uL',wsq_LO(2,1),par_wsq(2,1)
	write(*,*) 'uR',wsq_LO(2,2),par_wsq(2,2)
	write(*,*) 'dL',wsq_LO(1,1),par_wsq(1,1)
	write(*,*) 'dR',wsq_LO(1,2),par_wsq(1,2)
	write(*,*) 'cL',wsq_LO(4,1),par_wsq(4,1)
	write(*,*) 'cR',wsq_LO(4,2),par_wsq(4,2)
	write(*,*) 'sL',wsq_LO(3,1),par_wsq(3,1)
	write(*,*) 'sR',wsq_LO(3,2),par_wsq(3,2)
	write(*,*) '###########################################'

	write(*,*) '###########################################'
	write(*,*) '# partial widths (LO)'
	write(*,*) 'uL-> q chi0_i',partwidthLO(1,2,1:4)
	write(*,*) 'uL-> q chi+1_i',partwidthLO(1,2,5:6)
	write(*,*) 'uL-> q go',partwidthLO(1,2,7)
	write(*,*) 'uR-> q chi0_i',partwidthLO(2,2,1:4)
	write(*,*) 'uR-> q chi+1_i',partwidthLO(2,2,5:6)
	write(*,*) 'uR-> q go',partwidthLO(2,2,7)
	write(*,*) 'dL-> q chi0_i',partwidthLO(1,1,1:4)
	write(*,*) 'dL-> q chi+1_i',partwidthLO(1,1,5:6)
	write(*,*) 'dL-> q go',partwidthLO(1,1,7)
	write(*,*) 'dR-> q chi0_i',partwidthLO(2,1,1:4)
	write(*,*) 'dR-> q chi+1_i',partwidthLO(2,1,5:6)
	write(*,*) 'dR-> q go',partwidthLO(2,1,7)
	write(*,*) '# NLO corrections to the partial widths'
	write(*,*) 'uL-> q chi0_i',partwidthNLO(1,2,1:4)
	write(*,*) 'uL-> q chi+1_i',partwidthNLO(1,2,5:6)
	write(*,*) 'uL-> q go',partwidthNLO(1,2,7)
	write(*,*) 'uR-> q chi0_i',partwidthNLO(2,2,1:4)
	write(*,*) 'uR-> q chi+1_i',partwidthNLO(2,2,5:6)
	write(*,*) 'uR-> q go',partwidthNLO(2,2,7)
	write(*,*) 'dL-> q chi0_i',partwidthNLO(1,1,1:4)
	write(*,*) 'dL-> q chi+1_i',partwidthNLO(1,1,5:6)
	write(*,*) 'dL-> q go',partwidthNLO(1,1,7)
	write(*,*) 'dR-> q chi0_i',partwidthNLO(2,1,1:4)
	write(*,*) 'dR-> q chi+1_i',partwidthNLO(2,1,5:6)
	write(*,*) 'dR-> q go',partwidthNLO(2,1,7)
	write(*,*) '# full NLO results for the partial widths'
	write(*,*) 'uL-> q chi0_i',partwidthNLO(1,2,1:4)+partwidthLO(1,2,1:4)
	write(*,*) 'uL-> q chi+1_i',partwidthNLO(1,2,5:6)+partwidthLO(1,2,5:6)
	write(*,*) 'uL-> q go',partwidthNLO(1,2,7)+partwidthLO(1,2,7)
	write(*,*) 'uR-> q chi0_i',partwidthNLO(2,2,1:4)+partwidthLO(2,2,1:4)
	write(*,*) 'uR-> q chi+1_i',partwidthNLO(2,2,5:6)+partwidthLO(2,2,5:6)
	write(*,*) 'uR-> q go',partwidthNLO(2,2,7)+partwidthLO(2,2,7)
	write(*,*) 'dL-> q chi0_i',partwidthNLO(1,1,1:4)+partwidthLO(1,1,1:4)
	write(*,*) 'dL-> q chi+1_i',partwidthNLO(1,1,5:6)+partwidthLO(1,1,5:6)
	write(*,*) 'dL-> q go',partwidthNLO(1,1,7)+partwidthLO(1,1,7)
	write(*,*) 'dR-> q chi0_i',partwidthNLO(2,1,1:4)+partwidthLO(2,1,1:4)
	write(*,*) 'dR-> q chi+1_i',partwidthNLO(2,1,5:6)+partwidthLO(2,1,5:6)
	write(*,*) 'dR-> q go',partwidthNLO(2,1,7)+partwidthLO(2,1,7)
	write(*,*) '###########################################'
	end

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc ROUTINES form SDECAY 1.3
c -------------------------------------------------------------------- c
c ---------- A.Djouadi, W.Hollik, C.Juenger, hep-ph/9609419 ---------- c
c -------------------------------------------------------------------- c
c --- QCD corrections to the light squark decays --- c
      double precision function SD_ftotqcd(kap,gam)

      implicit double precision (a-h,k-z)

      complex*16 SD_ccspen,funci

      pi = 4.D0*datan(1.D0)

      if(kap*gam.lt.1.D0) then
         funci = SD_ccspen(dcmplx((gam-1.D0)/(gam*kap-1.D0))) -
     .        SD_ccspen(dcmplx(kap*(gam-1.D0)/(gam*kap-1.D0))) -
     .        SD_ccspen(dcmplx((gam+kap-2.D0)/(gam*kap-1.D0))) +
     .        SD_ccspen(dcmplx(kap*(gam+kap-2.D0)/(gam*kap-1.D0)))
      elseif(kap*gam.ge.1.D0) then
         funci = -SD_ccspen(dcmplx((gam*kap-1.D0)/(gam-1.D0))) +
     .        SD_ccspen(dcmplx((gam*kap-1.D0)/(gam+kap-2.D0))) +
     .        SD_ccspen(dcmplx((gam*kap-1.D0)/(kap*(gam-1.D0)))) -
     .        SD_ccspen(dcmplx((gam*kap-1.D0)/(kap*(gam+kap-2.D0)))) -
     .        dlog(kap)*cdlog(dcmplx((gam+kap-2.D0)/(gam-1.D0)))
      endif

      SD_ftotqcd = -1.D0/8.D0*( (4.D0*gam**2-27.D0*gam+25.D0)/(gam-1.D0)
     .     + (3.D0*kap-5.D0)/(kap-1.D0) ) - pi**2/3.D0 
     .     - 2.D0*dreal(SD_ccspen(dcmplx(kap))) 
     .     - 1.D0/2.D0*(gam**2-1.D0)*
     .     dreal(cdlog(dcmplx((gam-1.D0)/gam)))
     .     + (3.D0*gam**2-4.D0*gam+2.D0)/
     .     (4.D0*(1.D0-gam)**2)*dlog(gam) -3.D0/2.D0*dlog(1.D0-kap) +
     .     1.D0/4.D0*(3.D0*kap**2-4.D0*kap)/(kap-1.D0)**2*dlog(kap)
     .     -dlog(kap)*dlog(1.D0-kap) + dsqrt(kap*gam)*
     .     (1.D0/kap*dlog(1.D0-kap)+1.D0/(1.D0-kap)*(gam*dlog(gam)
     .     -(gam-1.D0)*dreal(cdlog(dcmplx(gam-1.D0))) )
     .     + (kap+gam-2.D0)/(1.D0-kap)**2*dreal(funci) )
      return
      end

cc - QCD corrections to the decays light squark -> light quark + gluino c
ccc CH: this is FA in 9602378, p. 5
      double precision function SD_gama(r)
      implicit double precision (a-h,k-z)
      complex*16 SD_ccspen

      pi = 4.D0*datan(1.D0)

      SD_gama = 3.D0/(r-1.D0)*dreal(SD_ccspen(dcmplx(1.D0-r))) - 
     .     r/(r-1.D0)*dreal(SD_ccspen(dcmplx(-r))) 
     .     + (5.D0*r-6.D0)/(12.D0*(r-1.D0))*pi**2 +
     .     59.D0/24.D0 + r/(4.D0*(r-1.D0)) + 
     .     ( (3.D0+r)/(2.D0*(r-1.D0))*dlog(r) - 2.D0)*
     .     dlog(dabs(1.D0-r)) + 
     .     ( (r*(5.D0*r-6.D0))/(4.D0*(r-1.D0)**2) - 
     .     r/(r-1.D0)*dlog(1.D0+r) )*dlog(r) 
      return
      end

c -------------------------------------------------------------------- c
ccc CH: this is FF in 9602378, p. 5
      double precision function SD_gamfcap(r)
      implicit double precision (a-h,k-z)
      complex*16 SD_ccspen
      pi = 4.D0*datan(1.D0)

      SD_gamfcap = -2.D0/(r-1.D0)*dreal(SD_ccspen(dcmplx(1.D0-r))) + 
     .     (2.D0*r)/(r-1.D0)*dreal(SD_ccspen(dcmplx(-r))) + 
     .     (4.D0-3.D0*r)/(6.D0*(r-1.D0))*pi**2 + 5.D0/2.D0 - r/2.D0 + 
     .     ( r- r**2/2.D0 - (r+1.D0)/(r-1.D0)*dlog(r) )*
     .     dlog(dabs(1.D0-r)) + 
     .     ( 2.D0*r/(r-1.D0)*dlog(1.D0+r)-r+r**2/2.D0)*dlog(r) 
      return
      end

ccc CH: modified this routine: now only one generation per call; use this routine 
ccc     to get the contirbutions of light-flavour squarks, too (in this case, mq=0,
ccc     thet=0
      double precision function SD_gamglui2CH(msq1,msq2,mq,thet,mgo,amuv)
      implicit double precision (a-h,k-z)
      pi = 4.D0*datan(1.D0)

      sig2t = mq*mgo*dsin(2.D0*thet) !See discussion with evsa

      SD_gamglui2CH = 2.D0*SD_A01(mq**2,amuv**2) -
     .     SD_A01(msq1**2,amuv**2) - SD_A01(msq2**2,amuv**2)
     .     + (msq1**2+mgo**2-mq**2)*
     .     SD_B02(mgo**2,msq1,mq,amuv**2) + 
     .     (msq2**2+mgo**2-mq**2)*
     .     SD_B02(mgo**2,msq2,mq,amuv**2) 
     .     + 2.D0*mgo**2*( (mgo**2+mq**2-msq1**2)*
     .     SD_BP02(mgo**2,msq1,mq,amuv**2) + 
     .     (mgo**2+mq**2-msq2**2)*
     .     SD_BP02(mgo**2,msq2,mq,amuv**2)) - 
     .     4.D0*mgo**2*sig2t*( SD_BP02(mgo**2,msq1,mq,amuv**2)
     .     - SD_BP02(mgo**2,msq2,mq,amuv**2) )

      SD_gamglui2CH = -1.D0/16.D0/pi**2*SD_gamglui2CH
      return
      end

c -------------------------------------------------------------------- c
ccc CH: explicitly add up the differnt squarks, not only sbottoms/stops...
      double precision function SD_gamrendec(msq,mur2)
      implicit double precision (a-h,k-z)
	include 'PhysPars.h'
! ! ! 	include 'pwhg_st.h'
! ! !       mur2 = st_muren2

      SD_gamrendec = 3.D0/4.D0*dlog(mur2/msq**2) !!!- 1.D0/4.D0 !stick to MSbar

      SD_gamrendec =  SD_gamrendec + 
     .    1.d0/24.d0*(dlog(mur2/par_msq(1,1)**2)+dlog(mur2/par_msq(1,2)**2))+ 
     .    1.d0/24.d0*(dlog(mur2/par_msq(2,1)**2)+dlog(mur2/par_msq(2,2)**2))+ 
     .    1.d0/24.d0*(dlog(mur2/par_msq(3,1)**2)+dlog(mur2/par_msq(3,2)**2))+ 
     .    1.d0/24.d0*(dlog(mur2/par_msq(4,1)**2)+dlog(mur2/par_msq(4,2)**2))+ 
     .    1.d0/24.d0*(dlog(mur2/par_msq(5,1)**2)+dlog(mur2/par_msq(5,2)**2))+ 
     .    1.d0/24.d0*(dlog(mur2/par_msq(6,1)**2)+dlog(mur2/par_msq(6,2)**2))
     .     + 1.D0/6.D0*dlog(mur2/par_mt**2)
     .     + 1.D0/2.D0*dlog(mur2/par_mglu**2) 
! ! ! 4.D0/12.D0*dlog(mur2/amsq**2)
! ! !      .     + 1.D0/24.D0*dlog(mur2/amsb1**2) + 1.D0/24.D0*
! ! !      .     dlog(mur2/amsb2**2) 
! ! !      .     + 1.D0/24.D0*dlog(mur2/amst1**2) + 1.D0/24.D0*
! ! !      .     dlog(mur2/amst2**2) 
      return
      end
c -------------------------------------------------------------------- c
c ---------------------- the function lambda ------------------------- c
c -------------------------------------------------------------------- c
      double precision function SD_lamb(x,y)      

      implicit double precision (a-h,k-z)

      SD_lamb=dsqrt((1.D0-x**2-y**2)**2-4.D0*x**2*y**2) 

      return
      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        FUNCTION SD_CCSPEN(Z)
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C       SPENCE-FUNKTION KOMPLEX, FREI NACH HOLLIK                      C
C----------------------------------------------------------------------C
C       20.07.83    LAST CHANGED 10.05.89        ANSGAR DENNER         C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        COMPLEX*16 SD_CCSPEN,W,SUM,Z,U
        REAL*8 RZ,AZ,A1
        REAL*8 B(9)/
     1   0.1666666666666666666666666667D0,
     2  -0.0333333333333333333333333333D0,
     3   0.0238095238095238095238095238D0,
     4  -0.0333333333333333333333333333D0,
     5   0.0757575757575757575757575758D0,
     6  -0.2531135531135531135531135531D0,
     7   1.1666666666666666666666666667D0,
     8  -7.09215686274509804D0         ,
     9  54.97117794486215539D0         /
C     BEACHTE:                 B(N)=B2N
C     B(1)=1./6.
C     B(2)=-1./30.
C     B(3)=1./42.
C     B(4)=-1./30.
C     B(5)=5./66.
C     B(6)=-691./2730.
C     B(7)=7./6.
C     B(8)=-3617./510.
C     B(9)=43867./798.
C     B(10)=-174611./330.
C     B(11)=854513./138.
C     PI=3.1415926535897932384
C     PI*PI/6.=1.6449..., PI*PI/3=3.28986...
C
c      write(*,*) 'z:',z
      Z =Z*DCMPLX(1D0)
      RZ=DREAL(Z)
      AZ=CDABS(Z)
      A1=CDABS(1D0-Z)
c      write(*,*)'z, rz, az, a1:',z,rz,az,a1
C     IF((SNGL(RZ) .EQ. 0.0) .AND. (SNGL(DIMAG(Z)) .EQ. 0.0)) THEN
C ---> CHANGED  10.5.89
      IF(AZ .LT. 1D-20) THEN
        SD_CCSPEN=-CDLOG(1D0-Z)
c        write(*,*) 'ccspen:', ccspen
        RETURN
      END IF
      IF((SNGL(RZ) .EQ. 1.0) .AND. (SNGL(DIMAG(Z)) .EQ. 0.0)) THEN
        SD_CCSPEN=1.64493406684822643D0
c        write(*,*) 'ccspen:', ccspen
        RETURN
      END IF
      IF(RZ.GT.5D-1) GOTO 20
      IF(AZ.GT.1D0) GOTO 10
      W=-CDLOG(1D0-Z)
      SUM=W-0.25D0*W*W
      U=W
      IF(CDABS(U).LT.1D-10) GOTO 2
c      write(*,*) 'u:',u
c      write(*,*) 'sum:',sum
      DO 1 K=1,9
      U=U*W*W/DFLOAT(2*K*(2*K+1))
      IF(CDABS(U*B(K)/SUM).LT.1D-20) GOTO 2
      SUM=SUM+U*B(K)
 1    CONTINUE
 2    SD_CCSPEN=SUM
c        write(*,*) 'ccspen:', ccspen
      RETURN
10    W=-CDLOG(1D0-1D0/Z)
      SUM=W-0.25D0*W*W
      U=W
      IF(CDABS(U).LT.1D-10) GOTO 12

      DO 11 K=1,9
      U=U*W*W/DFLOAT(2*K*(2*K+1))
      IF(CDABS(B(K)*U/SUM).LT.1D-20) GOTO 12
      SUM=SUM+U*B(K)
11    CONTINUE
12    SD_CCSPEN=-SUM-1.64493406684822643D0-.5D0*CDLOG(-Z)**2
c        write(*,*) 'ccspen:', ccspen
      RETURN
20    IF(A1.GT.1D0) GOTO 30
      W=-CDLOG(Z)
      SUM=W-0.25D0*W*W
      U=W
      IF(CDABS(U).LT.1D-10) GOTO 22
      DO 21 K=1,9
      U=U*W*W/DFLOAT(2*K*(2*K+1))
      IF(CDABS(U*B(K)/SUM).LT.1D-20) GOTO 22
      SUM=SUM+U*B(K)
21    CONTINUE
22    SD_CCSPEN=-SUM+1.64493406684822643D0-CDLOG(Z)*CDLOG(1D0-Z)
c        write(*,*) 'ccspen:', ccspen
      RETURN
30    W=CDLOG(1D0-1D0/Z)
      SUM=W-0.25D0*W*W
      U=W
      IF(CDABS(U).LT.1D-10) GOTO 32
      DO 31 K=1,9
      U=U*W*W/DFLOAT(2*K*(2*K+1))
      IF(CDABS(U*B(K)/SUM).LT.1D-20) GOTO 32
      SUM=SUM+U*B(K)
31    CONTINUE
32    SD_CCSPEN=SUM+3.28986813369645287D0
     *               +.5D0*CDLOG(Z-1D0)**2-CDLOG(Z)*CDLOG(1D0-Z)
50    CONTINUE
c        write(*,*) 'ccspen:', ccspen
      END


CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                                                                      C
C        SUBROUTINE CALCULATING THE FINITE REAL PART OF THE            C
C          GENERAL MASSIVE TWO POINT FUNCTION                          C
C                                                                      C
C           SD_B02(P.P,M1,M2,MU**2)                                    C
C           SD_BP02(P.P,M1,M2,MU**2)                                   C
C                                                                      C
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c -------------------------------------------------------------------- c
      real*8 function SD_B02(s,m1,m2,mu2)
      implicit none 
      real*8     s,m1,m2,mu2,m12,m22 
      complex*16 zkappa,x1,x2 

      m12 = m1**2 
      m22 = m2**2 

      if(s.eq.m22) then
         zkappa = cdsqrt(dcmplx(m12*(m12-4.D0*s)))
      elseif(s.eq.m12) then
         zkappa = cdsqrt(dcmplx(m22*(m22-4.D0*s)))
      elseif(m12.eq.m22) then
         zkappa = cdsqrt(dcmplx(s*(s-4.D0*m12)))
      else
         zkappa=cdsqrt(dcmplx(s**2+m12**2+m22**2
     .        -2.D0*(s*m12+s*m22+m12*m22)))
      endif

      if (s.eq.0.D0) then
         if (m12.eq.m22) then
            SD_B02=-dlog(m12/mu2) 
         else
            SD_B02=1.D0 - m12/(m12-m22)*dlog(m12/mu2)
     .                 + m22/(m12-m22)*dlog(m22/mu2) 
         endif
      else 
         if ((m12.eq.0.D0).and.(m22.eq.0.D0)) then 
            SD_B02=2.D0 - dlog(s/mu2)
         elseif ((m12.eq.s).and.(m22.eq.0.D0)) then 
            SD_B02=2.D0 - dlog(m12/mu2)
         elseif ((m22.eq.s).and.(m12.eq.0.D0)) then 
            SD_B02=2.D0 - dlog(m22/mu2)
         elseif (m12.eq.0.D0) then
            SD_B02=2.D0 - (s-m22)/s*dlog( dabs(m22-s)/m22 )
     .                 - dlog(m22/mu2)
         elseif (m22.eq.0.D0) then
            SD_B02=2.D0 - (s-m12)/s*dlog( dabs(m12-s)/m12 ) 
     .                 - dlog(m12/mu2)
         else
            x1=dcmplx( (s-m22+m12+zkappa)/(2.D0*s) )
            x2=dcmplx( (s-m22+m12-zkappa)/(2.D0*s) )
            SD_B02=dreal( 2.D0+ dlog(mu2/m22) 
     .                       + x1*cdlog(1.D0-1.D0/x1) 
     .                       + x2*cdlog(1.D0-1.D0/x2))
         endif
      endif 
      return
      end

c -------------------------------------------------------------------- c
      real*8 function SD_BP02(s,m1,m2,mu2)
      implicit none 
      real*8     s,m1,m2,mu2,m12,m22 
      complex*16 zkappa,x1,x2
      
      m12 = m1**2
      m22 = m2**2 

      if(s.eq.m22) then
         zkappa = cdsqrt(dcmplx(m12*(m12-4.D0*s)))
      elseif(s.eq.m12) then
         zkappa = cdsqrt(dcmplx(m22*(m22-4.D0*s)))
      elseif(m12.eq.m22) then
         zkappa = cdsqrt(dcmplx(s*(s-4.D0*m12)))
      else
         zkappa=cdsqrt(dcmplx(s**2+m12**2+m22**2
     .        -2.D0*(s*m12+s*m22+m12*m22)))
      endif

      if (s.eq.0.D0) then
         if (m12.eq.m22) then
            SD_BP02=1.D0/(6.D0*m12)
         else
            SD_BP02=( (m12+m22)/2.D0 
     .        - m12*m22/(m12-m22)*dlog(m12/m22) )/(m12-m22)**2 
         endif
      elseif ((s.eq.m12).and.(m22.eq.0.D0)) then 
         SD_BP02=( -1.D0 + dlog(m12/mu2)/2.D0 )/m12
      elseif ((s.eq.m22).and.(m12.eq.0.D0)) then 
         SD_BP02=( -1.D0 + dlog(m22/mu2)/2.D0 )/m22
      elseif (m22.eq.0.D0) then
         if(m12.ge.s) then
            SD_BP02=( -1.D0 - m12/s*dlog((m12-s)/m12) )/s
         elseif(m12.lt.s) then
            SD_BP02=( -1.D0 - m12/s*dlog((-m12+s)/m12) )/s
         endif
      else 
         x1=dcmplx( (s-m22+m12+zkappa)/(2.D0*s) )
         x2=dcmplx( (s-m22+m12-zkappa)/(2.D0*s) )
         SD_BP02=dreal( -1.D0 + ( x1*(1.D0-x1)*cdlog(1.D0-1.D0/x1)
     .                     - x2*(1.D0-x2)*cdlog(1.D0-1.D0/x2) )  
     .                                                  /(x1-x2) )/s
      endif 
      return
      end

c -------------------------------------------------------------------- c
c ---------- The A function for the higher order corrections --------- c
      double precision function SD_A01(s,mu2)
      implicit double precision (a-h,k-z)
cc CH: add this
	if(s.eq.0d0) then
	  SD_A01=0d0
	else
        SD_A01 = s*(-dlog(s/mu2)+1.D0)
	endif
      return
      end
