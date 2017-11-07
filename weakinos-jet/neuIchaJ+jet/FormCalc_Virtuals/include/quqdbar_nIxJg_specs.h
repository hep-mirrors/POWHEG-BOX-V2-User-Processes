#if 0
* specs.h
* process specifications
* generated by FormCalc 9.4 (7 Jun 2016) on 16-May-2017 20:32
#endif

#undef FCVERSION
#define FCVERSION "FormCalc 9.4 (7 Jun 2016)"

#undef PROCNAME
#define PROCNAME "F3iiFb4iiF11iFb12iV5i"

#undef SQUAREDME_FUNC
#define SQUAREDME_FUNC SquaredME

#undef KIN
#define KIN "2to3.F"

#undef IDENTICALFACTOR
#define IDENTICALFACTOR 1

#undef Compose
#define Compose(f,c,A,B,C,D,E) c(c(c(c(f(1,A,1),f(2,B,1)),f(3,C,2)),f(4,D,2)),f(5,E,2))

#undef Generic
#define Generic(f,c) Compose(f,c,FERMION,FERMION,FERMION,FERMION,PHOTON)

#undef Anti
#define Anti(f,c) Compose(f,c,1,-1,1,-1,1)

#undef Mass
#define Mass(f,c) Compose(f,c,Mf(3,Gen(1)),Mf(4,Gen(2)),MNeu(Neu(3)),MCha(Cha(4)),0)

#undef Charge
#define Charge(f,c) Compose(f,c,2/3.D0,1/3.D0,0,1,0)

#undef ColorCharge
#define ColorCharge(f,c) Compose(f,c,2/Sqrt(3.D0),-2/Sqrt(3.D0),0,0,Sqrt(3.D0))

