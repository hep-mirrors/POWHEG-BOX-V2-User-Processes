c     various shared helpers
c     2012-07 AvM


c     decode two PDG ids for MSSM fermions from a single integer
      subroutine decode_sfermion_pair(combination,ida,idb)
      implicit none
      integer combination,ida,idb,idaa,idbb
      idaa = combination/1000
      idbb = mod(combination,1000)
      ida =  (idaa/100)*1000000 + mod(idaa,100)
      idb = -(idbb/100)*1000000 - mod(idbb,100)
      end



c     encode two PDG ids for MSSM fermions into a single integer
c     (encodes 2000013,-200013 to 213213 etc, opposite signs for A,B)
      integer function encode_sfermion_pair(ida,idb)
      implicit none
      integer ida,idb,idaa,idbb,combination,idar,idbr
      idaa = (ida / 1000000)*100 + mod(ida,100)
      idbb = (idb / 1000000)*100 + mod(idb,100)
      combination = idaa - 1000*idbb
      ! check if reconstruction works, then we are fine in any case
      call decode_sfermion_pair(combination,idar,idbr)
      if ((ida.ne.idar).or.(idb.ne.idbr))  stop "invalid particle ID"
      encode_sfermion_pair = combination
      end



c takes one Born flavor structure
c abbreviates the PDG numbers of all sleptons for MADGRAPH
c since convert_to_st(r)ing requires abs(id)<=999
      subroutine abbreviate_slepton_number_born(bflav,bflav_abbr)
      implicit none
      include 'nlegborn.h'
      integer bflav(nlegborn),bflav_abbr(nlegborn),i

      do i=1,nlegborn
      select case(bflav(i))
      case (1000011) ! selectron left
        bflav_abbr(i) = 111
      case (1000013) ! smuon left
        bflav_abbr(i) = 113
      case (1000015) ! stau 1
        bflav_abbr(i) = 115
      case (2000011) ! selectron right
        bflav_abbr(i) = 211
      case (2000013) ! smuon right
        bflav_abbr(i) = 213
      case (2000015) ! stau 2
        bflav_abbr(i) = 215
      case (-1000011) ! anti selectron left
        bflav_abbr(i) = -111
      case (-1000013) ! anti smuon left
        bflav_abbr(i) = -113
      case (-1000015) ! anti stau 1
        bflav_abbr(i) = -115
      case (-2000011) ! anti selectron right
        bflav_abbr(i) = -211
      case (-2000013) ! anti smuon right
        bflav_abbr(i) = -213
      case (-2000015) ! anti stau 2
        bflav_abbr(i) = -215
      case default
        bflav_abbr(i) = bflav(i)
      end select
      enddo

      end



c takes one real flavor structure
c abbreviates the PDG numbers of all sleptons for MADGRAPH
c since convert_to_st(r)ing requires abs(id)<=999
      subroutine abbreviate_slepton_number_real(rflav,rflav_abbr)
      implicit none
      include 'nlegborn.h'
      integer rflav(nlegreal),rflav_abbr(nlegreal),i

      do i=1,nlegreal
      select case(rflav(i))
      case (1000011) ! selectron left
        rflav_abbr(i) = 111
      case (1000013) ! smuon left
        rflav_abbr(i) = 113
      case (1000015) ! stau 1
        rflav_abbr(i) = 115
      case (2000011) ! selectron right
        rflav_abbr(i) = 211
      case (2000013) ! smuon right
        rflav_abbr(i) = 213
      case (2000015) ! stau 2
        rflav_abbr(i) = 215
      case (-1000011) ! anti selectron left
        rflav_abbr(i) = -111
      case (-1000013) ! anti smuon left
        rflav_abbr(i) = -113
      case (-1000015) ! anti stau 1
        rflav_abbr(i) = -115
      case (-2000011) ! anti selectron right
        rflav_abbr(i) = -211
      case (-2000013) ! anti smuon right
        rflav_abbr(i) = -213
      case (-2000015) ! anti stau 2
        rflav_abbr(i) = -215
      case default
        rflav_abbr(i) = rflav(i)
      end select
      enddo

      end
