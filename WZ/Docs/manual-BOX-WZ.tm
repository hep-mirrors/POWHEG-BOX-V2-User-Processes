<TeXmacs|1.0.7.16>

<style|article>

<\body>
  <doc-data|<doc-title|The POWHEG-BOX-WZ manual>|>

  <section|Introduction>

  The POWHEG-BOX-WZ program <cite|noi> can be used to generate the QCD
  production of <math|W Z> events in hadronic collisions, with the <math|W
  and Z> bosons decaying into leptons, to NLO accuracy in QCD, in such a way
  that matching with a full shower program is possible. It is based upon the
  calculation of refs. <cite|Dixon:1998py>, <cite|Campbell:1999ah>,
  <cite|Campbell:2011bn>. The effect of <math|Z>-<math|\<gamma\>>
  interference, as well as the effect of off-shell singly resonant graphs,
  are fully included in the calculation. Anomalous coupling can also be
  included.\ 

  \ This document describes the input parameters that are specific to this
  implementation. The parameters that are common to all
  <with|font-family|tt|POWHEG BOX> implementation are given in the
  <with|font-family|tt|manual-BOX.pdf> document, in the
  <with|font-family|tt|POWHEG-BOX/Docs> directory.

  <section|Generation of events>

  Do<next-line><with|font-family|tt|$ cd POWHEG-BOX/WZ><next-line><with|font-family|tt|$
  make pwhg_main><next-line>Then do (for example)<next-line><with|font-family|tt|$
  cd test><next-line><with|font-family|tt|$ ../pwhg_main><next-line>At the
  end of the run, the file <with|font-family|tt|pwgevents.lhe> will contain
  events for <math|W Z> production in the Les Houches format. In order to
  shower them with <with|font-family|tt|PYTHIA>:<next-line><with|font-family|tt|$
  cd POWHEG-BOX/WZ><next-line><with|font-family|tt|$ make
  main-PYTHIA-lhef><next-line><with|font-family|tt|$ cd
  test><next-line><with|font-family|tt|$ ../main-PYTHIA-lhef>

  <section|Input parameters>

  Parameters in <with|font-family|tt|powheg.input> that are specific to
  <math|Z Z> pair production:<next-line><with|font-family|tt|only-e 1
  \ \ \ \ \ \ ! only e e e nue (all charges)><next-line><with|font-family|tt|only-mu
  1 \ \ \ \ \ ! only mu mu mu numu><next-line><with|font-family|tt|only-tau 1
  \ \ \ \ ! only tau tau tau nutau><next-line><with|font-family|tt|emumu 1
  \ \ \ \ \ \ \ ! e mu mu nue><next-line><with|font-family|tt|muee 1
  \ \ \ \ \ \ \ \ ! mu e e numu><next-line><with|font-family|tt|...><next-line>More
  conditions can be easily added, by editing the
  <with|font-family|tt|alloweddec> function in the
  <with|font-family|tt|init_processes.f> file. Notice that conditions must
  all be fulfilled. Thus, for example, <with|font-family|tt|only-e> and
  <with|font-family|tt|only-mu> are both set to 1 you get no events. If no
  conditions are specified, you get all possible decays.<no-indent*>

  <with|font-family|tt|mllmin 50 \ \ \ \ \ \ \ \ \ \ ! minimum mass of
  Z-lepton pair in decay is 50 GeV><next-line><with|font-family|tt|zerowidth
  0 \ \ \ \ \ \ \ \ ! If 1 (true) use zerowidth approximation (default
  0)><next-line><with|font-family|tt|withinterference 1 \ ! If 1 (true)
  include interference for identical charged
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ! leptons (default
  1)<next-line>dronly \ \ 0 \ \ \ \ \ \ \ \ ! If 1 (true) include single
  resonant contributions \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ !
  (default 1)><next-line><with|font-family|tt|diagCKM \ \ 0 \ \ \ \ \ \ \ \ !
  If 1 (true) use diagonal CKM (default 0)>

  \;

  If <with|font-family|tt|zerowidth> is absent or not equal to one, the
  <math|Z> and <math|W> are given finite width. Interference effects are
  included if the leptons originating from the <math|Z >decay are the same
  flavour as those originating from the <math|W >decay, unless
  <with|font-family|tt|withinterference> flag is set to 0. Singly resonant
  graphs are also included by default, unless the
  <with|font-family|tt|dronly> flag is set to 1. The charge of the W boson is
  determined through its decay mode. The CKM matrix is set by default to the
  Cabibbo submatrix (i.e. <math|V<rsub|ub>=V<rsub|cb>=V<rsub|td>=V<rsub|ts>=0>,
  <math|V<rsub|tb>=1>), assuming the PDG value <math|V<rsub|ud>> = 0.974,
  unless diagCKM = 1, in which case a diagonal CKM matrix is used. Seven
  anomalous couplings are used: <with|font-family|tt|delg1_z>,
  <with|font-family|tt|de1g1_g>, <with|font-family|tt|lambda_z>,
  <with|font-family|tt|lambda_g>, <with|font-family|tt|delk_g>,
  <with|font-family|tt|delk_z>, <with|font-family|tt|tevscale> (see
  <cite|Dixon:1999di> for a definition of these). These are set to 0 by
  default, unless a non zero value is given in the
  <with|font-family|tt|powheg.input> file.

  <\bibliography|bib|tm-plain|paper.bib>
    <\bib-list|5>
      <bibitem*|1><label|bib-Campbell:1999ah>John M.<nbsp>Campbell<localize|
      and >R. Keith<nbsp>Ellis.<newblock> An Update on vector boson pair
      production at hadron colliders.<newblock>
      <with|font-shape|italic|Phys.Rev.>, D60:113006, 1999.<newblock>

      <bibitem*|2><label|bib-Campbell:2011bn>John M.<nbsp>Campbell, R.
      Keith<nbsp>Ellis<localize| and >Ciaran<nbsp>Williams.<newblock> Vector
      boson pair production at the LHC.<newblock>
      <with|font-shape|italic|JHEP>, 1107:18, 2011.<newblock>

      <bibitem*|3><label|bib-Dixon:1998py>Lance J.<nbsp>Dixon,
      Z.<nbsp>Kunszt<localize| and >A.<nbsp>Signer.<newblock> Helicity
      amplitudes for O(alpha-s) production of <math|W<rsup|+>*W<rsup|->>,
      <math|W<rsup|\<pm\>>*Z>, <math|Z*Z>, <math|W<rsup|\<pm\>>*\<gamma\>>,
      or <math|Z*\<gamma\>> pairs at hadron colliders.<newblock>
      <with|font-shape|italic|Nucl.Phys.>, B531:3--23, 1998.<newblock>

      <bibitem*|4><label|bib-Dixon:1999di>Lance J.<nbsp>Dixon,
      Z.<nbsp>Kunszt<localize| and >A.<nbsp>Signer.<newblock> Vector boson
      pair production in hadronic collisions at order alpha(s): Lepton
      correlations and anomalous couplings.<newblock>
      <with|font-shape|italic|Phys. Rev.>, D60:114037, 1999.<newblock>

      <bibitem*|5><label|bib-noi>Tom<nbsp>Melia, Paolo<nbsp>Nason,
      Raoul<nbsp>Rontsch<localize| and >Giulia<nbsp>Zanderighi.<newblock>
      W+W-, WZ and ZZ production in the POWHEG BOX.<newblock>
      <with|font-shape|italic|JHEP>, 1111:78, 2011.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|par-hyphen|normal>
    <associate|preamble|false>
    <associate|sfactor|5>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|7|5>>
    <associate|auto-11|<tuple|6|?>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|3|2>>
    <associate|auto-5|<tuple|1|2>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|7|5>>
    <associate|auto-9|<tuple|7|5>>
    <associate|bib-Alioli:2010xd|<tuple|2|?>>
    <associate|bib-Alwall:2006yp|<tuple|1|5>>
    <associate|bib-Boos:2001cv|<tuple|2|6>>
    <associate|bib-Campbell:1999ah|<tuple|1|2>>
    <associate|bib-Campbell:2011bn|<tuple|2|2>>
    <associate|bib-Dixon:1998py|<tuple|3|2>>
    <associate|bib-Dixon:1999di|<tuple|4|?>>
    <associate|bib-Frixione:2007nw|<tuple|1|?>>
    <associate|bib-Frixione:2007vw|<tuple|3|?>>
    <associate|bib-Frixione:2007zp|<tuple|3|6>>
    <associate|bib-Mangano:1992jk|<tuple|4|6>>
    <associate|bib-Nason:1988xz|<tuple|5|6>>
    <associate|bib-Nason:1989zy|<tuple|6|6>>
    <associate|bib-Nason:2004rx|<tuple|7|6>>
    <associate|bib-noi|<tuple|5|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      noi

      Dixon:1998py

      Campbell:1999ah

      Campbell:2011bn

      Dixon:1999di
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Generation
      of events> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Input
      parameters> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>