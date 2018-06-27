// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w6 = -0.000812093953023;
    const double sigm1_w6 = 1.40754972987;
    const double mean2_w6 = -3.12343828086e-05;
    const double sigm2_w6 = 0.904237725154;
    const double mean3_w6 = 76.1395266117;
    const double sigm3_w6 = 73.0108164061; 
    
    const double W1_w6[3][5] = {{9.287530e-02, -1.008192e+00, 5.420976e-02, 1.594271e+01, -5.230452e-02},{-5.640297e-01, -1.034801e+00, 2.448086e-02, 1.072589e+02, 8.570312e-02},{-5.606530e-01, -2.959321e+00, 4.741092e-01, -1.524284e+01, -4.130244e-01}};
    const double W2_w6[5][3] = {{-6.917817e+01, -1.676448e+00, 6.481372e-01},{-7.697892e+00, -3.362681e+00, 7.230729e-02},{-6.007129e+00, -2.969914e+00, 4.382787e+00},{-7.724777e+00, -9.243834e-04, -3.600795e-02},{9.295645e+01, -8.775288e+00, 5.686452e+00}};
    const double W3_w6[3][1] = {{7.681039e-01},{-2.903895e+01},{6.685407e+01}};
    
    const double b1_w6[5] = {-1.209820e+00, 6.947814e-01, 7.676022e-01, 6.328071e+00, -1.166091e+00};
    const double b2_w6[3] = {1.417632e+01, -1.015157e+00, 8.148028e-01};
    const double b3_w6[1] = {8.546863e+01};

    /**
     * The neural network output function (kin)
     */
    double N_w6(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w6)/sigm1_w6;
      xx[1] = (dy-mean2_w6)/sigm2_w6;
      xx[2] = (pttop-mean3_w6)/sigm3_w6;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w6[j][i] * xx[j];
            l1[i] += b1_w6[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w6[j][i]*l1[j];
            l2[i] += b2_w6[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w6[i][0]*l2[i];
      ol += b3_w6[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w6(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w6(ycm, dy, pttop));
    }
    
    
    double expaln_w6_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w6(*ycm, *dy, *pttop, *exponent);
    }
    
