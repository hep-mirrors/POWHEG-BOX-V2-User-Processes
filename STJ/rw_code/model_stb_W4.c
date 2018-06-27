// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w4 = -0.000812093953023;
    const double sigm1_stb_w4 = 1.40754972987;
    const double mean2_stb_w4 = -3.12343828086e-05;
    const double sigm2_stb_w4 = 0.904237725154;
    const double mean3_stb_w4 = 76.1395266117;
    const double sigm3_stb_w4 = 73.0108164061; 
    
    const double W1_stb_w4[3][5] = {{-2.113112e+00, 1.060398e+00, 7.405460e-01, -1.004533e+01, -1.645461e+01},{1.184419e+00, -8.151228e-01, -5.716189e-01, 5.081320e+00, 1.846959e+00},{9.478924e+00, 5.983390e-01, -2.776052e+00, -5.579500e+00, -1.023784e+01}};
    const double W2_stb_w4[5][3] = {{-9.828089e+03, 6.716937e+02, 1.895752e-01},{-3.150483e+02, 2.148221e+01, 9.868654e-01},{5.502749e+02, -1.806855e+00, -1.860355e+00},{4.241987e+02, -5.374428e+01, -5.281494e-01},{1.492607e+01, 5.530979e+01, -5.375571e-01}};
    const double W3_stb_w4[3][1] = {{1.457613e+00},{-7.610862e-01},{-6.221775e+03}};
    
    const double b1_stb_w4[5] = {2.159629e+00, 2.757920e+00, -3.112120e+00, -9.316512e+00, -1.429451e+01};
    const double b2_stb_w4[3] = {-9.575517e+03, 6.509072e+02, 3.316678e+00};
    const double b3_stb_w4[1] = {6.216989e+03};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w4(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w4)/sigm1_stb_w4;
      xx[1] = (dy-mean2_stb_w4)/sigm2_stb_w4;
      xx[2] = (pttop-mean3_stb_w4)/sigm3_stb_w4;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w4[j][i] * xx[j];
            l1[i] += b1_stb_w4[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w4[j][i]*l1[j];
            l2[i] += b2_stb_w4[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w4[i][0]*l2[i];
      ol += b3_stb_w4[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w4(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w4(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w4_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w4(*ycm, *dy, *pttop, *exponent);
    }
    
