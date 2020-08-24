      subroutine fillequivarrayborn(nentries,equivto,equivcoef,iret)
      implicit none
      integer nentries,iret
      integer equivto(nentries)
      real * 8 equivcoef(nentries)
      equivto=(/
     1 -1,-1,2,2,2,2,-1,7,7,7,7,7,7,7,7,7,-1,17,17,17,17,-1,22,22,22,22,
     1 -1,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,-1,
     1 47,47,47,47,-1,52,52,52,52,-1,57,57,57,57,57,57,57,57,57,57,57,
     1 57,57,57,57,57,57,57,57,-1,77,77,77,77,77,77,77,77,77,77,77,77,
     1 77,77,77,77,77,77,77,17,17,17,17,17,47,47,47,47,47,-1,107,107,
     1 107,107,-1,112,112,112,112,112,112,112,112,112,112,112,112,112,
     1 112,112,112,112,112,112,77,77,77,77,77,77,77,77,77,77,77,77,77,
     1 77,77,77,77,77,77,77,22,22,22,22,22,27,27,27,27,27,27,27,27,27,
     1 27,27,27,27,27,27,27,27,27,27,27/)
      equivcoef=(/
     1 0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1/)
      iret = 0
      end

      subroutine fillequivarrayvirt(nentries,equivto,equivcoef,iret)
      implicit none
      integer nentries,iret
      integer equivto(nentries)
      real * 8 equivcoef(nentries)
      equivto=(/
     1 -1,-1,2,2,2,2,-1,7,7,7,7,7,7,7,7,7,-1,17,17,17,17,-1,22,22,22,22,
     1 -1,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,-1,
     1 47,47,47,47,-1,52,52,52,52,-1,57,57,57,57,57,57,57,57,57,57,57,
     1 57,57,57,57,57,57,57,57,-1,77,77,77,77,77,77,77,77,77,77,77,77,
     1 77,77,77,77,77,77,77,17,17,17,17,17,47,47,47,47,47,-1,107,107,
     1 107,107,-1,112,112,112,112,112,112,112,112,112,112,112,112,112,
     1 112,112,112,112,112,112,77,77,77,77,77,77,77,77,77,77,77,77,77,
     1 77,77,77,77,77,77,77,22,22,22,22,22,27,27,27,27,27,27,27,27,27,
     1 27,27,27,27,27,27,27,27,27,27,27/)
      equivcoef=(/
     1 0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1/)
      iret = 0
      end

      subroutine fillequivarrayrad(nentries,equivto,equivcoef,iret)
      implicit none
      integer nentries,iret
      integer equivto(nentries)
      real * 8 equivcoef(nentries)
      equivto=(/
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,5,-1,-1,-1,-1,5,-1,-1,-1,-1,5,-1,-1,
     1 -1,-1,5,-1,-1,-1,-1,5,-1,-1,-1,-1,5,-1,-1,-1,-1,5,-1,-1,-1,-1,5,
     1 -1,-1,-1,-1,5,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,56,-1,-1,-1,-1,56,-1,
     1 -1,-1,-1,56,-1,-1,-1,-1,56,-1,-1,-1,-1,56,-1,-1,-1,-1,56,-1,-1,
     1 -1,-1,56,-1,-1,-1,-1,56,-1,-1,-1,-1,56,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,103,-1,-1,-1,-1,-1,-1,-1,103,-1,-1,-1,-1,-1,-1,-1,103,-1,-1,
     1 -1,-1,-1,-1,-1,103,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 146,-1,-1,-1,-1,146,-1,-1,-1,-1,146,-1,143,-1,-1,-1,-1,-1,-1,-1,
     1 166,-1,148,-1,-1,166,-1,158,-1,-1,166,-1,168,-1,-1,-1,-1,148,-1,
     1 -1,186,-1,153,-1,-1,186,-1,158,-1,-1,186,-1,143,-1,-1,-1,-1,168,
     1 -1,-1,206,-1,153,-1,-1,206,-1,158,-1,-1,206,-1,143,-1,-1,-1,-1,
     1 168,-1,-1,226,-1,148,-1,-1,226,-1,153,-1,-1,226,-1,-1,-1,-1,-1,
     1 -1,-1,-1,245,-1,-1,-1,-1,245,-1,-1,-1,-1,245,-1,-1,243,-1,-1,-1,
     1 -1,-1,-1,265,-1,-1,248,-1,265,-1,-1,258,-1,265,-1,-1,268,-1,-1,
     1 -1,-1,248,-1,285,-1,-1,253,-1,285,-1,-1,258,-1,285,-1,-1,243,-1,
     1 -1,-1,-1,268,-1,305,-1,-1,253,-1,305,-1,-1,258,-1,305,-1,-1,243,
     1 -1,-1,-1,-1,268,-1,325,-1,-1,248,-1,325,-1,-1,253,-1,325,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,387,-1,-1,-1,-1,387,-1,-1,-1,-1,387,383,-1,
     1 -1,-1,-1,-1,-1,-1,-1,407,388,-1,-1,-1,407,398,-1,-1,-1,407,408,
     1 -1,-1,-1,-1,388,-1,-1,-1,427,393,-1,-1,-1,427,398,-1,-1,-1,427,
     1 383,-1,-1,-1,-1,408,-1,-1,-1,447,393,-1,-1,-1,447,398,-1,-1,-1,
     1 447,383,-1,-1,-1,-1,408,-1,-1,-1,467,388,-1,-1,-1,467,393,-1,-1,
     1 -1,467,-1,-1,-1,-1,-1,-1,-1,-1,486,-1,-1,-1,-1,486,-1,-1,-1,-1,
     1 486,-1,483,-1,-1,-1,-1,-1,-1,-1,506,-1,488,-1,-1,506,-1,498,-1,
     1 -1,506,-1,508,-1,-1,-1,-1,488,-1,-1,526,-1,493,-1,-1,526,-1,498,
     1 -1,-1,526,-1,483,-1,-1,-1,-1,508,-1,-1,546,-1,493,-1,-1,546,-1,
     1 498,-1,-1,546,-1,483,-1,-1,-1,-1,508,-1,-1,566,-1,488,-1,-1,566,
     1 -1,493,-1,-1,566,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,626,-1,-1,-1,-1,626,-1,-1,-1,
     1 -1,626,-1,-1,-1,625,-1,-1,-1,-1,-1,646,-1,-1,-1,630,646,-1,-1,-1,
     1 640,646,-1,-1,-1,650,-1,-1,-1,-1,630,666,-1,-1,-1,635,666,-1,-1,
     1 -1,640,666,-1,-1,-1,625,-1,-1,-1,-1,650,686,-1,-1,-1,635,686,-1,
     1 -1,-1,640,686,-1,-1,-1,625,-1,-1,-1,-1,650,706,-1,-1,-1,630,706,
     1 -1,-1,-1,635,706,-1,-1,-1,-1,-1,-1,-1,-1,-1,726,-1,-1,-1,-1,726,
     1 -1,-1,-1,-1,726,-1,-1,-1,725,-1,-1,-1,-1,-1,746,-1,-1,-1,730,746,
     1 -1,-1,-1,740,746,-1,-1,-1,750,-1,-1,-1,-1,730,766,-1,-1,-1,735,
     1 766,-1,-1,-1,740,766,-1,-1,-1,725,-1,-1,-1,-1,750,786,-1,-1,-1,
     1 735,786,-1,-1,-1,740,786,-1,-1,-1,725,-1,-1,-1,-1,750,806,-1,-1,
     1 -1,730,806,-1,-1,-1,735,806,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,876,-1,-1,-1,-1,876,-1,-1,-1,-1,876,-1,-1,-1,875,
     1 -1,-1,-1,-1,-1,896,-1,-1,-1,880,896,-1,-1,-1,890,896,-1,-1,-1,
     1 900,-1,-1,-1,-1,880,916,-1,-1,-1,885,916,-1,-1,-1,890,916,-1,-1,
     1 -1,875,-1,-1,-1,-1,900,936,-1,-1,-1,885,936,-1,-1,-1,890,936,-1,
     1 -1,-1,875,-1,-1,-1,-1,900,956,-1,-1,-1,880,956,-1,-1,-1,885,956,
     1 -1,-1,-1,-1,-1,-1,-1,-1,975,-1,-1,-1,-1,975,-1,-1,-1,-1,975,-1,
     1 -1,-1,-1,-1,976,-1,-1,-1,995,-1,-1,-1,-1,995,981,-1,-1,-1,995,
     1 991,-1,-1,-1,-1,1001,-1,-1,-1,1015,981,-1,-1,-1,1015,986,-1,-1,
     1 -1,1015,991,-1,-1,-1,-1,976,-1,-1,-1,1035,1001,-1,-1,-1,1035,986,
     1 -1,-1,-1,1035,991,-1,-1,-1,-1,976,-1,-1,-1,1055,1001,-1,-1,-1,
     1 1055,981,-1,-1,-1,1055,986,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1133,-1,-1,-1,1133,-1,-1,-1,
     1 1133,-1,-1,-1,-1,-1,-1,-1,1149,-1,-1,-1,1149,-1,-1,-1,1149,-1,-1,
     1 -1,-1,-1,-1,-1,1165,-1,-1,-1,1165,-1,-1,-1,1165,-1,-1,-1,-1,-1,
     1 -1,-1,1181,-1,-1,-1,1181,-1,-1,-1,1181,-1,-1,-1,-1,-1,-1,-1,1197,
     1 -1,-1,-1,1197,-1,-1,-1,1197,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     1 -1,-1,-1,-1,-1,1223,-1,-1,-1,1223,-1,-1,-1,1223,-1,-1,-1,-1,-1,
     1 -1,-1,1239,-1,-1,-1,1239,-1,-1,-1,1239,-1,-1,-1,-1,-1,-1,-1,1255,
     1 -1,-1,-1,1255,-1,-1,-1,1255,-1,-1,-1,-1,-1,-1,-1,1271,-1,-1,-1,
     1 1271,-1,-1,-1,1271,-1,-1,-1,-1,-1,-1,-1,1287,-1,-1,-1,1287,-1,-1,
     1 -1,1287,-1,-1,-1/)
      equivcoef=(/
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,
     1 0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,
     1 0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,
     1 0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,
     1 0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,
     1 0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,
     1 0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,
     1 0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,
     1 0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.D0,0.1D1,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,
     1 0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,
     1 0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,
     1 0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0,0.1D1,
     1 0.D0,0.D0,0.D0,0.1D1,0.D0,0.D0,0.D0/)
      iret = 0
      end

      subroutine fillequivarraybtl(nentries,equivto,equivcoef,iret)
      implicit none
      integer nentries,iret
      integer equivto(nentries)
      real * 8 equivcoef(nentries)
      equivto=(/
     1 -1,-1,-1,-1,-1,-1,-1,3,4,5,6,7,3,4,5,6,7,3,4,5,6,7,3,4,5,6,7,3,4,
     1 5,6,7,3,4,5,6,7,3,4,5,6,7,3,4,5,6,7,3,4,5,6,7,-1,-1,-1,-1,-1,53,
     1 54,55,56,57,53,54,55,56,57,53,54,55,56,57,53,54,55,56,57,53,54,
     1 55,56,57,53,54,55,56,57,53,54,55,56,57,53,54,55,56,57,53,54,55,
     1 56,57,-1,-1,-1,-1,-1,106,107,-1,103,104,105,106,107,106,107,110,
     1 103,104,105,106,107,106,107,110,103,104,105,106,107,106,107,110,
     1 103,104,105,106,107,106,107,110,-1,-1,-1,-1,-1,143,144,145,146,
     1 147,143,144,145,146,147,143,144,145,146,147,143,144,145,146,147,
     1 143,144,145,146,147,143,144,145,146,147,143,144,145,146,147,143,
     1 144,145,146,147,143,144,145,146,147,143,144,145,146,147,143,144,
     1 145,146,147,143,144,145,146,147,143,144,145,146,147,143,144,145,
     1 146,147,143,144,145,146,147,143,144,145,146,147,143,144,145,146,
     1 147,143,144,145,146,147,143,144,145,146,147,-1,145,-1,-1,144,243,
     1 145,245,246,144,243,145,245,246,144,243,145,245,246,144,243,145,
     1 245,246,144,243,145,245,246,144,243,145,245,246,144,243,145,245,
     1 246,144,243,145,245,246,144,243,145,245,246,144,243,145,245,246,
     1 144,243,145,245,246,144,243,145,245,246,144,243,145,245,246,144,
     1 243,145,245,246,144,243,145,245,246,144,243,145,245,246,144,243,
     1 145,245,246,144,243,145,245,246,144,243,145,245,246,144,-1,-1,-1,
     1 -1,343,344,345,346,343,344,345,346,343,344,345,346,343,344,345,
     1 346,-1,-1,-1,344,363,364,365,344,363,364,365,344,363,364,365,344,
     1 363,364,365,344,-1,-1,-1,-1,-1,383,384,385,386,387,383,384,385,
     1 386,387,383,384,385,386,387,383,384,385,386,387,383,384,385,386,
     1 387,383,384,385,386,387,383,384,385,386,387,383,384,385,386,387,
     1 383,384,385,386,387,383,384,385,386,387,383,384,385,386,387,383,
     1 384,385,386,387,383,384,385,386,387,383,384,385,386,387,383,384,
     1 385,386,387,383,384,385,386,387,383,384,385,386,387,383,384,385,
     1 386,387,383,384,385,386,387,-1,385,-1,-1,384,483,385,485,486,384,
     1 483,385,485,486,384,483,385,485,486,384,483,385,485,486,384,483,
     1 385,485,486,384,483,385,485,486,384,483,385,485,486,384,483,385,
     1 485,486,384,483,385,485,486,384,483,385,485,486,384,483,385,485,
     1 486,384,483,385,485,486,384,483,385,485,486,384,483,385,485,486,
     1 384,483,385,485,486,384,483,385,485,486,384,483,385,485,486,384,
     1 483,385,485,486,384,483,385,485,486,384,-1,-1,-1,-1,583,584,585,
     1 586,583,584,585,586,583,584,585,586,583,584,585,586,-1,-1,-1,584,
     1 603,604,605,584,603,604,605,584,603,604,605,584,603,604,605,584,
     1 -1,-1,-1,-1,-1,623,624,625,626,627,623,624,625,626,627,623,624,
     1 625,626,627,623,624,625,626,627,623,624,625,626,627,623,624,625,
     1 626,627,623,624,625,626,627,623,624,625,626,627,623,624,625,626,
     1 627,623,624,625,626,627,623,624,625,626,627,623,624,625,626,627,
     1 623,624,625,626,627,623,624,625,626,627,623,624,625,626,627,623,
     1 624,625,626,627,623,624,625,626,627,623,624,625,626,627,623,624,
     1 625,626,627,-1,-1,-1,-1,-1,723,724,725,726,727,723,724,725,726,
     1 727,723,724,725,726,727,723,724,725,726,727,723,724,725,726,727,
     1 723,724,725,726,727,723,724,725,726,727,723,724,725,726,727,723,
     1 724,725,726,727,723,724,725,726,727,723,724,725,726,727,723,724,
     1 725,726,727,723,724,725,726,727,723,724,725,726,727,723,724,725,
     1 726,727,723,724,725,726,727,723,724,725,726,727,723,724,725,726,
     1 727,723,724,725,726,727,-1,-1,-1,-1,-1,-1,823,824,825,826,827,
     1 828,823,824,825,826,827,828,823,824,825,826,827,828,823,824,825,
     1 826,827,828,-1,-1,-1,-1,853,854,855,856,853,854,855,856,853,854,
     1 855,856,853,854,855,856,723,724,725,726,727,723,724,725,726,727,
     1 723,724,725,726,727,723,724,725,726,727,723,724,725,726,727,723,
     1 724,725,726,727,723,724,725,726,727,723,724,725,726,727,723,724,
     1 725,726,727,723,724,725,726,727,723,724,725,726,727,723,724,725,
     1 726,727,723,724,725,726,727,723,724,725,726,727,723,724,725,726,
     1 727,723,724,725,726,727,723,724,725,726,727,723,724,725,726,727,
     1 723,724,725,726,727,723,724,725,726,727,624,623,626,625,627,624,
     1 623,626,625,627,624,623,626,625,627,624,623,626,625,627,624,623,
     1 626,625,627,624,623,626,625,627,624,623,626,625,627,624,623,626,
     1 625,627,624,623,626,625,627,624,623,626,625,627,624,623,626,625,
     1 627,624,623,626,625,627,624,623,626,625,627,624,623,626,625,627,
     1 624,623,626,625,627,624,623,626,625,627,624,623,626,625,627,624,
     1 623,626,625,627,624,623,626,625,627,624,623,626,625,627,853,854,
     1 855,856,853,854,855,856,853,854,855,856,853,854,855,856,853,854,
     1 855,856,-1,-1,-1,827,826,-1,1093,1094,1095,827,826,1098,1093,
     1 1094,1095,827,826,1098,1093,1094,1095,827,826,1098,1093,1094,
     1 1095,827,826,1098,-1,-1,1123,1124,1123,1124,1123,1124,1123,1124,
     1 -1,-1,-1,-1,1133,1134,1135,1136,1133,1134,1135,1136,1133,1134,
     1 1135,1136,1133,1134,1135,1136,1133,1134,1135,1136,1133,1134,1135,
     1 1136,1133,1134,1135,1136,1133,1134,1135,1136,1133,1134,1135,1136,
     1 1133,1134,1135,1136,1133,1134,1135,1136,1133,1134,1135,1136,1133,
     1 1134,1135,1136,1133,1134,1135,1136,1133,1134,1135,1136,1133,1134,
     1 1135,1136,1133,1134,1135,1136,1133,1134,1135,1136,1133,1134,1135,
     1 1136,1123,1124,1123,1124,1123,1124,1123,1124,1123,1124,-1,-1,-1,
     1 -1,1223,1224,1225,1226,1223,1224,1225,1226,1223,1224,1225,1226,
     1 1223,1224,1225,1226,1223,1224,1225,1226,1223,1224,1225,1226,1223,
     1 1224,1225,1226,1223,1224,1225,1226,1223,1224,1225,1226,1223,1224,
     1 1225,1226,1223,1224,1225,1226,1223,1224,1225,1226,1223,1224,1225,
     1 1226,1223,1224,1225,1226,1223,1224,1225,1226,1223,1224,1225,1226,
     1 1223,1224,1225,1226,1223,1224,1225,1226,1223,1224,1225,1226/)
      equivcoef=(/
     1 0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.D0,0.1D1,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,
     1 0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,
     1 0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.D0,0.D0,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.D0,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.D0,0.D0,0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.D0,0.D0,
     1 0.D0,0.D0,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,
     1 0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1,0.1D1/)
      iret = 0
      end
