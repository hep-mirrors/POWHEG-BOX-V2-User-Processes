      subroutine rwl_write_rwgt_extra_info(iun,kg)
      implicit none 
      include 'pwhg_rwl.h'
      integer kw,kg,iun


      do kw = 1,rwl_num_weights
         if(rwl_weights_array(kw)%group == kg) then
            call pwhg_io_write(iun,"<weight id='"//
     1           rwl_weights_array(kw)%id//'-NNLOPS'//"' >"//
     2           rwl_weights_array(kw)%desc//"</weight>")
         endif
      enddo
      
      end


      subroutine rwl_write_weights_extra(iun,jg)
      implicit none 
      include 'pwhg_rwl.h'
      character(len=11) tmpstr
      integer iun,jg,jw 
      real *8 nnlops_resc(rwl_num_weights),weights_new(rwl_num_weights) 

C     first compute all rescaling factors at once 
      if(rwl_weights_array(1)%group == jg) then
         call compute_nnlops_weights(nnlops_resc)
         weights_new = rwl_weights * nnlops_resc 
      endif
      do jw = 1, rwl_num_weights
         if(rwl_weights_array(jw)%group == jg) then
            write(tmpstr,'(E11.5)') weights_new(jw)
            call pwhg_io_write(iun,tmpstr)
         endif
      enddo

      end
