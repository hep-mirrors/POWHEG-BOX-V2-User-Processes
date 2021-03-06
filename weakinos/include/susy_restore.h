c############### susy_restore.h ########################################
c last modified by MK 04.05.2016

#ifndef SUSY_RESTORE_H
#define SUSY_RESTORE_H
        ! Added SUSY-restoring term for Yukawa coupling
        ! quark-squark-gluino (not needed here):
        !     gsy -> gsy + dZgs1y
        !                  dZgs1y = gs*Alfas/(3*Pi)
        ! and SUSY-restoring term for Yukawa coupling
        ! quark-squark-neutralino:
        !     gy -> gy + dZe1y
        !                dZe1y = - e*Alfas/(6*Pi)
        double precision dZgs1y,dZe1y
        common/SUSYrestore/dZgs1y,dZe1y
#endif

c############### end susy_restore.h ####################################