C ************************************************************** C
C ************************************************************** C
C ************************************************************** C
C Usage: e.g. 
C ./minnlo <lhe file> <dynnlo output> [<numerator input>]
C input arguments are: 
C 1) file to be rescaled
C 2) DYNNLO output file
C 3) list of numerators if these already exist. Not mandatory
C
C >>> Variables defined locally in this file: Rmin, prescription.
C >>> We recommend to leave them as they are (Rmin=0.7, prescription=2)
C >>> 
C >>> More details can be found in the following.
C ************************************************************** C
C ************************************************************** C
C ************************************************************** C
C
C
C Rmin is used as jet radius to generate the plots which we 
C extract the denumerator weights from. In other words, it 
C is used to analyze the LH files from VJ-MiNLO.
C >>>
C >>> Therefore, it MUST match the jet radius used in DYNNLO.
C >>> Look at all the occurences of !:
C >>>
C 
C prescription is the switch controlling the W(y,pt) reweighing
C function we use.
C prescription=1 corresponds to eq. 2.10 in 1309.0017
C prescription=2 corresponds to eq. 2.12 in 1309.0017
C i.e.
C 1: W = h*(NNLO_A/MINLO_A)       + (1-h)
C 2: W = h*(NNLO-MINLO_B)/MINLO_A + (1-h)
C >>>
C >>> The suggested value, which was used in 1309.0017, is 2.
C >>>
      program minnlo
      implicit none
      include 'pwhg_weights.h'
      include 'LesHouches.h'
      include 'pwhg_book-multi.h'
c      include 'pwhg_bookhist-multi.h'
      include 'maxrwgtfiles.h' 
      include 'mxpart.f'

      character*6 WHCPRG
      common/cWHCPRG/WHCPRG

      real*8  wmass,wwidth
      common/wmass/wmass,wwidth
      integer ios,nlf,nlo,nev,iev

      character*(1000) lhFile
      integer nFiles
C     maxgwgtfiles: max number of "input" files for reweighting
      character*(1000) rwgtFiles(maxrwgtfiles), denfiles(maxmulti)
      character*(40) rwgtstring(maxrwgtfiles)
      integer dataIndex
      character*(2) cdataIndex

C     nhist: max number of distributions 
C     maxbins: max number of bins per distribution 
      integer  nDataSets(maxrwgtfiles)
      integer  nLines(nmh3d),n_Num
      character * 100 dataSetTitles(nmh3d)
      real * 8 Xlo(nmh3d,maxbins)
      real * 8 Xhi(nmh3d,maxbins)
      real * 8 Ylo(nmh3d,maxbins)
      real * 8 Yhi(nmh3d,maxbins)
      real * 8 Zlo(nmh3d,maxbins)
      real * 8 Zhi(nmh3d,maxbins)
      real * 8 num_Y(nmh3d,maxbins,maxrwgtfiles)
      real * 8 num_Yerr(nmh3d,maxbins,maxrwgtfiles)

      real * 8 den_Y(maxmulti,nmh3d,maxbins)
      real * 8 den_Yerr(maxmulti,nmh3d,maxbins)
     
      real*8  Rmin !:
      data    Rmin/0.7d0/
      common/Rmin/Rmin
      character*(3) cRmin

      integer prescription
      logical kfact_resc
      data prescription,kfact_resc/2,.true./
      save prescription,kfact_resc
      character*(1) cprescription

      real * 8 resc(maxrwgtfiles,maxmulti),prim_resc(maxbins,maxrwgtfiles,maxmulti)
      real * 8 den_xsec(nmh3d,maxmulti), num_xsec(nmh3d,maxrwgtfiles)
      real * 8 overall_kfact(maxrwgtfiles,maxmulti)
      real * 8 yW,ptw,HT,ptj1,ptj2,hdamp,theta,theta_l,theta_t
      real * 8 etaw,pw(4),mw,histo(10),p_ele(4)
      real * 8 damping_vec  !:
      real * 8 p(bigmxpart,4), tmp,x
      real * 8 boost(4), p_boosted(4)
      integer  ibin,iline,count(10)
      integer xbin, ybin, zbin
      integer counter5(maxrwgtfiles,maxmulti)
      integer i,j,k,l,njets

      character*(100) tmpLine,tmpLine2

      character*(1000) lhFile2
      integer lprefix

      logical addnewweightline
      real * 8 renscfact,facscfact
      integer lhans1,lhans2
      character*(3) PDFp
      common/creweightinfo/renscfact,facscfact,lhans1,lhans2,
     $     addnewweightline,PDFp


C     Which level are we reweighting at ('LHE   ' / 'PYTHIA' / 'HERWIG')?
      WHCPRG='LHE   '

C     What jet radius do the jets have in the RWGT denominator / numerator files?
c$$$      Rmin=0.7d0 !:
      write(cRmin,'(f3.1)') Rmin
      cRmin=trim(adjustl(cRmin))

C     Which reweighting prescription are we using 
c     ( 1: h*(NNLO_A/MINLO_A)       + (1-h) )
c     ( 2: h*(NNLO-MINLO_B)/MINLO_A + (1-h) )
c$$$      prescription=2 !:
      write(cprescription,'(i1)') prescription
      cprescription=trim(adjustl(cprescription))

      write(*,*) ''
      write(*,*) '*************************************'
      write(*,*) '*                                   *'
      write(*,*) '* minnlo NNLO reweighting:          *'
      write(*,*) '* ------------------------          *'
      write(*,*) '*                                   *'
      write(*,*) '* Reweighting will be carried out   *'
      write(*,*) '* at the ',WHCPRG,' level.              *'
      write(*,*) '*                                   *'
      write(*,*) '* Reweighting functions profiled    *'
      write(*,*) '* w.r.t jet pTs in input data for   *'
      write(*,*) '* weight numerator and denominators *'
      write(*,*) '* are assumed to be clustered with  *'
      write(*,'(a,f9.6,a)') 
     $     ' * radius Rmin = ',Rmin,'           *'
      write(*,'(a,i2,a)') 
     $     ' * Reweighting prescription used:',prescription,'  *'
      write(*,*) '*                                   *'
      write(*,*) '*************************************'
      write(*,*) ''
      
      
C     Get the inputs from the command line and check for consistency
      call readCommandLine(lhFile,rwgtFiles,rwgtstring,nfiles,n_Num,denfiles,dataIndex)
      print*, 'dataIndex', dataIndex

C     Load in the input data
      call loadInputData(n_Num,rwgtFiles,
     $     nDataSets,nLines,dataSetTitles,
     $     Xlo,Xhi,
     $     Ylo,Yhi,
     $     Zlo,Zhi,num_Y,num_Yerr)

C     Open the event file and count how many events
      call opencount(lhFile,nev)

C     Check if the events have reweight info or not. 
C     If they do, count how many weights.
C     If they don't, remember this in addnewweightline.
      nlf = 10
      open(unit=nlf,file=trim(lhFile),status='old',iostat=ios)
      call lhefreadhdr(nlf)
c     read first event to get the number of weights & rewind 
      call lhefreadev(nlf)   
      rewind(nlf)
      if(weights_num.ne.0) then
         addnewweightline=.false.
         write(*,'(/,a,i3,a,/)') 'Found ',weights_num,' weights per '//
     $        'event in LH input file'
      else
         write(*,*) 'In ',trim(lhFile),' the "#new weight" line '//
     $        'is missing. Will use the standard weight (xwgtup).'
         addnewweightline=.true.
c     Extract from header the values associated to the keywords
c     'renscfact','facscfact','lhans1','lhans2','PDF package'.
c     If any of them is missing, use -1 or '?' as value.
c     If this happens, some information is missing in the
c     header copied from the input file. In general, this
c     should not happen.       
         renscfact=-1
         facscfact=-1
         lhans1=-1
         lhans2=-1
         PDFp=' ? '
         i=0
         do while(i.eq.0)
            read(nlf,fmt='(a)',iostat=ios) tmpLine
            do j=1,100
               if(tmpline(j:j).eq.'#'.or.tmpline(j:j).eq.'!') then
                  tmpline(j:)=' '
               endif
            enddo
            if(index(tmpLine,'</eve').ne.0) i=1
            if(index(tmpLine,'renscfact').ne.0) then
               tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $              :len(tmpLine))
               read(tmpLine2,*,iostat=ios) renscfact
            endif
            if(index(tmpLine,'facscfact').ne.0) then
               tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $              :len(tmpLine))
               read(tmpLine2,*,iostat=ios) facscfact
            endif
            if(index(tmpLine,'lhans1').ne.0) then
               tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $              :len(tmpLine))
               read(tmpLine2,*,iostat=ios) lhans1
            endif
            if(index(tmpLine,'lhans2').ne.0) then
               tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $              :len(tmpLine))
               read(tmpLine2,*,iostat=ios) lhans2
            endif
            if(index(tmpLine,'PDF package').ne.0) then
               tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $              :len(tmpLine))
               read(tmpLine2,*,iostat=ios) PDFp
            endif
         enddo
         rewind(nlf)
      endif

c     Find the value of wmass in the header of the event
c     file, and read its value. This is needed, because we 
c     will use this (fixed) value in the reweighting function,
c     and the same must have been used in DYNNLO.
c     If this is not found, abort the program.
c     
C     Read in all lines until you find the first occurrence of wmass
      ios=0
      wmass=-1000d0
      wwidth=-1000d0
      do while(ios.eq.0)
         read(nlf,fmt='(a)',iostat=ios) tmpLine
         if(index(tmpLine,'Wmass').ne.0) then
            tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $                        :len(tmpLine))
            read(tmpLine2,*,iostat=ios) wmass
         endif
         if(index(tmpLine,'Wwidth').ne.0) then
            tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $                        :len(tmpLine))
            read(tmpLine2,*,iostat=ios) wwidth
         endif
      enddo
      if(wmass.lt.0) then
         write(*,*) 'wmass token not found in LH input file'
         wmass=80.398d0
         write(*,*) 'wmass set to ', wmass
      else
         write(*,*) ' In LH input file header, found '//
     $        'wmass = ',wmass
      endif
      if(wwidth.lt.0) then
         write(*,*) 'wwidth token not found in LH input file'
         wwidth=2.08872
         write(*,*) 'wwidth set to ', wwidth
      else
         write(*,*) ' In LH input file header, found '//
     $        'wwidth = ',wwidth
      endif
      rewind(nlf)


cccccccccccccccccccccccccccc
C     Compute denominators 
cccccccccccccccccccccccccccc
      den_xsec=0d0
      num_xsec=0d0
      if(nfiles.eq.0) then
         write(*,*) 'Starting step 1: computing denominators'
         call init_hist(weights_num)
         do j=1,nev
            if(mod(j,100000) == 0) write(*,*) '  step 1: at event ',
     $           j,'/',nev
            call lhefreadev(nlf)   
            if(WHCPRG == 'LHE   ') then
               call lhuptohepevt(j)
               if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
               weights_val=weights_val/nev
               call analysis(xwgtup/nev) !AK: We have to normalize to the number of events, as dynnlo normalises before filling of histograms and we use the same routine for both filling here and in dynnlo            
            else
c     here shower and then call analysis...
               write(*,*) 'denominators after showering'//
     $              'not implemented. Program stops.'
               stop
            endif
            call pwhgaccumup3
         enddo
c     finish denominator plots
         call lheanend
         close(nlf) 

C     Now we have the denominators in hist3
C     just swap indices to keep things simple
         ibin=0
         iline=0
         do i=1,nmh3d
            do j=1,maxbinx
               do k=1,maxbiny
                  do l=1,maxbinz
                     ibin=(j-1)*nbin3(2,i)*nbin3(3,i)+(k-1)*nbin3(3,i)+l ! Converts (x,y,z) into line number
                     den_Y(:,i,ibin) = hist3(:,j,k,l,i+nmh33d)
                     den_Yerr(:,i,ibin) = hist3(:,j,k,l,i+nmh43d)
                  enddo
               enddo
            enddo
         enddo
         print*, 'Finished step 1. Rerun with newly computed 
     $        denominators to perform step 2 (reweighting)'
         stop
      else
         print*, 'Reading denominators from input'
         call LoadDenominatorsInput(nFiles,denFiles,
     $        den_y,den_yerr)
         close(nlf)
      endif
C     now open event file again to read events 
C     and do the rescaling 
      nlf = 10
      open(unit=nlf,file=lhFile,status='old',iostat=ios)
C     open also output file (will contain rescaled weights)
      nlo = 11
      lhFile2='fn'//trim(cdataIndex)//
     $     '-p'//cprescription//
     $     '-R'//cRmin//
     $     '-nnlo-'//trim(lhFile)

      lhFile2=trim(lhfile)//'-nnlo'


      open(unit=nlo,file=trim(lhFile2),status='unknown',iostat=ios)
C     read and copy header
      call lhefreadwritehdr(nlf,nlo)

c     If we have a single NLO weight and no 'new weight' line,
c     then weights_num is 0, whereas the index to be used 
c     for the denominator plots is 1 [do j=1,weights_num]
      if(addnewweightline) weights_num=1
      counter5=0

ccccccccccccccccc
C     main loop
ccccccccccccccccc
      write(*,*) ''
      write(*,*) 'Starting step 2: computing NNLO rescaling'
      call init_hist(weights_num)
      histo=0d0
      count=0
      do i=1,nmh3d
         do j=1,maxbinx
            do k=1,maxbiny
               do l=1,maxbinz
                  ibin=(j-1)*nbin3(2,i)*nbin3(3,i)+(k-1)*nbin3(3,i)+l ! Converts (x,y,z) into line number
c     Computes the integrated cross section of each of the distributions
c     for denominators and numerators
                  den_xsec(i,:)=den_xsec(i,:)+den_Y(:,i,ibin)
     $                 *(Xhi(i,ibin)-Xlo(i,ibin))
     $                 *(Yhi(i,ibin)-Ylo(i,ibin))
     $                 *(Zhi(i,ibin)-Zlo(i,ibin))
                  num_xsec(i,:)=num_xsec(i,:)+num_Y(i,ibin,:)
     $                 *(Xhi(i,ibin)-Xlo(i,ibin))
     $                 *(Yhi(i,ibin)-Ylo(i,ibin))
     $                 *(Zhi(i,ibin)-Zlo(i,ibin))
                  
               enddo
            enddo
         enddo
      enddo
c     Computes the k-factor associated with each integrated distribution
      do i=1,maxrwgtfiles
         do j=1,maxmulti
            overall_kfact(i,j)=num_xsec(dataindex,i)/den_xsec(dataindex,j)
         enddo
      enddo

c     Here we compute the rescaling factors based on the prescription.
C     dataindex set the distribution to be used for the rescaling.
         
C     num_y(:,1,:)                        ==> (dsig_NNLO)
C     num_y(:,dataindex,:)                ==> (dsig_NNLO)_A
         
C     den_y(:,1,:)                        ==> (dsig_MINLO)
C     den_y(:,dataindex,:)                ==> (dsig_MINLO)_A
C     (den_y(:,1,:)-den_y(:,dataindex,:)) ==> (dsig_MINLO)_B
      do ibin=1,maxbins
         do i=1,maxrwgtfiles
            do j=1,maxmulti
               if(prescription.eq.1) then
                  prim_resc(ibin,i,j) = 
     $                 num_y(dataindex-1,ibin,i)/den_y(j,dataindex-1,ibin)
               elseif(prescription.eq.2) then
                  prim_resc(ibin,i,j) = 
     $                 (  num_y(dataindex-1,ibin,i)-
     $                 (den_y(j,dataindex-1,ibin)-den_y(j,dataindex,ibin)) 
     $                 )
     $                 /den_y(j,dataindex,ibin)
               else
                  write(*,*) 'reweighting prescription '//
     $                 'not implemented yet.'
                  write(*,*) 'Quitting ...'
                  stop
               endif
            enddo
         enddo
      enddo

      do iev=1,nev
         if(mod(iev,100000) == 0) write(*,*) '  step 2: at event ',
     $        iev,'/',nev
C     read and copy event 
         call lhefreadwriteev(nlf,nlo) 
C     fill hepevt common block, neeed by find_jets
         call lhuptohepevt(iev)
         
C     find jets 
         call find_jets(Rmin,p,njets) ! p are output jet momenta
         
C     get W and jet kinematics
         pw(1:4) = pup(1:4,3)
         p_ele(1:4) = pup(1:4,4) !In event file electron is fourth particle
         theta=p_ele(3)
     $        /sqrt(p_ele(1)*p_ele(1)+p_ele(2)*p_ele(2)+p_ele(3)*p_ele(3))
         theta=acos(theta)
         boost=0d0
         boost(3)=pw(3)
         boost(4)=pw(4)
         if(boost(3).eq.0d0) then
            theta_l=theta
         else
            call lab_to_CM(boost,p_ele,p_boosted)
            theta_l=p_boosted(3)
     $           /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $           p_boosted(3)*p_boosted(3))
            theta_l=acos(theta_l)
         endif
         boost=0d0
         boost(1)=pw(1)
         boost(2)=pw(2)
         boost(4)=pw(4)
         call lab_to_CM(boost,p_ele,p_boosted)
         theta_t=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_t=acos(theta_t)
         
         call getyetaptmass(pw,yw,etaw,ptw,mw)
         HT=sqrt(ptw*ptw+mw*mw)
         call get_ptj1j2(p,ptj1,ptj2)
         HT = HT+ptj1+ptj2      ! NB HT includes only two hardest jets
         x=atan((mw**2-wmass**2)/(wmass*wwidth))
C     Compute damping factor associated to the weight 
c     profile fn (dataindex) depending on pTH / pTJ1 / HT ...
         call get_wdamp(ptj1,damping_vec)
         
C     Find bin associated to current value of W rapidity, mass and angle
         xbin = 0
         ybin = 0
         zbin = 0
         ibin = 0

         tmp=((yw-HMIN3(1,dataindex))/HDEL3(1,dataindex))+1d0
         xbin=int(tmp)
         tmp=((theta_l-HMIN3(2,dataindex))/HDEL3(2,dataindex))+1d0
         ybin=int(tmp)
         tmp=((x-HMIN3(3,dataindex))/HDEL3(3,dataindex))+1d0
         zbin=int(tmp)
         ibin=(xbin-1)*nbin3(2,dataindex)*nbin3(3,dataindex)
     $        +(ybin-1)*nbin3(3,i)+zbin ! Converts (x,y,z) into line number

         if (xbin.gt.nbin3(1,dataindex).or.xbin.lt.0
     $        .or.ybin.gt.nbin3(2,dataindex).or.ybin.lt.0
     $        .or.zbin.gt.nbin3(3,dataindex).or.zbin.lt.0) then 
            write(*,*) 'event out of range', yw, theta, mw
            cycle
         endif
         
         
         resc = 0d0
         hdamp = damping_vec

c     Here add a damping factor to the rescaling factor
         do i=1,n_Num
            do j=1,weights_num  ! number of weights in the event file 
               resc(i,j) = 
     $              prim_resc(ibin,i,j)*hdamp+1d0-hdamp
               if(abs(resc(i,j)).gt.5d0) then   ! This happens whenever the denominator or numerator is poorly populated. 
                  counter5(i,j)=counter5(i,j)+1 ! In that case we either just reweight with the overall k-factor or
                  if(kfact_resc) then           ! set resc=1.
                     resc(i,j)=overall_kfact(i,j)
                  else
                     resc(i,j)=1d0
                  endif
               endif
            enddo
         enddo
      
                 
C     write event extra info with rescaled weights
         call lhefreadwriteextrannlo(resc,n_Num,rwgtstring,nlf,nlo) 
      enddo

      close(nlf) 
      close(nlo) 
      write(*,*) 'The following number of events had an absolute'
      write(*,*) 'rescaling factor greater than 5'
      write(*,*) 'Numerator', 'Weight', 'Counter'
      do i=1,n_Num
         do j=1,weights_num
            write(*,*) i,j, counter5(i,j)
         enddo
      enddo
C     If ever needed, here add some sanity-check counters

C     write how the reweighted file is called
      write(*,*) 'LH file with nnlo weights: ',trim(lhFile2)
      end





C ************************************************************** C
C ************************************************************** C
C ************************************************************** C
C - Loops over all numerator files, then within that loop,
C - it further loops over all data sets (histograms),
C - loading them into the returned 3-D arrays
C - Xlo,Xhi,num_Y,num_Yerr,den_Y,den_Yerr
C - i.e. ALL data in all numerator files is loaded (in case down the line
C - we might want to compute reweightings for all different possible
C - weights that the data files allow).
      subroutine loadInputData(n_Num,rwgtFiles,
     $                         nDataSets,nLines,dataSetTitles,
     $                         Xlo,Xhi,
     $                         Ylo,Yhi,
     $                         Zlo,Zhi,num_Y,num_Yerr)
      implicit none
      include 'pwhg_book-multi.h'
      include 'maxrwgtfiles.h'

      character*(1000) rwgtFiles(maxrwgtfiles)

      integer  nDataSets(maxrwgtfiles)
      integer  nLines(nmh3d)
      character * 100 dataSetTitles(nmh3d)
      real * 8 Xlo(nmh3d,maxbins)
      real * 8 Xhi(nmh3d,maxbins)
      real * 8 Ylo(nmh3d,maxbins)
      real * 8 Yhi(nmh3d,maxbins)
      real * 8 Zlo(nmh3d,maxbins)
      real * 8 Zhi(nmh3d,maxbins)
      real * 8 num_Y(nmh3d,maxbins,maxrwgtfiles)
      real * 8 num_Yerr(nmh3d,maxbins,maxrwgtfiles)


      integer jxx,ixx

      integer ios
      integer nDataSetsNum
      character*(100) tmpLine
      integer nLinesNum,n_Num

      character * 100 tmp_title
      real * 8 tmp_Xlo(maxbins),tmp_Xhi(maxbins)
      real * 8 tmp_Ylo(maxbins),tmp_Yhi(maxbins)
      real * 8 tmp_Zlo(maxbins),tmp_Zhi(maxbins)
      real * 8 tmp_Y(maxbins),tmp_Yerr(maxbins)

      ndatasets = 0 
C - Read in all data in 'numerator' reweighting files
      do ixx=1,n_Num
         
         nDataSets(ixx)=-1
C     - Count number of data sets in the numerator file
         ios=0
         nDataSetsNum=0
         open(unit=11,file=rwgtFiles(ixx),status='old')
         do while(ios.eq.0)
            read(11,fmt='(a)',iostat=ios) tmpLine
            if(index(tmpLine,'#').ne.0) nDataSetsNum=nDataSetsNum+1
         enddo
         close(11)
         nDataSets(ixx) = nDataSetsNum
C     - Load in each data set for the current numerator file
         do jxx=1,nDataSetsNum
            nLinesNum=-1
            call loadDataSet(rwgtFiles(ixx),jxx-1,
     $           nLinesNum,tmp_title,
     $           tmp_Xlo,tmp_Xhi,
     $           tmp_Ylo,tmp_Yhi,
     $           tmp_Zlo,tmp_Zhi,tmp_Y,tmp_Yerr)
            nLines(jxx)        = nLinesNum
            dataSetTitles(jxx) = tmp_title
            Xlo(jxx,:)         = tmp_Xlo
            Xhi(jxx,:)         = tmp_Xhi
            Ylo(jxx,:)         = tmp_Ylo
            Yhi(jxx,:)         = tmp_Yhi
            Zlo(jxx,:)         = tmp_Zlo
            Zhi(jxx,:)         = tmp_Zhi
            num_Y(jxx,:,ixx)       = tmp_Y
            num_Yerr(jxx,:,ixx)    = tmp_Yerr
         enddo
      enddo
      end
C ************************************************************** C
C ************************************************************** C
C ************************************************************** C
C - Loops over all denominator files, then within that loop,
C - it further loops over all data sets (histograms),
C - loading them into the returned 3-D arrays
C - den_Y,den_Yerr. The binning is assumed identical to the numerators.
C - i.e. ALL data in all denominator files are loaded (in case down the line
C - we might want to compute reweightings for all different possible
C - weights that the data files allow).
      subroutine loadDenominatorsInput(nFiles,denFiles,den_Y,den_Yerr)
      implicit none
      include 'pwhg_book-multi.h'
      include 'maxrwgtfiles.h'

      character*(1000) denFiles(maxmulti)

      integer nFiles
      real * 8 den_Y(maxmulti,nmh3d,maxbins)
      real * 8 den_Yerr(maxmulti,nmh3d,maxbins)


      integer jxx,ixx

      integer ios
      integer nDataSetsNum,ndatasets(maxmulti)
      character*(100) tmpLine
      integer nLinesNum

      character * 100 tmp_title
      real * 8 tmp_Xlo(maxbins),tmp_Xhi(maxbins)
      real * 8 tmp_Ylo(maxbins),tmp_Yhi(maxbins)
      real * 8 tmp_Zlo(maxbins),tmp_Zhi(maxbins)
      real * 8 tmp_Y(maxbins),tmp_Yerr(maxbins)
      real * 8 den_xsec(maxmulti)
      do ixx=1,nFiles
         ndatasets(ixx) = 0 
C     - Read in all data in 'denominator' files
         nDataSets(ixx)=-1
C     - Count number of data sets in the numerator file
         ios=0
         nDataSetsNum=0
         open(unit=11,file=denFiles(ixx),status='old')
         do while(ios.eq.0)
            read(11,fmt='(a)',iostat=ios) tmpLine
            if(index(tmpLine,'#').ne.0) nDataSetsNum=nDataSetsNum+1
         enddo
         close(11)
         nDataSets(ixx) = nDataSetsNum
C     - Load in each data set for the current numerator file
         do jxx=1,nDataSetsNum
            nLinesNum=-1
            call loadDataSet(denFiles(ixx),jxx-1,
     $           nLinesNum,tmp_title,
     $           tmp_Xlo,tmp_Xhi,
     $           tmp_Ylo,tmp_Yhi,
     $           tmp_Zlo,tmp_Zhi,tmp_Y,tmp_Yerr)
            den_Y(ixx,jxx,:)       = tmp_Y
            den_Yerr(ixx,jxx,:)    = tmp_Yerr
         enddo
      enddo
      end
      

C ************************************************************** C
C ************************************************************** C
C ************************************************************** C
C - Does a well-defined thing: looks through file rwgtFile, locates
C - histogram with index dataIndex, reads in the data and fills in
C - the 1-D output arrays Xlo,Xhi,Y,Yerr, with the relevant values.
      subroutine loadDataSet(rwgtFiles,dataIndex,
     $                       nLines,title_tmp,Xlo,Xhi,Ylo,Yhi,Zlo,Zhi,Y,Yerr)
      implicit none
      include 'pwhg_book-multi.h'
      include 'maxrwgtfiles.h'


      character*(1000) rwgtFiles
      integer  dataIndex
      integer  nLines
      character * 100 title_tmp
      real * 8 Xlo(maxbins),Xhi(maxbins)
      real * 8 Ylo(maxbins),Yhi(maxbins)
      real * 8 Zlo(maxbins),Zhi(maxbins)
      real * 8 Y(maxbins),Yerr(maxbins)

      integer ios

      character*(500) tmpLine,tmpLine2
      integer tmpIndex

      open(unit=11,file=rwgtFiles,status='old')
C - Read in all lines until you get to an error or the end of the file
      ios=0
      nLines=0
      do while(ios.eq.0)
         read(11,fmt='(a)',iostat=ios,end=111) tmpLine
C - If you get to a line with a # extract the integer data index in it
         if(index(tmpLine,'#').ne.0) then
            tmpLine2 = tmpLine(index(trim(tmpLine),' ',back=.true.)
     $                        :len(tmpLine))
            read(tmpLine2,*,iostat=ios) tmpIndex
         endif
C - If we already read in some lines and the current data set index is
C - no longer equal to that requested we must have read in all we asked
C - for so we exit.
         if(tmpIndex.ne.dataIndex.and.nLines.gt.0) goto 111
C - If the index extracted is not equal to the data index requested go
C - back to the start of the loop, equally, if the line read is blank,
C - or if the line read contains #. The latter two if's mean that we
C - don't get past here inside the while loop unless we read actual data,
C - moreover, the data that we asked for.
         if(tmpIndex.ne.dataIndex)   goto 101
         if(trim(tmpLine).eq.'')     goto 101
         if(index(tmpLine,'#').ne.0) then
            title_tmp=trim(tmpLine)
            goto 101
         endif
C - Increment the line counter for every line of requested data read
         nLines=nLines+1
C - Fill the next element of the returned arrays from the tmpLine string
         read(tmpLine,*)   !'(8(2x,e16.8))') AK: DOesn't work with this format...
     $        Xlo(nLines),Xhi(nLines),
     $        Ylo(nLines),Yhi(nLines),
     $        Zlo(nLines),Zhi(nLines),
     $        Y(nLines),Yerr(nLines)
 101     continue
      enddo

 111  return
      close(11)
      end



C ************************************************************** C
C ************************************************************** C
C ************************************************************** C
C - Does a well defined thing. Reads the command line looking
C - for the LH event file to be reweighted, returned to the
C - program as lhfile, the "data" file names to be used to
C - construct the weights, returned as 1-D array rwgtFiles,
C - the number of data files nFiles, and also the data (histogram)
C - index to be used for the reweighting.
      subroutine readCommandLine(lhFile,rwgtFiles,rwgtstring,nFiles,n_Num,denfiles
     $     ,dataIndex)          ! all output
      implicit none
      include 'pwhg_book-multi.h'
      include 'maxrwgtfiles.h'

      character*(1000) lhFile, n_Num_string
      integer nFiles,dataIndex,n_Num
      character*(1000) rwgtFiles(maxrwgtfiles),denfiles(maxmulti)
      character*(40) rwgtstring(maxrwgtfiles)
      integer ixx,i

      character*(3) cdataIndex

C - Get the event file name containing the events to be reweighted.
      call getarg(1,lhFile)
      lhFile=trim(lhFile)
      if(lhfile.eq.'') then
         write(*,'(/,a,/,a,/,a,/,a,/,/,a,/)')
     $        'minnlo:',
     $        'No command line arguments given.',
     $        'Program should be run with the following inputs:',
     $        'minnlo <event file> '//
     $        '<# numerators> <wgt numerator> ...'//
     $        '[<wgt denominator> ...]',
     $        'Quitting ... '
         stop
      endif

      call getarg(2,n_Num_string)
      read(n_Num_string, *) n_Num
       do i=1,n_Num
         call getarg(i+2,rwgtFiles(i))
         rwgtFiles(i)=trim(rwgtFiles(i))
         rwgtstring(i)=trim(rwgtfiles(i))
         if(rwgtFiles(i).eq.'') then
            write(*,'(/,a,/,a,/,a,/,a,/,/,a,/)')
     $           'minnlo:',
     $           'No command line arguments given.',
     $           'Program should be run with the following inputs:',
     $           'minnlo <event file> '//
     $           '<# numerators> <wgt numerator> ...'//
     $           '[<wgt denominator> ...]',
     $           'Quitting ... '
            stop
         endif
      enddo
C - Since the reweighting data index is not mandatory,
C - set it to the default value, that will be changed
C - if we found something on the command line
      dataIndex=4

C - Get the names of the file(s) assumed to contain the denominator
C - information for constructing the NNLO weights.
      nfiles = 0
      do ixx=1,maxmulti
         nfiles = nfiles+1
         call getarg(ixx+2+n_Num,denfiles(nfiles))
         if(trim(denfiles(nfiles)).eq.'') then
            nfiles = nfiles-1
            goto 101
         endif
      enddo

 101  continue
      if (nfiles == 0) then 
         write(*,'(/,a,/,a,/,a,/,a,/,/,a,/)')
     $        'minnlo:',
     $        'No denominator file given.',
     $        'Calculating denominators from',trim(lhFile)        
      endif


C - Print out information on what was found on the command line.
      write(*,*) ''
      write(6,'(/,a,a,a)')
     $     'Found LH event file ',trim(lhFile),' on the command line.'
      do i=1,n_Num
      write(6,'(/,a,a,a)')
     $   'Found DYNNLO file ',trim(rwgtFiles(i)),' on the command line.'
      enddo
      write(6,'(/,a,i3,a,/,a)')
     $     'Found a further ',nFiles,
     $     ' files assumed to contain denominators ',
     $     ' data for event reweighting.'
      write(*,*), ''
      do ixx=1,nFiles
         write(*,*) ixx,' ',trim(denfiles(ixx))
      enddo
      write(*,*), ''

      end


      subroutine lhuptohepevt(n)
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      integer ihep,mu,n
      nhep=nup
      nevhep=n
      do ihep=1,nhep
         isthep(ihep)=istup(ihep)
         idhep(ihep)=idup(ihep)
         do mu=1,2
            jmohep(mu,ihep)=mothup(mu,ihep)
         enddo
         do mu=1,5
            phep(mu,ihep)=pup(mu,ihep)
         enddo
      enddo
      end


      subroutine lheanend
      implicit none
      character * 20 pwgprefix
      character * 1000 filename
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
cccccccccccc
      include 'maxrwgtfiles.h'
      character*(1000) lhFile
      integer nFiles
C     maxgwgtfiles: max number of "input" files for reweighting
      character*(1000) rwgtFiles(maxrwgtfiles)
      integer dataIndex
cccccccccccc
      include 'pwhg_rnd.h'
      if(rnd_cwhichseed.ne.'none') then
         filename=pwgprefix(1:lprefix)//'LHEF_analysis-'
     1        //rnd_cwhichseed
      else
         filename=pwgprefix(1:lprefix)//'LHEF_analysis'
      endif
      call pwhgsetout3
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C     Uncommenting the following will produce files 
C     containing LH-level plots from the VJ-MiNLO sample 
C     (i.e. the 'denominator' plots).
c$$$C     We don't really need to write results in a file, since 
c$$$C     eveything is in common/histnew/ in pwhg_boookhist-multi.h.
c$$$C     However, it's a good sanity check.
c      call readCommandLine(lhFile,nFiles,rwgtFiles,rwgtstring,dataIndex)
      filename=trim(lhFILE)//'LHEF_analysis'
      call pwhgtopout3
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      end



