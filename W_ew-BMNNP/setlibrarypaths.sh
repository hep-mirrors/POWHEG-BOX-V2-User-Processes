#!/bin/sh

# Set necessary paths, in order to link to dynamic libraries

PHOTOS_LIB_PATH=/home/fulvio/POWHEG-BOX-TWORAD/POWHEG-BOX-V2/PHOTOS/lib

export LD_LIBRARY_PATH=$PHOTOS_LIB_PATH:$PYTHIA_LIB_PATH:$ROOT_LIB_PATH:$STD_LIB_PATH:$LD_LIBRARY_PATH

# Set path to PYTHIA database
export PYTHIA8DATA=/home/fulvio/pythia8223/share/Pythia8/xmldoc

