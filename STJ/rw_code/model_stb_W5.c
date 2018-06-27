// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w5 = -0.000812093953023;
    const double sigm1_stb_w5 = 1.40754972987;
    const double mean2_stb_w5 = -3.12343828086e-05;
    const double sigm2_stb_w5 = 0.904237725154;
    const double mean3_stb_w5 = 76.1395266117;
    const double sigm3_stb_w5 = 73.0108164061; 
    
    const double W1_stb_w5[3][5] = {{8.302872e-01, -1.323012e-03, -6.670438e-03, 3.445153e+00, -3.262384e+00},{-9.963464e-01, 2.087798e-03, 1.375446e-01, -7.337662e+00, 1.199435e+01},{-1.828965e+00, -5.060433e-04, -6.382541e+00, -6.946570e+00, -1.324118e+00}};
    const double W2_stb_w5[5][3] = {{4.559664e+01, -9.237589e-01, -1.131688e+00},{-5.839448e+02, 1.890937e+02, 6.804424e+02},{-5.920949e+02, 1.107908e+00, -7.498611e-01},{8.087107e+01, -6.292073e-01, 9.221707e-01},{-5.703227e+01, -5.676502e-01, 1.306584e+03}};
    const double W3_stb_w5[3][1] = {{-1.005264e+03},{7.231261e+00},{-8.563690e+01}};
    
    const double b1_stb_w5[5] = {8.078085e-01, 7.364124e-01, -5.395922e+00, -3.348005e+00, -6.985448e+00};
    const double b2_stb_w5[3] = {-1.189726e+03, -1.199319e+02, 8.838518e+02};
    const double b3_stb_w5[1] = {-9.206854e+02};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w5(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w5)/sigm1_stb_w5;
      xx[1] = (dy-mean2_stb_w5)/sigm2_stb_w5;
      xx[2] = (pttop-mean3_stb_w5)/sigm3_stb_w5;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w5[j][i] * xx[j];
            l1[i] += b1_stb_w5[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w5[j][i]*l1[j];
            l2[i] += b2_stb_w5[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w5[i][0]*l2[i];
      ol += b3_stb_w5[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w5(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w5(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w5_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w5(*ycm, *dy, *pttop, *exponent);
    }
    
