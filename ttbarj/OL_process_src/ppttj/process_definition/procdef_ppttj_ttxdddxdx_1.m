
FeynArtsProcess = {F[3, {3}], -F[3, {3}]} -> {-F[4, {1}], -F[4, {1}], F[4, {1}], F[4, {1}]};

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

SelectCoupling = MemberQ[{0}, Exponent[#1, eQED]] & ;

SelectInterference = {
  eQED -> {0}
};

SelectTreeDiagrams = True & ;

SelectLoopDiagrams = True & ;

SelectCTDiagrams = True & ;

ReplaceOSw = False;

SetParameters = {
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

ChannelMap = {
  {"ttxbbbxbx", "MB=0"},
  {"uuuxuxttx<3,4,5,6,1,2>"}
};

Approximation = "";

ForceLoops = "t";

ForceLoopsInclude = Automatic;

NonZeroHels = Null;

OnTheFlyMode = Automatic;
