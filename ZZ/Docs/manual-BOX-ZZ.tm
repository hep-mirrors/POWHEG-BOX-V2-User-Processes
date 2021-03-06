<TeXmacs|1.0.7.14>

<style|article>

<\body>
  <doc-data|<doc-title|The POWHEG-BOX-V2 ZZ manual>|>

  <section|Introduction>

  The <with|font-family|tt|POWHEG-BOX-V2/ZZ> program <cite|noi> can be used
  to generate the QCD production of <math|Z Z> events in hadronic collisions,
  with the <math|Z> bosons decaying into leptons, neutrinos or quarks, \ at
  NLO accuracy in QCD, in such a way that matching with a full shower program
  is possible. It is based upon the calculation of refs. <cite|Dixon:1998py>,
  <cite|Campbell:1999ah>, <cite|Campbell:2011bn>. The effect of
  <math|Z>-<math|\<gamma\>> interference, as well as the effect of off-shell
  singly resonant graphs, are fully included in the calculation. In case of
  decays into hadrons, NLO corrections to the decay processes are not
  included. This is unlikely to be necessary: most shower Monte Carlo do
  already a good job in dressing the <math|W> decay with QCD radiation, since
  <math|W> hadronic decays have been fit to LEP2 data.

  \ This document describes the input parameters that are specific to this
  implementation. The parameters that are common to all
  <with|font-family|tt|POWHEG BOX> implementation are given in the manual in
  the <with|font-family|tt|POWHEG-BOX-V2/Docs> directory.

  <section|Generation of events>

  Do<next-line><with|font-family|tt|$ cd POWHEG-BOX-V2/ZZ><next-line><with|font-family|tt|$
  make pwhg_main><next-line>Then do (for example)<next-line><with|font-family|tt|$
  cd test><next-line><with|font-family|tt|$ ../pwhg_main><next-line>At the
  end of the run, the file <with|font-family|tt|pwgevents.lhe> will contain
  events for <math|Z> pair production in the Les Houches format. In order to
  shower them with <with|font-family|tt|PYTHIA>:<next-line><with|font-family|tt|$
  cd POWHEG-BOX-V2/ZZ><next-line><with|font-family|tt|$ make
  main-PYTHIA-lhef><next-line><with|font-family|tt|$ cd
  test><next-line><with|font-family|tt|$ ../main-PYTHIA-lhef>

  <section|Input parameters>

  Parameters in <with|font-family|tt|powheg.input> that are specific to
  <math|Z Z> pair production:<next-line><with|font-family|tt|semileptonic 1 !
  one Z goes to hadrons, one goes to leptons><next-line><with|font-family|tt|only-e
  1 \ \ \ \ \ \ ! leptons can only be electrons><next-line><with|font-family|tt|only-mu
  1 \ \ \ \ \ ! leptons can only be muons><next-line><with|font-family|tt|only-tau
  1 \ \ \ \ ! leptons can only be taus><next-line><with|font-family|tt|e-mu 1
  \ \ \ \ \ \ \ \ ! one goes into e+e-, one in
  mu+mu-><next-line><with|font-family|tt|e-tau 1 \ \ \ \ \ \ \ ! one goes
  into e+e-, one in tau+tau--><next-line><with|font-family|tt|mu-tau 1
  \ \ \ \ \ \ ! one goes into mu+mu-, one in
  tau+tau-><next-line><with|font-family|tt|leptonic 1 \ \ \ \ ! both Z go
  into charged leptons><next-line><with|font-family|tt|leptons-nu 1 \ \ ! one
  Z goes into neutrinos, the other to leptons><next-line><with|font-family|tt|hadrons-nu
  1 \ \ ! one Z goes into neutrinos, the other to hadrons><next-line>More
  conditions can be easily added, by editing the
  <with|font-family|tt|alloweddec> function in the
  <with|font-family|tt|init_processes.f> file. Notice that conditions must
  all be fulfilled. Thus, for example, <with|font-family|tt|only-e> and
  <with|font-family|tt|leptonic> both set to 1 (and no other keyword) means
  decays into four electrons. As another example, if both
  <with|font-family|tt|semileptonic> and <with|font-family|tt|leptonic>
  appear, you get no events. If no conditions are specified, you get all
  possible decays.<no-indent*> Other options specific of the <math|Z Z>
  process are

  <with|font-family|tt|mllmin 50 \ \ \ \ \ \ \ \ \ \ ! minimum mass of
  charged lepton-antilepton or<next-line>
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ! quark-antiquark pairs in decays is
  50 GeV><next-line><with|font-family|tt|zerowidth 0 \ \ \ \ \ \ \ \ ! If 1
  (true) use zerowidth approximation (default
  0)><next-line><with|font-family|tt|withinterference 1 \ ! If 1 (true)
  include interference for identical leptons
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ! (default
  1)<next-line>dronly \ \ 0 \ \ \ \ \ \ \ \ \ ! If 1 (true) include only
  double resonant contributions \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ !
  (default 0)><next-line>Notice that in case of decays into equal charged
  particles, the <with|font-family|tt|mllmin> cut is applied to the two
  possible pairings. If <with|font-family|tt|zerowidth> is absent or equal to
  zero, the <math|Z>'s are given finite width, <math|Z>-<math|\<gamma\>>
  interference is accounted for. Singly resonant graphs are also included by
  default, unless the <with|font-family|tt|dronly> flag is set to 1.

  <\bibliography|bib|JHEP|paper.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-noi>T.<nbsp>Melia, P.<nbsp>Nason,
      R.<nbsp>Rontsch, and G.<nbsp>Zanderighi, <with|font-shape|italic|W+W-,
      WZ and ZZ production in the POWHEG BOX>, <with|font-shape|italic|JHEP>
      <with|font-series|bold|1111> (2011) 078,
      [<hlink|<with|font-family|tt|1107.5051>|http://xxx.lanl.gov/abs/1107.5051>].

      <bibitem*|2><label|bib-Dixon:1998py>L.<nbsp>J. Dixon, Z.<nbsp>Kunszt,
      and A.<nbsp>Signer, <with|font-shape|italic|Helicity amplitudes for
      O(alpha-s) production of <math|W<rsup|+>*W<rsup|->>,
      <math|W<rsup|\<pm\>>*Z>, <math|Z*Z>, <math|W<rsup|\<pm\>>*\<gamma\>>,
      or <math|Z*\<gamma\>> pairs at hadron colliders>,
      <with|font-shape|italic|Nucl.Phys.> <with|font-series|bold|B531> (1998)
      3--23, [<hlink|<with|font-family|tt|hep-ph/9803250>|http://xxx.lanl.gov/abs/hep-ph/9803250>].

      <bibitem*|3><label|bib-Campbell:1999ah>J.<nbsp>M. Campbell and
      R.<nbsp>K. Ellis, <with|font-shape|italic|An Update on vector boson
      pair production at hadron colliders>,
      <with|font-shape|italic|Phys.Rev.> <with|font-series|bold|D60> (1999)
      113006, [<hlink|<with|font-family|tt|hep-ph/9905386>|http://xxx.lanl.gov/abs/hep-ph/9905386>].

      <bibitem*|4><label|bib-Campbell:2011bn>J.<nbsp>M. Campbell, R.<nbsp>K.
      Ellis, and C.<nbsp>Williams, <with|font-shape|italic|Vector boson pair
      production at the LHC>, <with|font-shape|italic|JHEP>
      <with|font-series|bold|1107> (2011) 018,
      [<hlink|<with|font-family|tt|1105.0020>|http://xxx.lanl.gov/abs/1105.0020>].
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|par-hyphen|normal>
    <associate|preamble|false>
    <associate|sfactor|4>
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
    <associate|auto-5|<tuple|4|2>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|7|5>>
    <associate|auto-9|<tuple|7|5>>
    <associate|bib-Alioli:2010xd|<tuple|2|?>>
    <associate|bib-Alwall:2006yp|<tuple|1|5>>
    <associate|bib-Boos:2001cv|<tuple|2|6>>
    <associate|bib-Campbell:1999ah|<tuple|3|2>>
    <associate|bib-Campbell:2011bn|<tuple|4|2>>
    <associate|bib-Dixon:1998py|<tuple|2|2>>
    <associate|bib-Frixione:2007nw|<tuple|1|?>>
    <associate|bib-Frixione:2007vw|<tuple|3|?>>
    <associate|bib-Frixione:2007zp|<tuple|3|6>>
    <associate|bib-Mangano:1992jk|<tuple|4|6>>
    <associate|bib-Nason:1988xz|<tuple|5|6>>
    <associate|bib-Nason:1989zy|<tuple|6|6>>
    <associate|bib-Nason:2004rx|<tuple|7|6>>
    <associate|bib-noi|<tuple|1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      noi

      Dixon:1998py

      Campbell:1999ah

      Campbell:2011bn
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