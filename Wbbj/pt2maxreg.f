      function pt2max_regular()
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'    
      real * 8 pt2max_regular
      integer i
      real * 8 ptsq1,ptsq2

      ptsq1=(kn_cmpreal(1,7)**2+kn_cmpreal(2,7)**2)
      ptsq2=(kn_cmpreal(1,8)**2+kn_cmpreal(2,8)**2)

      pt2max_regular=max(ptsq1,ptsq2)

      if (pt2max_regular.lt.rad_ptsqmin) then
         write(*,*) '****************************************'
         write(*,*) 'WARNING in pt2max_regular'
         write(*,*) 'pt2max_regular < rad_ptsqmin ',
     #        pt2max_regular,' < ',rad_ptsqmin
         write(*,*) (flst_regular(i,rad_realreg),i=1,nlegreal)
         write(*,*) 'To generate this event, use the following seeds'
         call printcurrentrandom
         write(*,*) '****************************************'
      endif

      end
