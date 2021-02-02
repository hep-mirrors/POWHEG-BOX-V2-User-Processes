Top-quark pair production in association with a $`W^\pm`$ boson
========================

This document describes how to install and run the ``POWHEG-BOX`` implementation
for the production of a top-quark pair in association with a $`W^\pm`$ boson.
The codes provides multiple functionalities which are described in the following.

## Getting NLOX
The current implementation relies on `NLOX` to provide one-loop matrix elements.
In the following we will briefly summarize how to install the code and compile
the necessary process libraries. 

First we download the `NLOX` and `NLOX_util` code by typing into the terminal
```bash
wget --user NLOX --password LoopsAreCool http://www.hep.fsu.edu/~nlox/downloads/v1.2.0/NLOX_util_1.2.0.tar.gz
wget --user NLOX --password LoopsAreCool http://www.hep.fsu.edu/~nlox/downloads/v1.2.0/NLOX_1.2.0.tar.gz
```
and extract the tarballs via
```bash
tar -xzvf NLOX_util_1.2.0.tar.gz
tar -xzvf NLOX_1.2.0.tar.gz
```
Change first into the `NLOX_util_1.2.0` folder and run 
```bash
./install_nlox_util.sh --prefix=NLOX_UTIL_PATH
```
where `NLOX_UTIL_PATH` is the path where the libraries should be placed. 
Afterwards switch to the `NLOX_1.2.0` folder and compile with
```bash
./install_nlox.sh --with-nloxutil=NLOX_UTIL_PATH
```
The location of the `NLOX_1.2.0` directory will be called in the following `NLOX_PATH`.

Now we can download the process libraries. We will assume that the libraries are installed inside the 
`NLOX_PATH` directory using 
```bash
wget --user NLOX --password LoopsAreCool http://www.hep.fsu.edu/~nlox/downloads/processes/v1.2.0/pp_Wpttbar.tar.gz
wget --user NLOX --password LoopsAreCool http://www.hep.fsu.edu/~nlox/downloads/processes/v1.2.0/pp_Wmttbar.tar.gz
```
The installation for each library proceeds identically, however we will be explict only for the first one.
First extract the tarballs
```bash
tar -xzvf pp_Wpttbar.tar.gz
```
Change into the folder `pp_Wpttbar` and we have to adapt the file `Makefile_process`.
Set the following variables
```bash
NLOX_DIR=NLOX_PATH
NLOX_UTIL_DIR=NLOX_UTIL_PATH
```
and then compile the library using
```bash
make -jX library flibrary -f Makefile_process
```
where `X` is the number cpu cores to be used. Now the library is ready to be used.
Repeat the steps from above to compile the `pp_Wmttbar` library as well.

## Compiling POWHEG-BOX codes
First, get the `POWHEG-BOX` code by typing into the terminal 
```bash
svn checkout --username anonymous --password anonymous svn://powhegbox.mib.infn.it/trunk/POWHEG-BOX-V2
```
Afterwards go into the `POWHEG-BOX-V2` directory and download the `POWHEG-BOX` implementation for $`t\bar{t}W^\pm`$ via
```bash
svn co --username anonymous --password anonymous svn://powhegbox.mib.infn.it/trunk/User-Processes-V2/Wtt_dec
```

To compile the `POWHEG-BOX` codes first enter the process directory `POWHEG-BOX-V2/Wtt/pp_ttWp_QCD`. 
Again, the following steps are identical for the other codes in `pp_ttWm_QCD`, `pp_ttWp_EW` or `pp_ttWm_EW`.
One has to adjust a few path variables within the `Makefile`.
Therefore, open the `Makefile` in an editor and look for the following variables.

* __LHAPDF_CONFIG__: Path that points to the `lhapdf-config` executable
* __NLOX_DIR__: Set this to `NLOX_PATH`
* __NLOX_UTIL_DIR__: Set this to `NLOX_UTIL_PATH`

The `Makefile` assumes that the process libraries have been installed under 
`NLOX_PATH/pp_Wpttbar` and `NLOX_PATH/pp_Wmttbar`. However, if these were installed 
into a different directory then adjust the variable __PROCPATH__ to point to the 
correct location.

Afterwards, simply compile the program by typing
```bash
make
```

You can run the program with the an example input file via
```bash
cd testrun
../pwhg_main
```

## References

[1] F. Febres Cordero, M. Kraus, L. Reina,
    "Top-quark pair production in association with a $`W^\pm`$ gauge boson in the POWHEG-BOX",
    [arXiv:2101.11808]


[arXiv:2101.11808]: https://arxiv.org/abs/2101.11808    
