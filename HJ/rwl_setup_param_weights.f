      subroutine rwl_setup_params_weights(count)
      implicit none
      integer count
      integer, save :: old_pdf1,old_pdf2
      real * 8, save :: old_facfact,old_renfact,s_topmass,
     1     s_bottommass,s_charmmass
      logical, save :: s_quarkmasseffects,s_rescalebornonly,
     1     s_rescalenlotoponly,s_bmass_in_minlo_flg
      logical bmass_in_minlo_flg
      common/c_bmass_in_minlo_flg/bmass_in_minlo_flg
      include 'pwhg_rwl.h'
      include 'pwhg_pdf.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'resc_array.h'
      logical rwl_keypresent
      logical call_init_fermions
      real * 8 val
      character * 5 scheme
      integer iorder,iret
      if(count==0) then
         old_pdf1=pdf_ndns1
         old_pdf2=pdf_ndns2
         old_facfact = st_facfact
         old_renfact = st_renfact
         s_quarkmasseffects=quarkmasseffects
         s_rescalebornonly=rescalebornonly
         s_rescalenlotoponly=rescalenlotoponly
         s_topmass=ph_topmass
         s_bottommass=ph_bottommass
         s_charmmass=ph_charmmass
         s_bmass_in_minlo_flg=bmass_in_minlo_flg
      elseif(count == -1) then
         pdf_ndns1 = old_pdf1
         pdf_ndns2 = old_pdf2
         st_facfact = old_facfact
         st_renfact = old_renfact
         call genericpdfpar(pdf_ndns1,pdf_ih1,st_lambda5MSB,
     1        scheme,iorder,iret)
         quarkmasseffects=s_quarkmasseffects
         rescalebornonly=s_rescalebornonly
         rescalenlotoponly=s_rescalenlotoponly
         ph_topmass=s_topmass
         ph_bottommass=s_bottommass
         ph_charmmass=s_charmmass
         bmass_in_minlo_flg=s_bmass_in_minlo_flg
      else
         if(count > rwl_num_weights) then
            write(*,*) 'rwl_setup_params_weights: '
            write(*,*) 'error, count > rwl_num_weights, exiting ...'
            call exit(-1)
         endif
         if(rwl_keypresent(count,'lhapdf',val)) then
c for safety, we convert the real val to the nearest integer
            pdf_ndns1 = nint(val)
            pdf_ndns2 = pdf_ndns1
            call genericpdfpar(pdf_ndns1,pdf_ih1,st_lambda5MSB,
     1           scheme,iorder,iret)
         endif
         if(rwl_keypresent(count,'facscfact',val)) then
            st_facfact = val
         endif
         if(rwl_keypresent(count,'renscfact',val)) then
            st_renfact = val
         endif
         if(rwl_keypresent(count,'quarkmasseffects',val)) then
            if(val.eq.1) then
               quarkmasseffects = .true.
               rescalebornonly  = .false.
               rescalenlotoponly = .false.
            elseif(val.eq.2) then
               quarkmasseffects = .true.
               rescalebornonly  = .true.
               rescalenlotoponly = .false.
            elseif(val.eq.3) then
               quarkmasseffects = .true.
               rescalebornonly  = .false.
               rescalenlotoponly = .true.
            endif
         endif
         call_init_fermions = .false.
         if(rwl_keypresent(count,'topmass',val)) then
            ph_topmass = val
            call_init_fermions = .true.
         endif
         if(rwl_keypresent(count,'bottommass',val)) then
            ph_bottommass = val
            call_init_fermions = .true.
         endif
         if(rwl_keypresent(count,'charmmass',val)) then
            ph_charmmass = val
            call_init_fermions = .true.
         endif
c     the .false. argument is a verbosity parameter.
         if(call_init_fermions) call init_fermions0(.false.)
         if(rwl_keypresent(count,'bmass_in_minlo',val)) then
            if(val == 1) bmass_in_minlo_flg = .true.
         endif
      endif
      end
