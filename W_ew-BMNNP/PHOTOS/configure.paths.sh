#!/bin/sh

export PHOTOSLOCATION=/home/fulvio/POWHEG-BOX-V2/W_ew-BMNNP/PHOTOS
export HEPMCLOCATION=
export TAUOLALOCATION=
export PYTHIALOCATION=
export MCTESTERLOCATION=
export PYTHIA8DATA=/xmldoc

ROOTLIB=`root-config --libdir`

# Examples have these paths hardcoded during compilation
# Nonetheless, this is line might be useful for any other programs
# that user might want to compile
export LD_LIBRARY_PATH=${PHOTOSLOCATION}/lib:${PREFIX}/lib:${HEPMCLOCATION}/lib:${TAUOLALOCATION}/lib:${PYTHIALOCATION}/lib/archive:${MCTESTERLOCATION}/lib:${ROOTLIB}:${LD_LIBRARY_PATH}
