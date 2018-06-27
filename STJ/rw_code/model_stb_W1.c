// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w1 = -0.000812093953023;
    const double sigm1_stb_w1 = 1.40754972987;
    const double mean2_stb_w1 = -3.12343828086e-05;
    const double sigm2_stb_w1 = 0.904237725154;
    const double mean3_stb_w1 = 76.1395266117;
    const double sigm3_stb_w1 = 73.0108164061; 
    
    const double W1_stb_w1[3][5] = {{-3.193216e-01, 1.334592e-01, -1.368261e-01, 5.622831e-01, -1.247705e-01},{2.753620e-01, 1.485836e+00, -1.481402e+00, -6.115253e-01, 1.432969e-01},{-2.104796e-01, 8.634556e-02, -7.118162e-02, -9.157946e-02, 1.710814e+00}};
    const double W2_stb_w1[5][3] = {{2.496093e+03, 1.680884e+03, -9.547398e+02},{-2.348475e+01, -3.049783e+01, 6.454927e+02},{-2.390540e+01, -3.058072e+01, 6.339821e+02},{-2.642094e+03, -4.692984e+01, -3.219946e+02},{-6.028868e+01, 3.276383e+01, -1.485732e+03}};
    const double W3_stb_w1[3][1] = {{1.092058e+01},{-1.105435e+01},{2.155659e-01}};
    
    const double b1_stb_w1[5] = {-5.142493e+00, -2.211263e-01, 2.294732e-01, -4.416149e+00, 4.172251e+00};
    const double b2_stb_w1[3] = {-8.738146e+01, 1.602011e+03, 1.943854e+02};
    const double b3_stb_w1[1] = {1.223317e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w1(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w1)/sigm1_stb_w1;
      xx[1] = (dy-mean2_stb_w1)/sigm2_stb_w1;
      xx[2] = (pttop-mean3_stb_w1)/sigm3_stb_w1;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w1[j][i] * xx[j];
            l1[i] += b1_stb_w1[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w1[j][i]*l1[j];
            l2[i] += b2_stb_w1[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w1[i][0]*l2[i];
      ol += b3_stb_w1[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w1(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w1(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w1_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w1(*ycm, *dy, *pttop, *exponent);
    }
    
