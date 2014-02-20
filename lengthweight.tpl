// Simple 2-parameter model for estimating alpha and beta in a
// length-weight relationship
DATA_SECTION
  init_int nobs
  init_vector Lmm(1,nobs)
  init_vector W(1,nobs)
  init_int eof
  !! eof==999 ? cout<<"(: --End of data file-- :)\n": cout<<"Error reading data file\n";

  vector L(1,nobs)
  !! L = Lmm / 10.0;

PARAMETER_SECTION
  init_bounded_number a(0.00001,0.1);
  init_bounded_number b(1.0,4.0);
 
  vector Wpred(1,nobs);
  objective_function_value f;
  sdreport_number dummy;

PROCEDURE_SECTION
  Wpred = a*pow(L,b);
  f = (norm2(Wpred-W)); 

REPORT_SECTION
  report<<"a = "<<a<<endl;
  report<<"b = "<<b<<endl;
