c program to merge gnuplot data tables.
c a line starting with '#' followed by a line with 4 numbers
c is considered the beginning of a data set. All files to be
c merged must be identical in format.
c When the program starts, it expects as input a list of filenames,
c one per line, to be merged. An empty lines terminates the list.
      implicit none
      integer maxfiles,maxlines
      parameter (maxfiles=1000,maxlines=15000)
      character *(30) file
      character *(100) line(maxlines)
      integer nlines,index, indexx
      integer ifile,nfiles,ios,k,imethod,N_NaN
      character cmethod
      real * 8 v1,v2,v3,v4,vbf_xsec,vbf_xsec_sigma,cut, lum, SM, sigma
      real * 8 tail_xsec, tail_xsec_sigma, total_xsec, total_xsec_sigma
      character *(100), c1, c2, c3
      integer i4,startline,endline
      integer ilength
      external ilength

C - kh modification started here >>>>>>>
      CALL getarg(1,file)
      write(*,*) 'Enter which index to find mean of'
      read(*,*), indexx
      open(unit=11,file=file,status='old')
      open(unit=12,file='tables.dat',position='append')
      do k=1,maxlines+1
         read(unit=11,fmt='(a)',end=111) line(k)
         if(k.eq.maxlines+1) then
            write(*,*) ' too many lines in file, increase maxlines'
            call exit(-1)
         endif
         goto 12
 111     nlines=k-1
         goto 11
 12      continue
      enddo
 11   continue
      index=0
      startline=0
      endline=nlines-1
      total_xsec=0d0
      total_xsec_sigma=0d0
      tail_xsec=0d0
      tail_xsec_sigma=0d0
      do k=1,nlines
         read(unit=line(k),fmt=*,iostat=ios) v1,v2,v3,v4
         if(ios.ne.0) then
            read(unit=line(k),fmt=*,iostat=ios) c1,c2,c3,i4
            if(ios.eq.0) then
               index=i4
               if(index.eq.indexx) then
                  startline=k+1
               elseif(index.eq.(indexx+1)) then
                  endline=k-2
               endif
c               print*, line(k)
c               print*, 'index', index
            endif
         else
            if(index.eq.0) then
c               total_xsec=v3
c               total_xsec_sigma=v4**2
            endif
            if(index.eq.indexx) then
               total_xsec=total_xsec+v3
               total_xsec_sigma=total_xsec_sigma+v4**2
               tail_xsec=tail_xsec+(v1+v2)/2d0*v3
               tail_xsec_sigma=tail_xsec_sigma+((v1+v2)/2d0*v4)**2
            endif
         endif
      enddo
      print*, 'Mean of index', indexx, ': '
     $     , tail_xsec/total_xsec, '±', 
     $     sqrt(tail_xsec_sigma/total_xsec/
     $     (endline-startline))
      end


      function ilength(line)
      integer ilength
      character *(*) line
      ilength=len(line)
      do j=ilength,1,-1
         if(line(j:j).ne.' ') then
            ilength=j
            return
         endif
      enddo
      ilength=0
      end
