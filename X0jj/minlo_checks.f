      subroutine minlo_checks
      implicit none
      include 'pwhg_flg.h'
      real * 8 powheginput
      external powheginput

      flg_minlo = (powheginput("minlo")==1)
     
      if(.not.flg_minlo) then
         return
      else
         flg_minlo_nnll=powheginput("#minlo_nnll").eq.1
      
         if(powheginput("#bornonly").eq.1) then
            flg_minlo_nnll=.false.
         endif
      
c This is set to true when computing the real contributions;
c it should start as false
         flg_minlo_real=.false.
c     
         if(powheginput("#runningscales").eq.1) then
            write(*,*) 
     1           ' minlo_checks: you cannot use runningscales with minlo'
            write(*,*) 'change it in powheg.input'
            call pwhg_exit(-1)
         endif
      endif
      end
