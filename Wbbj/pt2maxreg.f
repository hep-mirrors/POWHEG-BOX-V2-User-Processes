      function pt2max_regular()
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'    
      real * 8 pt2max_regular
      integer i

C$$$      write(*,*) ' dummy pt2max_regular function; replace with'
C$$$      write(*,*) ' your own process-dependent one, to be put in the'
C$$$      write(*,*) ' process-specific directory (e.g. /W, /Z, /VBF_H...)'
C$$$      write(*,*) ' The Makefile will automatically compile the version'
C$$$      write(*,*) ' in the process-specific directory'
C$$$      call exit(1)

      pt2max_regular=(kn_sreal/4)*(1-kn_y**2)*kn_csi**2

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
