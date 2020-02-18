
module ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND
  use KIND_TYPES, only: REALKIND
  implicit none
  logical, save           :: colmat_not_initialised = .true.
  complex(REALKIND), save :: K1(102,6), K2(102,11), KL(102,11), Cas(5) = 0
  contains
  subroutine colourmatrix_init
    use ol_parameters_decl_/**/REALKIND, only: CI
    implicit none
    integer :: k, co
    colmat_not_initialised = .false.
    ! colour matrix

  K1(  1,:) = [  384,  -48,  -48,    6,    6,   60]
  K1(  2,:) = [  -48,  384,    6,   60,  -48,    6]
  K1(  3,:) = [  -48,    6,  384,  -48,   60,    6]
  K1(  4,:) = [    6,   60,  -48,  384,    6,  -48]
  K1(  5,:) = [    6,  -48,   60,    6,  384,  -48]
  K1(  6,:) = [   60,    6,    6,  -48,  -48,  384]
  K1(  7,:) = [  512,  -64,  -64,    8,    8,   80]
  K1(  8,:) = [  -64,  512,    8,   80,  -64,    8]
  K1(  9,:) = [  -64,    8,  512,  -64,   80,    8]
  K1( 10,:) = [    8,   80,  -64,  512,    8,  -64]
  K1( 11,:) = [    8,  -64,   80,    8,  512,  -64]
  K1( 12,:) = [   80,    8,    8,  -64,  -64,  512]
  K1( 13,:) = [    1,   10,   10,  -62,  -62,   28]
  K1( 14,:) = [   10,    1,  -62,   28,   10,  -62]
  K1( 15,:) = [   10,  -62,    1,   10,   28,  -62]
  K1( 16,:) = [  -62,   28,   10,    1,  -62,   10]
  K1( 17,:) = [  -62,   10,   28,  -62,    1,   10]
  K1( 18,:) = [   28,  -62,  -62,   10,   10,    1]
  K1( 19,:) = [  512,  -64,  -64,    8,    8,   80]
  K1( 20,:) = [  -64,  512,    8,   80,  -64,    8]
  K1( 21,:) = [  -64,    8,  512,  -64,   80,    8]
  K1( 22,:) = [    8,   80,  -64,  512,    8,  -64]
  K1( 23,:) = [    8,  -64,   80,    8,  512,  -64]
  K1( 24,:) = [   80,    8,    8,  -64,  -64,  512]
  K1( 25,:) = [   -9,  -90,   -9,   -9,   72,  -90]
  K1( 26,:) = [  -90,   -9,   72,  -90,   -9,   -9]
  K1( 27,:) = [   -9,   72,   72,   72,   72,   -9]
  K1( 28,:) = [   -9,  -90,   72, -576,   -9,   72]
  K1( 29,:) = [   72,   -9,   72,   -9,   72,   72]
  K1( 30,:) = [  -90,   -9,   -9,   72,   72, -576]
  K1( 31,:) = [ -576,   72,   72,   -9,   -9,  -90]
  K1( 32,:) = [   72, -576,   -9,  -90,   72,   -9]
  K1( 33,:) = [   72,   -9,   72,   -9,   72,   72]
  K1( 34,:) = [   -9,  -90,   -9,   -9,   72,  -90]
  K1( 35,:) = [   -9,   72,   72,   72,   72,   -9]
  K1( 36,:) = [  -90,   -9,   72,  -90,   -9,   -9]
  K1( 37,:) = [ 1152, -144, -144,   18,   18,  180]
  K1( 38,:) = [ -144, 1152,   18,  180, -144,   18]
  K1( 39,:) = [ -144,   18, 1152, -144,  180,   18]
  K1( 40,:) = [   18,  180, -144, 1152,   18, -144]
  K1( 41,:) = [   18, -144,  180,   18, 1152, -144]
  K1( 42,:) = [  180,   18,   18, -144, -144, 1152]
  K1( 43,:) = [   72,   72,   -9,   72,   -9,   72]
  K1( 44,:) = [   72, -576,   -9,  -90,   72,   -9]
  K1( 45,:) = [   -9,   -9,   -9,  -90,  -90,   72]
  K1( 46,:) = [   72,  -90,  -90,   -9,   -9,   -9]
  K1( 47,:) = [   -9,   72,  -90,   -9, -576,   72]
  K1( 48,:) = [   72,   -9,   72,   -9,   72,   72]
  K1( 49,:) = [   72,   -9,   72,   -9,   72,   72]
  K1( 50,:) = [   -9,   -9,   -9,  -90,  -90,   72]
  K1( 51,:) = [   72,   -9, -576,   72,  -90,   -9]
  K1( 52,:) = [   -9,  -90,   72, -576,   -9,   72]
  K1( 53,:) = [   72,  -90,  -90,   -9,   -9,   -9]
  K1( 54,:) = [   72,   72,   -9,   72,   -9,   72]
  K1( 55,:) = [ -648,   81,    0,    0,  -81, -162]
  K1( 56,:) = [   81,   81,    0,  162,   81,    0]
  K1( 57,:) = [    0,    0, -648,   81, -162,  -81]
  K1( 58,:) = [    0,  162,   81,   81,    0,   81]
  K1( 59,:) = [  -81,   81, -162,    0, -648,    0]
  K1( 60,:) = [ -162,    0,  -81,   81,    0, -648]
  K1( 61,:) = [ 1152, -144, -144,   18,   18,  180]
  K1( 62,:) = [ -144, 1152,   18,  180, -144,   18]
  K1( 63,:) = [ -144,   18, 1152, -144,  180,   18]
  K1( 64,:) = [   18,  180, -144, 1152,   18, -144]
  K1( 65,:) = [   18, -144,  180,   18, 1152, -144]
  K1( 66,:) = [  180,   18,   18, -144, -144, 1152]
  K1( 67,:) = [ -576,   72,   72,   -9,   -9,  -90]
  K1( 68,:) = [   72,   72,   -9,   72,   -9,   72]
  K1( 69,:) = [   72,   -9, -576,   72,  -90,   -9]
  K1( 70,:) = [   -9,   72,   72,   72,   72,   -9]
  K1( 71,:) = [   -9,   -9,  -90,   72,   -9,  -90]
  K1( 72,:) = [  -90,   72,   -9,   -9,  -90,   -9]
  K1( 73,:) = [   -9,   -9,  -90,   72,   -9,  -90]
  K1( 74,:) = [   -9,   72,   72,   72,   72,   -9]
  K1( 75,:) = [  -90,   72,   -9,   -9,  -90,   -9]
  K1( 76,:) = [   72,   72,   -9,   72,   -9,   72]
  K1( 77,:) = [   -9,   72,  -90,   -9, -576,   72]
  K1( 78,:) = [  -90,   -9,   -9,   72,   72, -576]
  K1( 79,:) = [   81,   81,   81,    0,    0,  162]
  K1( 80,:) = [   81, -648,  -81, -162,    0,    0]
  K1( 81,:) = [   81,  -81, -648,    0, -162,    0]
  K1( 82,:) = [    0, -162,    0, -648,  -81,   81]
  K1( 83,:) = [    0,    0, -162,  -81, -648,   81]
  K1( 84,:) = [  162,    0,    0,   81,   81,   81]
  K1( 85,:) = [ -648,    0,   81,  -81,    0, -162]
  K1( 86,:) = [    0, -648,    0, -162,   81,  -81]
  K1( 87,:) = [   81,    0,   81,   81,  162,    0]
  K1( 88,:) = [  -81, -162,   81, -648,    0,    0]
  K1( 89,:) = [    0,   81,  162,    0,   81,   81]
  K1( 90,:) = [ -162,  -81,    0,    0,   81, -648]
  K1( 91,:) = [ 1152, -144, -144,   18,   18,  180]
  K1( 92,:) = [ -144, 1152,   18,  180, -144,   18]
  K1( 93,:) = [ -144,   18, 1152, -144,  180,   18]
  K1( 94,:) = [   18,  180, -144, 1152,   18, -144]
  K1( 95,:) = [   18, -144,  180,   18, 1152, -144]
  K1( 96,:) = [  180,   18,   18, -144, -144, 1152]
  K1( 97,:) = [    0,    0,    0,    0,    0,    0]
  K1( 98,:) = [    0,    0,    0,    0,    0,    0]
  K1( 99,:) = [    0,    0,    0,    0,    0,    0]
  K1(100,:) = [    0,    0,    0,    0,    0,    0]
  K1(101,:) = [    0,    0,    0,    0,    0,    0]
  K1(102,:) = [    0,    0,    0,    0,    0,    0]
  K1 = (1._/**/REALKIND / 54) * K1

  K2(  1,:) = [  384,  -48,  -48,    6,    6,   60,  144,  -18,  144,  126,  -36]
  K2(  2,:) = [  -48,  384,    6,   60,  -48,    6,  -18,  144,  144,  -36,  126]
  K2(  3,:) = [  -48,    6,  384,  -48,   60,    6,  144,  144,  -18,  -36,  126]
  K2(  4,:) = [    6,   60,  -48,  384,    6,  -48,  -18,  144,  144,  126,  -36]
  K2(  5,:) = [    6,  -48,   60,    6,  384,  -48,  144,  144,  -18,  126,  -36]
  K2(  6,:) = [   60,    6,    6,  -48,  -48,  384,  144,  -18,  144,  -36,  126]
  K2(  7,:) = [  512,  -64,  -64,    8,    8,   80,  192,  -24,  192,  168,  -48]
  K2(  8,:) = [  -64,  512,    8,   80,  -64,    8,  -24,  192,  192,  -48,  168]
  K2(  9,:) = [  -64,    8,  512,  -64,   80,    8,  192,  192,  -24,  -48,  168]
  K2( 10,:) = [    8,   80,  -64,  512,    8,  -64,  -24,  192,  192,  168,  -48]
  K2( 11,:) = [    8,  -64,   80,    8,  512,  -64,  192,  192,  -24,  168,  -48]
  K2( 12,:) = [   80,    8,    8,  -64,  -64,  512,  192,  -24,  192,  -48,  168]
  K2( 13,:) = [    1,   10,   10,  -62,  -62,   28,   24,   -3,   24, -168,   48]
  K2( 14,:) = [   10,    1,  -62,   28,   10,  -62,   -3,   24,   24,   48, -168]
  K2( 15,:) = [   10,  -62,    1,   10,   28,  -62,   24,   24,   -3,   48, -168]
  K2( 16,:) = [  -62,   28,   10,    1,  -62,   10,   -3,   24,   24, -168,   48]
  K2( 17,:) = [  -62,   10,   28,  -62,    1,   10,   24,   24,   -3, -168,   48]
  K2( 18,:) = [   28,  -62,  -62,   10,   10,    1,   24,   -3,   24,   48, -168]
  K2( 19,:) = [  512,  -64,  -64,    8,    8,   80,  192,  -24,  192,  168,  -48]
  K2( 20,:) = [  -64,  512,    8,   80,  -64,    8,  -24,  192,  192,  -48,  168]
  K2( 21,:) = [  -64,    8,  512,  -64,   80,    8,  192,  192,  -24,  -48,  168]
  K2( 22,:) = [    8,   80,  -64,  512,    8,  -64,  -24,  192,  192,  168,  -48]
  K2( 23,:) = [    8,  -64,   80,    8,  512,  -64,  192,  192,  -24,  168,  -48]
  K2( 24,:) = [   80,    8,    8,  -64,  -64,  512,  192,  -24,  192,  -48,  168]
  K2( 25,:) = [   -9,  -90,   -9,   -9,   72,  -90,  -27,  -27, -216,  189,  -54]
  K2( 26,:) = [  -90,   -9,   72,  -90,   -9,   -9,  -27,  -27, -216,  -54,  189]
  K2( 27,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  K2( 28,:) = [   -9,  -90,   72, -576,   -9,   72,   27, -216, -216, -189,   54]
  K2( 29,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  K2( 30,:) = [  -90,   -9,   -9,   72,   72, -576, -216,   27, -216,   54, -189]
  K2( 31,:) = [ -576,   72,   72,   -9,   -9,  -90, -216,   27, -216, -189,   54]
  K2( 32,:) = [   72, -576,   -9,  -90,   72,   -9,   27, -216, -216,   54, -189]
  K2( 33,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  K2( 34,:) = [   -9,  -90,   -9,   -9,   72,  -90,  -27,  -27, -216,  189,  -54]
  K2( 35,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  K2( 36,:) = [  -90,   -9,   72,  -90,   -9,   -9,  -27,  -27, -216,  -54,  189]
  K2( 37,:) = [ 1152, -144, -144,   18,   18,  180,  432,  -54,  432,  378, -108]
  K2( 38,:) = [ -144, 1152,   18,  180, -144,   18,  -54,  432,  432, -108,  378]
  K2( 39,:) = [ -144,   18, 1152, -144,  180,   18,  432,  432,  -54, -108,  378]
  K2( 40,:) = [   18,  180, -144, 1152,   18, -144,  -54,  432,  432,  378, -108]
  K2( 41,:) = [   18, -144,  180,   18, 1152, -144,  432,  432,  -54,  378, -108]
  K2( 42,:) = [  180,   18,   18, -144, -144, 1152,  432,  -54,  432, -108,  378]
  K2( 43,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  K2( 44,:) = [   72, -576,   -9,  -90,   72,   -9,   27, -216, -216,   54, -189]
  K2( 45,:) = [   -9,   -9,   -9,  -90,  -90,   72,  -27, -216,  -27,  -54,  189]
  K2( 46,:) = [   72,  -90,  -90,   -9,   -9,   -9,  -27, -216,  -27,  189,  -54]
  K2( 47,:) = [   -9,   72,  -90,   -9, -576,   72, -216, -216,   27, -189,   54]
  K2( 48,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  K2( 49,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  K2( 50,:) = [   -9,   -9,   -9,  -90,  -90,   72,  -27, -216,  -27,  -54,  189]
  K2( 51,:) = [   72,   -9, -576,   72,  -90,   -9, -216, -216,   27,   54, -189]
  K2( 52,:) = [   -9,  -90,   72, -576,   -9,   72,   27, -216, -216, -189,   54]
  K2( 53,:) = [   72,  -90,  -90,   -9,   -9,   -9,  -27, -216,  -27,  189,  -54]
  K2( 54,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  K2( 55,:) = [ -648,   81,    0,    0,  -81, -162, -432,    0, -243, -189,   54]
  K2( 56,:) = [   81,   81,    0,  162,   81,    0,   54,  243,  243,   54, -189]
  K2( 57,:) = [    0,    0, -648,   81, -162,  -81, -432, -243,    0,   54, -189]
  K2( 58,:) = [    0,  162,   81,   81,    0,   81,   54,  243,  243, -189,   54]
  K2( 59,:) = [  -81,   81, -162,    0, -648,    0, -432, -243,    0, -189,   54]
  K2( 60,:) = [ -162,    0,  -81,   81,    0, -648, -432,    0, -243,   54, -189]
  K2( 61,:) = [ 1152, -144, -144,   18,   18,  180,  432,  -54,  432,  378, -108]
  K2( 62,:) = [ -144, 1152,   18,  180, -144,   18,  -54,  432,  432, -108,  378]
  K2( 63,:) = [ -144,   18, 1152, -144,  180,   18,  432,  432,  -54, -108,  378]
  K2( 64,:) = [   18,  180, -144, 1152,   18, -144,  -54,  432,  432,  378, -108]
  K2( 65,:) = [   18, -144,  180,   18, 1152, -144,  432,  432,  -54,  378, -108]
  K2( 66,:) = [  180,   18,   18, -144, -144, 1152,  432,  -54,  432, -108,  378]
  K2( 67,:) = [ -576,   72,   72,   -9,   -9,  -90, -216,   27, -216, -189,   54]
  K2( 68,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  K2( 69,:) = [   72,   -9, -576,   72,  -90,   -9, -216, -216,   27,   54, -189]
  K2( 70,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  K2( 71,:) = [   -9,   -9,  -90,   72,   -9,  -90, -216,  -27,  -27,  189,  -54]
  K2( 72,:) = [  -90,   72,   -9,   -9,  -90,   -9, -216,  -27,  -27,  -54,  189]
  K2( 73,:) = [   -9,   -9,  -90,   72,   -9,  -90, -216,  -27,  -27,  189,  -54]
  K2( 74,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  K2( 75,:) = [  -90,   72,   -9,   -9,  -90,   -9, -216,  -27,  -27,  -54,  189]
  K2( 76,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  K2( 77,:) = [   -9,   72,  -90,   -9, -576,   72, -216, -216,   27, -189,   54]
  K2( 78,:) = [  -90,   -9,   -9,   72,   72, -576, -216,   27, -216,   54, -189]
  K2( 79,:) = [   81,   81,   81,    0,    0,  162,  243,   54,  243, -189,   54]
  K2( 80,:) = [   81, -648,  -81, -162,    0,    0,    0, -432, -243,   54, -189]
  K2( 81,:) = [   81,  -81, -648,    0, -162,    0, -243, -432,    0,   54, -189]
  K2( 82,:) = [    0, -162,    0, -648,  -81,   81,    0, -432, -243, -189,   54]
  K2( 83,:) = [    0,    0, -162,  -81, -648,   81, -243, -432,    0, -189,   54]
  K2( 84,:) = [  162,    0,    0,   81,   81,   81,  243,   54,  243,   54, -189]
  K2( 85,:) = [ -648,    0,   81,  -81,    0, -162, -243,    0, -432, -189,   54]
  K2( 86,:) = [    0, -648,    0, -162,   81,  -81,    0, -243, -432,   54, -189]
  K2( 87,:) = [   81,    0,   81,   81,  162,    0,  243,  243,   54,   54, -189]
  K2( 88,:) = [  -81, -162,   81, -648,    0,    0,    0, -243, -432, -189,   54]
  K2( 89,:) = [    0,   81,  162,    0,   81,   81,  243,  243,   54, -189,   54]
  K2( 90,:) = [ -162,  -81,    0,    0,   81, -648, -243,    0, -432,   54, -189]
  K2( 91,:) = [ 1152, -144, -144,   18,   18,  180,  432,  -54,  432,  378, -108]
  K2( 92,:) = [ -144, 1152,   18,  180, -144,   18,  -54,  432,  432, -108,  378]
  K2( 93,:) = [ -144,   18, 1152, -144,  180,   18,  432,  432,  -54, -108,  378]
  K2( 94,:) = [   18,  180, -144, 1152,   18, -144,  -54,  432,  432,  378, -108]
  K2( 95,:) = [   18, -144,  180,   18, 1152, -144,  432,  432,  -54,  378, -108]
  K2( 96,:) = [  180,   18,   18, -144, -144, 1152,  432,  -54,  432, -108,  378]
  K2( 97,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  K2( 98,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  K2( 99,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  K2(100,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  K2(101,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  K2(102,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  K2 = (1._/**/REALKIND / 54) * K2

  KL(  1,:) = [  384,  -48,  -48,    6,    6,   60,  144,  -18,  144,  126,  -36]
  KL(  2,:) = [  -48,  384,    6,   60,  -48,    6,  -18,  144,  144,  -36,  126]
  KL(  3,:) = [  -48,    6,  384,  -48,   60,    6,  144,  144,  -18,  -36,  126]
  KL(  4,:) = [    6,   60,  -48,  384,    6,  -48,  -18,  144,  144,  126,  -36]
  KL(  5,:) = [    6,  -48,   60,    6,  384,  -48,  144,  144,  -18,  126,  -36]
  KL(  6,:) = [   60,    6,    6,  -48,  -48,  384,  144,  -18,  144,  -36,  126]
  KL(  7,:) = [  512,  -64,  -64,    8,    8,   80,  192,  -24,  192,  168,  -48]
  KL(  8,:) = [  -64,  512,    8,   80,  -64,    8,  -24,  192,  192,  -48,  168]
  KL(  9,:) = [  -64,    8,  512,  -64,   80,    8,  192,  192,  -24,  -48,  168]
  KL( 10,:) = [    8,   80,  -64,  512,    8,  -64,  -24,  192,  192,  168,  -48]
  KL( 11,:) = [    8,  -64,   80,    8,  512,  -64,  192,  192,  -24,  168,  -48]
  KL( 12,:) = [   80,    8,    8,  -64,  -64,  512,  192,  -24,  192,  -48,  168]
  KL( 13,:) = [    1,   10,   10,  -62,  -62,   28,   24,   -3,   24, -168,   48]
  KL( 14,:) = [   10,    1,  -62,   28,   10,  -62,   -3,   24,   24,   48, -168]
  KL( 15,:) = [   10,  -62,    1,   10,   28,  -62,   24,   24,   -3,   48, -168]
  KL( 16,:) = [  -62,   28,   10,    1,  -62,   10,   -3,   24,   24, -168,   48]
  KL( 17,:) = [  -62,   10,   28,  -62,    1,   10,   24,   24,   -3, -168,   48]
  KL( 18,:) = [   28,  -62,  -62,   10,   10,    1,   24,   -3,   24,   48, -168]
  KL( 19,:) = [  512,  -64,  -64,    8,    8,   80,  192,  -24,  192,  168,  -48]
  KL( 20,:) = [  -64,  512,    8,   80,  -64,    8,  -24,  192,  192,  -48,  168]
  KL( 21,:) = [  -64,    8,  512,  -64,   80,    8,  192,  192,  -24,  -48,  168]
  KL( 22,:) = [    8,   80,  -64,  512,    8,  -64,  -24,  192,  192,  168,  -48]
  KL( 23,:) = [    8,  -64,   80,    8,  512,  -64,  192,  192,  -24,  168,  -48]
  KL( 24,:) = [   80,    8,    8,  -64,  -64,  512,  192,  -24,  192,  -48,  168]
  KL( 25,:) = [   -9,  -90,   -9,   -9,   72,  -90,  -27,  -27, -216,  189,  -54]
  KL( 26,:) = [  -90,   -9,   72,  -90,   -9,   -9,  -27,  -27, -216,  -54,  189]
  KL( 27,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  KL( 28,:) = [   -9,  -90,   72, -576,   -9,   72,   27, -216, -216, -189,   54]
  KL( 29,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  KL( 30,:) = [  -90,   -9,   -9,   72,   72, -576, -216,   27, -216,   54, -189]
  KL( 31,:) = [ -576,   72,   72,   -9,   -9,  -90, -216,   27, -216, -189,   54]
  KL( 32,:) = [   72, -576,   -9,  -90,   72,   -9,   27, -216, -216,   54, -189]
  KL( 33,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  KL( 34,:) = [   -9,  -90,   -9,   -9,   72,  -90,  -27,  -27, -216,  189,  -54]
  KL( 35,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  KL( 36,:) = [  -90,   -9,   72,  -90,   -9,   -9,  -27,  -27, -216,  -54,  189]
  KL( 37,:) = [ 1152, -144, -144,   18,   18,  180,  432,  -54,  432,  378, -108]
  KL( 38,:) = [ -144, 1152,   18,  180, -144,   18,  -54,  432,  432, -108,  378]
  KL( 39,:) = [ -144,   18, 1152, -144,  180,   18,  432,  432,  -54, -108,  378]
  KL( 40,:) = [   18,  180, -144, 1152,   18, -144,  -54,  432,  432,  378, -108]
  KL( 41,:) = [   18, -144,  180,   18, 1152, -144,  432,  432,  -54,  378, -108]
  KL( 42,:) = [  180,   18,   18, -144, -144, 1152,  432,  -54,  432, -108,  378]
  KL( 43,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  KL( 44,:) = [   72, -576,   -9,  -90,   72,   -9,   27, -216, -216,   54, -189]
  KL( 45,:) = [   -9,   -9,   -9,  -90,  -90,   72,  -27, -216,  -27,  -54,  189]
  KL( 46,:) = [   72,  -90,  -90,   -9,   -9,   -9,  -27, -216,  -27,  189,  -54]
  KL( 47,:) = [   -9,   72,  -90,   -9, -576,   72, -216, -216,   27, -189,   54]
  KL( 48,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  KL( 49,:) = [   72,   -9,   72,   -9,   72,   72,  216,   27,   27,    0,    0]
  KL( 50,:) = [   -9,   -9,   -9,  -90,  -90,   72,  -27, -216,  -27,  -54,  189]
  KL( 51,:) = [   72,   -9, -576,   72,  -90,   -9, -216, -216,   27,   54, -189]
  KL( 52,:) = [   -9,  -90,   72, -576,   -9,   72,   27, -216, -216, -189,   54]
  KL( 53,:) = [   72,  -90,  -90,   -9,   -9,   -9,  -27, -216,  -27,  189,  -54]
  KL( 54,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  KL( 55,:) = [ -648,   81,    0,    0,  -81, -162, -432,    0, -243, -189,   54]
  KL( 56,:) = [   81,   81,    0,  162,   81,    0,   54,  243,  243,   54, -189]
  KL( 57,:) = [    0,    0, -648,   81, -162,  -81, -432, -243,    0,   54, -189]
  KL( 58,:) = [    0,  162,   81,   81,    0,   81,   54,  243,  243, -189,   54]
  KL( 59,:) = [  -81,   81, -162,    0, -648,    0, -432, -243,    0, -189,   54]
  KL( 60,:) = [ -162,    0,  -81,   81,    0, -648, -432,    0, -243,   54, -189]
  KL( 61,:) = [ 1152, -144, -144,   18,   18,  180,  432,  -54,  432,  378, -108]
  KL( 62,:) = [ -144, 1152,   18,  180, -144,   18,  -54,  432,  432, -108,  378]
  KL( 63,:) = [ -144,   18, 1152, -144,  180,   18,  432,  432,  -54, -108,  378]
  KL( 64,:) = [   18,  180, -144, 1152,   18, -144,  -54,  432,  432,  378, -108]
  KL( 65,:) = [   18, -144,  180,   18, 1152, -144,  432,  432,  -54,  378, -108]
  KL( 66,:) = [  180,   18,   18, -144, -144, 1152,  432,  -54,  432, -108,  378]
  KL( 67,:) = [ -576,   72,   72,   -9,   -9,  -90, -216,   27, -216, -189,   54]
  KL( 68,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  KL( 69,:) = [   72,   -9, -576,   72,  -90,   -9, -216, -216,   27,   54, -189]
  KL( 70,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  KL( 71,:) = [   -9,   -9,  -90,   72,   -9,  -90, -216,  -27,  -27,  189,  -54]
  KL( 72,:) = [  -90,   72,   -9,   -9,  -90,   -9, -216,  -27,  -27,  -54,  189]
  KL( 73,:) = [   -9,   -9,  -90,   72,   -9,  -90, -216,  -27,  -27,  189,  -54]
  KL( 74,:) = [   -9,   72,   72,   72,   72,   -9,   27,  216,   27,    0,    0]
  KL( 75,:) = [  -90,   72,   -9,   -9,  -90,   -9, -216,  -27,  -27,  -54,  189]
  KL( 76,:) = [   72,   72,   -9,   72,   -9,   72,   27,   27,  216,    0,    0]
  KL( 77,:) = [   -9,   72,  -90,   -9, -576,   72, -216, -216,   27, -189,   54]
  KL( 78,:) = [  -90,   -9,   -9,   72,   72, -576, -216,   27, -216,   54, -189]
  KL( 79,:) = [   81,   81,   81,    0,    0,  162,  243,   54,  243, -189,   54]
  KL( 80,:) = [   81, -648,  -81, -162,    0,    0,    0, -432, -243,   54, -189]
  KL( 81,:) = [   81,  -81, -648,    0, -162,    0, -243, -432,    0,   54, -189]
  KL( 82,:) = [    0, -162,    0, -648,  -81,   81,    0, -432, -243, -189,   54]
  KL( 83,:) = [    0,    0, -162,  -81, -648,   81, -243, -432,    0, -189,   54]
  KL( 84,:) = [  162,    0,    0,   81,   81,   81,  243,   54,  243,   54, -189]
  KL( 85,:) = [ -648,    0,   81,  -81,    0, -162, -243,    0, -432, -189,   54]
  KL( 86,:) = [    0, -648,    0, -162,   81,  -81,    0, -243, -432,   54, -189]
  KL( 87,:) = [   81,    0,   81,   81,  162,    0,  243,  243,   54,   54, -189]
  KL( 88,:) = [  -81, -162,   81, -648,    0,    0,    0, -243, -432, -189,   54]
  KL( 89,:) = [    0,   81,  162,    0,   81,   81,  243,  243,   54, -189,   54]
  KL( 90,:) = [ -162,  -81,    0,    0,   81, -648, -243,    0, -432,   54, -189]
  KL( 91,:) = [ 1152, -144, -144,   18,   18,  180,  432,  -54,  432,  378, -108]
  KL( 92,:) = [ -144, 1152,   18,  180, -144,   18,  -54,  432,  432, -108,  378]
  KL( 93,:) = [ -144,   18, 1152, -144,  180,   18,  432,  432,  -54, -108,  378]
  KL( 94,:) = [   18,  180, -144, 1152,   18, -144,  -54,  432,  432,  378, -108]
  KL( 95,:) = [   18, -144,  180,   18, 1152, -144,  432,  432,  -54,  378, -108]
  KL( 96,:) = [  180,   18,   18, -144, -144, 1152,  432,  -54,  432, -108,  378]
  KL( 97,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  KL( 98,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  KL( 99,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  KL(100,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  KL(101,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  KL(102,:) = [    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0]
  KL = (1._/**/REALKIND / 54) * KL

#if 1 > 0
    co = 0
    do k = 1, 5
      co = co + k
      Cas(k) = K1(1+6*co,1)/K1(1,1)
    end do
#endif
  end subroutine colourmatrix_init
end module ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND



module ol_forced_parameters_ppttj_ttxggg_1_/**/REALKIND
  implicit none
  contains
  subroutine check_forced_parameters
    use ol_parameters_decl_/**/REALKIND
    use ol_loop_parameters_decl_/**/REALKIND
#ifndef PRECISION_dp
    use ol_loop_parameters_decl_/**/DREALKIND, only: LeadingColour, nc, nf, CKMORDER
#endif
    implicit none
    logical, save :: checks_not_written = .true.

    if (checks_not_written) then
    ! e.g.
    ! if (ME /= 0) write(*,101) 'ME = 0'
  if (CKMORDER /= 0) write(*,101) 'CKMORDER = 0'
  if (nc /= 3) write(*,101) 'nc = 3'
  if (nf /= 6) write(*,101) 'nf = 6'
  if (MU /= 0) write(*,101) 'MU = 0'
  if (MD /= 0) write(*,101) 'MD = 0'
  if (MS /= 0) write(*,101) 'MS = 0'
  if (MC /= 0) write(*,101) 'MC = 0'
  if (LeadingColour /= 0) write(*,101) 'LeadingColour = 0'
  if (wMT /= 0) write(*,101) 'wMT = 0'
  if (wMT /= 0) write(*,101) 'wMT = 0'


    checks_not_written = .false.
    end if

    101 format('[OpenLoops] === WARNING ===',/,'[OpenLoops] code was generated with ',A,/,'[OpenLoops] ===============')
  end subroutine check_forced_parameters
end module ol_forced_parameters_ppttj_ttxggg_1_/**/REALKIND


! **********************************************************************
module ol_loop_storage_ppttj_ttxggg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, intkind1, intkind2
  use ol_data_types_/**/REALKIND, only: wfun, Hpolcont

#ifdef PRECISION_dp
  integer(intkind1), save :: ntryL = 1
  integer(intkind1), save :: p_switch = 0 ! switch for dp or qp. Used for memory allocation of the OL types
  ! the following are flags for memory allocation of the hol coefficients in dp or qp
  logical, save :: dp_not_alloc = .TRUE., qp_not_alloc = .TRUE.
  integer, save :: n_merge_steps  ! total number of merging steps
  integer, save :: n_merge_mism   ! number of merging mismatches
  integer, save :: merge_step = 1 ! current merging step
  integer(intkind2), save, allocatable :: merge_tables(:,:,:) ! merging tables
  integer(intkind2), save, allocatable :: merge_mism(:)       ! array of merging mismatches
  integer(intkind2), save, allocatable :: merge_hels(:)       ! array with relevant helicities for a merging step
  logical, save :: merge_tables_on = .false.
  integer(intkind2), parameter :: nheltot = 32 ! number of helicity configurations
  integer(intkind2), save :: nhel = 32 ! number of non-vanishing helicity configurations (adapted at runtime)
  integer(intkind2), save :: hel_states = 32 ! number of helicity configurations needed for mem-allocation
  integer(intkind2), save :: Hel(32) ! physical helicity states
#endif

  type(Hpolcont), save, allocatable :: A(:,:), M1helarray(:,:), M1helarray_ct(:,:)
  complex(REALKIND), save :: den(96)

  ! external wave functions ex1(h1),... for h<n> helicities
  type(wfun) :: ex1(2), ex2(2), ex3(2), ex4(2), ex5(2)

  ! wf<h>(h,n) n wave functions with h helicity configurations
  type(wfun) :: wf4(4,42), wf8(8,84), wf32(32,105)

  ! diagram prefactors
  integer,           save :: fac_status_loop1 = -1, fac_status_loop2 = -1
  complex(REALKIND), save :: f(18), c(25)

  !Vector in helicity and colour space for Born-Loop interference
  type(Hpolcont),   save, allocatable :: M0_col1_helarray(:,:), M0M1_hel_cc(:,:,:)
  complex(REALKIND), save :: M2ctcc(16)

end module ol_loop_storage_ppttj_ttxggg_1_/**/REALKIND






! **********************************************************************
module ol_loop_ppttj_ttxggg_1_/**/REALKIND
! **********************************************************************
  use KIND_TYPES, only: REALKIND, DREALKIND, intkind1, intkind2
  use ol_data_types_/**/REALKIND, only: wfun, Hpolcont
  use ol_loop_storage_ppttj_ttxggg_1_/**/REALKIND
  implicit none

!*********************************************************************************
  contains

! **********************************************************************
subroutine fac_init_loop()
! Writes diagram prefactors to 'f', rsp. 'c'
! **********************************************************************
  use ol_parameters_decl_/**/REALKIND
  use ol_loop_parameters_decl_/**/REALKIND
  use ol_init, only: set_parameter, tree_parameters_flush, parameters_flush
#ifndef PRECISION_dp
  use ol_loop_parameters_decl_/**/DREALKIND, only: SwF, SwB
!  use ol_loop_parameters_decl_/**/DREALKIND, only: DOI
#endif
  implicit none
  call set_parameter("ew_renorm", 0)
  if (parameters_status == 0) call tree_parameters_flush()
  if (loop_parameters_status == 0) call parameters_flush()
  fac_status_loop1 = parameters_status
  fac_status_loop2 = loop_parameters_status
  ! factors of the diagrams
    f( 1) = CI*gQCD**3
    f( 2) = gQCD**3
    f( 3) = CI*countertermnorm*gQCD**5
    f( 4) = countertermnorm*gQCD**5
    f( 5) = CI*countertermnorm*ctGtt*gQCD**5
    f( 6) = countertermnorm*ctGtt*gQCD**5
    f( 7) = CI*countertermnorm*ctVVV*gQCD**5
    f( 8) = countertermnorm*ctVVV*gQCD**5
    f( 9) = CI*countertermnorm*ctVVVV*gQCD**5
    f(10) = CI*countertermnorm*gQCD**5*R2GGGG
    f(11) = (CI*gQCD**5*integralnorm*SwB)/2._/**/REALKIND
    f(12) = CI*gQCD**5*integralnorm*SwB
    f(13) = (gQCD**5*integralnorm*SwB)/2._/**/REALKIND
    f(14) = gQCD**5*integralnorm*SwB
    f(15) = CI*gQCD**5*integralnorm*SwF
    f(16) = 2*CI*gQCD**5*integralnorm*SwF
    f(17) = gQCD**5*integralnorm*SwF
    f(18) = 2*gQCD**5*integralnorm*SwF

  c = [ 9*CI*f(11), 18*CI*f(11), CI*f(12), 3*CI*f(12), 8*CI*f(12), 9*CI*f(12), 18*CI*f(12), 3*f(13), 6*f(13), 9*f(13), 18*f(13) &
    , f(14), 3*f(14), 6*f(14), 8*f(14), 9*f(14), 18*f(14), CI*f(15), 3*CI*f(15), CI*f(16), 3*CI*f(16), f(17), 3*f(17), f(18) &
    , 3*f(18) ]
  c = (1._/**/REALKIND / 6) * c
end subroutine fac_init_loop

subroutine denominators()
  use ol_parameters_decl_/**/REALKIND ! masses
  use ol_momenta_decl_/**/REALKIND, only: L
  implicit none
  ! propagators
  den(1) = 1 /((L(5,3))+L(6,3))
  den(2) = 1 /((L(5,12))+L(6,12))
  den(4) = 1 /((L(5,20))+L(6,20))
  den(6) = 1 /((L(5,24))+L(6,24))
  den(8) = 1 /((L(5,5) - MT2)+L(6,5))
  den(9) = 1 /((L(5,10) - MT2)+L(6,10))
  den(11) = 1 /((L(5,18) - MT2)+L(6,18))
  den(14) = 1 /((L(5,9) - MT2)+L(6,9))
  den(15) = 1 /((L(5,6) - MT2)+L(6,6))
  den(17) = 1 /((L(5,17) - MT2)+L(6,17))
  den(26) = 1 /((L(5,28))+L(6,28))
  den(30) = 1 /((L(5,19))+L(6,19))
  den(35) = 1 /((L(5,11))+L(6,11))
  den(40) = 1 /((L(5,7))+L(6,7))
  den(43) = 1 /((L(5,26) - MT2)+L(6,26))
  den(46) = 1 /((L(5,21) - MT2)+L(6,21))
  den(51) = 1 /((L(5,13) - MT2)+L(6,13))
  den(58) = 1 /((L(5,22) - MT2)+L(6,22))
  den(61) = 1 /((L(5,25) - MT2)+L(6,25))
  den(64) = 1 /((L(5,14) - MT2)+L(6,14))

  ! denominators
  den(3) = den(1)*den(2)
  den(5) = den(1)*den(4)
  den(7) = den(1)*den(6)
  den(10) = den(8)*den(9)
  den(12) = den(8)*den(11)
  den(13) = den(6)*den(8)
  den(16) = den(14)*den(15)
  den(18) = den(15)*den(17)
  den(19) = den(6)*den(15)
  den(20) = den(11)*den(14)
  den(21) = den(4)*den(14)
  den(22) = den(9)*den(17)
  den(23) = den(4)*den(9)
  den(24) = den(2)*den(17)
  den(25) = den(2)*den(11)
  den(27) = den(1)*den(26)
  den(28) = den(2)*den(26)
  den(29) = den(1)*den(28)
  den(31) = den(1)*den(30)
  den(32) = den(2)*den(31)
  den(33) = den(4)*den(26)
  den(34) = den(1)*den(33)
  den(36) = den(1)*den(35)
  den(37) = den(4)*den(36)
  den(38) = den(6)*den(26)
  den(39) = den(1)*den(38)
  den(41) = den(1)*den(40)
  den(42) = den(6)*den(41)
  den(44) = den(9)*den(43)
  den(45) = den(8)*den(44)
  den(47) = den(8)*den(46)
  den(48) = den(9)*den(47)
  den(49) = den(11)*den(43)
  den(50) = den(8)*den(49)
  den(52) = den(8)*den(51)
  den(53) = den(11)*den(52)
  den(54) = den(6)*den(43)
  den(55) = den(8)*den(54)
  den(56) = den(8)*den(40)
  den(57) = den(6)*den(56)
  den(59) = den(15)*den(58)
  den(60) = den(14)*den(59)
  den(62) = den(14)*den(61)
  den(63) = den(15)*den(62)
  den(65) = den(15)*den(64)
  den(66) = den(17)*den(65)
  den(67) = den(17)*den(61)
  den(68) = den(15)*den(67)
  den(69) = den(6)*den(61)
  den(70) = den(15)*den(69)
  den(71) = den(15)*den(40)
  den(72) = den(6)*den(71)
  den(73) = den(11)*den(58)
  den(74) = den(14)*den(73)
  den(75) = den(14)*den(51)
  den(76) = den(11)*den(75)
  den(77) = den(4)*den(58)
  den(78) = den(14)*den(77)
  den(79) = den(14)*den(35)
  den(80) = den(4)*den(79)
  den(81) = den(9)*den(64)
  den(82) = den(17)*den(81)
  den(83) = den(17)*den(46)
  den(84) = den(9)*den(83)
  den(85) = den(4)*den(46)
  den(86) = den(9)*den(85)
  den(87) = den(9)*den(35)
  den(88) = den(4)*den(87)
  den(89) = den(2)*den(64)
  den(90) = den(17)*den(89)
  den(91) = den(17)*den(30)
  den(92) = den(2)*den(91)
  den(93) = den(2)*den(51)
  den(94) = den(11)*den(93)
  den(95) = den(11)*den(30)
  den(96) = den(2)*den(95)

end subroutine denominators

#ifdef PRECISION_dp
! **********************************************************************
subroutine init_merging_tables(tot_num_hels, tot_num_merge_steps)
!-----------------------------------------------------------------------
! In the first event the merging tables are fully initialised
! **********************************************************************
  implicit none
  integer, intent(in) :: tot_num_hels, tot_num_merge_steps
  n_merge_steps = tot_num_merge_steps
  allocate(merge_tables(tot_num_hels,2,n_merge_steps))
  allocate(merge_mism(n_merge_steps+1))
  allocate(merge_hels(n_merge_steps))
  merge_tables_on = .true.
  merge_mism = 0_intkind2
  merge_tables = -1_intkind2
  merge_hels = -1_intkind2
end subroutine init_merging_tables

! **********************************************************************
subroutine update_merging_tables(tot_num_hels)
!-----------------------------------------------------------------------
! After the first evaluation the merging tables are adapted
! **********************************************************************
  implicit none
  integer, intent(in) :: tot_num_hels
  integer(intkind2), allocatable ::  merge_tables_tmp(:,:,:), merge_hels_tmp(:)

  if(merge_mism(1) == 0) then ! helicity configurations match in all merging steps
    if(allocated(merge_tables)) deallocate(merge_tables)
    if(allocated(merge_hels)) deallocate(merge_hels)
    if(allocated(merge_mism)) deallocate(merge_mism)
    allocate(merge_mism(1))
    allocate(merge_hels(1))
    allocate(merge_tables(1,1,1)) ! dummy allocation
    merge_mism = 0_intkind2
    merge_tables = -1_intkind2
    merge_hels = -1_intkind2
  else
    n_merge_mism = merge_mism(1)
    allocate(merge_tables_tmp(tot_num_hels,2,n_merge_mism))
    merge_tables_tmp(:,:,1:n_merge_mism) = merge_tables(:,:,1:n_merge_mism)
    if(allocated(merge_tables)) then
      deallocate(merge_tables)
      allocate(merge_tables(tot_num_hels,2,n_merge_mism))
    end if
    merge_tables = merge_tables_tmp
    if(allocated(merge_tables_tmp)) deallocate(merge_tables_tmp)
    allocate(merge_hels_tmp(n_merge_mism))
    merge_hels_tmp(1:n_merge_mism) = merge_hels(1:n_merge_mism)
    if(allocated(merge_hels)) then
      deallocate(merge_hels)
      allocate(merge_hels(n_merge_mism))
    end if
    merge_hels = merge_hels_tmp
    if(allocated(merge_hels_tmp)) deallocate(merge_hels_tmp)
  end if
  merge_tables_on = .true.
end subroutine update_merging_tables
#endif

! **********************************************************************
subroutine allocate_diagrams()
!-----------------------------------------------------------------------
! After the first Born evaluation, colour-stripped amplitudes and
! colour vectors are initialiased with the minimum number of relevant
! helicity states.
! **********************************************************************
#ifndef PRECISION_dp
  use ol_loop_storage_ppttj_ttxggg_1_/**/DREALKIND, only: hel_states
#endif
  implicit none

  if (allocated(A)) deallocate(A)
  if (allocated(M1helarray)) deallocate(M1helarray)
  if (allocated(M1helarray_ct)) deallocate(M1helarray_ct)
  if (allocated(M0_col1_helarray)) deallocate(M0_col1_helarray)
  allocate(A(hel_states,105))
  allocate(M1helarray(6,hel_states))
  allocate(M1helarray_ct(11,hel_states))
  allocate(M0_col1_helarray(11,hel_states))
#if 1 > 0
  if (allocated(M0M1_hel_cc)) deallocate(M0M1_hel_cc)
  allocate(M0M1_hel_cc(11,hel_states,16))
#endif
end subroutine allocate_diagrams

!
!
!
! **********************************************************************
#ifdef PRECISION_dp
recursive subroutine amp2(P_scatt, M02, qp_kinematics, M2ct, M2colint)
#else
recursive subroutine amp2(P_scatt, M02, qp_kinematics, M2ct, M2colint)
  use ol_loop_storage_ppttj_ttxggg_1_/**/DREALKIND, only: &
  nhel, Hel, hel_states
#endif
! P_scatt(0:3,Npart) = incoming external momenta
! M2  = helicity-summed squared matrix element for top anti-top glue glue glue -> 0
! **********************************************************************
  use ol_parameters_decl_/**/REALKIND !, only: ci, parameters_status, ZERO, scalefactor, >masses<
  use ol_parameters_init_/**/REALKIND, only: ensure_mp_init, ensure_mp_loop_init
  use ol_kinematics_/**/REALKIND, only: init_kinematics
  use ol_momenta_decl_/**/DREALKIND, only: momenta_nan_check
  use ol_settings_ppttj_ttxggg_1, only: hel_mem_opt, loopcc
  use ol_data_types_/**/REALKIND
  use ol_h_helicity_bookkeeping_/**/REALKIND, only: &
    & helbookkeeping_wf, helsync, flip_phase
  use ol_helicity_init, only: helbookkeeping_flip, helsync_flip
  use ol_hel_propagators_/**/REALKIND
  use ol_hel_wavefunctions_/**/REALKIND
  use ol_wavefunctions_/**/REALKIND, only: wf_V_Std
  use ol_hel_vertices_/**/REALKIND
  use ol_hel_contractions_/**/REALKIND
  use ol_external_ppttj_ttxggg_1, only: &
    & external_perm_ppttj_ttxggg_1, &
    & external_perm_inv_ppttj_ttxggg_1, &
    & extcomb_perm_ppttj_ttxggg_1, &
    & average_factor_ppttj_ttxggg_1
  use ol_external_ppttj_ttxggg_1, only: &
    & H, hel_not_initialised, hel_init, POLSEL
  use ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND, only: &
    & colmat_not_initialised, colourmatrix_init
  use ol_forced_parameters_ppttj_ttxggg_1_/**/REALKIND, only: &
    & check_forced_parameters
  use ol_heltables_OLR_ppttj_ttxggg_1
  use ol_kinematics_/**/REALKIND, only: LC2Std_Rep_cmplx
  use ol_h_counterterms_/**/REALKIND
  use ol_loop_parameters_decl_/**/REALKIND ! counterterms
  use ol_loop_parameters_decl_/**/DREALKIND, only: &
    & IR_is_on, DOI, CT_is_on, R2_is_on, TP_is_on
  use ol_init, only: set_parameter, parameters_flush
#ifdef PRECISION_dp
  use ol_kinematics_/**/QREALKIND, only: conv_mom_scatt2in_qp=>conv_mom_scatt2in, &
                                         internal_momenta_qp=>internal_momenta
  use ol_momenta_decl_/**/DREALKIND, only: L
  use ol_momenta_decl_/**/QREALKIND, only: L_qp=>L
#endif
  implicit none

  real(DREALKIND), intent(in)  :: P_scatt(0:3,5)
  real(REALKIND),  intent(out) :: M02
  logical, intent(in) :: qp_kinematics
  real(REALKIND),  intent(out), optional :: M2ct
  real(REALKIND),  intent(out), optional :: M2colint(16)
  real(REALKIND) :: iM2ct
  real(REALKIND) :: iM2colint(16)

  integer(intkind1), save :: ntry = 0

  integer           :: shift, k, r, m, n, i
  real(REALKIND)    :: P(0:3,5)
#ifdef PRECISION_dp
  real(QREALKIND)    :: P_qp(0:3,5)
#endif
  integer           :: extmasses2(5)
  real(REALKIND)    :: M2add, M2add_ct, M2add_colint(16)
  complex(REALKIND) :: M1(6), M2(11)
  real(REALKIND)    :: P_scatt_intern(0:3,5)
  real(REALKIND), save :: scalebackfactor, old_scalefactor = 0
  integer(intkind1) :: nsync
  integer, allocatable :: extcombs_permuted(:)
  integer              :: extcombs(16), nextcombs
  integer              :: CT_on_bak, R2_on_bak, TP_on_bak, DOI_bak
  logical              :: do_ct, do_colint
#if 5 > 3
  integer :: ind_cc_comb(5)
#endif
  complex(REALKIND) :: omega(2) ! phases for helicity correlations

  if (present(M2ct)) then
    do_ct = .true.
  else
    do_ct = .false.
  end if

  if (present(M2colint)) then
    do_colint = .true.
  else
    do_colint = .false.
  end if

  if(ntry == 0) then
    ! recursive initialization call needed for the correct helicity bokkeeping
    ntry = 1
    CT_on_bak = CT_is_on
    R2_on_bak = R2_is_on
    TP_on_bak = TP_is_on
    DOI_bak = DOI
    call set_parameter("ct_on", 1)
    call set_parameter("r2_on", 1)
    call set_parameter("tp_on", 1)
    DOI = 1
    call amp2(P_scatt, M02, qp_kinematics, M2ct=iM2ct, M2colint=iM2colint)
    call set_parameter("ct_on", CT_on_bak)
    call set_parameter("r2_on", R2_on_bak)
    call set_parameter("tp_on", TP_on_bak)
    DOI = DOI_bak
  end if

  if (ntry < 2) then
    if (allocated(A)) deallocate(A)
    allocate(A(nhel,105))
  end if

  if (do_ct) call set_parameter("ew_renorm", 0)
  call parameters_flush()
  call ensure_mp_init()
  if (do_ct) call ensure_mp_loop_init()

  if (colmat_not_initialised) call colourmatrix_init()

  if (fac_status_loop1 /= parameters_status .or. fac_status_loop2 /= loop_parameters_status) then
    call check_forced_parameters()
  end if
  if (do_ct) call fac_init_loop()

  if (momenta_nan_check(P_scatt) /= 0) then
    M02 = 0
    return
  end if

  extmasses2 = [ nMT, nMT, 0, 0, 0 ]
  ! Convert 2 -> n-2 PS-point to n -> 0 (so that P(1) + ... + P(n) = 0) and compute
  ! internal-propagator momenta in light-cone representation
  call init_kinematics(P_scatt, extmasses2, P, &
     external_perm_inv_ppttj_ttxggg_1, 5, qp_kinematics)

  ! denominators
  call denominators()

   if (heltables_not_init) call init_heltables()

  ! external WFs
  ! Here the external wavefunctions are initialiased
  call pol_wf_Q(P(:,1), rMT, H1, ex1, POLSEL(1),1)
  call pol_wf_A(P(:,2), rMT, H2, ex2, POLSEL(2),2)
  call pol_wf_V(P(:,3), rZERO, H3, ex3, POLSEL(3),3)
  call pol_wf_V(P(:,4), rZERO, H4, ex4, POLSEL(4),4)
  call pol_wf_V(P(:,5), rZERO, H5, ex5, POLSEL(5),5)



  ! internal WFs
  ! e.g. call vert_VQ_A(ntry, ex3, ex1, wf1, n1, t1) ...
  call vert_QA_V(ntry, ex1(:), ex2(:), wf4(:,1), n3(:,1), t3x4(:,:,1))
  call vert_GGG_G(ntry, ex3(:), ex4(:), ex5(:), wf8(:,1), n4(:,1), t4x8(:,:,1))
  call vert_GGG_G(ntry, ex4(:), ex5(:), ex3(:), wf8(:,2), n4(:,2), t4x8(:,:,2))
  call vert_GGG_G(ntry, ex5(:), ex3(:), ex4(:), wf8(:,3), n4(:,3), t4x8(:,:,3))
  call vert_UV_W(ntry, ex3(:), 4, ex4(:), 8, wf4(:,2), n3(:,2), t3x4(:,:,2))
  call vert_UV_W(ntry, wf4(:,1), 3, ex5(:), 16, wf8(:,4), n3(:,3), t3x8(:,:,1))
  call vert_UV_W(ntry, ex3(:), 4, ex5(:), 16, wf4(:,3), n3(:,4), t3x4(:,:,3))
  call vert_UV_W(ntry, wf4(:,1), 3, ex4(:), 8, wf8(:,5), n3(:,5), t3x8(:,:,2))
  call vert_UV_W(ntry, ex4(:), 8, ex5(:), 16, wf4(:,4), n3(:,6), t3x4(:,:,4))
  call vert_UV_W(ntry, wf4(:,1), 3, ex3(:), 4, wf8(:,6), n3(:,7), t3x8(:,:,3))
  call vert_VQ_A(ntry, ex3(:), ex1(:), wf4(:,5), n3(:,8), t3x4(:,:,5))
  call vert_AV_Q(ntry, ex2(:), ex4(:), wf4(:,6), n3(:,9), t3x4(:,:,6))
  call prop_Q_A(ntry, wf4(:,5), 5, MT, 1_intkind1, wf4(:,7), n2(1))
  call prop_A_Q(ntry, wf4(:,6), 10, MT, 1_intkind1, wf4(:,8), n2(2))
  call vert_VQ_A(ntry, ex5(:), wf4(:,7), wf8(:,7), n3(:,10), t3x8(:,:,4))
  call vert_AV_Q(ntry, ex2(:), ex5(:), wf4(:,9), n3(:,11), t3x4(:,:,7))
  call prop_A_Q(ntry, wf4(:,9), 18, MT, 1_intkind1, wf4(:,10), n2(3))
  call vert_VQ_A(ntry, ex4(:), wf4(:,7), wf8(:,8), n3(:,12), t3x8(:,:,5))
  call vert_QA_V(ntry, wf4(:,7), ex2(:), wf8(:,9), n3(:,13), t3x8(:,:,6))
  call vert_VQ_A(ntry, ex4(:), ex1(:), wf4(:,11), n3(:,14), t3x4(:,:,8))
  call vert_AV_Q(ntry, ex2(:), ex3(:), wf4(:,12), n3(:,15), t3x4(:,:,9))
  call prop_Q_A(ntry, wf4(:,11), 9, MT, 1_intkind1, wf4(:,13), n2(4))
  call prop_A_Q(ntry, wf4(:,12), 6, MT, 1_intkind1, wf4(:,14), n2(5))
  call vert_VQ_A(ntry, ex5(:), wf4(:,13), wf8(:,10), n3(:,16), t3x8(:,:,7))
  call vert_VQ_A(ntry, ex5(:), ex1(:), wf4(:,15), n3(:,17), t3x4(:,:,10))
  call prop_Q_A(ntry, wf4(:,15), 17, MT, 1_intkind1, wf4(:,16), n2(6))
  call vert_VQ_A(ntry, ex4(:), wf4(:,16), wf8(:,11), n3(:,18), t3x8(:,:,8))
  call vert_QA_V(ntry, ex1(:), wf4(:,14), wf8(:,12), n3(:,19), t3x8(:,:,9))
  call vert_VQ_A(ntry, ex3(:), wf4(:,13), wf8(:,13), n3(:,20), t3x8(:,:,10))
  call vert_QA_V(ntry, wf4(:,13), ex2(:), wf8(:,14), n3(:,21), t3x8(:,:,11))
  call vert_VQ_A(ntry, ex3(:), wf4(:,16), wf8(:,15), n3(:,22), t3x8(:,:,12))
  call vert_QA_V(ntry, ex1(:), wf4(:,8), wf8(:,16), n3(:,23), t3x8(:,:,13))
  call vert_QA_V(ntry, wf4(:,16), ex2(:), wf8(:,17), n3(:,24), t3x8(:,:,14))
  call vert_QA_V(ntry, ex1(:), wf4(:,10), wf8(:,18), n3(:,25), t3x8(:,:,15))
  call counter_GGG_G(ntry, ex3(:), ex4(:), ex5(:), wf8(:,19), n4(:,4), t4x8(:,:,4))
  call counter_GGG_G(ntry, ex4(:), ex5(:), ex3(:), wf8(:,20), n4(:,5), t4x8(:,:,5))
  call counter_GGG_G(ntry, ex5(:), ex3(:), ex4(:), wf8(:,21), n4(:,6), t4x8(:,:,6))
  call counter_QA_V(ntry, ex1(:), ex2(:), wf4(:,17), n3(:,26), t3x4(:,:,11))
  call counter_UV_W(ntry, wf4(:,1), 3, ex5(:), 16, wf8(:,22), n3(:,27), t3x8(:,:,16))
  call counter_UV_W(ntry, wf4(:,1), 3, ex4(:), 8, wf8(:,23), n3(:,28), t3x8(:,:,17))
  call counter_UV_W(ntry, ex4(:), 8, ex5(:), 16, wf4(:,18), n3(:,29), t3x4(:,:,12))
  call counter_V_V(ctGG,21,ntry, wf4(:,1), 3, wf4(:,19), n2(7))
  call counter_UV_W(ntry, wf4(:,1), 3, ex3(:), 4, wf8(:,24), n3(:,30), t3x8(:,:,18))
  call counter_UV_W(ntry, ex3(:), 4, ex5(:), 16, wf4(:,20), n3(:,31), t3x4(:,:,13))
  call counter_UV_W(ntry, ex3(:), 4, ex4(:), 8, wf4(:,21), n3(:,32), t3x4(:,:,14))
  call counter_VQ_A(ntry, ex5(:), wf4(:,7), wf8(:,25), n3(:,33), t3x8(:,:,19))
  call counter_VQ_A(ntry, ex4(:), wf4(:,7), wf8(:,26), n3(:,34), t3x8(:,:,20))
  call counter_VQ_A(ntry, ex5(:), wf4(:,13), wf8(:,27), n3(:,35), t3x8(:,:,21))
  call counter_VQ_A(ntry, ex4(:), wf4(:,16), wf8(:,28), n3(:,36), t3x8(:,:,22))
  call counter_VQ_A(ntry, ex3(:), wf4(:,13), wf8(:,29), n3(:,37), t3x8(:,:,23))
  call counter_VQ_A(ntry, ex3(:), wf4(:,16), wf8(:,30), n3(:,38), t3x8(:,:,24))
  call counter_QA_V(ntry, wf4(:,7), ex2(:), wf8(:,31), n3(:,39), t3x8(:,:,25))
  call counter_AV_Q(ntry, ex2(:), ex5(:), wf4(:,22), n3(:,40), t3x4(:,:,15))
  call prop_A_Q(ntry, wf4(:,22), 18, MT, 1_intkind1, wf4(:,23), n2(8))
  call counter_AV_Q(ntry, ex2(:), ex4(:), wf4(:,24), n3(:,41), t3x4(:,:,16))
  call prop_A_Q(ntry, wf4(:,24), 10, MT, 1_intkind1, wf4(:,25), n2(9))
  call counter_QA_V(ntry, wf4(:,13), ex2(:), wf8(:,32), n3(:,42), t3x8(:,:,26))
  call counter_QA_V(ntry, wf4(:,16), ex2(:), wf8(:,33), n3(:,43), t3x8(:,:,27))
  call vert_QA_V(ntry, ex1(:), wf4(:,23), wf8(:,34), n3(:,44), t3x8(:,:,28))
  call vert_QA_V(ntry, ex1(:), wf4(:,25), wf8(:,35), n3(:,45), t3x8(:,:,29))
  call counter_AV_Q(ntry, ex2(:), ex3(:), wf4(:,26), n3(:,46), t3x4(:,:,17))
  call prop_A_Q(ntry, wf4(:,26), 6, MT, 1_intkind1, wf4(:,27), n2(10))
  call vert_QA_V(ntry, ex1(:), wf4(:,27), wf8(:,36), n3(:,47), t3x8(:,:,30))
  call counter_QA_V(ntry, ex1(:), wf4(:,14), wf8(:,37), n3(:,48), t3x8(:,:,31))
  call counter_VQ_A(ntry, ex5(:), ex1(:), wf4(:,28), n3(:,49), t3x4(:,:,18))
  call prop_Q_A(ntry, wf4(:,28), 17, MT, 1_intkind1, wf4(:,29), n2(11))
  call vert_VQ_A(ntry, ex4(:), wf4(:,29), wf8(:,38), n3(:,50), t3x8(:,:,32))
  call counter_VQ_A(ntry, ex4(:), ex1(:), wf4(:,30), n3(:,51), t3x4(:,:,19))
  call prop_Q_A(ntry, wf4(:,30), 9, MT, 1_intkind1, wf4(:,31), n2(12))
  call vert_VQ_A(ntry, ex5(:), wf4(:,31), wf8(:,39), n3(:,52), t3x8(:,:,33))
  call counter_QA_V(ntry, ex1(:), wf4(:,8), wf8(:,40), n3(:,53), t3x8(:,:,34))
  call vert_VQ_A(ntry, ex3(:), wf4(:,29), wf8(:,41), n3(:,54), t3x8(:,:,35))
  call counter_QA_V(ntry, ex1(:), wf4(:,10), wf8(:,42), n3(:,55), t3x8(:,:,36))
  call vert_QA_V(ntry, wf4(:,29), ex2(:), wf8(:,43), n3(:,56), t3x8(:,:,37))
  call vert_VQ_A(ntry, ex3(:), wf4(:,31), wf8(:,44), n3(:,57), t3x8(:,:,38))
  call vert_QA_V(ntry, wf4(:,31), ex2(:), wf8(:,45), n3(:,58), t3x8(:,:,39))
  call counter_VQ_A(ntry, ex3(:), ex1(:), wf4(:,32), n3(:,59), t3x4(:,:,20))
  call prop_Q_A(ntry, wf4(:,32), 5, MT, 1_intkind1, wf4(:,33), n2(13))
  call vert_VQ_A(ntry, ex5(:), wf4(:,33), wf8(:,46), n3(:,60), t3x8(:,:,40))
  call vert_VQ_A(ntry, ex4(:), wf4(:,33), wf8(:,47), n3(:,61), t3x8(:,:,41))
  call vert_QA_V(ntry, wf4(:,33), ex2(:), wf8(:,48), n3(:,62), t3x8(:,:,42))
  call vert_UV_W(ntry, wf4(:,17), 3, ex5(:), 16, wf8(:,49), n3(:,63), t3x8(:,:,43))
  call vert_UV_W(ntry, wf4(:,17), 3, ex4(:), 8, wf8(:,50), n3(:,64), t3x8(:,:,44))
  call vert_UV_W(ntry, wf4(:,17), 3, ex3(:), 4, wf8(:,51), n3(:,65), t3x8(:,:,45))
  call vert_UV_W(ntry, wf4(:,2), 12, ex5(:), 16, wf8(:,52), n3(:,66), t3x8(:,:,46))
  call counter_V_V(ctGG,21,ntry, wf4(:,2), 12, wf4(:,34), n2(14))
  call vert_UV_W(ntry, ex4(:), 8, wf4(:,3), 20, wf8(:,53), n3(:,67), t3x8(:,:,47))
  call counter_V_V(ctGG,21,ntry, wf4(:,3), 20, wf4(:,35), n2(15))
  call vert_UV_W(ntry, ex3(:), 4, wf4(:,4), 24, wf8(:,54), n3(:,68), t3x8(:,:,48))
  call counter_V_V(ctGG,21,ntry, wf4(:,4), 24, wf4(:,36), n2(16))
  call vert_AV_Q(ntry, wf4(:,8), ex5(:), wf8(:,55), n3(:,69), t3x8(:,:,49))
  call counter_Q_A(cttt,6,ntry, wf4(:,7), 5, wf4(:,37), n2(17))
  call prop_A_Q(ntry, wf8(:,55), 26, MT, 1_intkind1, wf8(:,56), n2(18))
  call counter_A_Q(cttt,6,ntry, wf4(:,8), 10, wf4(:,38), n2(19))
  call prop_Q_A(ntry, wf8(:,7), 21, MT, 1_intkind1, wf8(:,57), n2(20))
  call vert_AV_Q(ntry, wf4(:,10), ex4(:), wf8(:,58), n3(:,70), t3x8(:,:,50))
  call prop_A_Q(ntry, wf8(:,58), 26, MT, 1_intkind1, wf8(:,59), n2(21))
  call counter_A_Q(cttt,6,ntry, wf4(:,10), 18, wf4(:,39), n2(22))
  call prop_Q_A(ntry, wf8(:,8), 13, MT, 1_intkind1, wf8(:,60), n2(23))
  call vert_AV_Q(ntry, ex2(:), wf4(:,4), wf8(:,61), n3(:,71), t3x8(:,:,51))
  call prop_A_Q(ntry, wf8(:,61), 26, MT, 1_intkind1, wf8(:,62), n2(24))
  call vert_AV_Q(ntry, wf4(:,14), ex5(:), wf8(:,63), n3(:,72), t3x8(:,:,52))
  call counter_Q_A(cttt,6,ntry, wf4(:,13), 9, wf4(:,40), n2(25))
  call prop_A_Q(ntry, wf8(:,63), 22, MT, 1_intkind1, wf8(:,64), n2(26))
  call counter_A_Q(cttt,6,ntry, wf4(:,14), 6, wf4(:,41), n2(27))
  call prop_Q_A(ntry, wf8(:,10), 25, MT, 1_intkind1, wf8(:,65), n2(28))
  call vert_AV_Q(ntry, wf4(:,14), ex4(:), wf8(:,66), n3(:,73), t3x8(:,:,53))
  call counter_Q_A(cttt,6,ntry, wf4(:,16), 17, wf4(:,42), n2(29))
  call prop_A_Q(ntry, wf8(:,66), 14, MT, 1_intkind1, wf8(:,67), n2(30))
  call prop_Q_A(ntry, wf8(:,11), 25, MT, 1_intkind1, wf8(:,68), n2(31))
  call vert_VQ_A(ntry, wf4(:,4), ex1(:), wf8(:,69), n3(:,74), t3x8(:,:,54))
  call prop_Q_A(ntry, wf8(:,69), 25, MT, 1_intkind1, wf8(:,70), n2(32))
  call vert_AV_Q(ntry, wf4(:,10), ex3(:), wf8(:,71), n3(:,75), t3x8(:,:,55))
  call prop_A_Q(ntry, wf8(:,71), 22, MT, 1_intkind1, wf8(:,72), n2(33))
  call prop_Q_A(ntry, wf8(:,13), 13, MT, 1_intkind1, wf8(:,73), n2(34))
  call vert_AV_Q(ntry, ex2(:), wf4(:,3), wf8(:,74), n3(:,76), t3x8(:,:,56))
  call prop_A_Q(ntry, wf8(:,74), 22, MT, 1_intkind1, wf8(:,75), n2(35))
  call vert_AV_Q(ntry, wf4(:,8), ex3(:), wf8(:,76), n3(:,77), t3x8(:,:,57))
  call prop_A_Q(ntry, wf8(:,76), 14, MT, 1_intkind1, wf8(:,77), n2(36))
  call prop_Q_A(ntry, wf8(:,15), 21, MT, 1_intkind1, wf8(:,78), n2(37))
  call vert_VQ_A(ntry, wf4(:,3), ex1(:), wf8(:,79), n3(:,78), t3x8(:,:,58))
  call prop_Q_A(ntry, wf8(:,79), 21, MT, 1_intkind1, wf8(:,80), n2(38))
  call vert_AV_Q(ntry, ex2(:), wf4(:,2), wf8(:,81), n3(:,79), t3x8(:,:,59))
  call prop_A_Q(ntry, wf8(:,81), 14, MT, 1_intkind1, wf8(:,82), n2(39))
  call vert_VQ_A(ntry, wf4(:,2), ex1(:), wf8(:,83), n3(:,80), t3x8(:,:,60))
  call prop_Q_A(ntry, wf8(:,83), 13, MT, 1_intkind1, wf8(:,84), n2(40))


  if (ntry==1) then
    call physical_helicities()
  end if

  ! computation of the colour-stripped amplitudes
  do nsync = ntry+ntry-1, ntry+1  !  nsync = 1,2  for 1st point and nsync = 3 later
    call diagrams()
    if (nsync == 1) call helsync(nsync, A, nhel, Hel)
  end do

  if (ntry < 2) then
    if(hel_mem_opt) hel_states = nhel
    call allocate_diagrams()
  end if

  ! In the following loop the coefficients \Gamma_{i} of the expansion in
  ! the colour basis are computed for every helicity state and stored in M1helarray.
  ! Also the colour vector for the Born-loop interference is computed and saved in
  ! M0_col1_helarray
  do k = 1, nhel
    if (do_ct) call colourvectors(A, k, M1helarray(:,k),M1helarray_ct(:,k))
    call colborninterf(M1helarray(:,k), M0_col1_helarray(:,k), 0)
  end do
  M1helarray(:,nhel+1:)%j = 0
  M0_col1_helarray(:,nhel+1:)%hf = -1_intkind2
  M0_col1_helarray(:,nhel+1:)%j = 0

  M2add = 0
  M2add_ct = 0
  M2add_colint = 0

  M02 = 0
  if (do_ct) M2ct = 0
  if (do_colint) M2colint = 0

  do k = 1, nhel
    call colint(M1helarray(:,k)%j, M2add)
    if (do_ct) call colint_ct(M1helarray(:,k)%j, M1helarray_ct(:,k)%j, M2add_ct, 0)
    if (IR_is_on > 0) then
      if (do_colint) call colint_IR(M1helarray(:,k)%j, M2add_colint)
    end if
    !summation over helicity configurations
    M02 = M02 + M2add
    if (do_ct) M2ct = M2ct + M2add_ct
    if (do_colint) M2colint = M2colint + M2add_colint
  end do

#if 1 > 0 && 5 > 3
  if (loopcc) then
    !!Born-loop colour correlators interference
    ind_cc_comb = [2,4,7,5,8]
    M0M1_hel_cc(:,:,:)%j = 0
    M2ctcc = 0
    do n = 1, 5
      M2add_ct = 0
      m = ind_cc_comb(n)
        do k = 1, nhel
          call colint_ct(M1helarray(:,k)%j, M1helarray_ct(:,k)%j, M2add_ct, m)
          call colborninterf(M1helarray(:,k), M0M1_hel_cc(:,k,m), m)
          M2ctcc(m) = M2ctcc(m) + M2add_ct
        end do
    end do
    M0M1_hel_cc(:,nhel+1:,:)%hf = -1_intkind2
    M0M1_hel_cc(:,nhel+1:,:)%j = 0
  end if
#endif

  if (ntry < 1) then
    if (allocated(A)) deallocate(A)
  end if
  ntry=2


  contains

subroutine physical_helicities()
  implicit none

integer :: i1,i2,i3,i4,i5
integer :: n

n=0

do i5= 1, 2
do i4= 1, 2
do i3= 1, 2
do i2= 1, 2
do i1= 1, 2
n = n + 1
 if((ex1(i1)%hf==-1_intkind2) .OR. (ex2(i2)%hf==-1_intkind2) .OR. (ex3(i3)%hf==-1_intkind2) .OR. (ex4(i4)%hf==-1_intkind2)  &
    .OR. (ex5(i5)%hf==-1_intkind2)) then
  Hel(n) = -1_intkind2
 else
  Hel(n) = ex1(i1)%hf + ex2(i2)%hf + ex3(i3)%hf + ex4(i4)%hf + ex5(i5)%hf
 end if
end do
end do
end do
end do
end do

end subroutine physical_helicities

subroutine diagrams()
  implicit none
  integer :: h
  ! e.g. call cont_VV(nsync, wf3, wf6, A(:,1), n64, t64, nhel, den(5)) ...

    call Hcont_VV(nsync, wf4(:,1), wf8(:,1), A(:,1), n3(:,81), t3x32(:,:,1), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,2), A(:,2), n3(:,82), t3x32(:,:,2), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,3), A(:,3), n3(:,83), t3x32(:,:,3), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,4), A(:,4), n3(:,84), t3x32(:,:,4), nhel, den(3))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,5), A(:,5), n3(:,85), t3x32(:,:,5), nhel, den(5))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,6), A(:,6), n3(:,86), t3x32(:,:,6), nhel, den(7))
    call Hcont_QA(nsync, wf4(:,8), wf8(:,7), A(:,7), n3(:,87), t3x32(:,:,7), nhel, den(10))
    call Hcont_QA(nsync, wf4(:,10), wf8(:,8), A(:,8), n3(:,88), t3x32(:,:,8), nhel, den(12))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,9), A(:,9), n3(:,89), t3x32(:,:,9), nhel, den(13))
    call Hcont_QA(nsync, wf4(:,14), wf8(:,10), A(:,10), n3(:,90), t3x32(:,:,10), nhel, den(16))
    call Hcont_QA(nsync, wf4(:,14), wf8(:,11), A(:,11), n3(:,91), t3x32(:,:,11), nhel, den(18))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,12), A(:,12), n3(:,92), t3x32(:,:,12), nhel, den(19))
    call Hcont_QA(nsync, wf4(:,10), wf8(:,13), A(:,13), n3(:,93), t3x32(:,:,13), nhel, den(20))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,14), A(:,14), n3(:,94), t3x32(:,:,14), nhel, den(21))
    call Hcont_QA(nsync, wf4(:,8), wf8(:,15), A(:,15), n3(:,95), t3x32(:,:,15), nhel, den(22))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,16), A(:,16), n3(:,96), t3x32(:,:,16), nhel, den(23))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,17), A(:,17), n3(:,97), t3x32(:,:,17), nhel, den(24))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,18), A(:,18), n3(:,98), t3x32(:,:,18), nhel, den(25))

    call Hcont_VV(nsync, wf4(:,1), wf8(:,19), A(:,19), n3(:,99), t3x32(:,:,19), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,20), A(:,20), n3(:,100), t3x32(:,:,20), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,21), A(:,21), n3(:,101), t3x32(:,:,21), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,19), A(:,22), n3(:,102), t3x32(:,:,22), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,20), A(:,23), n3(:,103), t3x32(:,:,23), nhel, den(1))
    call Hcont_VV(nsync, wf4(:,1), wf8(:,21), A(:,24), n3(:,104), t3x32(:,:,24), nhel, den(1))
    call Hcont_VV(nsync, wf8(:,1), wf4(:,17), A(:,25), n3(:,105), t3x32(:,:,25), nhel, den(26))
    call Hcont_VV(nsync, wf8(:,2), wf4(:,17), A(:,26), n3(:,106), t3x32(:,:,26), nhel, den(26))
    call Hcont_VV(nsync, wf8(:,3), wf4(:,17), A(:,27), n3(:,107), t3x32(:,:,27), nhel, den(26))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,22), A(:,28), n3(:,108), t3x32(:,:,28), nhel, den(3))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,23), A(:,29), n3(:,109), t3x32(:,:,29), nhel, den(5))
    call Hcont_VV(nsync, wf8(:,6), wf4(:,18), A(:,30), n3(:,110), t3x32(:,:,30), nhel, den(7))
    call Hcont_VV(nsync, wf8(:,1), wf4(:,19), A(:,31), n3(:,111), t3x32(:,:,31), nhel, den(27))
    call Hcont_VV(nsync, wf8(:,2), wf4(:,19), A(:,32), n3(:,112), t3x32(:,:,32), nhel, den(27))
    call Hcont_VV(nsync, wf8(:,3), wf4(:,19), A(:,33), n3(:,113), t3x32(:,:,33), nhel, den(27))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,24), A(:,34), n3(:,114), t3x32(:,:,34), nhel, den(7))
    call Hcont_VV(nsync, wf8(:,5), wf4(:,20), A(:,35), n3(:,115), t3x32(:,:,35), nhel, den(5))
    call Hcont_VV(nsync, wf8(:,4), wf4(:,21), A(:,36), n3(:,116), t3x32(:,:,36), nhel, den(3))
    call Hcont_QA(nsync, wf4(:,8), wf8(:,25), A(:,37), n3(:,117), t3x32(:,:,37), nhel, den(10))
    call Hcont_QA(nsync, wf4(:,10), wf8(:,26), A(:,38), n3(:,118), t3x32(:,:,38), nhel, den(12))
    call Hcont_VV(nsync, wf8(:,9), wf4(:,18), A(:,39), n3(:,119), t3x32(:,:,39), nhel, den(13))
    call Hcont_QA(nsync, wf4(:,14), wf8(:,27), A(:,40), n3(:,120), t3x32(:,:,40), nhel, den(16))
    call Hcont_QA(nsync, wf4(:,14), wf8(:,28), A(:,41), n3(:,121), t3x32(:,:,41), nhel, den(18))
    call Hcont_VV(nsync, wf8(:,12), wf4(:,18), A(:,42), n3(:,122), t3x32(:,:,42), nhel, den(19))
    call Hcont_QA(nsync, wf4(:,10), wf8(:,29), A(:,43), n3(:,123), t3x32(:,:,43), nhel, den(20))
    call Hcont_VV(nsync, wf8(:,14), wf4(:,20), A(:,44), n3(:,124), t3x32(:,:,44), nhel, den(21))
    call Hcont_QA(nsync, wf4(:,8), wf8(:,30), A(:,45), n3(:,125), t3x32(:,:,45), nhel, den(22))
    call Hcont_VV(nsync, wf8(:,16), wf4(:,20), A(:,46), n3(:,126), t3x32(:,:,46), nhel, den(23))
    call Hcont_VV(nsync, wf8(:,17), wf4(:,21), A(:,47), n3(:,127), t3x32(:,:,47), nhel, den(24))
    call Hcont_VV(nsync, wf8(:,18), wf4(:,21), A(:,48), n3(:,128), t3x32(:,:,48), nhel, den(25))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,31), A(:,49), n3(:,129), t3x32(:,:,49), nhel, den(13))
    call Hcont_QA(nsync, wf8(:,8), wf4(:,23), A(:,50), n3(:,130), t3x32(:,:,50), nhel, den(12))
    call Hcont_QA(nsync, wf8(:,7), wf4(:,25), A(:,51), n3(:,131), t3x32(:,:,51), nhel, den(10))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,32), A(:,52), n3(:,132), t3x32(:,:,52), nhel, den(21))
    call Hcont_QA(nsync, wf8(:,13), wf4(:,23), A(:,53), n3(:,133), t3x32(:,:,53), nhel, den(20))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,33), A(:,54), n3(:,134), t3x32(:,:,54), nhel, den(24))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,34), A(:,55), n3(:,135), t3x32(:,:,55), nhel, den(25))
    call Hcont_QA(nsync, wf8(:,15), wf4(:,25), A(:,56), n3(:,136), t3x32(:,:,56), nhel, den(22))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,35), A(:,57), n3(:,137), t3x32(:,:,57), nhel, den(23))
    call Hcont_QA(nsync, wf8(:,10), wf4(:,27), A(:,58), n3(:,138), t3x32(:,:,58), nhel, den(16))
    call Hcont_QA(nsync, wf8(:,11), wf4(:,27), A(:,59), n3(:,139), t3x32(:,:,59), nhel, den(18))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,36), A(:,60), n3(:,140), t3x32(:,:,60), nhel, den(19))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,37), A(:,61), n3(:,141), t3x32(:,:,61), nhel, den(19))
    call Hcont_QA(nsync, wf4(:,14), wf8(:,38), A(:,62), n3(:,142), t3x32(:,:,62), nhel, den(18))
    call Hcont_QA(nsync, wf4(:,14), wf8(:,39), A(:,63), n3(:,143), t3x32(:,:,63), nhel, den(16))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,40), A(:,64), n3(:,144), t3x32(:,:,64), nhel, den(23))
    call Hcont_QA(nsync, wf4(:,8), wf8(:,41), A(:,65), n3(:,145), t3x32(:,:,65), nhel, den(22))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,42), A(:,66), n3(:,146), t3x32(:,:,66), nhel, den(25))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,43), A(:,67), n3(:,147), t3x32(:,:,67), nhel, den(24))
    call Hcont_QA(nsync, wf4(:,10), wf8(:,44), A(:,68), n3(:,148), t3x32(:,:,68), nhel, den(20))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,45), A(:,69), n3(:,149), t3x32(:,:,69), nhel, den(21))
    call Hcont_QA(nsync, wf4(:,8), wf8(:,46), A(:,70), n3(:,150), t3x32(:,:,70), nhel, den(10))
    call Hcont_QA(nsync, wf4(:,10), wf8(:,47), A(:,71), n3(:,151), t3x32(:,:,71), nhel, den(12))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,48), A(:,72), n3(:,152), t3x32(:,:,72), nhel, den(13))
    call Hcont_VV(nsync, wf4(:,2), wf8(:,49), A(:,73), n3(:,153), t3x32(:,:,73), nhel, den(3))
    call Hcont_VV(nsync, wf4(:,3), wf8(:,50), A(:,74), n3(:,154), t3x32(:,:,74), nhel, den(5))
    call Hcont_VV(nsync, wf4(:,4), wf8(:,51), A(:,75), n3(:,155), t3x32(:,:,75), nhel, den(7))
    call Hcont_VV(nsync, wf4(:,19), wf8(:,52), A(:,76), n3(:,156), t3x32(:,:,76), nhel, den(29))
    call Hcont_VV(nsync, wf8(:,4), wf4(:,34), A(:,77), n3(:,157), t3x32(:,:,77), nhel, den(32))
    call Hcont_VV(nsync, wf4(:,19), wf8(:,53), A(:,78), n3(:,158), t3x32(:,:,78), nhel, den(34))
    call Hcont_VV(nsync, wf8(:,5), wf4(:,35), A(:,79), n3(:,159), t3x32(:,:,79), nhel, den(37))
    call Hcont_VV(nsync, wf4(:,19), wf8(:,54), A(:,80), n3(:,160), t3x32(:,:,80), nhel, den(39))
    call Hcont_VV(nsync, wf8(:,6), wf4(:,36), A(:,81), n3(:,161), t3x32(:,:,81), nhel, den(42))
    call Hcont_QA(nsync, wf4(:,37), wf8(:,56), A(:,82), n3(:,162), t3x32(:,:,82), nhel, den(45))
    call Hcont_QA(nsync, wf4(:,38), wf8(:,57), A(:,83), n3(:,163), t3x32(:,:,83), nhel, den(48))
    call Hcont_QA(nsync, wf4(:,37), wf8(:,59), A(:,84), n3(:,164), t3x32(:,:,84), nhel, den(50))
    call Hcont_QA(nsync, wf4(:,39), wf8(:,60), A(:,85), n3(:,165), t3x32(:,:,85), nhel, den(53))
    call Hcont_QA(nsync, wf4(:,37), wf8(:,62), A(:,86), n3(:,166), t3x32(:,:,86), nhel, den(55))
    call Hcont_VV(nsync, wf8(:,9), wf4(:,36), A(:,87), n3(:,167), t3x32(:,:,87), nhel, den(57))
    call Hcont_QA(nsync, wf4(:,40), wf8(:,64), A(:,88), n3(:,168), t3x32(:,:,88), nhel, den(60))
    call Hcont_QA(nsync, wf4(:,41), wf8(:,65), A(:,89), n3(:,169), t3x32(:,:,89), nhel, den(63))
    call Hcont_QA(nsync, wf4(:,42), wf8(:,67), A(:,90), n3(:,170), t3x32(:,:,90), nhel, den(66))
    call Hcont_QA(nsync, wf4(:,41), wf8(:,68), A(:,91), n3(:,171), t3x32(:,:,91), nhel, den(68))
    call Hcont_QA(nsync, wf4(:,41), wf8(:,70), A(:,92), n3(:,172), t3x32(:,:,92), nhel, den(70))
    call Hcont_VV(nsync, wf8(:,12), wf4(:,36), A(:,93), n3(:,173), t3x32(:,:,93), nhel, den(72))
    call Hcont_QA(nsync, wf4(:,40), wf8(:,72), A(:,94), n3(:,174), t3x32(:,:,94), nhel, den(74))
    call Hcont_QA(nsync, wf4(:,39), wf8(:,73), A(:,95), n3(:,175), t3x32(:,:,95), nhel, den(76))
    call Hcont_QA(nsync, wf4(:,40), wf8(:,75), A(:,96), n3(:,176), t3x32(:,:,96), nhel, den(78))
    call Hcont_VV(nsync, wf8(:,14), wf4(:,35), A(:,97), n3(:,177), t3x32(:,:,97), nhel, den(80))
    call Hcont_QA(nsync, wf4(:,42), wf8(:,77), A(:,98), n3(:,178), t3x32(:,:,98), nhel, den(82))
    call Hcont_QA(nsync, wf4(:,38), wf8(:,78), A(:,99), n3(:,179), t3x32(:,:,99), nhel, den(84))
    call Hcont_QA(nsync, wf4(:,38), wf8(:,80), A(:,100), n3(:,180), t3x32(:,:,100), nhel, den(86))
    call Hcont_VV(nsync, wf8(:,16), wf4(:,35), A(:,101), n3(:,181), t3x32(:,:,101), nhel, den(88))
    call Hcont_QA(nsync, wf4(:,42), wf8(:,82), A(:,102), n3(:,182), t3x32(:,:,102), nhel, den(90))
    call Hcont_VV(nsync, wf8(:,17), wf4(:,34), A(:,103), n3(:,183), t3x32(:,:,103), nhel, den(92))
    call Hcont_QA(nsync, wf4(:,39), wf8(:,84), A(:,104), n3(:,184), t3x32(:,:,104), nhel, den(94))
    call Hcont_VV(nsync, wf8(:,18), wf4(:,34), A(:,105), n3(:,185), t3x32(:,:,105), nhel, den(96))

end subroutine diagrams


elemental function diagmap(j, n)
  implicit none
  integer, intent(in) :: j, n
  complex(REALKIND) :: diagmap
  diagmap = A(j,n)%j
end function diagmap

function diagsum(j, pos, neg)
  implicit none
  integer, intent(in) :: j, pos(:), neg(:)
  complex(REALKIND) :: diagsum
  diagsum = sum(diagmap(j, pos)) - sum(diagmap(j, neg))
end function diagsum

subroutine colourvectors(A, j, M1, M2)
  implicit none
  type(Hpolcont) :: A(:,:)
  integer, intent(in) :: j
  type(Hpolcont), intent(out) :: M1(6), M2(11) ! M1helarray(11,nhel)
  integer :: empty(0), i

  M1(1)%j = (A(j,1)%j-A(j,2)%j-A(j,4)%j+A(j,6)%j+A(j,11)%j)*f(1)+CI*(A(j,12)%j+A(j,17)%j)*f(2)
  M1(2)%j = (A(j,2)%j-A(j,3)%j-A(j,5)%j-A(j,6)%j+A(j,10)%j)*f(1)+CI*(-A(j,12)%j+A(j,14)%j)*f(2)
  M1(3)%j = (-A(j,1)%j+A(j,3)%j+A(j,4)%j+A(j,5)%j+A(j,15)%j)*f(1)+CI*(A(j,16)%j-A(j,17)%j)*f(2)
  M1(4)%j = (A(j,2)%j-A(j,3)%j-A(j,5)%j-A(j,6)%j+A(j,7)%j)*f(1)+CI*(A(j,9)%j-A(j,16)%j)*f(2)
  M1(5)%j = (-A(j,1)%j+A(j,3)%j+A(j,4)%j+A(j,5)%j+A(j,13)%j)*f(1)+CI*(-A(j,14)%j+A(j,18)%j)*f(2)
  M1(6)%j = (A(j,1)%j-A(j,2)%j-A(j,4)%j+A(j,6)%j+A(j,8)%j)*f(1)+CI*(-A(j,9)%j-A(j,18)%j)*f(2)

  M2( 1)%j = (-A(j,31)%j+A(j,32)%j-A(j,76)%j+A(j,77)%j-A(j,80)%j-A(j,81)%j-A(j,90)%j-A(j,91)%j)*f(3)+CI*(-A(j,92)%j-A(j,93)%j &
        -A(j,102)%j-A(j,103)%j)*f(4)+(A(j,25)%j-A(j,26)%j+A(j,41)%j+A(j,59)%j+A(j,62)%j-A(j,73)%j+A(j,75)%j)*f(5)+CI*(A(j,54)%j &
        +A(j,60)%j+A(j,61)%j+A(j,67)%j)*f(6)+(-A(j,28)%j+A(j,30)%j+A(j,34)%j-A(j,36)%j)*f(7)+CI*(A(j,42)%j+A(j,47)%j)*f(8)+( &
        -A(j,19)%j-A(j,20)%j)*f(9)+2*A(j,21)%j*f(9)+(19*(A(j,22)%j+A(j,23)%j)*f(10))/2._/**/REALKIND-18*A(j,24)%j*f(10)
  M2( 2)%j = (-A(j,32)%j+A(j,33)%j+A(j,78)%j+A(j,79)%j+A(j,80)%j+A(j,81)%j-A(j,88)%j-A(j,89)%j)*f(3)+CI*(A(j,92)%j+A(j,93)%j &
        -A(j,96)%j-A(j,97)%j)*f(4)+(A(j,26)%j-A(j,27)%j+A(j,40)%j+A(j,58)%j+A(j,63)%j-A(j,74)%j-A(j,75)%j)*f(5)+CI*(A(j,52)%j &
        -A(j,60)%j-A(j,61)%j+A(j,69)%j)*f(6)+(-A(j,29)%j-A(j,30)%j-A(j,34)%j-A(j,35)%j)*f(7)+CI*(-A(j,42)%j+A(j,44)%j)*f(8) &
        +2*A(j,19)%j*f(9)+(-A(j,20)%j-A(j,21)%j)*f(9)-18*A(j,22)%j*f(10)+(19*(A(j,23)%j+A(j,24)%j)*f(10))/2._/**/REALKIND
  M2( 3)%j = (A(j,31)%j-A(j,33)%j+A(j,76)%j-A(j,77)%j-A(j,78)%j-A(j,79)%j-A(j,98)%j-A(j,99)%j)*f(3)+CI*(-A(j,100)%j-A(j,101)%j &
        +A(j,102)%j+A(j,103)%j)*f(4)+(-A(j,25)%j+A(j,27)%j+A(j,45)%j+A(j,56)%j+A(j,65)%j+A(j,73)%j+A(j,74)%j)*f(5)+CI*(-A(j,54)%j &
        +A(j,57)%j+A(j,64)%j-A(j,67)%j)*f(6)+(A(j,28)%j+A(j,29)%j+A(j,35)%j+A(j,36)%j)*f(7)+CI*(A(j,46)%j-A(j,47)%j)*f(8) &
        +2*A(j,20)%j*f(9)+(-A(j,19)%j-A(j,21)%j)*f(9)-18*A(j,23)%j*f(10)+(19*(A(j,22)%j+A(j,24)%j)*f(10))/2._/**/REALKIND
  M2( 4)%j = (-A(j,32)%j+A(j,33)%j+A(j,78)%j+A(j,79)%j+A(j,80)%j+A(j,81)%j-A(j,82)%j-A(j,83)%j)*f(3)+CI*(-A(j,86)%j-A(j,87)%j &
        +A(j,100)%j+A(j,101)%j)*f(4)+(A(j,26)%j-A(j,27)%j+A(j,37)%j+A(j,51)%j+A(j,70)%j-A(j,74)%j-A(j,75)%j)*f(5)+CI*(A(j,49)%j &
        -A(j,57)%j-A(j,64)%j+A(j,72)%j)*f(6)+(-A(j,29)%j-A(j,30)%j-A(j,34)%j-A(j,35)%j)*f(7)+CI*(A(j,39)%j-A(j,46)%j)*f(8) &
        +2*A(j,19)%j*f(9)+(-A(j,20)%j-A(j,21)%j)*f(9)-18*A(j,22)%j*f(10)+(19*(A(j,23)%j+A(j,24)%j)*f(10))/2._/**/REALKIND
  M2( 5)%j = (A(j,31)%j-A(j,33)%j+A(j,76)%j-A(j,77)%j-A(j,78)%j-A(j,79)%j-A(j,94)%j-A(j,95)%j)*f(3)+CI*(A(j,96)%j+A(j,97)%j &
        -A(j,104)%j-A(j,105)%j)*f(4)+(-A(j,25)%j+A(j,27)%j+A(j,43)%j+A(j,53)%j+A(j,68)%j+A(j,73)%j+A(j,74)%j)*f(5)+CI*(-A(j,52)%j &
        +A(j,55)%j+A(j,66)%j-A(j,69)%j)*f(6)+(A(j,28)%j+A(j,29)%j+A(j,35)%j+A(j,36)%j)*f(7)+CI*(-A(j,44)%j+A(j,48)%j)*f(8) &
        +2*A(j,20)%j*f(9)+(-A(j,19)%j-A(j,21)%j)*f(9)-18*A(j,23)%j*f(10)+(19*(A(j,22)%j+A(j,24)%j)*f(10))/2._/**/REALKIND
  M2( 6)%j = (-A(j,31)%j+A(j,32)%j-A(j,76)%j+A(j,77)%j-A(j,80)%j-A(j,81)%j-A(j,84)%j-A(j,85)%j)*f(3)+CI*(A(j,86)%j+A(j,87)%j &
        +A(j,104)%j+A(j,105)%j)*f(4)+(A(j,25)%j-A(j,26)%j+A(j,38)%j+A(j,50)%j+A(j,71)%j-A(j,73)%j+A(j,75)%j)*f(5)+CI*(-A(j,49)%j &
        -A(j,55)%j-A(j,66)%j-A(j,72)%j)*f(6)+(-A(j,28)%j+A(j,30)%j+A(j,34)%j-A(j,36)%j)*f(7)+CI*(-A(j,39)%j-A(j,48)%j)*f(8)+( &
        -A(j,19)%j-A(j,20)%j)*f(9)+2*A(j,21)%j*f(9)+(19*(A(j,22)%j+A(j,23)%j)*f(10))/2._/**/REALKIND-18*A(j,24)%j*f(10)
  M2( 7)%j = (2*(-A(j,22)%j-A(j,23)%j-A(j,24)%j)*f(10))/3._/**/REALKIND
  M2( 8)%j = (2*(-A(j,22)%j-A(j,23)%j-A(j,24)%j)*f(10))/3._/**/REALKIND
  M2( 9)%j = (2*(-A(j,22)%j-A(j,23)%j-A(j,24)%j)*f(10))/3._/**/REALKIND
  M2(10)%j = ((-A(j,22)%j-A(j,23)%j-A(j,24)%j)*f(10))/3._/**/REALKIND
  M2(11)%j = ((-A(j,22)%j-A(j,23)%j-A(j,24)%j)*f(10))/3._/**/REALKIND


  M1(:)%hf = Hel(j)
  M2(:)%hf = Hel(j)

  !M(i) corresponds to \Gamma_{i} in Fabios thesis

end subroutine colourvectors


! **********************************************************************
subroutine colint(M, M2colint)
! M(i)   = <M|Ci> colour component of matrix element
! COLINT = <M|M>
!        = Sum_{i,j} <M|Ci> * <Ci|Cj> * <Cj|M>
!        = colour-summed squared matrix element
! K1(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M(6)
  real(REALKIND),    intent(out) :: M2colint
  integer :: i, j

  M2colint = 0

    do i = 1, 6
      do j = 1, 6
        M2colint = M2colint + real(conjg(M(i))*K1(i,j)*M(j))
      end do
    end do

end subroutine colint

! **********************************************************************
subroutine colint_ct(M, Mct, M2colint_ct, l)
! M(i)   = <M|Ci> colour component of matrix element
! COLINT = <M|M>
!        = Sum_{i,j} <M|Ci> * <Ci|Cj> * <Cj|M>
!        = colour-summed squared matrix element
! K2(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND, only: K2
  implicit none
  complex(REALKIND), intent(in)  :: M(6), Mct(11)
  real(REALKIND),    intent(out) :: M2colint_ct
  integer, intent(in) :: l
  integer ::  i, j

  M2colint_ct = 0

  do i = 1, 6
    do j = 1, 11
      M2colint_ct = M2colint_ct + real(conjg(M(i))*K2(i+6*l,j)*Mct(j))
    end do
  end do

end subroutine colint_ct

! **********************************************************************
subroutine colint_IR(M, M2IRadd)
! M(i)   = <M|Ci> colour component of matrix element
! K1(i,j) = .....
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND, only: K1
  implicit none

  complex(REALKIND), intent(in)  :: M(6)
  real(REALKIND),    intent(out) :: M2IRadd(16)
  integer ::  i, j, k, colmatpos

  M2IRadd = 0

  do k = 1, 17-1
    colmatpos = 6*k
    do i = 1, 6
      do j = 1, 6
        M2IRadd(k) = M2IRadd(k) + real(conjg(M(i))*K1(i+colmatpos,j)*M(j))
      end do
    end do
  end do

end subroutine colint_IR

! **********************************************************************
subroutine colintmunu(M1, M2, M2colint)
! M1(i)    = <M1|Ci> colour component of matrix element
! M2(i)    = <M2|Ci> colour component of matrix element
! M2colint = <M1|M2>
!          = Sum_{i,j} <M1|Ci> * <Ci|Cj> * <Cj|M2>
!          = colour-summed squared matrix element
! K2(i,j) = <Ci|Cj>
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND, only: K2
  implicit none

  complex(REALKIND), intent(in)  :: M1(6)
  complex(REALKIND), intent(in)  :: M2(6)
  complex(REALKIND),    intent(out) :: M2colint
  integer :: i, j

  M2colint = 0

  do i = 1, 6
    do j = 1, 6
      M2colint = M2colint + M1(i)*K2(i,j)*conjg(M2(j))
    end do
  end do

end subroutine colintmunu





! **********************************************************************
subroutine colborninterf(M, M0_col, l)
! M(i)         = <M|Ci> colour component of matrix element
! M0_col(i)    = <M2|Ci> colour component of matrix element,
!                see \tilde{M}_{j} in Fabios thesis
! M2colint = Sum_{i} <M1|Ci> * <Ci|Cj>
!          = colour-summed squared matrix element
! KL(i,j) = <Ci|Cj> with elements Cj of 1-loop colour basis
! **********************************************************************
  use ol_colourmatrix_ppttj_ttxggg_1_/**/REALKIND, only: KL
  implicit none

  type(Hpolcont), intent(in)  :: M(6)
  type(Hpolcont), intent(out)  :: M0_col(11)
  integer, intent(in) :: l
  integer :: i, j

  do j = 1, 11 !size(KL(1,:))
    M0_col(j)%j = 0
    M0_col(j)%hf = M(1)%hf
    do i = 1, 6 !size(KL(:,1))
      M0_col(j)%j = M0_col(j)%j  + conjg(M(i)%j)*KL(i+6*l,j)
    end do
  end do

end subroutine colborninterf

end subroutine amp2

end module ol_loop_ppttj_ttxggg_1_/**/REALKIND
