// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w3 = -0.000812093953023;
    const double sigm1_w3 = 1.40754972987;
    const double mean2_w3 = -3.12343828086e-05;
    const double sigm2_w3 = 0.904237725154;
    const double mean3_w3 = 76.1395266117;
    const double sigm3_w3 = 73.0108164061; 
    
    const double W1_w3[3][5] = {{3.025862e+01, -5.608695e-04, 8.685690e-02, -3.101836e-02, -1.495580e-01},{-1.912260e+01, 8.393940e-02, 1.634320e+00, 7.649716e-02, 3.087452e-01},{-2.071790e-01, 4.740111e-01, -4.770707e-02, -3.059161e-01, 3.221811e-01}};
    const double W2_w3[5][3] = {{-3.043817e-02, 1.387682e-01, -2.637237e-01},{6.694970e-01, 1.690037e-01, -4.524806e+00},{1.506792e+00, 8.906903e-02, -1.044732e+00},{-6.227946e+00, 4.803917e+00, -6.603811e+01},{-5.783861e+00, 4.058343e-01, 7.755524e+00}};
    const double W3_w3[3][1] = {{-1.827048e+01},{-6.167159e+01},{-2.290156e+01}};
    
    const double b1_w3[5] = {6.428695e+01, 3.395601e-01, 3.475400e-01, -2.131597e+00, 1.526320e+00};
    const double b2_w3[3] = {-1.922295e+00, 4.646450e+00, -6.893974e+01};
    const double b3_w3[1] = {2.831875e+01};

    /**
     * The neural network output function (kin)
     */
    double N_w3(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w3)/sigm1_w3;
      xx[1] = (dy-mean2_w3)/sigm2_w3;
      xx[2] = (pttop-mean3_w3)/sigm3_w3;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w3[j][i] * xx[j];
            l1[i] += b1_w3[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w3[j][i]*l1[j];
            l2[i] += b2_w3[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w3[i][0]*l2[i];
      ol += b3_w3[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w3(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w3(ycm, dy, pttop));
    }
    
    
    double expaln_w3_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w3(*ycm, *dy, *pttop, *exponent);
    }
    
