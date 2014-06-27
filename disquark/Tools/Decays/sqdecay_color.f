ccc assign the color-flows for the decays:
	subroutine sqdecay_borncol(bornind, decchan)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_rad.h'
	include 'LesHouches.h'
	integer i,decchan,bornind,iub
	logical is_coloured
      iub = rad_ubornidx

	if(decchan.eq.1) then 
	  do i=5,nlegborn
	   if(flst_bornres(i,iub).eq.bornind) then
	     if(.not.is_coloured(idup(i))) then
	       icolup(1,i)=0
	       icolup(2,i)=0
	     else
	       icolup(1,i)=icolup(1,bornind)!daughters get color 
	       icolup(2,i)=icolup(2,bornind)!of mother particle
	     endif
	   endif
	  enddo
	endif
	end

	subroutine sqdecay_realcol
	implicit none
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'LesHouches.h'
	include 'PhysPars.h'
	integer colind,i,sqtype,realind
	logical is_coloured
	if(kn_resemitter.eq.0) then
	  call realcolour_lh
	  if(flg_decay) then
	    call sqdecay_borncol(3, par_decchan1)
	    call sqdecay_borncol(4, par_decchan2)
	  endif
	else
	  call borncolour_lh !already sets the color for both decays to born-case
			         !overwrite consistently
	  realind=kn_resemitter

	  sqtype=1
	  if(idup(realind).lt.0) sqtype=-1

	  if(par_decchan1.eq.1.and.par_decchan2.eq.1) then
	    do i=5,nup-1
	      if(mothup(1,i).eq.mothup(2,i).and.mothup(1,i).eq.realind) then
	        if(.not.is_coloured(idup(i))) then
	          icolup(1,i)=0
	          icolup(2,i)=0
	        else
	          call getnewcolor(colind)
		    icolup(1,i)=colind
		    icolup(2,i)=0
	          if(sqtype.lt.0) call colour_conj( icolup(1:2,i))
	        endif
	      endif
	    enddo
	    if(sqtype.gt.0) then
	      icolup(1,nup)=icolup(1,realind)!daughters get color 
	      icolup(2,nup)=colind!of mother particle
	    else
            icolup(1,nup)=colind
	      icolup(2,nup)=icolup(2,realind)
	    endif
	  endif
	endif
	end