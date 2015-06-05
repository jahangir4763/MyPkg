#C function for calculating variance;
cppFunction('double varC(NumericVector x) {
  int n = x.size();
  double total = 0;
  double totalmd = 0; 
  double avgx;
  double varx;

  for(int i = 0; i < n; ++i)
   {
     total += x[i];    
   }

  avgx = total/n;

  for(int j= 0; j < n; ++j)
   {
     /*totalmd += ((x[j]-avgx)*(x[j]-avgx));*/
     totalmd += pow((x[j]-avgx),2);
     varx = (totalmd/n);    
   }

   return varx;
}')
