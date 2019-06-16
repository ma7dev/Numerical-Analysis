x = -.9;
 k = 2;
 %account for first iteration of sum
 sum = -x;
 tolerance = .00000000005;
 while (abs(vpa(sum, 10) - vpa(log(1-x), 10)) > tolerance)
 sum = sum - (x.^k)/k;
 k = k+1;
 end
 disp(vpa(sum, 10))
 disp(vpa(log(1-x), 10))
 display(k)