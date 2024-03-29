function [integral,difference,ratio]=gausstable(a,b,n0,index_f)
%
%  function [integral,difference,ratio]=gausstable(a,b,n0,index_f)
%
%  This calls GAUSSINT implementation of nth order Gaussian quadrature
%  rule to integrate the function f over the interval [a,b].  The values
%  of n used are 
%        n = n0,2*n0,4*n0,...,256*n0
%  The corresponding numerical integrals are returned in the 
%  vector integral.  The differences of successive numerical 
%  integrals are returned in the vector difference:
%        difference(i) = integral(i)-integral(i-1),  i=2,...,9
%  The entries in ratio give the rate of decrease in these
%  differences.
%
%  The parameter index_f allows the user to do calculations with multiple
%  integrands.  The functions are defined in gaussint.m

%  Initialize output vectors.
integral = zeros(9,1);
difference = zeros(9,1);
ratio = zeros(9,1);

for i=1:9
    n = n0*2^(i-1);
    integral(i) = gaussint(a,b,n,index_f);
end

%  Calculate the differences of the successive 
%  gaussian quadrature rule integrals and the ratio
%  of decrease in these differences.
difference(2:9)=integral(2:9)-integral(1:8);
ratio(3:9)=difference(2:8)./difference(3:9);

