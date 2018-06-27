// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_025_w1 = -0.000812093953023;
    const double sigm1_025_w1 = 1.40754972987;
    const double mean2_025_w1 = -3.12343828086e-05;
    const double sigm2_025_w1 = 0.904237725154;
    const double mean3_025_w1 = 76.1395266117;
    const double sigm3_025_w1 = 73.0108164061; 
    
    const double W1_025_w1[3][5] = {{1.623209e-01, 1.607459e-01, 4.516109e-02, -6.922933e-02, -1.495037e-01},{-2.385666e-01, -3.510319e-02, -4.175227e-01, 4.299799e-01, 2.431573e-02},{-1.850883e+00, -5.765762e-01, 4.550513e-01, -4.656008e-01, 5.931912e-01}};
    const double W2_025_w1[5][3] = {{-3.325887e+01, -4.832398e-02, 1.462107e+01},{-4.454753e+01, -8.761672e+01, 3.042472e+01},{-1.864591e+02, -4.878474e+01, 3.051743e+01},{-1.744159e+02, -5.065330e+01, 3.101467e+01},{-4.094637e+01, -8.588169e+01, 3.000298e+01}};
    const double W3_025_w1[3][1] = {{-8.245143e+00},{6.445875e+00},{1.536339e+02}};
    
    const double b1_025_w1[5] = {-4.517463e+00, -1.264020e-01, 1.619878e+00, -1.604496e+00, 8.744388e-02};
    const double b2_025_w1[3] = {-2.043538e+01, -3.173821e+00, 1.375632e+01};
    const double b3_025_w1[1] = {1.457401e+02};
    
    /**
     * The neural network output function (kin)
     */
    double N_025_w1(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_025_w1)/sigm1_025_w1;
      xx[1] = (dy-mean2_025_w1)/sigm2_025_w1;
      xx[2] = (pttop-mean3_025_w1)/sigm3_025_w1;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_025_w1[j][i] * xx[j];
            l1[i] += b1_025_w1[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_025_w1[j][i]*l1[j];
            l2[i] += b2_025_w1[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_025_w1[i][0]*l2[i];
      ol += b3_025_w1[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_025_w1(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_025_w1(ycm, dy, pttop));
    }
    
    
    double expaln_025_w1_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_025_w1(*ycm, *dy, *pttop, *exponent);
    }
    
