
FeynArtsProcess = {F[1, {1}], -F[1, {2}]} -> {F[2, {1}], -F[2, {2}], -F[3, {1}], F[3, {1}], -F[4, {3}], F[4, {3}], V[5]};

SortExternal = True;

OpenLoopsModel = "SM";

CreateTopologiesOptions = {
  ExcludeTopologies -> {Snails, WFCorrectionCTs, TadpoleCTs},
  Adjacencies -> {3, 4}
};

InsertFieldsOptions = {
  Model -> {"SMQCD", "SMQCDR2"},
  GenericModel -> "Lorentz",
  InsertionLevel -> {Particles},
  Restrictions -> {ExcludeParticles -> {S[2 | 3]}, NoQuarkMixing}
};

UnitaryGauge = True;

ColourCorrelations = Automatic;

OTFColourCorrelations = Automatic;

SpinCorrelatedHardFactor = Automatic;

SubProcessName = Automatic;

SelectCoupling = MemberQ[{4}, Exponent[#1, eQED]] & ;

SelectInterference = {
  eQED -> {8}
};

SelectTreeDiagrams = HasResonance[F[3, {3}], {1, 3, 7}][##1] && HasResonance[-F[3, {3}], {2, 4, 8}][##1] & ;

SelectLoopDiagrams = True & ;

SelectCTDiagrams = True & ;

ReplaceOSw = False;

SetParameters = {
  ME -> 0,
  MM -> 0,
  CKMORDER -> 0,
  nc -> 3,
  nf -> 6,
  MU -> 0,
  MD -> 0,
  MS -> 0,
  MC -> 0,
  LeadingColour -> 0,
  POLSEL -> 1
};

ChannelMap = {};

Approximation = "ttj";

ForceLoops = Automatic;

ForceLoopsInclude = "t";

NonZeroHels = Null;

OnTheFlyMode = Automatic;
