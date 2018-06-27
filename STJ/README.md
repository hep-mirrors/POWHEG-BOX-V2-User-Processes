#  MINLO t-channel single-top plus jet 
S. Carrazza, R. Frederix, K. Hamilton, G. Zanderighi, https://arxiv.org/abs/1805.09855

### Introduction

We present a next-to-leading order accurate simulation of t-channel single-top plus jet production matched to parton showers via the POWHEG method. The calculation underlying the simulation is enhanced with a process-specific implementation of the multi-scale improved NLO (MINLO) method, such that it gives physical predictions all through phase space, including regions where the jet additional to the t-channel single-top process is unresolved. We further describe a tuning procedure for the MINLO Sudakov form factor, fitting the coefficient of the first subleading term in its exponent using an artificial neural-network. The latter tuning, implemented as a straightforward event-by-event reweighting, renders the MINLO simulation NLO accurate for t-channel single-top observables, in addition to those of the analogous single-top plus jet process.

The code related to the reweighting procedure and neural network model storage is documented in [rw_code/README.md](rw_code/README.md).

### Installation

Compile a target with the `make <TARGET>` command where `<TARGET>` is one
of `pwhg_main`, `rw`. If no argument is given the default is `pwhg_main`.

While not strictly necessary, we recommend you have LHAPDF installed too,
with its lhapdf-config executable from your command line.

In the directory where you run the code, make sure there is a copy of
the `"ident_card.dat"` file from the `virtual/Cards/` directory.

To change any input parameters (top mass, etc.), you have to change it
both in `init_couplings.f` and the `param_card.dat` (whose path is specified
in the `virtual.f` file).

To clean everything out use `make veryclean`.

### Running

Examples scripts and additional AAA-README documentation are given in
the testrun directory and testrun_condor directories, explaining and
illustrating how to run the code. The testrun directory contains
info and script(s) for running on an interactive cluster, while
testrun_condor contains info and a package of scripts and condor
files for easy running on a condor cluster.

