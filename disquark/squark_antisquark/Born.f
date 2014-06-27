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

cc spin-correlations for gg-case
	  if(bflav(1).eq.0) then
	    do i=0,3
	      do j=0,3
		  bmunu(i,j,1)=bmunu(i,j,1)*decborn1*decborn2
		  bmunu(i,j,2)=bmunu(i,j,2)*decborn1*decborn2
	      enddo
	    enddo
	  endif
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
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
	include 'pwhg_flst.h'
      real*8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
	real*8 pcopy(0:3,nlegborn),mass(1:nlegborn),tempbjk
	real*8 decborn1,decborn2,decbornjk1,decbornjk2
	integer fla1,fla2,chir1,chir2
      real*8 bmunu(0:3,0:3,nlegborn),born
      integer mu,nu,i,j
      real*8 gs4,mglu  
	real*8 shat,uhat,that
	real*8 pref1,pref2
	real*8 T1,T2 !ME^2 (cf. the traces) for the qqbar-channel
	real*8 Bo1,Bo2 !Color-factors for qqbar-channel
	real*8 BCC1_1,BCC1_2,BCC1_3,BCC1_4,BCC1_5,BCC2_1,BCC2_2,BCC2_3 ! for the born-color-correl. MEs
	real*8 M1,M2,M3,M4,M12,M13,M23,M24,M34,M14 !ME^2 (cf. the traces) for the gg-channel
	real*8 Go1,Go2,Go3,Go12,Go23,Go24 !Color-factor for gg-channel
	real*8 dotp
	external dotp

	mglu=par_mglu
	gs4=(4d0*pi*st_alpha)**2

c get some copies of the momenta and the masses
	do i=1,nlegborn
	   mass(i)=kn_masses(i) 
	   do j=0,3
		pcopy(j,i)=p(j,i)
	   enddo
	enddo	

c reset the spin-correlations (for qqbar: no spin-corr, for gg: only for leg 1 and 2, obviously)
        do j=1,nlegborn
          do mu=0,3
            do nu=0,3
               bmunu(mu,nu,j)=0d0
            enddo
          enddo
        enddo

c Mandelstam:
 	shat=kn_sborn
cc note: the sq antisq formulae are for the order p1-> sq, p2->sqbar
cc       if the other way around: switch t and u
	if(bflav(1).lt.0) then
  	  uhat=-2d0*dotp(pcopy(0:3,1),pcopy(0:3,3))+mass(3)**2
	  that=-2d0*dotp(pcopy(0:3,1),pcopy(0:3,4))+mass(4)**2      
	else !normal order
	  that=-2d0*dotp(pcopy(0:3,1),pcopy(0:3,3))+mass(3)**2
	  uhat=-2d0*dotp(pcopy(0:3,1),pcopy(0:3,4))+mass(4)**2
	endif

c Flavours/chiralities:
	fla1=mod(abs(bflav(3)),pdgfac)
	fla2=mod(abs(bflav(4)),pdgfac)
	chir1=abs(bflav(3))/pdgfac
	chir2=abs(bflav(4))/pdgfac

c Color-factors:
	Bo1=2d0
	Bo2=-2d0/3d0
	Go1=12d0
	Go2=16d0/3d0
	Go3=28d0/3d0
	Go12=-6d0
	Go23=Bo2
	Go24=14d0/3d0

c prefactors:
	pref1=gs4/4d0/9d0
	pref2=gs4/4d0/64d0

c the factors for the color-correlated ME's:
c i) for the qqbar-case only 5 different numerical values needed
	BCC1_1=-7d0/3d0
	BCC1_2= 1d0/3d0
	BCC1_3=-2d0/3d0 
	BCC1_4=-1d0/9d0
	BCC1_5=10d0/9d0 
c ii) for the gg-case:
	BCC2_1=-9d0
	BCC2_2=-8d0
	BCC2_3=-64d0/9d0

ccc the qqbar-cases:
	if(bflav(1).ne.0) then 
	  T1=8d0*(uhat*that-mass(3)**2*mass(4)**2)
	  T2=mglu**2*shat
    ! same-flavour in initial-state: s and t-channel
	  if(abs(bflav(1)).eq.abs(bflav(2))) then
	! only one flavour-type
	    if(abs(bflav(1)).eq.fla1) then
	      if(chir1.eq.chir2) then
		  born=pref1*T1*(Bo1/shat**2+Bo1/(2d0*(that-
     .             mglu**2)**2)+Bo2/shat/(that-mglu**2))
 
	        bornjk(1,2)=-pref1*T1*(BCC1_2/shat**2+BCC1_1/(2d0*(that-
     .             mglu**2)**2)+BCC1_4/shat/(that-mglu**2))
	        bornjk(1,3)=-pref1*T1*(BCC1_1/shat**2+BCC1_2/(2d0*(that-
     .             mglu**2)**2)+BCC1_4/shat/(that-mglu**2))
	        bornjk(1,4)=-pref1*T1*(BCC1_3/shat**2+BCC1_3/(2d0*(that-
     .             mglu**2)**2)+BCC1_5/shat/(that-mglu**2))
		else
		  born=pref1*Bo1*4d0*T2/(that-mglu**2)**2

	        bornjk(1,2)=-pref1*T2*4d0*(BCC1_1/((that- mglu**2)**2))
	        bornjk(1,3)=-pref1*T2*4d0*(BCC1_2/((that- mglu**2)**2))
	        bornjk(1,4)=-pref1*T2*4d0*(BCC1_3/((that- mglu**2)**2))
	      endif
	! different flavours in IS/FS-> only s-channel
	    else
		if(chir1.eq.chir2) then
		  born=pref1*Bo1*T1/shat**2

	        bornjk(1,2)=-pref1*T1*(BCC1_2/shat**2)
	        bornjk(1,3)=-pref1*T1*(BCC1_1/shat**2)
	        bornjk(1,4)=-pref1*T1*(BCC1_3/shat**2)
	      else
		  write(*,*) 'Senseless Flavour-structure in born:'
		  print*,chir1,chir2,abs(bflav(1)),fla1
	        write(*,*) bflav(1:4)
	        call exit(-1)
	      endif
	    endif
   ! different flavours in IS-> only t-channel
   ! note: t and u are already correctly set
	  else if(abs(bflav(1)).eq.fla1.or.abs(bflav(2)).eq.fla1) then
	  
	    if(chir1.eq.chir2) then
		born=pref1*Bo1*T1/2d0/(that-mglu**2)**2

	        bornjk(1,2)=-pref1*T1*(BCC1_1/(2d0*(that- mglu**2)**2))
	        bornjk(1,3)=-pref1*T1*(BCC1_2/(2d0*(that- mglu**2)**2))
	        bornjk(1,4)=-pref1*T1*(BCC1_3/(2d0*(that- mglu**2)**2))
	    else
		born=pref1*Bo1*T2*4d0/(that-mglu**2)**2

	        bornjk(1,2)=-pref1*T2*4d0*(BCC1_1/((that- mglu**2)**2))
	        bornjk(1,3)=-pref1*T2*4d0*(BCC1_2/((that- mglu**2)**2))
	        bornjk(1,4)=-pref1*T2*4d0*(BCC1_3/((that- mglu**2)**2))
	    endif
	  else !should never be here:
	    write(*,*) 'Senseless Flavour-structure in born:'
	    write(*,*) bflav(1:4)
	    call exit(-1)
	  endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccc for the case qbar q -> sq sqbar: we have to exchange the particles 3 and 4 at this point 
cccc in the B_jk
	  if(bflav(1).lt.bflav(2)) then
	    tempbjk=bornjk(1,3)
	    bornjk(1,3)=bornjk(1,4)
	    bornjk(1,4)=tempbjk
	  endif

ccc now we can assign the rest of the bornjk, determined by "color-conservation" and the Casimirs
ccc of the IS/FS particles
         bornjk(2,3)=bornjk(1,4)
         bornjk(2,4)=bornjk(1,3)
         bornjk(3,4)=bornjk(1,2)
c no spin-correlation for qqbar -> bmunu is already 0
ccc the gg-case:
	else
	  if(bflav(2).ne.0) then !should never occur, but check anyway
	     write(*,*) 'Senseless flavour-structure in born:'
	     write(*,*) bflav(1:4)
	     call exit(-1)
	  endif

! 1-> s-channel, 2->t-channel, 3-> u-channel, 4-> 4-vertex
	  M1=(2d0*(uhat-that)**2+4d0*shat*(4d0*mass(3)**2-shat))
	  M2=4d0*(that+mass(3)**2)**2
	  M3=4d0*(uhat+mass(3)**2)**2
	  M4=4d0

!interference-contributions (factor 2 not yet applied!!)
	  M12=-(4d0*mass(3)**4+2d0*mass(3)**2*(that-uhat)-5d0/2d0*that**2
     .       -uhat*that-uhat**2/2d0)
	  M13=(4d0*mass(3)**4+2d0*mass(3)**2*(uhat-that)-5d0/2d0*uhat**2
     .       -that*uhat-that**2/2d0)
! M14 =0
	  M14=3d0*(uhat-that) !Assumed that a factor i has been absorbed from 
!                                 the color-factor; as usually factor 2 NOT included
	  M23=(shat-4d0*mass(3)**2)**2
	  M24=-(4d0*mass(3)**2+4d0*that-shat)/2d0
	  M34=-(4d0*mass(3)**2+4d0*uhat-shat)/2d0

	  born=pref2*(Go1*M1/shat**2 + Go2*M2/(that-mass(3)**2)**2
     .              + Go2*M3/(uhat-mass(3)**2)**2 + Go3*M4
     .              + 2d0*(Go12*M12/shat/(that-mass(3)**2) 
     .              -      Go12*M13/shat/(uhat-mass(3)**2) !Go13=-Go12
     .              +      Go23*M23/(that-mass(3)**2)/(uhat-mass(3)**2)
     .              +      Go24*M24/(that-mass(3)**2) 
     .              +      Go24*M34/(uhat-mass(3)**2)))

	  bornjk(1,2)=-pref2*BCC2_1*(2d0*M1/shat**2 + M2/(that-mass(3)**2)**2
     .              + M3/(uhat-mass(3)**2)**2 + 2d0*M4
     .              + 2d0*(-M12/shat/(that-mass(3)**2) 
     .              +       M13/shat/(uhat-mass(3)**2)
     .              +       M24/(that-mass(3)**2) 
     .              +       M34/(uhat-mass(3)**2)))
	  bornjk(1,3)=-pref2*(BCC2_1*M1/shat**2 + BCC2_2*M2/(that-mass(3)**2)**2
     .              + (BCC2_2-BCC2_1)*M3/(uhat-mass(3)**2)**2 + (4d0*BCC2_2-3d0*BCC2_1)*M4
     .              + 2d0*(-BCC2_1*M12/shat/(that-mass(3)**2) 
     .              -      BCC2_1*M14/shat 
     .              +      (BCC2_2-BCC2_1)*M23/(that-mass(3)**2)/(uhat-mass(3)**2)
     .              +      (2d0*BCC2_2-BCC2_1)*M24/(that-mass(3)**2) 
     .              +      (2d0*BCC2_2-2d0*BCC2_1)*M34/(uhat-mass(3)**2)))

	  bornjk(1,4)=-pref2*(BCC2_1*M1/shat**2 + (BCC2_2-BCC2_1)*M2/(that-mass(3)**2)**2
     .              + BCC2_2*M3/(uhat-mass(3)**2)**2 + (-3d0*BCC2_1+4d0*BCC2_2)*M4
     .              + 2d0*(BCC2_1*M13/shat/(uhat-mass(3)**2)
     .              +       BCC2_1*M14/shat 
     .              +      (-BCC2_1+BCC2_2)*M23/(that-mass(3)**2)/(uhat-mass(3)**2)
     .              +      (-2d0*BCC2_1+2d0*BCC2_2)*M24/(that-mass(3)**2) 
     .              +      (-BCC2_1+2d0*BCC2_2)*M34/(uhat-mass(3)**2)))

	  bornjk(2,3)=bornjk(1,4)
	  bornjk(2,4)=bornjk(1,3)
	  bornjk(3,4)=-pref2*(2d0*(BCC2_2-BCC2_1)*M1/shat**2 + (BCC2_3+BCC2_1-2d0*BCC2_2)*M2/(that-mass(3)**2)**2
     .              + (BCC2_3+BCC2_1-2d0*BCC2_2)*M3/(uhat-mass(3)**2)**2 
     .              +  (4d0*BCC2_3+6d0*BCC2_1-10d0*BCC2_2)*M4
     .              + 2d0*((BCC2_1-BCC2_2)*M12/shat/(that-mass(3)**2) 
     .              +      (BCC2_2-BCC2_1)*M13/shat/(uhat-mass(3)**2)
     .              +      (BCC2_3-3d0*BCC2_2+2d0*BCC2_1)*M23/(that-mass(3)**2)/(uhat-mass(3)**2)
     .              +      (2d0*BCC2_3-5d0*BCC2_2+3d0*BCC2_1)*M24/(that-mass(3)**2) 
     .              +      (2d0*BCC2_3-5d0*BCC2_2+3d0*BCC2_1)*M34/(uhat-mass(3)**2)))

c the spin-correlations for gg for leg 1 and 2:
	  call gg_spincorr(pcopy,bmunu(0:3,0:3,1),1,gs4,shat,that,uhat,mass(3))
	  call gg_spincorr(pcopy,bmunu(0:3,0:3,2),2,gs4,shat,that,uhat,mass(3))
	endif

ccc if decays are performed: multiply result with corresponding ME^2:
ccc born-results are cached for further use (esp. in the virtuals)!!
	  if(flg_decay) then
	    call sqdec_born(bflav,3,par_decchan1,p,decborn1,decbornjk1)
	    call sqdec_born(bflav,4,par_decchan2,p,decborn2,decbornjk2)
	  endif

c bornjk is symmetric
	  do i=1,nlegborn
	    do j=i+1,nlegborn
		bornjk(j,i)=bornjk(i,j)
	    enddo
	  enddo
	end

cc subroutine to compute the spin-correlations:
	subroutine gg_spincorr(p,bmunucomp,ind,gs4,s,t,u,msq)
	implicit none
	include 'nlegborn.h'
	real*8 p(0:3,nlegborn)
	real*8 bmunucomp(0:3,0:3) 
	integer ind,indp1,indp2,indk1,indk2
	integer mu,mup
	real*8 gs4,s,t,u,msq
      real*8 gtens(0:3,0:3)
      data gtens/1d0, 0d0, 0d0, 0d0,
     #           0d0,-1d0, 0d0, 0d0,
     #           0d0, 0d0,-1d0, 0d0,
     #           0d0, 0d0, 0d0,-1d0/
      save gtens

	if(ind.eq.1) then
	  indp1=1
	  indp2=2
	  indk1=3
	  indk2=4
	else if(ind.eq.2) then !for the second gluon: swith p1<->p2 and k1<->k2
	  indp1=2
	  indp2=1
	  indk1=4
	  indk2=3
	endif

      do mu=0,3
        do mup=0,3
	    bmunucomp(mu,mup)=gs4/768d0*(
     .           -32d0*(msq**2+u)*(2d0*p(mu,indk2)-p(mu,indp1))*
     .                 (2d0*p(mup,indk2)-p(mup,indp1))/(u-msq**2)**2
     .           -32d0*(msq**2+t)*(2d0*p(mu,indk1)-p(mu,indp1))*
     .                 (2d0*p(mup,indk1)-p(mup,indp1))/(t-msq**2)**2
     .           -4d0*(4d0*msq**2-s)*(2d0*p(mu,indk1)-p(mu,indp1))*
     .                (2d0*p(mup,indk2)-p(mup,indp1))/((t-msq**2)*(u-msq**2))
     .           +28d0*(2d0*p(mu,indk1)-p(mu,indp1))*
     .                (2d0*p(mup,indk2)-p(mup,indp2))/(msq**2-t)
     .           +28d0*(2d0*p(mu,indk2)-p(mu,indp1))*
     .                (2d0*p(mup,indk1)-p(mup,indp2))/(msq**2-u)
     .           -28d0*gtens(mu,mup)
     .           +36d0*(2d0*p(mup,indk1)-p(mup,indp1))*((t-u)*
     .                (p(mu,indk1)+p(mu,indk2))+2d0*p(mu,indp2)*
     .                (4d0*msq**2-s))/(s*(msq**2-t))
     .           +36d0*(2d0*p(mup,indk2)-p(mup,indp1))*((u-t)*
     .                (p(mu,indk1)+p(mu,indk2))+2d0*p(mu,indp2)*
     .                (4d0*msq**2-s))/(s*(msq**2-u))
     .           +3d0*(48d0*(s-4d0*msq**2)*p(mu,indp2)*p(mup,indp2)
     .                 -12d0*(t-u)*((t-u)*gtens(mu,mup)+2d0*p(mu,indp1)*
     .                 (p(mup,indk1)-p(mup,indk2))+2d0*p(mup,indp1)*
     .                 (p(mu,indk1)-p(mu,indk2))))/s**2)
	  enddo
	enddo
	end


