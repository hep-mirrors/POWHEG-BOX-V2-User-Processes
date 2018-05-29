c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
      subroutine ww_setvirtual(pin,vflav,virtual,born,force_recalc)
      implicit none
      include 'ww_nlegborn.h'
      include 'pwhg_st.h'
      include 'ww_qcdcouple.f'
      include 'ww_constants.f'
      include 'ww_PhysPars.h'
c$$$      include 'ww_zcouple.f'
c$$$      include 'ww_wcouple.f'
c$$$      include 'ww_vvsettings.f'
      double precision msqB,msq
      integer i,k
      double precision p(ww_mxpart,4)

      real * 8 pin(0:3,ww_nlegborn)
      integer vflav(ww_nlegborn)
      real * 8 virtual
      real * 8 born,dummy(0:3,0:3)
      real *8 s,dotp
      external dotp
      logical force_recalc

c$$$      logical first_time
c$$$      data first_time/.true./
c$$$      real * 8 powheginput
c$$$      external powheginput

      call ww_setwzcoupl(vflav(1),vflav(2),vflav(3),vflav(5))

c --- set scale dependent QCD coupling 
      ww_ason2pi = st_alpha/ww_twopi

      do i=1,6
         p(i,4) = pin(0,i)
         p(i,1:3) = pin(1:3,i)
      enddo
      p(1,:)=-p(1,:)
      p(2,:)=-p(2,:)

      call ww_qqb_ww(p,msqB)
      call ww_qqb_ww_v(p,msq,force_recalc)

      ! -- divide out ason2pi
      virtual = msq/ww_ason2pi
 
      ! -- scheme change from dred 
      born=msqB * ww_normbr
      virtual = virtual * ww_normbr + born*(-2d0*(ww_cf/2d0)) 

c      write(*,'(a,d15.9)') ' virtual=',virtual

c$$$      if(first_time) then
c$$$         write(*,*) ''
c$$$         write(*,*) ''
c$$$         write(*,*) '**************************************'
c$$$         write(*,*) '******* EVENTS FROM setvirtual *******'
c$$$         write(*,*) '**************************************'
c$$$         write(*,*) '*** '
c$$$         write(*,*) '*** ww_vvsettings.f:'
c$$$         write(*,*) '*** ww_zerowidth = ',ww_zerowidth
c$$$         write(*,*) '*** ww_dronly = ',ww_dronly
c$$$         write(*,*) '*** '
c$$$         write(*,*) '*** ww_smcouplings.f:'
c$$$         write(*,*) '*** Z mass = ',ww_ph_Zmass
c$$$         write(*,*) '*** Z width = ',ww_ph_Zwidth
c$$$         write(*,*) '*** W mass = ',ww_ph_Wmass
c$$$         write(*,*) '*** W width = ',ww_ph_Wwidth
c$$$         write(*,*) '*** 1/alphaem = ',1d0/ww_ph_alphaem
c$$$         write(*,*) '*** sthw2 = ',ww_ph_sthw2
c$$$         write(*,*) '*** e**2  = ',ww_ph_unit_e**2
c$$$         write(*,*) '*** '
c$$$         write(*,*) '*** ww_zcouple.f:'
c$$$         write(*,*) '*** ww_esq = ',ww_esq
c$$$         write(*,*) '*** ww_zmass = ',ww_zmass
c$$$         write(*,*) '*** ww_zwidth = ',ww_zwidth
c$$$         write(*,*) '*** ww_sin2w = ',ww_sin2w
c$$$         write(*,*) '*** '
c$$$         write(*,*) '*** ww_wcouple.f:'
c$$$         write(*,*) '*** ww_wmass = ',ww_wmass
c$$$         write(*,*) '*** ww_wwidth = ',ww_wwidth
c$$$         write(*,*) '*** ww_gw = ',ww_gw
c$$$         write(*,*) '*** ww_gwsq = ',ww_gwsq
c$$$         write(*,*) '*** ww_xw = ',ww_xw
c$$$         write(*,*) '*** ww_lnl = ',ww_lnl
c$$$         write(*,*) '*** '
c$$$         write(*,*) '*** ww_qcdcouple.f:'
c$$$         write(*,*) '*** ww_gsq = ',ww_gsq
c$$$         write(*,*) '*** ww_as = ',ww_as
c$$$         write(*,*) '*** ww_ason2pi = ',ww_ason2pi
c$$$         write(*,*) '*** ww_ason4pi = ',ww_ason4pi
c$$$         write(*,*) '*** '
c$$$         write(*,*) '*** ww_PhysPars.h:'
c$$$         write(*,*) '*** ww_ph_alphaem = ',ww_ph_alphaem
c$$$         write(*,*) '*** ww_ph_Zmass = ',ww_ph_Zmass
c$$$         write(*,*) '*** ww_ph_Zmass2 = ',ww_ph_Zmass2
c$$$         write(*,*) '*** ww_ph_Zwidth = ',ww_ph_Zwidth
c$$$         write(*,*) '*** ww_ph_ZmZw = ',ww_ph_ZmZw
c$$$         write(*,*) '*** ww_ph_Wmass = ',ww_ph_Wmass
c$$$         write(*,*) '*** ww_ph_Wmass2 = ',ww_ph_Wmass2
c$$$         write(*,*) '*** ww_ph_Wwidth = ',ww_ph_Wwidth
c$$$         write(*,*) '*** ww_ph_WmWw = ',ww_ph_WmWw
c$$$         write(*,*) '*** ww_ph_cthw = ',ww_ph_cthw
c$$$         write(*,*) '*** ww_ph_cthw2 = ',ww_ph_cthw2
c$$$         write(*,*) '*** ww_ph_sthw = ',ww_ph_sthw
c$$$         write(*,*) '*** ww_ph_sthw2 = ',ww_ph_sthw2
c$$$         write(*,*) '*** ww_ph_gmu = ',ww_ph_gmu
c$$$         write(*,*) '*** ww_ph_unit_e = ',ww_ph_unit_e
c$$$         write(*,*) '*** ww_ph_CKM = '
c$$$         write(*,*) ww_ph_CKM(:,1)
c$$$         write(*,*) ww_ph_CKM(:,2)
c$$$         write(*,*) ww_ph_CKM(:,3)
c$$$         write(*,*) '*** ww_ph_deltas = ',ww_ph_deltas
c$$$         write(*,*) '*** ww_normbr = ',ww_normbr
c$$$         if(powheginput("#runningwidth").eq.1) then
c$$$            write(*,*) ' *** Using RUNNING WIDTH in ww_cpropfac'
c$$$            !! rw=.true. in ww_cpropfac
c$$$         else
c$$$            write(*,*) ' *** Using FIXED WIDTH in ww_cpropfac'
c$$$            !! rw=.false. in ww_cpropfac
c$$$         endif
c$$$         write(*,*) '**************************************'
c$$$         write(*,*) ''
c$$$         first_time=.false.
c$$$      endif
c$$$      write(*,*) '***'
c$$$      write(*,*) '*** ww_setvirtual'
c$$$      write(*,'(6(1x,i5))') vflav
c$$$      do k=1,ww_nlegborn
c$$$c     write(*,'(4(1x,e16.9))') pin(0:3,k)
c$$$         write(*,*) pin(0:3,k)
c$$$      enddo
c$$$      write(*,*) 'virtual = ',virtual
c$$$      write(*,*) 'ason2pi = ',ww_ason2pi
c$$$      write(*,*) 'mur     = ',sqrt(st_muren2)
c$$$      s = (pin(0,3)+pin(0,4)+pin(0,5)+pin(0,6))**2
c$$$     $  - (pin(1,3)+pin(1,4)+pin(1,5)+pin(1,6))**2
c$$$     $  - (pin(2,3)+pin(2,4)+pin(2,5)+pin(2,6))**2
c$$$     $  - (pin(3,3)+pin(3,4)+pin(3,5)+pin(3,6))**2
c$$$      write(*,*) 'sqrt(s) = ',sqrt(s)

      end

