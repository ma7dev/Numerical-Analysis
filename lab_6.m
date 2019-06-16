%% Mazen Alotaibi
%% Problem 1
clc
fprintf('---Trapezoidal Rule--- \n');
% a.
fprintf('\n1(i)\n');
fprintf('Function: exp(-x.^2) \n');
a=0;
b=2;
n0=2;
index_f=1; % exp(-x.^2)
[integral,difference,ratio]=trapezoidal(a,b,n0,index_f);
fprintf('n \tApproximation \tDifference \tRatio\n');
for i=1:length(integral),
   fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
end
% This function (exp(-x.^2)) isn't a periodic function, the difference
% converges linearly, and the ratio converges to 4. (Unexpected behavior:
% the ratio started as 31.1208, but then it decreased in a linear
% convergence rate)
fprintf('\n1(ii)\n');
fprintf('Function: 1 ./(1+x.^2) \n');
a=0;
b=4;
n0=2;
index_f=2; % 1 ./(1+x.^2)
[integral,difference,ratio]=trapezoidal(a,b,n0,index_f);
fprintf('n \tApproximation \tDifference \tRatio\n');
for i=1:length(integral),
   fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
end
% This function (1 ./(1+x.^2)) isn't a periodic function, the difference
% converges linearly, and the ratio converges to 4. Also, there was a
% weird behavior as the ratio bounced from 0 to 31.1208, then to -9.89664,
% then it started converging to 4. (As expected)
fprintf('\n1(iii)\n');
fprintf('Function: 1 ./(2+sin(x)) \n');
a=0;
b=(2*pi);
n0=2;
index_f=3; % 1 ./(2+sin(x))
[integral,difference,ratio]=trapezoidal(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
% This function (1 ./(2+sin(x))) is a periodic function, which means the
% function converges faster. (As expected)
fprintf('\n1(iv)\n');
fprintf('Function: sqrt(x) \n');
a=0;
b=1;
n0=2;
index_f=4; % sqrt(x)
[integral,difference,ratio]=trapezoidal(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
% This function (sqrt(x)) isn't a periodic function, the difference
% converges linearly, and the ratio converges to 2.8. (As expected)


% b. Trapezoidal Rule (degree of accuracy of one):
% When the function is a periodic function, then the Trapezoidal Rule will
% converge rapidly as when the number of section of the graph that are 
% concaved up are similar to the number of section of the graph that are
% concaved down, which means the difference close to zero.
%% Problem 2
clc
fprintf('---Simpsons Rule---\n');
% a.
fprintf('\n2(i)\n');
fprintf('Function: exp(-x.^2) \n');
a=0;
b=2;
n0=2;
index_f=1; % exp(-x.^2)
[integral,difference,ratio]=simpson(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
 
% When comparing the difference of the Trapezoidal Rule and the Simpson
% Rule at n = 512, it seems that Trapezoidal Rule's difference was
% 2.79471e-07 compared to Simpsons Rule's difference was 1.42157e-11, which
% means that Simpson Rule is more accurate than Trapezoidal Rule. In
% addition, when comparing the ratio of both, it seems that Trapezoidal
% Rule's ratio converged to 4 compared to Simpson Rule's ratio converged
% to 16.
fprintf('\n2(ii)\n');
fprintf('Function: 1 ./(1+x.^2) \n');
a=0;
b=4;
n0=2;
index_f=2; % 1 ./(1+x.^2)
[integral,difference,ratio]=simpson(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end

% When comparing the difference of the Trapezoidal Rule and the Simpson
% Rule at n = 512, it seems that Trapezoidal Rule's difference was
% 4.22387e-07 compared to Simpson Rule's difference was 5.35216e-12, which
% means that Simpson Rule is more accurate than Trapezoidal Rule. In
% addition, when comparing the ratio of both, it seems that Trapezoidal
% Rule's ratio converged to 4 compared to Simpson Rule's ratio converged
% to 16.
fprintf('\n2(iii)\n');
fprintf('Function: 1 ./(2+sin(x)) \n');
a=0;
b=(2*pi);
n0=2;
index_f=3; % 1 ./(2+sin(x))
[integral,difference,ratio]=simpson(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
 
% When comparing the difference of the Trapezoidal Rule and the Simpson
% Rule at n = 512, it seems that Trapezoidal Rule's difference was
% 2.22045e-15 compared to Simpsons Rule's difference was -2.66454e-15, which
% means that both of their behaviors are similar. In addition, when
% comparing the ratio of both, it seems they both also behaved similarly as
% both of their ratios coverge to 0.
fprintf('\n2(iv)\n');
fprintf('Function: sqrt(x) \n');
a=0;
b=1;
n0=2;
index_f=4; % sqrt(x)
[integral,difference,ratio]=simpson(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end

% When comparing the difference of the Trapezoidal Rule and the Simpson
% Rule at n = 512, it seems that Trapezoidal Rule's difference was
% 3.23326e-05 compared to Simpsons Rule's difference was 1.28129e-05, which
% means that both of their behaviors are similar In addition, when
% comparing the ratio of both, it seems that both of their ratio converged
% to 2.8.

% b. Simpsons Rule (degree of accuracy of three)
%% Problem 3
clc

% a. the statement, the number of subdivisions reuired to achieve
% an accuracy of 10e-10 is at least n =160, is right as it has been proven
% in my results as when n = 256, the difference is equal to 2.27440e-10,
% which is less than 10e-10. Hence, my results agree with this prediction.

% b. the statement, the number of subdivisions reuired to achieve
% an accuracy of 10e-12 is at least n =396, is right as it has been proven
% in my results as when n = 512, the difference is equal to 5.35216e-12,
% which is less than 10e-12. Hence, my results agree with this prediction.
%% Problem 4
clc
fprintf('---Gaussian Quadrature Rule--- \n');
% a.
fprintf('\n3(i)\n');
fprintf('Function: exp(-x.^2) \n');
a=0;
b=2;
n0=2;
index_f=1; % exp(-x.^2)
[integral,difference,ratio]=gausstable(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
 
% When comparing the difference of the Trapezoidal Rule, the Simpson
% Rule, and  Gaussian Quadrature Rule at n = 512, it seems that
% Trapezoidal Rule's difference was 2.79471e-07, Simpson Rule's
% difference was 1.42157e-11, and Gaussian Quadrature Rule's difference
% was -2.22045e-16, which means that Gaussian Quadrature Rule was more
% accurate than Simpson Rule and Trapezoidal Rule. In addition, when
% comparing the ratio of all of them, it seems that Trapezoidal
% Rule's ratio converged to 4, Simpson Rule's ratio converged
% to 16, and Gaussian Quadrature Rule's ratio converged to 0.
fprintf('\n3(ii)\n');
fprintf('Function: 1 ./(1+x.^2) \n');
a=0;
b=4;
n0=2;
index_f=2; % 1 ./(1+x.^2)
[integral,difference,ratio]=gausstable(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end

 
% When comparing the difference of the Trapezoidal Rule, the Simpson
% Rule, and  Gaussian Quadrature Rule at n = 512, it seems that
% Trapezoidal Rule's difference was 4.22387e-07, Simpson Rule's
% difference was 5.35216e-12, and Gaussian Quadrature Rule's difference
% was -4.44089e-16, which means that Gaussian Quadrature Rule was more
% accurate than Simpson Rule and Trapezoidal Rule. In addition, when
% comparing the ratio of all of them, it seems that Trapezoidal
% Rule's ratio converged to 4, Simpson Rule's ratio converged
% to 16, and Gaussian Quadrature Rule's ratio converged to 0.
fprintf('\n3(iii)\n');
fprintf('Function: 1 ./(2+sin(x)) \n');
a=0;
b=(2*pi);
n0=2;
index_f=3; % 1 ./(2+sin(x))
[integral,difference,ratio]=gausstable(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
 
% When comparing the difference of the Trapezoidal Rule, the Simpson
% Rule, and  Gaussian Quadrature Rule at n = 512, it seems that
% Trapezoidal Rule's difference was 2.22045e-15, Simpson Rule's
% difference was -2.66454e-15, and Gaussian Quadrature Rule's difference
% was -1.33227e-15, which means that all of their behaviors are similar. 
% In addition, when comparing the ratio of all of them, it seems that
% all for their ratios also behaved similarly as their ratio coverge to 0.
fprintf('\n3(iv)\n');
fprintf('Function: sqrt(x) \n');
a=0;
b=1;
n0=2;
index_f=4; % sqrt(x)
[integral,difference,ratio]=gausstable(a,b,n0,index_f);
 fprintf('n \tApproximation \tDifference \tRatio\n');
 for i=1:length(integral),
    fprintf('%d\t%0.12f\t%0.5e\t%g\n',n0*2^(i-1),integral(i),difference(i),ratio(i))
 end
 
% When comparing the difference of the Trapezoidal Rule, the Simpson
% Rule, and  Gaussian Quadrature Rule at n = 512, it seems that
% Trapezoidal Rule's difference was 3.23326e-05, Simpson Rule's
% difference was 1.28129e-05, and Gaussian Quadrature Rule's difference
% was -5.33603e-09, which means that Gaussian Quadrature Rule was more
% accurate than Simpson Rule and Trapezoidal Rule. In addition, when
% comparing the ratio of all of them, it seems that Trapezoidal
% Rule's ratio converged to 2.8, Simpson Rule's ratio converged
% to 2.8, and Gaussian Quadrature Rule's ratio converged to 7.9.

% b. Gaussian Quadrature Rule (degree of accuracy is the largest degree
% possible).