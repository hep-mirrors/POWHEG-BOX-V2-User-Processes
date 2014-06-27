c  calculate the born-contribution
      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'nlegborn.h'
	include 'pwhg_st.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'pwhg_flst.h'
	include 'decay.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn),i,j
      real * 8 bmunu(0:3,0:3,nlegborn),born
      real * 8 decborn1,decborn2,decbornjk1,decbornjk2
      logical ini,is_coloured
	external is_coloured
      data ini/.true./ 
      save ini
c     reset all results
      born = 0d0
	do i=1,nlegborn
	  do j=1,nlegborn
	   bornjk(i,j)=0d0
	  enddo
	enddo 

      call compborn(p,bflav,born,bornjk,bmunu,decborn1,decborn2,decbornjk1,decbornjk2)      
      if(born.eq.0d0) then
        write(*,*) 'WARNING setborn: returning 0 amplitude!'
        write(*,*) bflav(1),' ',bflav(2),'->',bflav(3),' ',bflav(4)
      endif
	
ccc for the decays: 
	if(flg_decay) then
	  dec_born(flst_cur_iborn,1)=decborn1
	  dec_born(flst_cur_iborn,2)=decborn2
	  dec_bornjk(flst_cur_iborn,1)=decbornjk1
	  dec_bornjk(flst_cur_iborn,2)=decbornjk2
	  dec_bornprod(flst_cur_iborn)=born !save production-Born-result!!!
	  do i=1,4
	    do j=1,4
		bornjk(i,j)=bornjk(i,j)*decborn1*decborn2
	    enddo
	  enddo
ccc for the decay: new entry, find index
	  do i=5,nlegborn
	    if(is_coloured(bflav(i))) then
	      if(flst_bornres(i,1).eq.3) then !assume that only ONE decay-channel considered!!
              bornjk(3,i)=born*decbornjk1*decborn2
		  bornjk(i,3)=bornjk(3,i)
		else if(flst_bornres(i,1).eq.4) then
              bornjk(4,i)=born*decborn1*decbornjk2
		  bornjk(i,4)=bornjk(4,i)
		else
	        write(*,*) 'In Born: found coloured particle in FS which is'
	        write(*,*) 'not related to any coloured resonance:'
	        write(*,*) 'Flst:',bflav
	        write(*,*) 'index:',i
	        call exit(-1)
	      endif
	    endif
	  enddo
ccc now rescale born result
	  born=born*decborn1*decborn2
	endif
      end

      subroutine compborn(p,bflav,born,bornjk,bmunu,decborn1,decborn2,decbornjk1,decbornjk2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'  
      include 'pwhg_math.h'
	include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      real*8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
	real*8 pcopy(0:3,nlegborn),mass(1:nlegborn)
	integer flcopy(nlegborn)
	real*8 decborn1,decborn2,decbornjk1,decbornjk2
      real*8 bmunu(0:3,0:3,nlegborn),born
      integer mu,nu,i,j
      real*8 gs4,mglu 
	real*8 shat,uhat,that
	real*8 temp
	real*8 M12_1,M12_2,M22_1,M22_2,M1M2_1,M1M2_2
	real*8 Bo1,Bo2,B121,B122,B123,B131,B132,B133,B141,B142,B143
	real*8 B231,B232,B233,B241,B242,B243,B341,B342,B343

	real*8 dotp
	logical is_coloured
	external dotp,is_coloured

	mglu=par_mglu
	gs4=(4d0*pi*st_alpha)**2

c Color Factors
	Bo1=2.d0
	Bo2=-2.d0/3.d0
	B121=Bo2
	B122=Bo2
	B123=10.d0/9.d0
	B131=1.d0/3.d0
	B132=-7.d0/3.d0
	B133=-1.d0/9.d0
	B141=-B132
	B142=-B131
	B143=-B133

c get some copies of the momenta, the flavour-structure and the masses
	do i=1,nlegborn
	   flcopy(i)=abs(bflav(i))
	   mass(i)=kn_masses(i)   !assume in the following simply sqsq
	   do j=0,3
		pcopy(j,i)=p(j,i)
	   enddo
	enddo	

 	shat=kn_sborn
	that=-2d0*dotp(pcopy(0:3,1),pcopy(0:3,3))+mass(3)**2
	uhat=-2d0*dotp(pcopy(0:3,1),pcopy(0:3,4))+mass(4)**2

c for different-flavours, some care is needed how to call the momenta
c solution for the problem: simply switch uhat and that
c moreover a switching in B13 and B14 is necessary!
	if(flcopy(1).ne.mod(flcopy(3),pdgfac)) then	
	  temp=that
	  that=uhat
	  uhat=temp
c we need only the coefficients for M1^2!-> leave the rest
	  temp=-B131
	  B131=-B141
	  B141=temp 
	endif

c now we can assign the rest of the color-factors:
	B231=B141
	B232=B142
	B233=B143
	B241=B131
	B242=B132
	B243=B133
	B341=B121
	B342=B122
	B343=B123

c --- the occuring squared Matrix-elements
      M12_1 = gs4/(that-mglu**2)**2*4d0*mglu**2*shat
      M12_2 = gs4/(that-mglu**2)**2*4d0*(that*uhat-
     &        mass(3)**2*mass(4)**2)

      M22_1 = gs4/(uhat-mglu**2)**2*4d0*mglu**2*shat
      M22_2 = gs4/(uhat-mglu**2)**2*4d0*(that*uhat-
     &        mass(3)**2*mass(4)**2)

      M1M2_1 = gs4/(uhat-mglu**2)/(that-mglu**2)*4d0*mglu**2*
     &         shat
      M1M2_2 = 0d0

c --- distinguish several cases:
c     1.) equal flavor, equal chirality
c     2.) equal flavor, different chirality
c     3.) different flavor, equal chirality
c     4.) different flavor, different chirality

c    include the factors for spin,color-average, symmetrie-factor 1/2 for 
c    the case 1 and the minus-signs for bornjk! (except for 1,4 and 2,3!!)
c case 1:
	if(flcopy(1).eq.flcopy(2).and.flcopy(3).eq.flcopy(4)) then
	   born = 1d0/4d0/9d0/2d0*(Bo1*(M12_1+M22_1)+2d0*Bo2*M1M2_1)
	   bornjk(1,2)=-1d0/4d0/9d0/2d0*(B121*M12_1+B122*M22_1+
     &                                 B123*2d0*M1M2_1)
	   bornjk(1,3)=-1d0/4d0/9d0/2d0*(B131*M12_1+B132*M22_1+
     &                                 B133*2d0*M1M2_1)
	   bornjk(1,4)=1d0/4d0/9d0/2d0*(B141*M12_1+B142*M22_1+
     &                                 B143*2d0*M1M2_1)
	   bornjk(2,3)=1d0/4d0/9d0/2d0*(B231*M12_1+B232*M22_1+
     &                                 B233*2d0*M1M2_1)
	   bornjk(2,4)=-1d0/4d0/9d0/2d0*(B241*M12_1+B242*M22_1+
     &                                 B243*2d0*M1M2_1)
	   bornjk(3,4)=-1d0/4d0/9d0/2d0*(B341*M12_1+B342*M22_1+
     &                                 B343*2d0*M1M2_1)
	  endif

c case 2:
	if(flcopy(1).eq.flcopy(2).and.flcopy(3).ne.flcopy(4)) then
	   born = 1d0/4d0/9d0*Bo1*(M12_2+M22_2)
	   bornjk(1,2)=-1d0/4d0/9d0*(B121*M12_2+B122*M22_2)
	   bornjk(1,3)=-1d0/4d0/9d0*(B131*M12_2+B132*M22_2)
	   bornjk(1,4)=1d0/4d0/9d0*(B141*M12_2+B142*M22_2)
	   bornjk(2,3)=1d0/4d0/9d0*(B231*M12_2+B232*M22_2)
	   bornjk(2,4)=-1d0/4d0/9d0*(B241*M12_2+B242*M22_2)
	   bornjk(3,4)=-1d0/4d0/9d0*(B341*M12_2+B342*M22_2)
	  endif

c case 3:
	if(flcopy(1).ne.flcopy(2).and.flcopy(3)/10.eq.flcopy(4)/10) then
	   born = 1d0/4d0/9d0*Bo1*(M12_1)
	   bornjk(1,2)=-1d0/4d0/9d0*(B121*M12_1)
	   bornjk(1,3)=-1d0/4d0/9d0*(B131*M12_1)
	   bornjk(1,4)=1d0/4d0/9d0*(B141*M12_1)
	   bornjk(2,3)=1d0/4d0/9d0*(B231*M12_1)
	   bornjk(2,4)=-1d0/4d0/9d0*(B241*M12_1)
	   bornjk(3,4)=-1d0/4d0/9d0*(B341*M12_1)
	  endif

c case 4:
	if(flcopy(1).ne.flcopy(2).and.flcopy(3)/10.ne.flcopy(4)/10) then
	   born = 1d0/4d0/9d0*Bo1*(M12_2)
	   bornjk(1,2)=-1d0/4d0/9d0*(B121*M12_2)
	   bornjk(1,3)=-1d0/4d0/9d0*(B131*M12_2)
	   bornjk(1,4)=1d0/4d0/9d0*(B141*M12_2)
	   bornjk(2,3)=1d0/4d0/9d0*(B231*M12_2)
	   bornjk(2,4)=-1d0/4d0/9d0*(B241*M12_2)
	   bornjk(3,4)=-1d0/4d0/9d0*(B341*M12_2)
	  endif

ccc if decays are performed: multiply result with corresponding ME^2:
ccc born-results are cached for further use (esp. in the virtuals)
	  if(flg_decay) then
	    call sqdec_born(bflav,3,par_decchan1,pcopy,decborn1,decbornjk1)
	    call sqdec_born(bflav,4,par_decchan2,pcopy,decborn2,decbornjk2)
	  endif

	  do i=1,nlegborn
	    do j=i+1,nlegborn
		bornjk(j,i)=bornjk(i,j)
	    enddo
	  enddo

c --- here: no gluons in IS-> Bmunu=0
      do j=1,nlegborn
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu,j)=0d0
            enddo
         enddo
      enddo
	end

