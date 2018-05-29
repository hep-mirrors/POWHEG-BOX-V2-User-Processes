      function ww_isquark(id)
      implicit none
      logical ww_isquark
      integer id,aid
      aid=abs(id)
      if(aid.ge.1.and.aid.le.6) then
         ww_isquark=.true.
      else
         ww_isquark=.false.
      endif
      end

