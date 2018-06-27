// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w1 = -0.000812093953023;
    const double sigm1_w1 = 1.40754972987;
    const double mean2_w1 = -3.12343828086e-05;
    const double sigm2_w1 = 0.904237725154;
    const double mean3_w1 = 76.1395266117;
    const double sigm3_w1 = 73.0108164061; 
    
    const double W1_w1[3][5] = {{5.965564e-01, 5.723116e-01, -4.460101e-01, -9.410358e-01, 3.249335e-01},{-4.504756e-02, -4.331489e-02, 1.363522e+00, 5.463982e-01, -8.392642e-01},{1.005174e+00, 9.946666e-01, 1.808974e+00, -4.506433e-01, 1.175844e+00}};
    const double W2_w1[5][3] = {{-1.846352e+01, 7.619846e+01, 2.784438e+03},{1.956375e+01, -7.848879e+01, -2.931078e+03},{1.274901e+00, 6.830741e-01, 5.708370e+01},{9.441742e-01, 1.264574e-01, -1.722762e+02},{1.543040e+00, 1.176767e+00, 7.032679e+01}};
    const double W3_w1[3][1] = {{-1.458696e+03},{-2.750455e+01},{-5.148779e-01}};
    
    const double b1_w1[5] = {3.814286e-01, 3.684013e-01, 2.061554e+00, 1.786905e+00, 1.517606e+00};
    const double b2_w1[3] = {2.718784e+00, 1.643941e+00, 2.847522e+01};
    const double b3_w1[1] = {1.480378e+03};

    /**
     * The neural network output function (kin)
     */
    double N_w1(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w1)/sigm1_w1;
      xx[1] = (dy-mean2_w1)/sigm2_w1;
      xx[2] = (pttop-mean3_w1)/sigm3_w1;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w1[j][i] * xx[j];
            l1[i] += b1_w1[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w1[j][i]*l1[j];
            l2[i] += b2_w1[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w1[i][0]*l2[i];
      ol += b3_w1[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w1(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w1(ycm, dy, pttop));
    }
    
    
    double expaln_w1_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w1(*ycm, *dy, *pttop, *exponent);
    }
    
