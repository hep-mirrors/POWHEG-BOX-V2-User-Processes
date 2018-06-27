// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w4 = -0.000812093953023;
    const double sigm1_w4 = 1.40754972987;
    const double mean2_w4 = -3.12343828086e-05;
    const double sigm2_w4 = 0.904237725154;
    const double mean3_w4 = 76.1395266117;
    const double sigm3_w4 = 73.0108164061; 
    
    const double W1_w4[3][5] = {{-5.339025e-01, -2.627010e-01, 3.545636e-01, -2.100858e+00, 1.153583e-01},{-3.304708e-01, 1.575634e-01, -1.331071e-01, -1.906410e+00, 1.701044e-01},{2.967484e-01, -7.322366e-02, 3.761896e-03, -6.243453e+00, 1.488493e+00}};
    const double W2_w4[5][3] = {{3.807450e+00, 4.889692e+00, 2.836468e+00},{3.081416e+00, 1.840814e+01, 1.597281e+01},{3.520033e+00, 1.658916e+01, -2.291440e+00},{-6.590642e+00, -5.328998e-02, -3.528728e-01},{2.045536e+00, 2.306603e+00, 2.450487e+00}};
    const double W3_w4[3][1] = {{-1.186336e+01},{-3.854282e+00},{3.850828e+00}};
    
    const double b1_w4[5] = {-1.105160e+00, 8.577708e-01, 8.592463e-01, 5.392061e-01, 1.588163e+00};
    const double b2_w4[3] = {5.872275e+00, -1.650762e+01, -1.666363e+01};
    const double b3_w4[1] = {1.289018e+01};

    /**
     * The neural network output function (kin)
     */
    double N_w4(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w4)/sigm1_w4;
      xx[1] = (dy-mean2_w4)/sigm2_w4;
      xx[2] = (pttop-mean3_w4)/sigm3_w4;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w4[j][i] * xx[j];
            l1[i] += b1_w4[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w4[j][i]*l1[j];
            l2[i] += b2_w4[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w4[i][0]*l2[i];
      ol += b3_w4[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w4(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w4(ycm, dy, pttop));
    }
    
    
    double expaln_w4_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w4(*ycm, *dy, *pttop, *exponent);
    }
    
