      subroutine setvirtual(p,vflav,virtual)
c Virtual needs to be provided by the user and put here
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'pwhg_kn.h'
      real * 8 finite,single,double,born
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual
      integer ret_code
      common/cpwhg_precision/ret_code
      character * 3 sret_code
      character * 18 stringa
      real * 8 jac

      call increasecnt("called virtuals")

      if (kn_jacborn==0d0) then
         virtual=0d0
         call increasecnt("kn_jacborn 0")
c          write(*,*) "virtual ZERO"
         return
      endif
      
      call update_as_param2(sqrt(st_muren2),st_alpha)
      call svirt_proc(p,vflav,finite,single,double,born)
c     add to count the precision of the point
c      write(*,*) "virt precision ",RET_CODE
      write(sret_code,'(i3)') RET_CODE
      stringa="virt precision "//sret_code
      call increasecnt(stringa)
c     end  add to count the precision of the point
      
      virtual = finite

c Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      virtual = virtual/(st_alpha/(2d0*pi))     
     
c      write(*,*) "virtual ",virtual, RET_CODE
      
      end
