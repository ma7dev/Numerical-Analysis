clear
clc
%% Problem 1
tol=1e-6;
max_its=100;
fcn='x^5-3x^4+4x^3-4x^2+3x-1';
trueroot=1;
intervals=[0, 3; 0.5, 2.0; 0.9, 1.2];

disp(sprintf('\nBisection estimate for root of %s with accuracy of %g:',fcn,tol));
disp(sprintf('_interval_ \t _estimate_ \t _error_ \t _iterations_'))

for i=1:size(intervals,1),
  [itiB(i),rootiB(i)]=bisect(fcn,intervals(i,1),intervals(i,2),tol,max_its);
  disp(sprintf('[%g,%g]    \t %0.8f \t %0.5e \t %d',...
	       intervals(i,:),rootiB(i),abs(trueroot-rootiB(i)),itiB(i)));
end
% a. As it starts at 0.5 which makes the size of initial interval small to
% make the midpoint closer to true root

% b. yes, it is better to have the root closer to the midpoint of the interval
% as bisection algorithm splits the interval into two parts, then it will evaluate
% the function by using those two domains, so when the domain of the
% interval becomes and the midpoint becomes closer to the root, the number of iterations becomes
% less due to that. For example, the interval [0,3], which its midpoint is 1.5, with 21 iterations
% which is larger than the interval [0.9, 1.2], which its midpoint is 1.05, with 18 iterations
%% Problem 2
tol=1e-6;
max_its=100;
fcn='x^5-x^4+x-1';
trueroot=1;
dfcn='5*x^4-4*x^3+1';
inits=[-100; 0; 0.9;0.99;1.1;1.4;1000000];

disp(sprintf('\nNewtons estimate for root of %s with accuracy of %g',fcn,tol));
disp(sprintf('_initial_ \t _estimate_ \t _error_ \t _iterations_'))
for i=1:length(inits),

  [itiN(i),rootiN(i)]=newton(fcn,dfcn,inits(i),tol,max_its);
  disp(sprintf('%g\t\t %0.8f \t %0.5e \t %d',...
	       inits(i),rootiN(i),abs(trueroot-rootiN(i)),itiN(i)));
end
% a. Newton's method is more efficient compared to Bisection
% method as the number of interations is less when the initialized point is
% closer to the true root. It seems that Newton's method took 2 interations
% for 0 as an initialized point which is fast compared to 0.99, which is
% closer to the true root by 0.01, though it took 3 iterations.

% b. As the rate of convergence for Newton's method is quadratic, so the
% bumber of accurate digits roughly doubles at every step. 


% c. Biscetion's itertations >= log((-1000000-1000000)/1.3x10^-12)/log(2),
% which is approximately 60 itertations, which is better than Netwon's method as it
% took 67 iterations.
%% Problem 3
tol=1e-6;
max_its=100;
fcn='x^5-x^4+x-1';
trueroot=1;
intervals=[0, 3; 0.5, 2.0; 0.9, 1.2];

disp(sprintf('\nSecant estimate for root of %s with accuracy of %g:',fcn,tol));
disp(sprintf('_interval_ \t _estimate_ \t _error_ \t _iterations_'))

for i=1:size(intervals,1),
  [itiS(i),rootiS(i)]=secant(fcn,intervals(i,1),intervals(i,2),tol,max_its);
  disp(sprintf('[%g,%g]    \t %0.8f \t %0.5e \t %d',...
	       intervals(i,:),rootiS(i),abs(trueroot-rootiS(i)),itiS(i)));
end
% a. Secant method is more efficient than Bisection in every way, however,
% it is efficient in small intervals but not for large ones compared to
% Newton's method.

% b. No, as the intervals from [0,3] and [0.9,1.2] have different domains
% but they still have the same number of iterations although [0.9,1.2] is
% closer to the true root
%% Problem 4
tol=1e-6;
max_its=100;
fcn='x^5-x^4+x-1';
trueroot=1;
intervals=[0, 3; 0.5, 2.0; 0.9, 1.2];
options=optimset('MaxIter',max_its,'TolX',tol);

disp(sprintf('\nBisection estimate for root of %s with accuracy of %g:',fcn,tol));
disp(sprintf('_interval_ \t _estimate_ \t _error_ \t _iterations_'))

for i=1:size(intervals,1),
[rootiF(i),fval,flag,output]=fzero(fcn,intervals(i,:),options);
itiF(i)=output.iterations;  disp(sprintf('[%g,%g]    \t %0.8f \t %0.5e \t %d',...
	       intervals(i,:),rootiF(i),abs(trueroot-rootiF(i)),itiF(i)));
end
% Less iterations
tol=1e-6;
max_its=100;
fcn='x^5-x^4+x-1';
trueroot=1;
dfcn='5*x^4-4*x^3+1';
inits=[-100; 0; 0.9;0.99;1.1;1.4;1000000];
options=optimset('MaxIter',max_its,'TolX',tol);
disp(sprintf('\nNewtons estimate for root of %s with accuracy of %g',fcn,tol));
disp(sprintf('_initial_ \t _estimate_ \t _error_ \t _iterations_'))
for i=1:length(inits),

  [rootiF(i),fval,flag,output]=fzero(fcn,inits(i,:),options);
itiF(i)=output.iterations;
  disp(sprintf('%g\t\t %0.8f \t %0.5e \t %d',...
	       inits(i),rootiF(i),abs(trueroot-rootiF(i)),itiF(i)));
end
% More error, Less iterations
tol=1e-6;
max_its=100;
fcn='x^5-x^4+x-1';
trueroot=1;
intervals=[0, 3; 0.5, 2.0; 0.9, 1.2];
options=optimset('MaxIter',max_its,'TolX',tol);
disp(sprintf('\nSecant estimate for root of %s with accuracy of %g:',fcn,tol));
disp(sprintf('_interval_ \t _estimate_ \t _error_ \t _iterations_'))

for i=1:size(intervals,1),
  [rootiF(i),fval,flag,output]=fzero(fcn,intervals(i,:),options);
itiF(i)=output.iterations;
  disp(sprintf('[%g,%g]    \t %0.8f \t %0.5e \t %d',...
	       intervals(i,:),rootiF(i),abs(trueroot-rootiF(i)),itiF(i)));
end
% More error

% fzero's results are similar to Secant and it do as well as Biscetion as
% the error for both are 10^-07

%% Problem 5
disp(sprintf('\n'));
disp(roots(poly(1:21)));
% Poly's function returns a polynomial that has coeffieients of the input,
% so the polynomial for poly(1:21) would be x!/(x-22)!.

% Roots' function return the roots of the polynomial in general, so 
% the roots for roots would be correct for the first 6 roots, then, however,
% roots will be less accurate as the degree of the polynomial increases due
% to the derivate is getting further from the main function.