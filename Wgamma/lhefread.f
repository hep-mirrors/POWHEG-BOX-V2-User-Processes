c...lhefheader(nlf)
c...reads initialization information from a les houches events file on unit nlf. 
      subroutine lhefreadhdr(nlf)
      implicit none
      integer nlf
      character * 200 string
      integer ipr
      include 'LesHouches.h'
 1    read(nlf,fmt='(a)',err=998,end=998) string
      if(string(1:5).eq.'<init') then
         read(nlf,*) idbmup(1),idbmup(2),ebmup(1),ebmup(2),
     &        pdfgup(1),pdfgup(2),pdfsup(1),pdfsup(2),idwtup,nprup
         do ipr=1,nprup
            read(nlf,*) xsecup(ipr),xerrup(ipr),xmaxup(ipr),
     &           lprup(ipr)
         enddo
         goto 999
      else
         goto 1
      endif
 998  write(*,*) 'lhefreadhdr: could not find <init> data'
      call exit(1)
 999  end


c...reads event information from a les houches events file on unit nlf. 
      subroutine lhefreadev(nlf)
      implicit none
      integer nlf
      character * 200 string
      include 'LesHouches.h'
      include 'pwhg_weights.h'
      integer i,j
c     separation of event types
      logical Wgam_evt,Wjgam_evt,WjB_evt,Wjj_evt,gam_evt,Wj_evt
      common/lhesave/Wgam_evt,Wjgam_evt,WjB_evt,Wjj_evt,gam_evt,Wj_evt
c     powheg-nc/c-lo
      logical powheg_nc,powheg_c_lo
      common/wgammode/powheg_nc,powheg_c_lo
c     scalup choice for qed shower (powheg_nc only)
      double precision scalupqed
      common/lhe_scalupqed/scalupqed

      gam_evt=.false.
      Wgam_evt=.false.
      Wjgam_evt=.false.
      WjB_evt=.false.
      Wjj_evt=.false.
      Wj_evt=.false.

 1    continue
      string=' '
      read(nlf,fmt='(a)',err=777,end=666) string
      if(string.eq.'</LesHouchesEvents>') then
         goto 998
      endif
      if(string(1:6).eq.'<event') then
c on error try next event. The error may be cause by merging
c truncated event files. On EOF return with no event found
         read(nlf,*,end=998,err=1)nup,idprup,xwgtup,scalup,aqedup,aqcdup
         do i=1,nup
            read(nlf,*,end=998,err=1) idup(i),istup(i),mothup(1,i),
     &           mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     &           vtimup(i),spinup(i)
         enddo
c event selection
         do j=1,nup
            if(idup(j).eq.22) then
               gam_evt=.true.
               if(j.eq.6) then
                  Wgam_evt=.true.
               else
                  Wjgam_evt=.true.
               endif
            endif
         enddo
         if(.not.gam_evt) then
            Wj_evt=.true.
            if(nup.eq.6) then
               WjB_evt=.true.
            else
               Wjj_evt=.true.
            endif
         endif

c effective scalup choice for powheg_nc
         if(powheg_nc) then
            scalupqed=scalup
c non-radiative Wgam events: no QCD+QED shower
c Wgam+j events: QCD+QED shower Q_max=pt_j (default choice for scalup)
c non-radiative Wj events: no QED shower / QCD sh Q_max=pt_j 
            if((nup.eq.6).and.(idup(6).ne.22)) then
               scalup=sqrt(pup(1,6)**2+pup(2,6)**2)
               scalupqed = scalup
c Wj+gamma events: QCD+QED shower
c Q_max=pt_j QCD shower / Q_max=pt_gam (= default scalup) QED shower
            elseif((nup.eq.7).and.(idup(7).eq.22)) then
               scalupqed=scalup
               scalup=sqrt(pup(1,6)**2+pup(2,6)**2)
            endif
         endif

         call lhefreadextra(nlf)
c uncomment the following line for reweighted events (scale variations)
c         xwgtup=weights_val(weights_num)
         goto 999
      else
         goto 1
      endif
c no event found:
 777  continue
      print *,"Error in reading"
      print *,string
      nup=0
      return
 666  continue
      print *,"reached EOF"
      print *,string
      nup=0
      return
 998  continue
      print *,"read </LesHouchesEvents>"
      nup=0      
 999  end


      subroutine lhefreadextra(nlf)
      implicit none
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_weights.h'
      character * 200 string
      integer nlf
      weights_num = 0
 1    continue
      string=' '
      read(unit=nlf,fmt='(a)',end=998) string
      string=adjustl(string)
      if(string.eq.'<event>') then
         backspace nlf
         return
      endif
      if(string(1:11).eq.'#new weight') then
         if(weights_num.eq.weights_max) then
            write(*,*) ' too many weights!'
            write(*,*) ' increase weights_max'
            call exit(-1)
         endif
         weights_num = weights_num + 1
         read(string(38:),*) weights_val(weights_num),
     1                       weights_renfac(weights_num),
     2                       weights_facfac(weights_num),
     3                       weights_npdf1(weights_num),
     4                       weights_npdf2(weights_num),
     5                       weights_whichpdf(weights_num)
      endif
      if(string.eq.'# Start extra-info-previous-event') then
         read(nlf,'(a)') string
         read(string(3:),*) rad_kinreg
         read(nlf,'(a)') string
         read(string(3:),*) rad_type
      endif
      goto 1
      return
 998  continue
      end
