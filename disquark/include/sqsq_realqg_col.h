cc Color-Factors obtained from FORM-file Color_qg_sqsqqbar.log
      real*8 NcCF,NaCF,CFCF,CACF,
     .    CF_M1M5u,CF_M3M3u,CF_M3M4u,CF_M4M5u,CF_M2M3u,CF_M1M3u,CF_M1M2u,CF_M4M4u
     .    ,CF_M2M5,CF_M1M1u,CF_M42,CF_M1M4,CF_M2M3,CF_M22,CF_M3M4,CF_M3M5
     .    ,CF_M52,CF_M1M2,CF_M5M5u,CF_M4M5,CF_M2M5u,CF_M32,CF_M2M4u,CF_M2M4
     .    ,CF_M3M5u,CF_M2M2u,CF_M12,CF_M1M4u,CF_M1M3,CF_M1M5
      parameter(NcCF=3.d0,NaCF=8.d0,CFCF=4.d0/3.d0,CACF=3.d0)
      parameter(CF_M1M5u =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M3M3u =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                    *NcCF*CACF**2*cFCF)
      parameter(CF_M3M4u =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M4M5u =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M2M3u =1.D0/2.D0*NcCF*CACF*cFCF**2-1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M1M3u =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M1M2u =1.D0/2.D0*NcCF*CACF*cFCF**2-1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M4M4u =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M2M5 =1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M1M1u =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M42 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M1M4 =-1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                   /6.d0))
      parameter(CF_M2M3 =-1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M22 =NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M3M4 =1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0/6.d0))
      parameter(CF_M3M5 =-1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                   /6.d0))
      parameter(CF_M52 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M1M2 =1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M5M5u =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                    *NcCF*CACF**2*cFCF)
      parameter(CF_M4M5 =NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)*NcCF
     .                   **2*CACF*cFCF**2)
      parameter(CF_M2M5u =-1.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M32 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M2M4u =-1.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M2M4 =-1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M3M5u =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M2M2u =0)
      parameter(CF_M12 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M1M4u =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                    *NcCF*CACF**2*cFCF)
      parameter(CF_M1M3 =NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)*NcCF
     .                   **2*CACF*cFCF**2)
      parameter(CF_M1M5 =1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0/6.d0))
