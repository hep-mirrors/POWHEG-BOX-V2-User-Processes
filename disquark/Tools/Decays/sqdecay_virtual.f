ccc function to calculate the VIRTUAL-contribution for the sq-decays
ccc so far implemented: sq->q chi_0_1 (== deccahn=1)
ccc takes flst, index of decaying particle, p, and the born-result (or temp-variable!!)
ccc NOTE: a factor alphas/2pi is extracted from the result!!!
	subroutine sqdec_virt(bflav,bornind,decchan,p,born,virt)
	implicit none
#include "looptools.h"
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'PhysPars.h'
	include 'decay.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h' 
	include 'pwhg_st.h'
	integer bornind,decchan,bflav(1:nlegborn)
	integer i
	integer ind1,ind2
	real*8 dZsq,dZq
	real*8 msq2,MGl2,mchi02,mchi0,MGl,virt,born
	real*8 p(0:3,1:nlegborn)
	ind1=0
	ind2=0

ccc sq-> q chi0
	if(decchan.eq.1) then
ccc find indices of decay-particles
	  do i=bornind+1,nlegborn
          if(flst_bornres(i,flst_cur_iborn).eq.bornind) then
	      if(ind1.eq.0) then
               ind1=i
	      else if(ind2.eq.0) then
	         ind2=i
		else
		  write(*,*) 'Error in sqdec_virt: for sq->q chi0 found'
	        write(*,*) 'more than 2 FS particles from sq-decay'
	        write(*,*) 'flst_resbonr=',flst_bornres(1:nlegborn,flst_cur_iborn)
	        write(*,*) 'check init_processes!'
	        call exit(-1)
	      endif
          endif
	  enddo

	  MGl=par_mglu
	  msq2=kn_masses(bornind)**2
	  mchi0=kn_masses(ind1)
	  MGl=par_mglu
	  MGl2=MGl**2
	  mchi02=mchi0**2

        dZsq = 1.d0/(3.D0*Pi)*
     -   (-4*DBLE(B0i(bb0,msq2,0.D0,MGl2)) + 
     -       3*DBLE(B0i(bb0,msq2,0.D0,msq2)) + 
     -       2*(DBLE(B0i(bb1,msq2,0.D0,msq2)) - 
     -          2*DBLE(B0i(bb1,msq2,MGl2,0.D0)) + 
     -          msq2*(-2*DBLE(B0i(dbb0,msq2,0.D0,MGl2)) + 
     -             2*DBLE(B0i(dbb0,msq2,0.D0,msq2)) + 
     -             DBLE(B0i(dbb1,msq2,0.D0,msq2)) - 
     -             2*DBLE(B0i(dbb1,msq2,MGl2,0.D0))))) 

        dZq = -2/(3.D0*Pi)*
     -     (DBLE(B0i(bb0,0.D0,0.D0,0.D0)) + 
     -         DBLE(B0i(bb1,0.D0,0.D0,0.D0)) - 
     -         DBLE(B0i(bb1,0.D0,MGl2,msq2)))

ccc Result obtained with FeynArts/FormCalc
ccc strip-off factor of alphas/2pi; mulitplied by 2
	virt=2.d0*(3d0*(dZq + dZsq)*Pi + 2d0*(DBLE(B0i(bb0,0.d0,0.d0,0.d0)) -
cc the gluino-contribution
     .        2*mchi0*MGl*(DBLE(C0i(cc0,msq2,mchi02,0.d0,MGl2,0.d0,msq2))+
     .        DBLE(C0i(cc1,msq2,mchi02,0.d0,MGl2,0.d0,msq2))) -
ccc the gluon-contribution
     .       (mchi02-msq2)*(2*DBLE(C0i(cc0,0.d0,mchi02,msq2,0.d0,0.d0,msq2))+
     .        DBLE(C0i(cc1,0.d0,mchi02,msq2,0.d0,0.d0,msq2)) + 
     .        DBLE(C0i(cc2,0.d0,mchi02,msq2,0.d0,0.d0,msq2)))))/3.d0 

ccc we have to add a term -alphas/3pi * born to restore SUSY (calc was done in dim.reg!!!)
ccc after extraction a factor aphas/2pi this leaves -2/3*Born
	virt=(virt-2d0/3d0)*born
	endif
	end