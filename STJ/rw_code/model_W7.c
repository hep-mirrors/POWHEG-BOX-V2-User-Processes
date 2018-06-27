// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w7 = -0.000812093953023;
    const double sigm1_w7 = 1.40754972987;
    const double mean2_w7 = -3.12343828086e-05;
    const double sigm2_w7 = 0.904237725154;
    const double mean3_w7 = 76.1395266117;
    const double sigm3_w7 = 73.0108164061; 

    const double W1_w7[3][5] = {{-9.464773e-03, 2.578560e-01, -9.144772e-03, -5.854350e-01, 9.125419e-01},{1.274970e-01, -5.926636e-01, -6.518375e-02, 7.701664e-01, -6.804721e-01},{6.622089e-01, -5.767963e-01, -7.122670e-01, 3.602850e-02, -2.892612e-02}};
    const double W2_w7[5][3] = {{-9.174789e+00, 1.010855e-02, -1.942611e+01},{-2.638177e+00, -3.239424e+00, -3.170279e+00},{-1.632651e+01, 4.404928e+00, -5.739741e+01},{-4.198296e+01, 1.969808e+01, -1.580431e+00},{-6.248980e+00, 1.282013e+00, -2.016769e-01}};
    const double W3_w7[3][1] = {{-5.737570e-01},{-3.542730e+00},{-1.314370e+01}};
    
    const double b1_w7[5] = {1.288296e+00, -1.977092e+00, -2.029423e+00, -3.159430e+00, -1.870682e+00};
    const double b2_w7[3] = {1.915255e+00, 2.187683e+01, -4.232910e+01};
    const double b3_w7[1] = {5.664850e+00};
    
    /**
     * The neural network output function (kin)
     */
    double N_w7(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w7)/sigm1_w7;
      xx[1] = (dy-mean2_w7)/sigm2_w7;
      xx[2] = (pttop-mean3_w7)/sigm3_w7;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w7[j][i] * xx[j];
            l1[i] += b1_w7[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w7[j][i]*l1[j];
            l2[i] += b2_w7[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w7[i][0]*l2[i];
      ol += b3_w7[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w7(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w7(ycm, dy, pttop));
    }
    
    
    double expaln_w7_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w7(*ycm, *dy, *pttop, *exponent);
    }
    
