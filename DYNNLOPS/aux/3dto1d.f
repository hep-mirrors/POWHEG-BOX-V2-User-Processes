      implicit none
      integer maxlines, maxbins,binx,biny,binz,maxhisto
      parameter (maxlines=150000,maxbins=100,maxhisto=100)
      character *(100) files
      character *(200) line(maxlines)
      character *(50) c2,c3,c4,title(maxhisto)
      integer nlines,nbinx,nbiny,nbinz,begin_histo(maxhisto)
      integer ifile,nfiles,ios,k,imethod,N_NaN
      character cmethod,c1
      real * 8 v1,v2,v3,v4,v5,v6,v7,v8,delx,dely,delz
      real * 8 histx(maxbins),histy(maxbins),histz(maxbins)
      real * 8 xmin, xmax, ymin, ymax, zmin, zmax
      real * 8 histx_err(maxbins),histy_err(maxbins),histz_err(maxbins)
      integer ilength,n_histo,i
      external ilength

C - kh modification started here >>>>>>>
      CALL getarg(1,files)
c      files='test.top'
c      read(*,'(a)') files
c load data
      open(unit=11,file=files,status='old')
      n_histo=1
      do k=1,maxlines+1
         read(unit=11,fmt='(a)',end=111) line(k)
         if(k.eq.maxlines+1) then
            write(*,*) ' too many lines in file, increase maxlines'
            call exit(-1)
         endif
         if(line(k).eq."") goto 12
         read(unit=line(k),fmt=*,end=111,iostat=ios) c1,c2,c3,c4
         if(ios.eq.0.and.c1.eq.'#') then
            begin_histo(n_histo)=k
            title(n_histo)=c2
            print*, 'Found ', trim(title(n_histo)) , ' at  line '
     $           , begin_histo(n_histo)
            n_histo=n_histo+1
         endif
         goto 12
 111     begin_histo(n_histo)=k !Last line +1
c         nlines=k-1
         goto 11
 12      continue
      enddo
 11   continue
c     Find distribution ranges
      do i=1,n_histo-1
         nlines=begin_histo(i+1)-1
 999     read(unit=line(nlines),fmt=*,iostat=ios) 
     $        v1,v2,v3,v4,v5,v6,v7,v8
         if(ios.ne.0) then
            nlines=nlines-1
            goto 999
         endif
         xmax=v2
         ymax=v4
         zmax=v6
c     print*, xmax, ymax, zmax, nlines
         histx=0
         histy=0
         histz=0
         histx_err=0
         histy_err=0
         histz_err=0
         do k=begin_histo(i),nlines
            read(unit=line(k),fmt=*,iostat=ios) 
     $           v1,v2,v3,v4,v5,v6,v7,v8
c     write(13,*), v1,v2,v3,v4,v5,v6,v7,v8
            if(ios.ne.0) then
c     print*, 'no match'
            else
               xmin=v1
               ymin=v3
               zmin=v5
               delx=v2-v1
               dely=v4-v3
               delz=v6-v5
               nbinx=nint((xmax-xmin)/(delx))
               nbiny=nint((ymax-ymin)/(dely))
               nbinz=nint((zmax-zmin)/(delz))
c     print*, xmin,ymin,zmin,delx,dely,delz,nbinx,nbiny,nbinz
               goto 888
            endif
         enddo
 888     do k=begin_histo(i),nlines
            read(unit=line(k),fmt=*,iostat=ios) 
     $           v1,v2,v3,v4,v5,v6,v7,v8
            if(ios.ne.0) then
c     print*, line(k)
            else
               binx=nint(((v1+v2)/2d0-xmin)/(delx)+1d-5)
               biny=nint(((v3+v4)/2d0-ymin)/(dely)+1d-5)
               binz=nint(((v5+v6)/2d0-zmin)/(delz)+1d-5)
               histx(binx)=histx(binx)+v7*(dely)*(delz)
               histy(biny)=histy(biny)+v7*(delx)*(delz)
               histz(binz)=histz(binz)+v7*(dely)*(delx)
               histx_err(binx)=histx_err(binx)+(v8*(dely)*(delz))**2
               histy_err(biny)=histy_err(biny)+(v8*(delx)*(delz))**2
               histz_err(binz)=histz_err(binz)+(v8*(dely)*(delx))**2
c     print*, binx, biny, binz
            endif
         enddo
         write(12,*) ' # HISTX-',trim(title(i)),' index'
     $        ,3*i-3
         do k=1,nbinx
            write(12,'(4(2x,d16.8))') xmin+(k-1)*delx,xmin+k*delx
     $           ,histx(k),sqrt(histx_err(k))  
         enddo
         write(12,*) ''
         write(12,*) ''
         write(12,*) ' # HISTY-',trim(title(i)),' index'
     $        ,3*i-2
         do k=1,nbiny
            write(12,'(4(2x,d16.8))') ymin+(k-1)*dely,ymin+k*dely
     $           ,histy(k),sqrt(histy_err(k))  
         enddo
         write(12,*) ''
         write(12,*) ''
         write(12,*) ' # HISTZ-',trim(title(i)),' index'
     $        ,3*i-1
         do k=1,nbinz
            write(12,'(4(2x,d16.8))') zmin+(k-1)*delz,zmin+k*delz
     $           ,histz(k),sqrt(histz_err(k))  
         enddo
         write(12,*) ''
         write(12,*) ''
      enddo
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
