c$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
c$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
      function choose_bin(arrin,value,nbin)

      implicit none
      real*8 choose_bin,value
      real*8 arrin(nbin+1)
      integer nbin, k

      do k=0,nbin
         if( value.lt.arrin(k+1) ) then
            choose_bin=dble(k)-0.5d0
            goto 123
         endif
      enddo
      choose_bin=dble(k)+0.5d0
      !-- in case we are above histogram limit it returns: (nbin+1)+0.5
      !-- in case we are below histogram limit it returns: -0.5

 123  continue

      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function get_jacobian(arrin,bin,nbin)

      implicit none
      real*8 get_jacobian
      real*8 bin,arrin(nbin+1),width
      integer ibin,nbin
      
      if(bin.lt.0) then
         width=0d0
      elseif(bin.gt.dble(nbin)) then
         width=0d0
      else
         ibin=floor(bin+1)
         width=( arrin(ibin+1)-arrin(ibin) )
     $          / ( arrin(nbin+1) - arrin(1) )
      endif

      get_jacobian=width

      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine read_array(indx,nbin,arrout,filename)
      implicit none

      integer maxlines
      parameter (maxlines=10000)
      character*100 line(maxlines),filename
      
      integer k,j,indx,nbin,ios,nlines,ibin
      real*8 arrout(nbin+1), value
      character*100 c1,c2,c3
      integer i4, indxaddr(3)

c===----- read in file with xbins:
      open(unit=77,file=trim(filename),status='old',iostat=ios)
      if( ios.ne.0 )then
         write(*,*) ' ERROR: File "',trim(filename),'" not found!'
         write(*,*) ' --> please ensure that you provide binvalues!'
         stop
      endif
      do k=1,maxlines
         read(unit=77,fmt='(a)',end=111) line(k)
         if(k.eq.maxlines+1) then
            write (6,*) 'ERROR: Too many lines!'
            stop
         endif
         goto 12
 111          nlines=k-1
         goto 11
 12      continue
      enddo
 11      continue
c===----- find line for index="indx"
      do k=1,nlines
         if(line(k).eq.'') goto 333
         read(unit=line(k),fmt=*,iostat=ios) value
         if(ios.ne.0) then
            read(unit=line(k),fmt=*,iostat=ios) c1,c2,c3,i4
            if((c1.eq.'#').and.(i4.eq.indx)) then
               indxaddr(1)=i4  !--remember index number
               indxaddr(2)=k+1 !--remember first line with numb.
               !---- check how many numbers
               j=0
               ios=0
               do while (ios.eq.0)
                  read(unit=line(k+1+j),fmt=*,iostat=ios) value
                  if(ios.eq.0) j=j+1
               enddo
               indxaddr(3)=k+j !--remember last line with numb.
               goto 444
            endif
         endif
 333          continue
      enddo
 444    continue
      !--check for possible failure:
      nlines=indxaddr(3)-indxaddr(2)
      if(nlines.ne.nbin) then
         write (6,*) 'ERROR: Number of bins .ne. number of xbin!'
         write (6,*) '@index: ',indx
         write (6,*) 'Number of bins: ',nbin
         write (6,*) 'Number of xbin: ',nlines
         write (6,*) '---> Check "binvalues.top"!'
         stop
      endif
c===----- read the numbers
      ibin=1
      do k=indxaddr(2),indxaddr(3)
         read(unit=line(k),fmt=*,iostat=ios) value
         if(ios.ne.0) then
            write (6,*) 'ERROR: xbin is NaN in line: ',k
            stop
         endif
         arrout(ibin)=value
         ibin=ibin+1
      enddo

      rewind(unit=77)

      close(77,status='keep')

      end subroutine


c#######################################################################
      subroutine get_hpt_factor(ppartons,npartons,h_pt)
      implicit none
!     !>> This routine calculates h(pT) factor based on pt of NLO QCD emissions

!     !>> WB: make sure that this routine is correct...
      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'
      include 'wwproj_parameters.h' 

      real(dp) :: ppartons(4,2)
      integer  :: npartons,njet
      real(dp) :: h_pt
      real(dp) :: dummy0,dummy1,dummy2

!--   initialise arrays and parameters:
      h_pt=1d0
      pjet=0d0
      ptjet=0d0
      njet=0
      jet=0

c-----> find jets in order to get h(pT):
!--   find pT scale for h(pT):
      call fastjetppgenkt(ppartons,npartons,rfj_hpt,palg_hpt,0d0,pjet,njet,jet)
      if(h_scaler)then
         if(njet.ge.1)then
            call getyetaptmass(pjet(1:4,1),dummy0,dummy1,ptjet,dummy2)
            h_pt = (beta_const*mass_const)**gamma_const / 
     C           ( (beta_const*mass_const)**gamma_const + ptjet(1)**gamma_const )
         else
            h_pT=1d0
         endif
      else
         h_pT=1d0
      endif

      return
      end


c#######################################################################
      subroutine get_hpt_factor_new(ppartons,npartons,mww,h_pt)
      implicit none
!     !>> This routine calculates h(pT) factor based on pt of NLO QCD emissions

!     !>> WB: make sure that this routine is correct...
      include 'pwhg_bookhist-common.h'
      include 'reweighting_common.h'
      include 'wwproj_parameters.h' 

      real(dp) :: ppartons(4,2),mww
      integer  :: npartons,njet
      real(dp) :: h_pt
      real(dp) :: dummy0,dummy1,dummy2

!--   initialise arrays and parameters:
      h_pt=1d0
      pjet=0d0
      ptjet=0d0
      njet=0
      jet=0

c-----> find jets in order to get h(pT):
!--   find pT scale for h(pT):
      call fastjetppgenkt(ppartons,npartons,rfj_hpt,palg_hpt,0d0,pjet,njet,jet)
      if(h_scaler)then
         if(njet.ge.1)then
            call getyetaptmass(pjet(1:4,1),dummy0,dummy1,ptjet,dummy2)
            h_pt = (beta_const*mww)**gamma_const / 
     C           ( (beta_const*mww)**gamma_const + ptjet(1)**gamma_const )
         else
            h_pT=1d0
         endif
      else
         h_pT=1d0
      endif

      return
      end



c###########################################################################
Cc---------------------------------------------------------------------------
C      subroutine load_arrays(filename)
C      implicit none
C
C      include 'hvproj_parameters.h'
C
C      character*1000 filename
C
C      call read_array(ii_yVH,      nbin, arr_yVH,      filename )
C      call read_array(ii_xVHlow,   nbin, arr_xVHlow,   filename )
C      call read_array(ii_xVHhigh,  nbin, arr_xVHhigh,  filename )
C      call read_array(ii_thetaV_l, nbin, arr_thetaV_l, filename )
C      call read_array(ii_yV,       nbin, arr_yV,       filename )
C      call read_array(ii_ptH,      nbin, arr_ptH,      filename )
C      call read_array(ii_yH,       nbin, arr_yH,       filename )
C      call read_array(ii_delY,     nbin, arr_delY,     filename ) !---- delY= yH - yV
C      call read_array(ii_mVH,      nbin, arr_mVH,      filename ) !---- delY= yH - yV
C
C      end
