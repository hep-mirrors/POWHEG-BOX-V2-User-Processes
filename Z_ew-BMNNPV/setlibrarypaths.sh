#!/bin/sh

# Set necessary paths, in order to link to dynamic libraries

PHOTOS_LIB_PATH=/home/fulvio/Work/POWHEG-BOX-V2/Z_ew-BMNNPV/PHOTOS/lib

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PHOTOS_LIB_PATH:$PYTHIA_LIB_PATH:$ROOT_LIB_PATH:$STD_LIB_PATH

# Set path to PYTHIA database
export PYTHIA8DATA=/home/fulvio/Work/POWHEG-BOX-V2/pythia8186/xmldoc

