#!/bin/csh

setenv PHOTOSLOCATION "/home/fulvio/POWHEG-BOX-V2/W_ew-BMNNP/PHOTOS"
setenv HEPMCLOCATION ""
setenv TAUOLALOCATION ""
setenv PYTHIALOCATION ""
setenv MCTESTERLOCATION ""
setenv PYTHIA8DATA "/xmldoc"

set ROOTLIB=`root-config --libdir`

# Examples have these paths hardcoded during compilation
# Nonetheless, this is line might be useful for any other programs
# that user might want to compile
if (! $?LD_LIBRARY_PATH) setenv LD_LIBRARY_PATH ""

setenv LD_LIBRARY_PATH "${PHOTOSLOCATION}/lib:${PREFIX}/lib:${HEPMCLOCATION}/lib:${TAUOLALOCATION}/lib:${PYTHIALOCATION}/lib/archive:${MCTESTERLOCATION}/lib:${ROOTLIB}:${LD_LIBRARY_PATH}"

