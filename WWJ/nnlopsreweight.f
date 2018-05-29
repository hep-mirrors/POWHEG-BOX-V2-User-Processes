      subroutine compute_nnlops_weights(nnlops_resc)
      implicit none 
      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h' 
      include 'pwhg_rwl.h'
      include 'wwproj_parameters.h'


      real *8 nnlops_resc(rwl_num_weights)    
      integer i 
      logical, save :: ini = .true. 
      character(1000) :: NNLO_phiB(rwl_num_weights),MINLO_phiB(rwl_num_weights)
      integer :: nnum, nden, nlines  
      real*8 tmp_hist3(2,nmh3d,maxbins3)
      character*(200) indexnamesNNLO(nmh3d),indexnamesMiNLO(nmh3d)
      character(100) :: filename 
      integer, parameter :: maxdist = 7 
      real *8 Kfact_dyWW(28,maxdist,maxdist)
      common/ckfactdyww/Kfact_dyWW
      character(4) :: murstr,mufstr 
      real *8 mur,muf 
      logical rwl_keypresent 


      write(*,*) '-------> compute_nnlops_weights', rwl_num_weights  
      if (ini) then 

         if (maxdist < rwl_num_weights) then 
            write(*,*) 'maxdist:       ', maxdist 
            write(*,*) 'rwl_num_weights:', rwl_num_weights 
            stop 'Increase maxdist to rwl_num_weights '
         endif
         

c-----> load arrays for rebinning:
!      filename='binvalues-WW.top'
         filename='binvalues-WW-alldy.top'
         call read_array(ii_yWW,  nbin_yww,  arr_yWW,  filename )
         call read_array(ii_dyWW, nbin_dyWW, arr_dyWW, filename )
         call read_array(ii_ptWm, nbin_ptWm, arr_ptWm, filename )
         
         if (nbin_dyww .ne. 28) then 
            stop 'change dimension of Kfact_dyWW...' 
         endif
         
         write(*,*) 'arr_yWW', arr_yWW, nbin_yWW
         write(*,*) 'arr_dyWW', arr_dyWW, nbin_dyWW
         write(*,*) 'arr_ptWm', arr_ptWm, nbin_ptWm
         
         
C     open MINLO and NNLO FILES with distributions differential in phiB
C     and store NNLO, MINLO_A, MINLO_B results 
C     at the moment we have equal number of numerators and denominators 
         nNum = rwl_num_weights 
         nden = rwl_num_weights 
         
         do i = 1,rwl_num_weights 
         if ( rwl_keypresent(i,'facscfact',muf) .and. 
     C           rwl_keypresent(i,'renscfact',mur)) then 
C     set filenames 
            write(*,*) 'mur', mur
            write(*,*) 'muf', muf
            write(murstr,'(F4.2)') mur 
            write(mufstr,'(f4.2)') muf 
            write(*,*) 'murstr,mufstr',murstr,mufstr
            NNLO_phiB(i) =
     C           'WW_MATRIX/MATRIX-NNLO-mur'//trim(murstr)//'-muf'//trim(mufstr)//'.top' 
            MINLO_phiB(i)=
     C           'WW_MINLO/MINLO-mur'//trim(murstr)//'-muf'//trim(mufstr)//'.top' 
            write(*,*) 'NNLO_phiB(i)',trim(NNLO_phiB(i))
            write(*,*) 'MINLO_phiB(i)',trim(MINLO_phiB(i))
         else
            stop 'key does not contain factscfact or renscfact' 
         endif
         
C     NNLO_phiB(i) =
C     C      'WW_MATRIX/MATRIX-NNLO-'//rwl_weights_array(i)%id//'.top' 
C            MINLO_phiB(i)=
C     C      'WW_MINLO/MINLO-'//rwl_weights_array(i)%id//'.top' 
         enddo
!         stop 
            

Cc-----> checks consistency of 3D-tables:
C     GZ remove nlines from output...? 
         call check_file_consistency(NNLO_phiB(1:nNum),
     C        nNum,nlines,'NNLO-3D')
         write(*,*) 'nlines NNLO', nlines 
         call check_file_consistency(MINLO_phiB(1:nDen),
     C        nDen,nlines,'PWHG-3D')
         write(*,*) 'nlines PWHG', nlines 

c-----> load numerator files [NNLO]:
         do i=1,nNum
            call load_3d_histogram(NNLO_phiB(i),
     $           tmp_hist3,indexnamesNNLO)
C     add pb to fb normalization
            num_hist3(i,:,:,:)=tmp_hist3*NNLOnorm
         enddo
         write(*,*) '>>> loaded all NNLO-3D files. NNLOnorm:', NNLOnorm 
C     c-----> load denominator files [PWHG]:
         do i=1,nDen
            call load_3d_histogram(MINLO_phiB(i),
     $           tmp_hist3,indexnamesMiNLO)
            den_hist3(i,:,:,:)=tmp_hist3
         enddo
         write(*,*) '>>> loaded all PWHG-3D files',size(num_hist3,dim=1),
     $        size(num_hist3,dim=2),size(num_hist3,dim=3),size(num_hist3,dim=4)
         
c-----> search for [Ai] and [sigma] histograms and fill them all 
         call search_for_index(indexnamesNNLO,indexnamesMiNLO) !-- values passed in common block
         
c-----> compute overall K-factor and K-factor differential in dy_WW      
         call get_overall_kfactor(nNum,rwl_num_weights)
c-----> sets Kfact_dyWW      
         call get_dyWW_kfactor(Kfact_dyWW) 


         if( h_scaler )then
            write(*,*) '>splitting MiNLO cross-section into two parts:'
            write(*,*) '    A:  sig*h(pT,jet)'
            write(*,*) '    B:  sig*( 1 - h(pT,jet) )'
         else
            write(*,*) '>>> no splitting: h(pT,jet) = 1'
         endif
         
         ini = .false. 
      endif


c-----> event analysis:
      call compute_rescaling(nNum,rwl_num_weights) !--- we pass everything using common block ('reweighting_common.h')
c-----> finally set our rescaling 
      do i=1,rwl_num_weights
         nnlops_resc(i) = resc(i,i,1)
      enddo
      write(*,*) 'NNLO_resc', nnlops_resc
      end



CC================================================================================


c###########################################################################
c---------------------------------------------------------------------------
      subroutine check_file_consistency(filenames,nfiles,
     $     nlines,string)
      implicit none
      include 'pwhg_rwl.h'
      include 'pwhg_bookhist-common.h'
c      include 'new-mergedata.h'

      character*(1000) filenames(rwl_num_weights)
      character*7 string
      integer not_numerical(4*nmh3d),tmp_not_numerical(4*nmh3d)
      integer i,ifile,nfiles,nlines,tmpnlines
      logical check

      check=.false.

c--   check the first file:
      call check_file(filenames(1),not_numerical,nlines)

c--   check the rest of files:
      do ifile=2,nfiles
         call check_file(filenames(ifile),tmp_not_numerical,tmpnlines)
         if(tmpnlines.ne.nlines) check=.true.
         do i=1,4*nmh3d
            if(tmp_not_numerical(i).ne.not_numerical(i)) check=.true.
         enddo
         if(check)then
            write(*,*) ' ERROR: File: ',trim(filenames(ifile)),
     $           ' does not match the first file!'
            write(*,*) '---> Please check consistency of files!'
            stop
         endif
      enddo
      write(*,*) '---> All ',trim(string),' files are consistent! '

      end


c###########################################################################
c---------------------------------------------------------------------------
      subroutine check_file(filename,not_numerical,nlines)
      implicit none

      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'

      character*(1000) filename
      character*(200) tempstring
      integer not_numerical(4*nmh3d),nlines,fileunit,ios,iindex,iline
      real*8 v1,v2


c--   open given file:
      open(newunit=fileunit,file=trim(filename),status='old')
      not_numerical=0
      nlines=0

c--   count lines
      iindex=0
      do iline=1,maxlines+1
         read(unit=fileunit,fmt='(a)',iostat=ios,end=111) tempstring
         read(unit=tempstring,fmt=*,iostat=ios) v1,v2
         !-- find different plots:
         if((ios.ne.0))then
            not_numerical(iindex+1)=iline
            iindex=iindex+1
         endif
         !-- check for maxlines
         if(iline.eq.maxlines+1)then
            write(*,'(a)'  ) 'ERROR: Too many lines in file:'
            write(*,'(a,a)') '       ',trim(filename)
            write(*,'(a)'  ) '-> Increase "maxlines" in "ww_minnlo.f"'
            write(*,*) maxlines, iline  
            stop
         endif
         goto 112
 111     nlines=iline-1
         goto 113
 112     continue
      enddo
 113  continue

      close(fileunit)

      end


c###########################################################################
c---------------------------------------------------------------------------
      subroutine load_3d_histogram(filename,
     $     hst3D,indexnames)
      implicit none

      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'

      character*1000 filename
      character*200 tempstring,str
      character*200 hdrline(nmh3d*(maxbinx+maxbiny+maxbinz+8))
      integer funit,ios,iline,hline,hdrpoint(nmh3d),ihdr,currentindx
      integer i,j
      integer nbin(3,nmh3d),ivalue(nmh3d),ibin(3)
      character*5 append_string

      real*8 hst3D(2,nmh3d,maxbins3)
      character*200 indexnames(nmh3d)
      real*8 v1,v2

c-----> zero all tables:
      nbin=0
      xbins=0
      ybins=0
      zbins=0
      hst3D=0
      hdrpoint=0

c-----> open file:
      open(newunit=funit,file=trim(filename),status='old')
      write(*,*) '--> loading: ', trim(filename) 
c-----> load header:
      hline=1
      ihdr=0
      do iline=1,maxlines+1
         read(unit=funit,fmt='(a)',iostat=ios,end=111) tempstring
         if(index(tempstring,'###END-OF-HEADER').ne.0)then
            hdrpoint(ihdr+1)=iline
            goto 990
         else
            hdrline(hline)=tempstring
            if(index(tempstring,'xbins').ne.0)then
               hdrpoint(ihdr+1)=hline
               ihdr=ihdr+1
            endif
            hline=hline+1
         endif
      enddo
 111  write(*,'(a)') 'ERROR: end-of-header not found!'
      write(*,'(a)') '--> make sure that following string:'
      write(*,'(a)') '         "###END-OF-HEADER"'
      write(*,'(a)') '    appears at the end of header!'
 990  continue

c-----> read binvalues from header into tables:
      do i=1,ihdr
         read(unit=hdrline(hdrpoint(i)),fmt='(a)',iostat=ios) tempstring
         str=tempstring(len_trim(tempstring)-2:len_trim(tempstring))
         read(unit=str,fmt='(i3)',iostat=ios) currentindx
         call reset_temp(append_string,ibin)
         currentindx=currentindx+1 !--- move indx by 1, as table iter starts from 1, not 0
         do j=hdrpoint(i),hdrpoint(i+1)-1
            read(unit=hdrline(j),fmt=*,iostat=ios) v1,v2
            if(ios.eq.0)then
               if(append_string.eq.'xxxxx')then
                  ibin(1)=ibin(1)+1
                  xbins(1,currentindx,ibin(1))=v1
                  xbins(2,currentindx,ibin(1))=v2
               elseif(append_string.eq.'yyyyy')then
                  ibin(2)=ibin(2)+1
                  ybins(1,currentindx,ibin(2))=v1
                  ybins(2,currentindx,ibin(2))=v2
               elseif(append_string.eq.'zzzzz')then
                  ibin(3)=ibin(3)+1
                  zbins(1,currentindx,ibin(3))=v1
                  zbins(2,currentindx,ibin(3))=v2
               else
                  write(*,'(a)') 'ERROR: reading binvalues from header'
                  write(*,'(a)') '---> something wrong in line: ',j
               endif
            else
               if(index(hdrline(j),'xbins').ne.0) append_string='xxxxx'
               if(index(hdrline(j),'ybins').ne.0) append_string='yyyyy'
               if(index(hdrline(j),'zbins').ne.0) append_string='zzzzz'
!##################### Add 'NaN' and 'Inf' check
            endif
         enddo
         nbin(1,currentindx)=ibin(1)
         nbin(2,currentindx)=ibin(2)
         nbin(3,currentindx)=ibin(3)
         do j=(currentindx+1),nmh3d
            !--- copy all data into further indices (they are the same if not specified)
            nbin(:,j)=nbin(:,currentindx)
            xbins(1,j,:)=xbins(1,currentindx,:)
            xbins(2,j,:)=xbins(2,currentindx,:)
            ybins(1,j,:)=ybins(1,currentindx,:)
            ybins(2,j,:)=ybins(2,currentindx,:)
            zbins(1,j,:)=zbins(1,currentindx,:)
            zbins(2,j,:)=zbins(2,currentindx,:)
         enddo
      enddo

c-----> read in values into 3D-tables:
      ivalue=0
      do iline=hdrpoint(ihdr+1),maxlines+1
         read(unit=funit,fmt='(a)',iostat=ios,end=222) tempstring
         read(unit=tempstring,fmt=*,iostat=ios) v1,v2
         if(ios.ne.0)then
            if(index(tempstring,'index').ne.0)then
             str=tempstring(len_trim(tempstring)-2:len_trim(tempstring))
               read(unit=str,fmt='(i3)',iostat=ios) currentindx
               indexnames(currentindx+1)=tempstring
            elseif(index(tempstring,'NaN').ne.0)then
               write(*,'(a)') 'ERROR: "NaN" in line:',iline
            elseif(index(tempstring,'Inf').ne.0)then
               write(*,'(a)') 'ERROR: "Inf" in line:',iline
            endif
         else
            hst3D(1,currentindx+1,ivalue(currentindx+1)+1)=v1
            hst3D(2,currentindx+1,ivalue(currentindx+1)+1)=v2
            ivalue(currentindx+1)=ivalue(currentindx+1) + 1
         endif
      enddo
 222  continue

c-----> check if #values is consistent with #bins
      do i=1,currentindx+1
         if( ivalue(i).ne.nbin(1,i)*nbin(2,i)*nbin(3,i) )then
            write(*,'(a,I6)') 'ERROR in reading bins!'
            write(*,'(a,I6)') '--> in index:',i-1
            write(*,'(a,I6)') '-->   #xbins=',nbin(1,i)
            write(*,'(a,I6)') '-->   #ybins=',nbin(2,i)
            write(*,'(a,I6)') '-->   #zbins=',nbin(3,i)
            write(*,'(a,I6)') '--> values expected:'
     $           ,nbin(1,i)*nbin(2,i)*nbin(3,i)
            write(*,'(a,I6)') '--> values read:    ',ivalue(i)
            stop
         endif
      enddo

      close(funit)

c--> write number of bins into array 'nbin3
c--> it will be available everywhere ('pwhg_bookhist-common.h')
      nbin3(1,1:nmh3d)=nbin(1,1:nmh3d)
      nbin3(2,1:nmh3d)=nbin(2,1:nmh3d)
      nbin3(3,1:nmh3d)=nbin(3,1:nmh3d)

      end


c###########################################################################
c---------------------------------------------------------------------------
      subroutine reset_temp(string,table)
      implicit none

      character*5 string
      integer table(3)

      string='-----'
      table=0

      end


c###########################################################################
c---------------------------------------------------------------------------
      subroutine search_for_index(indexnames1,indexnames2)
      implicit none

      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'
      include 'wwproj_parameters.h'

      character*(200) indexnames1(nmh3d),indexnames2(nmh3d)
      character*(50) NNLOsigstring(ndist)  !--- these are tables containing "<Ai>*dsig"
      character*(50) MINLOhptstring(ndist) !--- these are tables containing "<Ai>*dsig*h(pT)"
      character*(50) MINLOsigstring(ndist) !--- these are tables containing "<Ai>*dsig"
      character*(50) substring
      character*(2) ai(9),bi(9) 
      integer i,j,value,iWm,iWp,ii

      logical error

      hist_sigTOT=0
      hist_TOT=0
      hist_sigAAA=0
      hist_AAA=0
      hist_sigXXX=0
      hist_XXX=0
      error=.false.

c--- 3D histograms:
c----------------------------------------------------------------
      ai =(/'A0','A1','A2','A3','A4','A5','A6','A7','si'/)
      bi =(/'B0','B1','B2','B3','B4','B5','B6','B7','si'/)
      if (ndist /= 81) then 
         stop 'search_for_index: ndist not set to 81' 
      endif
      do iWm=1,9
         do iWp=1,9
            ii=(iWm-1)*9+iWp
            NNLOsigstring(ii)=
     C       trim(ai(iWm))//'-'//trim(bi(iWp))//'-yWW-dwYY-ptWm'
            MINLOhptstring(ii)
     C      =trim(ai(iWm))//'-'//trim(bi(iWp))//'-yWW-dwYY-ptWm-hpt'
            MINLOsigstring(ii)=
     C           trim(ai(iWm))//'-'//trim(bi(iWp))//'-yWW-dwYY-ptWm'
      enddo  
      enddo


c-----> searching NNLO tables for substrings AiBj * dsig 
      do i=1,ndist
         substring=trim(NNLOsigstring(i))
         do j=1,nmh3d
            value=index(trim(indexnames1(j)),trim(substring))
C            write(*,*) index(trim(indexnames1(j)),trim(substring)),'XX',
C                trim(indexnames1(j)),'XX',trim(substring)
            if(value.ne.0) then 
               hist_TOT(i)=j
               exit 
            endif
         enddo
      enddo

c-----> searching MINLO tables for substrings AiBj * dsig * hpt 
      do i=1,ndist
         substring=trim(MINLOhptstring(i))
         do j=1,nmh3d
            value=index(trim(indexnames2(j)),trim(substring))
            if(value.ne.0) then 
               hist_AAA(i)=j
               exit
            endif
         enddo
      enddo

c-----> searching MINLO tables for substrings AiBj * dsig
      do i=1,ndist
         substring=trim(MINLOsigstring(i))
         do j=1,nmh3d
            value=index(trim(indexnames2(j)),trim(substring))
            if(value.ne.0) then 
               hist_XXX(i)=j
               exit
            endif
         enddo
      enddo

c-----> check if all tables found:
      do i=1,ndist
         if(hist_TOT(i).eq.0) error=.true.
      enddo
      do i=1,ndist
         if(hist_AAA(i).eq.0) error=.true.
      enddo
      if(h_scaler)then
         do i=1,ndist
            if(hist_XXX(i).eq.0) error=.true.
         enddo
      endif

      if(error)then
         write(*,'(a)') 'ERROR: one of the tables not identified!'
         do i=1,ndist
            write(*,'(A,I3)') ' ---> hist_TOT= ',hist_TOT(i),'<<'
         enddo
         do i=1,ndist
            write(*,'(A,I3)') ' ---> hist_AAA= ',hist_AAA(i),'<<'
         enddo
         if(h_scaler)then
            do i=1,ndist
               write(*,'(A,I3)') ' ---> hist_XXX= ',hist_XXX(i),'<<'
            enddo
         endif
         stop
      endif

      write(*,*) '---> 3D-tables ( with <Ai>*dsig ) indices:'
      do i=1,ndist
         write(*,'(A20,I5)') NNLOsigstring(i),hist_TOT(i)
      enddo
      write(*,*)
     $     '---> 3D-tables ( with <Ai>*dsig*h(pT) ) indices:'
      do i=1,ndist
         write(*,'(A20,I5)') MINLOhptstring(i),hist_AAA(i)
      enddo
      if(h_scaler)then
         write(*,*)
     $        '---> 3D-tables ( with <Ai>*dsig  ) indices:'
         do i=1,ndist
            write(*,'(A20,I5)') MINLOsigstring(i),hist_XXX(i)
         enddo
      endif
c-----> assign pointers
      pointer(1:ndist)=hist_TOT(1:ndist)
      pointerA(1:ndist)=hist_AAA(1:ndist)
      pointerX(1:ndist)=hist_XXX(1:ndist)

      end


c###########################################################################
c---------------------------------------------------------------------------
C computes K=NNLO/MINLO overall K-factor  
      subroutine get_overall_kfactor(nNum,nDen)
      implicit none

      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'
      include 'wwproj_parameters.h' 
      include 'pwhg_rwl.h'

      integer i1,i2,ipoly,inum,iden,ibin,i
      integer nNum,nDen
      real*8 numval(1:rwl_num_weights),denval(1:rwl_num_weights)

      overall_kfact=0d0
      overall_kfactA=0d0
      numval=0
      denval=0

      do inum=1,nNum
C     cross-section is in the last distribution 
C     this gives NNLO cross-section, up to binwidth values, which cancel in the K-factor 
         numval(inum) = sum(num_hist3(inum,1,ndist,:))
         write(*,661) inum,numval(inum)
      enddo

      write(*,'(a)') '----------------------'
      do iden=1,nDen
         denval(iden)=sum(den_hist3(iden,1,ndist,:))
         write(*,662) iden,denval(iden)
      enddo
      
C     >> now compute overall K-factor:
      do inum=1,nNum
         do iden=1,nDen
            overall_kfact(inum,iden)=numval(inum)/denval(iden)
         enddo
      enddo


C----------------------------------------------------
C      get also the ratio of (sigma_NNLO-sigma_MINLOB)/sigma_MINLOA
      do inum=1,nNum
         do iden=1,nDen
            numval(inum) = sum(num_hist3(inum,1,ndist,:))
     C           -(sum(den_hist3(iden,1,pointerX(ndist),:))-sum(den_hist3(iden,1,pointerA(ndist),:)))
            denval(iden)=sum(den_hist3(iden,1,pointerA(ndist),:))
            overall_kfactA(inum,iden)=numval(inum)/denval(iden)
         enddo
      enddo


 661  format(' ---> total cross section(up to normalization): NNLO-',I1,':  ',F16.8)
 662  format(' ---> total cross section(up to normalization):MiNLO-',I1,':  ',F16.8)

      return
      end


      subroutine get_dyWW_kfactor(Kfact_dyww)
      implicit none 
      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h' 
      include 'pwhg_rwl.h'
      include 'wwproj_parameters.h'
      real *8  Kfact_dyWW(nbin_dyWW,rwl_num_weights,rwl_num_weights)
      real *8  sigMINLO_dyWW(nbin_dyWW,rwl_num_weights),sigNNLO_dyWW(nbin_dyWW,rwl_num_weights)
      real *8 sum_1D(rwl_num_weights)
      integer nnum, nden, ibin, i,j,k   
      
      nnum = rwl_num_weights
      nden = rwl_num_weights
      sigNNLO_dyWW = 0d0 
      do j=1,nbin_dyWW
         sum_1D = 0d0 
         do i=1,nbin_yWW
            do k=1,nbin_ptWm
               ibin = int(i-0.5d0)*nbin3(2,1)*nbin3(3,1)
     $              + int(j-0.5d0)*nbin3(3,1)
     $              + int(k-0.5d0) 
     $                 + 1               
                  sum_1D(:nnum) = sum_1D(:nnum) + 
     $                 num_hist3(:nnum,1,pointer(81),ibin)/(arr_dyWW(j+1)-arr_dyWW(j))
                  sigNNLO_dyWW(j,:nnum) = sum_1D(:nnum) 
               enddo
            enddo
         enddo

         sigMINLO_dyWW = 0d0 
         do j=1,nbin_dyWW
            sum_1D = 0d0 
            do i=1,nbin_yWW
               do k=1,nbin_ptWm
                  ibin = int(i-0.5d0)*nbin3(2,1)*nbin3(3,1)
     $                 + int(j-0.5d0)*nbin3(3,1)
     $                 + int(k-0.5d0) 
     $                 + 1               
                  sum_1D(:nden) = sum_1D(:nden) + 
     $                 den_hist3(:nden,1,pointerX(81),ibin)/(arr_dyWW(j+1)-arr_dyWW(j))
                  sigMINLO_dyWW(j,:nden) = sum_1D(:nden) 
               enddo
            enddo
         enddo
         do j=1,nnum
            do k =1,nden 
               Kfact_dyww(:,j,k) = sigNNLO_dyWW(:,j)/sigMiNLO_dyWW(:,k)         
            enddo
         enddo
      end




c###########################################################################
c---------------------------------------------------------------------------
      subroutine compute_rescaling(nNum,nDen)
      implicit none

      include 'pwhg_bookhist-common.h'
      include 'LesHouches.h'
      include 'reweighting_common.h'
      include 'wwproj_parameters.h' 
      include 'pwhg_rwl.h'
      integer nNum,nDen

c-----> variables for event analysis:
      real *8 p_lm(4),p_lp(4),p_nu(4),p_nub(4),p_wm,p_wp, p_ww(4) 
      real *8 y_WW, dy_WW, pt_Wm,m_ww 
      real *8 pt_wp, pt_w1, pt_w2 
      real*8 thCSm,phiCSm,thCSp,phiCSp
      real*8 var1,var2,var3,choose_bin
      real*8 h_pt

c-----> jet variables
      real*8 palg,ptcut,rfj,dummy0,dummy1,dummy2
      integer njet,nn
      real(dp) :: ppartons(4,2)
      integer  :: npartons

c-----> variables for reweighting:
      real*8 xNNLO,xMiNLO_a,xMiNLO_b
      real*8 eNNLO,eMiNLO_a,eMiNLO_b
      real*8 xval,xerr
      real*8 tmpval,tmperr
c-----> other variables
      real*8 num(rwl_num_weights,rwl_num_weights),den(rwl_num_weights)
      integer ibin,i,j,k,n
      logical out_of_range
c----->
      integer inum,iden
c-----> CS functions, coefficients
      integer iCSm,iCSp,iwgt,ii
      real*8 funct(1:9,2) !>> CS functions [1603.01620, eq.(2.3)]
      real*8 AAval_NNLO(1:9, 1:9, rwl_num_weights)
      real*8 AAerr_NNLO(1:9, 1:9, rwl_num_weights)
      real*8 AAval_MiNLO_A(1:9, 1:9, rwl_num_weights)
      real*8 AAerr_MiNLO_A(1:9, 1:9, rwl_num_weights)
      real*8 AAval_MiNLO_B(1:9, 1:9, rwl_num_weights)
      real*8 AAerr_MiNLO_B(1:9, 1:9, rwl_num_weights)
      real*8 val1(1:9,1:9),err1(1:9,1:9)
      real*8 vala(1:9,1:9),erra(1:9,1:9)
      real*8 valb(1:9,1:9),errb(1:9,1:9)
      real*8 get_rwgt,tot
      real *8 pi 
      parameter (pi=3.141592653589793238462643383279502884197D0) 
      real * 8 num_noCS, den_noCS,resc_noCS(rwl_num_weights,rwl_num_weights,nscen)
      real *8 Kfact_dyWW_lcl(rwl_num_weights,rwl_num_weights) 
      integer, parameter :: maxdist = 7 
      real *8 Kfact_dyWW(28,maxdist,maxdist)
      common/ckfactdyww/Kfact_dyWW
      real *8 num_CS,den_CS 

!     !>> Collins-Soper coefficients:
!     !>> j=0:   A0  :  f(th,phi) = 1/2 * ( 1 - 3*cos(th)^2 )
!     !>> j=1:   A1  :  f(th,phi) =       sin(2*th) * cos(phi)
!     !>> j=2:   A2  :  f(th,phi) = 1/2 * sin(th)^2 * cos(2*phi)
!     !>> j=3:   A3  :  f(th,phi) =       sin(th)   * cos(phi)              
!     !>> j=4:   A4  :  f(th,phi) =       cos(th)                         
!     !>> j=5:   A5  :  f(th,phi) =       sin(th)   * sin(phi)              
!     !>> j=6:   A6  :  f(th,phi) =       sin(2*th) * sin(phi)
!     !>> j=7:   A7  :  f(th,phi) =       sin(th)^2 * sin(2*phi)
!     !>> j=8:   tot :  f(th,phi) =   1 + cos(th)^2


c-----> reset variables:
      resc=1d0
      out_of_range=.false.

c-----> assign momenta and analyse them:

      p_lp(1:4)  = pup(1:4,4)  ! -11 -> e+  (is always in position 4 in event file) 
      p_nu(1:4)  = pup(1:4,5)  !  12 -> nu  (is always in position 5 in event file) 
      p_lm(1:4)  = pup(1:4,7)  !  11 -> e-  (is always in position 7 in event file) 
      p_nub(1:4) = pup(1:4,8)  ! -12 -> nub (is always in position 8 in event file) 
      do i=4,8
         write(*,*) 'pup',i,pup(:4,i)
      enddo
C     find CS angles and 3D variables 
      call get_WWCSkinematics(p_lm,p_nub,p_lp,p_nu,thCSm,phiCSm,thCSp,phiCSp,
     C     y_ww,dy_WW,pt_wm,m_ww,pt_wp)
      pt_w1 = max(pt_wm,pt_wp)
      pt_w2 = min(pt_wm,pt_wp)

C     we are storing only positive values of the dy_WW = y_Wp - y_Wm distribution 
C     if the event has negative dy_WW then use mirrow symmetry, i.e. 
C     that f(y_WW, dy_WW) = d^2 sigma / d y_WW d dy_WW has the symmtry 
C     f(y,dy) = f(-y, -dy) 
C      if (dy_WW .lt. 0d0) then 
C         y_WW = -y_WW 
C         dy_WW = -dy_WW 
C         thCSm = pi - thCSm
C         thCSp = pi - thCSp
C         phiCSm = 2d0*pi - phiCSm
C         phiCSp = 2d0*pi - phiCSp
C      endif

C     find bin (real value) 
      var1=choose_bin(arr_yWW,y_WW,nbin_yWW)
      var2=choose_bin(arr_dyWW,dy_WW,nbin_dyWW)
      var3=choose_bin(arr_ptWm,pt_Wm,nbin_ptWm)
!      write(*,*) 'VARS', var1,var2,var3 
c-----> compute CSm functions [1603.01620 --> eq.(2.3)]
      funct(1,1)=0.5d0*( 1d0-3d0*cos(thCSm)**2 )
      funct(2,1)=sin(2d0*thCSm)*cos(phiCSm)
      funct(3,1)=0.5d0*sin(thCSm)**2*cos(2d0*phiCSm)
      funct(4,1)=sin(thCSm)*cos(phiCSm)
      funct(5,1)=cos(thCSm)
      funct(6,1)=sin(thCSm)*sin(phiCSm)
      funct(7,1)=sin(2d0*thCSm)*sin(phiCSm)
      funct(8,1)=sin(thCSm)**2*sin(2d0*phiCSm)
      funct(9,1)=1d0 + cos(thCSm)**2


c-----> compute CSp functions [1603.01620 --> eq.(2.3)]
      funct(1,2)=  0.5d0*( 1d0-3d0*cos(thCSp)**2 )
      funct(2,2)=sin(2d0*thCSp)*cos(phiCSp)
      funct(3,2)=0.5d0*sin(thCSp)**2*cos(2d0*phiCSp)
      funct(4,2)=sin(thCSp)*cos(phiCSp)
      funct(5,2)=cos(thCSp)
      funct(6,2)=sin(thCSp)*sin(phiCSp)
      funct(7,2)=sin(2d0*thCSp)*sin(phiCSp)
      funct(8,2)=sin(thCSp)**2*sin(2d0*phiCSp)
      funct(9,2)=1d0 + cos(thCSp)**2

c-----> jet stuff:
      ppartons=0d0
!     find tracks for the let-algorithm 
      if(nup.eq.9) then
         npartons=1
         ppartons(:,1) = pup(1:4,9)
      elseif(nup.eq.10) then
         npartons=2
         ppartons(:,1) = pup(1:4,9)
         ppartons(:,2) = pup(1:4,10)
      else
         write(*,*) 'nup = ', nup 
         stop 'compute_rescaling: nup not well defined'
      endif

c-----> get h(pT) factor:
      call get_hpt_factor(ppartons,npartons,h_pt)
C      call get_hpt_factor_new(ppartons,npartons,m_ww,h_pt)
      if (.not. h_scaler) h_pt = 1d0 

C     count entries out of range 
      if(var1.gt.nbin_yWW.or.var1.lt.0) out_of_range=.true.
      if(var2.gt.nbin_dyWW.or.var2.lt.0) out_of_range=.true.
      if(var3.gt.nbin_ptWm.or.var3.lt.0) out_of_range=.true.      


      if(out_of_range)then
         RangeCounter=RangeCounter+1

         if(dump_on_last)then
C     dumps overflow on the last bin 
            call dump_on_last_bin(
     $            arr_yWW(nbin_yWW+1)
     $           ,arr_dyWW(nbin_dyWW+1)
     $           ,arr_ptWm(nbin_ptWm+1)            
     $           ,var1,var2,var3)
         else
            resc=1d0
            goto 979
         endif
      endif

C     get the bin for en event with variables var1, var2, var3 
C     3rd index is the faster one (i.e. internal one) 
C     nbin3(1,1:ndist) are all the same, so of nbins(1,1) [and similar for nbin3(2,1) and nbin3(3,1)] 
      ibin = int(var1)*(nbin3(2,1))*(nbin3(3,1))
     $     + int(var2)*(nbin3(3,1))
     $     + int(var3) 
     $     + 1      

!     !>> reset values
      num=0d0
      den=0d0
      AAval_NNLO=0d0
      AAerr_NNLO=0d0
      AAval_MiNLO_A=0d0
      AAerr_MiNLO_A=0d0
      AAval_MiNLO_B=0d0
      AAerr_MiNLO_B=0d0


!     !>> load in numerical values from 3D histograms
      do iwgt=1,nNum
         do iCSm=1,9
            do iCSp=1,9
               ii=(iCSm-1)*9+iCSp
               AAval_NNLO(iCSm,iCSp, iwgt) = num_hist3(iwgt, 1, pointer(ii), ibin)
               AAerr_NNLO(iCSm,iCSp, iwgt) = num_hist3(iwgt, 2, pointer(ii), ibin)
            enddo
         enddo
      enddo

!     !>>   A0 = 4<tot> - <A0>
      AAval_NNLO(1,1,:)   = 16d0*AAval_NNLO(9,9,:) - 4 * AAval_NNLO(1,9,:) - 4 * AAval_NNLO(9,1,:) + AAval_NNLO(1,1,:)
      AAval_NNLO(1,2:9,:) = 4*AAval_NNLO(9,2:9,:) - AAval_NNLO(1,2:9,:)
      AAval_NNLO(2:9,1,:) = 4*AAval_NNLO(2:9,9,:) - AAval_NNLO(2:9,1,:)
      AAval_NNLO(9,9,:)   = AAval_NNLO(9,9,:)


      AAerr_NNLO(1,1,:)   = sqrt( (16*AAerr_NNLO(9,9,:))**2+ (4*AAerr_NNLO(1,9,:))**2+ (4*AAerr_NNLO(9,1,:))**2 + AAerr_NNLO(1,1,:)**2)
      AAerr_NNLO(1,2:9,:) = sqrt((4*AAerr_NNLO(9,2:9,:))**2 + (AAerr_NNLO(1,2:9,:))**2)
      AAerr_NNLO(2:9,1,:) = sqrt((4*AAerr_NNLO(2:9,9,:))**2 +  (AAerr_NNLO(2:9,1,:))**2)
      AAerr_NNLO(9,9,:)   = AAerr_NNLO(9,9,:)

      do iwgt=1,nDen
         do iCSm=1,9
            do iCSp=1,9
               ii=(iCSm-1)*9+iCSp
               if(h_scaler)then
C      remember pointerA points to dsig*h(pt) distributions, pointerX points to dsig distributions 
                  AAval_MiNLO_A(iCSm,iCSp, iwgt) = den_hist3(iwgt, 1, pointerA(ii), ibin)
                  AAerr_MiNLO_A(iCSm,iCSp, iwgt) = den_hist3(iwgt, 2, pointerA(ii), ibin)
                  !! sigmaB = sigmaTOT - sigmaA
                  AAval_MiNLO_B(iCSm,iCSp, iwgt) = den_hist3(iwgt, 1, pointerX(ii), ibin) - den_hist3(iwgt, 1, pointerA(ii), ibin)
                  AAerr_MiNLO_B(iCSm,iCSp, iwgt) = sqrt( den_hist3(iwgt, 2, pointerX(ii), ibin)**2 + den_hist3(iwgt, 2, pointerA(ii), ibin)**2 )
               else
                  AAval_MiNLO_A(iCSm,iCSp, iwgt) = den_hist3(iwgt, 1, pointerX(ii), ibin)
                  AAerr_MiNLO_A(iCSm,iCSp, iwgt) = den_hist3(iwgt, 2, pointerX(ii), ibin)
                  AAval_MiNLO_B(iCSm,iCSp, iwgt) = 0d0
                  AAerr_MiNLO_B(iCSm,iCSp, iwgt) = 0d0
               endif
            enddo
         enddo
      enddo


!     !>>   A0 = 4<tot> - <A0>, etc. 
      AAval_MINLO_A(1,1,:)   = 16d0*AAval_MINLO_A(9,9,:) - 4 * AAval_MINLO_A(1,9,:) - 4 * AAval_MINLO_A(9,1,:) + AAval_MINLO_A(1,1,:)
      AAval_MINLO_A(1,2:9,:) = 4*AAval_MINLO_A(9,2:9,:) - AAval_MINLO_A(1,2:9,:)
      AAval_MINLO_A(2:9,1,:) = 4*AAval_MINLO_A(2:9,9,:) - AAval_MINLO_A(2:9,1,:)
      AAval_MINLO_A(9,9,:)   = AAval_MINLO_A(9,9,:)

      AAerr_MINLO_A(1,1,:)   = sqrt( (16*AAerr_MINLO_A(9,9,:))**2+ (4*AAerr_MINLO_A(1,9,:))**2+ (4*AAerr_MINLO_A(9,1,:))**2 + AAerr_MINLO_A(1,1,:)**2)
      AAerr_MINLO_A(1,2:9,:) = sqrt((4*AAerr_MINLO_A(9,2:9,:))**2 + (AAerr_MINLO_A(1,2:9,:))**2)
      AAerr_MINLO_A(2:9,1,:) = sqrt((4*AAerr_MINLO_A(2:9,9,:))**2 +  (AAerr_MINLO_A(2:9,1,:))**2)
      AAerr_MINLO_A(9,9,:)   = AAerr_MINLO_A(9,9,:)

      AAval_MINLO_B(1,1,:)   = 16d0*AAval_MINLO_B(9,9,:) - 4 * AAval_MINLO_B(1,9,:) - 4 * AAval_MINLO_B(9,1,:) + AAval_MINLO_B(1,1,:)
      AAval_MINLO_B(1,2:9,:) = 4*AAval_MINLO_B(9,2:9,:) - AAval_MINLO_B(1,2:9,:)
      AAval_MINLO_B(2:9,1,:) = 4*AAval_MINLO_B(2:9,9,:) - AAval_MINLO_B(2:9,1,:)
      AAval_MINLO_B(9,9,:)   = AAval_MINLO_B(9,9,:)

      AAerr_MINLO_B(1,1,:)   = sqrt( (16*AAerr_MINLO_B(9,9,:))**2+ (4*AAerr_MINLO_B(1,9,:))**2+ (4*AAerr_MINLO_B(9,1,:))**2 + AAerr_MINLO_B(1,1,:)**2)
      AAerr_MINLO_B(1,2:9,:) = sqrt((4*AAerr_MINLO_B(9,2:9,:))**2 + (AAerr_MINLO_B(1,2:9,:))**2)
      AAerr_MINLO_B(2:9,1,:) = sqrt((4*AAerr_MINLO_B(2:9,9,:))**2 +  (AAerr_MINLO_B(2:9,1,:))**2)
      AAerr_MINLO_B(9,9,:)   = AAerr_MINLO_B(9,9,:)

      tot = 0d0 
      do iCSm=1,9
         do iCSp=1,9
            tot = tot +AAval_NNLO(iCSm,iCSp,1)*funct(iCSm,1)*funct(iCSp,2)
         enddo
      enddo

!     !>> combine coefficient values with CSm-functions
      do iwgt=1,nNum
         do iCSm=1,9
            do iCSp=1,9
               AAval_NNLO(iCSm,iCSp,iwgt)= AAval_NNLO(iCSm,iCSp,iwgt)*funct(iCSm,1)*funct(iCSp,2)
               AAerr_NNLO(iCSm,iCSp,iwgt)= AAerr_NNLO(iCSm,iCSp,iwgt)*funct(iCSm,1)*funct(iCSp,2)
            enddo
         enddo
      enddo
      do iwgt=1,nDEN
         do iCSm=1,9
            do iCSp=1,9
               AAval_MiNLO_A(iCSm,iCSp,iwgt)= AAval_MiNLO_A(iCSm,iCSp,iwgt)*funct(iCSm,1)*funct(iCSp,2)
               AAerr_MiNLO_A(iCSm,iCSp,iwgt)= AAerr_MiNLO_A(iCSm,iCSp,iwgt)*funct(iCSm,1)*funct(iCSp,2)
               AAval_MiNLO_B(iCSm,iCSp,iwgt)= AAval_MiNLO_B(iCSm,iCSp,iwgt)*funct(iCSm,1)*funct(iCSp,2)
               AAerr_MiNLO_B(iCSm,iCSp,iwgt)= AAerr_MiNLO_B(iCSm,iCSp,iwgt)*funct(iCSm,1)*funct(iCSp,2)
            enddo
         enddo
      enddo


!     !>> now the real bussiness: calculate rescaling factor
      do j=1,nNum

C     this is the standard thing 
         val1(1:9,1:9)= AAval_NNLO(1:9,1:9,j)
         err1(1:9,1:9)= AAerr_NNLO(1:9,1:9,j)


         do k=1,nDen

!            Kfact_dyww(j,k) = sigNNLO_dyWW(int(var2+0.5d0),j)/sigMiNLO_dyWW(int(var2+0.5d0),k)
            Kfact_dyww_lcl(j,k) = kfact_dyww(int(var2+0.5d0),j,k)
            do n=1,nscen        ! nscan = number of scenarios, here just 1 
               
               valA(1:9,1:9)= AAval_MiNLO_A(1:9,1:9,k)
               errA(1:9,1:9)= AAerr_MiNLO_A(1:9,1:9,k)
               valB(1:9,1:9)= AAval_MiNLO_B(1:9,1:9,k)
               errB(1:9,1:9)= AAerr_MiNLO_B(1:9,1:9,k)
               resc(j,k,n) = get_rwgt(n,val1,err1,valA,errA,valB,errB,h_pT,num_CS,den_CS)
               if( h_scaler )then
                  num_noCS = num_hist3(j,1,ndist,ibin) - 
     C                 (den_hist3(k,1,pointerX(ndist),ibin)-den_hist3(k,1,pointerA(ndist),ibin))
                  den_noCS = den_hist3(k,1,pointerA(81),ibin)
               else
                  num_noCS = num_hist3(j,1,ndist,ibin) 
                  den_noCS = den_hist3(k,1,pointerX(ndist),ibin)
               endif

               resc_noCS(j,k,n) = h_pt*( num_noCS/den_noCS ) + (1d0 - h_pt)
               write(*,*) 'resc', j,k,n,resc(j,k,n), resc_noCS(j,k,n), maxrescaling



!                  if( resc(j,k,n).gt.(maxrescaling)
!     $                 .or. resc(j,k,n).lt.(1d0/maxrescaling)  )then
                  if( resc(j,k,n).gt.(Kfact_dyWW_lcl(j,k)*3d0)
     $                 .or. resc(j,k,n).lt.(Kfact_dyWW_lcl(j,k)/3d0)  )then

                     MaxRescalingExceeded(j,k,n)=MaxRescalingExceeded(j,k,n)+1
                     
                     resc(j,k,n) = resc_noCS(j,k,n)
                     
                     if( resc(j,k,n).gt.(Kfact_dyWW_lcl(j,k)*maxrescaling)
     $                    .or. resc(j,k,n).lt.(Kfact_dyWW_lcl(j,k)/maxrescaling)  )then
                        
                        if(kfact_resc)then
                           resc(j,k,n) = h_pt*overall_kfactA(j,k) + (1d0-h_pt)
                        else
                           resc(j,k,n) = 1d0
                        endif
                     endif
                  endif
                  
            enddo
         enddo
         
      enddo                     ! j-loop 
      
         
 979  continue
      end

c#######################################################################
C     returns the Born kinematics, 4 CS angles and 3 variables (y_ww,dy_WW,pt_Wm) 
      subroutine get_WWCSkinematics(p_lm,p_nub,p_lp,p_nu,
     C     thCSm,phiCSm,thCSp,phiCSp,y_ww,dy_WW,pt_wm,m_ww,pt_wp)
      implicit none
      real*8 :: p_lm(4),p_nub(4),p_lp(4),p_nu(4)
      real*8 :: thCSm,phiCSm,thCSp,phiCSp,y_ww,dy_WW,pt_wm,m_ww,pt_wp 
      real*8 :: p_wm(4),p_wp(4),p_ww(4) 
      real*8 :: y_wm,y_wp,mass,eta,pt


      call get_csangles(p_lm,p_nub,thCSm,phiCSm)
      call get_csangles(p_nu,p_lp,thCSp,phiCSp)

      p_wm = p_lm+p_nub 
      p_wp = p_lp+p_nu 
      p_ww = p_wm+p_wp 
      call getyetaptmass(p_wp,y_wp,eta,pt_Wp,mass)
      call getyetaptmass(p_wm,y_wm,eta,pt_Wm,mass)
      call getyetaptmass(p_wp,y_wp,eta,pt,mass)
      call getyetaptmass(p_ww,y_ww,eta,pt,m_ww)

      dy_ww = y_wp-y_wm

      end

c#######################################################################
      subroutine get_csangles(pl1,pl2,thCS,phiCS)
      implicit none
!     !>> This routine returns CS angles 
      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'
      include 'pwhg_math.h'

      real(dp) :: pl1(4),pl2(4)
      real(dp) :: thCS,phiCS
      real(dp) :: costh_star,sinth_star,cosphi_star,sinphi_star
      real(dp) :: pV(4),yv,etav,ptv,mv

C-----> vector boson momentum 
      pv(:) = pl1(:) + pl2(:)
      call getyetaptmass(pv,yv ,etav ,ptv ,mv )

C-----> compute CS Angles:
C GZ DEBUG 
      call CS_angles22(pl2,pl1,yv,
C      call CS_angles22(pl1,pl2,yv,
     $     costh_star,sinth_star,cosphi_star,sinphi_star)
      thCS=acos(costh_star)
      phiCS=acos(cosphi_star)
      if(sinphi_star.ge.0d0) then
         phiCS=phiCS
      else
         phiCS= 2d0*pi - phiCS
      endif

      return
      end

c#######################################################################
      function get_rwgt(imethod,val1,err1,valA,errA,valB,errB,h_pT,num,den)
      implicit none
!     !>> This function returns reweighting factor given numbers to combine
!     !>> INPUT:
!     !---> imethod - method of combining numbers
!     !---> val1,err1 - values and errors from NNLO histograms
!     !---> valA,erra - values and errors from MiNLO_a histograms
!     !---> valB,errb - values and errors from MiNLO_b histograms
!     !---> h_pT      - damping factor

      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'
      
      integer imethod
      real*8 get_rwgt
      real*8 val1(1:9,1:9),err1(1:9,1:9)
      real*8 vala(1:9,1:9),erra(1:9,1:9)
      real*8 valb(1:9,1:9),errb(1:9,1:9)
      real*8 h_pT
      real*8 xNNLO, xMiNLO_a, xMiNLO_b
      real*8 eNNLO, eMiNLO_a, eMiNLO_b
      real*8 num,den,xval,xerr,xresc
      integer iCSm,iCSp,itmpm,itmpp
      real*8 pcent
      parameter (pcent=99999d0)  !> discard bins with uncertainty larger than "pcent"

      xNNLO=0d0
      xMiNLO_a=0d0
      xMiNLO_b=0d0
      eNNLO=0d0
      eMiNLO_a=0d0
      eMiNLO_b=0d0
c-----> some proposed scenarios:
      if( imethod.eq.2 )then
         val1(:,:) = val1(:,:) + err1(:,:)
         valA(:,:) = valA(:,:) + errA(:,:)
         valB(:,:) = valB(:,:) + errB(:,:)
      elseif( imethod.eq.3 )then
         val1(:,:) = val1(:,:) - err1(:,:)
         valA(:,:) = valA(:,:) - errA(:,:)
         valB(:,:) = valB(:,:) - errB(:,:)
      endif

C     this procedure allowed to include only some CS coefficients in reweighting 
C     if CScoeffs contains the full list, all coefficients are included  
      do itmpm=1,size(CScoeffs)
         iCSm=CScoeffs(itmpm)
      do itmpp=1,size(CScoeffs)
         iCSp=CScoeffs(itmpp)

!     !     >> NNLO
            xval=val1(iCSm,iCSp)
            xerr=err1(iCSm,iCSp)
            if( xerr.gt.abs(pcent*xval) )then
               xval=0d0
               xerr=0d0
            endif
            xNNLO    = xNNLO + xval
            eNNLO    = sqrt( eNNLO**2    + xerr**2    )
!     !     >>MiNLO_A
            xval=valA(iCSm,iCSp)
            xerr=errA(iCSm,iCSp)
            if( xerr.gt.abs(pcent*xval) )then
               xval=0d0
               xerr=0d0
            endif
            xMiNLO_A = xMiNLO_A + xval
            eMiNLO_A = sqrt( eMiNLO_A**2 + xerr**2 )
!     !     >>MiNLO_B
            xval=valB(iCSm,iCSp)
            xerr=errB(iCSm,iCSp)
            if( xerr.gt.abs(pcent*xval) )then
               xval=0d0
               xerr=0d0
            endif
            xMiNLO_B = xMiNLO_B + xval
            eMiNLO_B = sqrt( eMiNLO_B**2 + xerr**2 )
ccccccccccccccccccccccccccccc 999        continue
         enddo
      enddo
      num = xNNLO - xMiNLO_B
      den = XMiNLO_A
      xresc = h_pt*( num/den ) + (1d0 - h_pt)

!     !>> return reweighting factor
      get_rwgt= xresc
      
      return
      end
