% Compute f(x) = (1-cos(x))/x^2 for decreasing values of x from 10^(-1) and
% 10^(-8)
disp(sprintf('\n\nTable:\n'));
disp(sprintf('x \t f(x)'));
for i=1:8,x=10^(-i);
    disp(sprintf('%g \t %0.10f',x,((4+x)^(1/2) -2)/x))
end
% Compute a reformulation of f(x) = (1-cos(x))/x^2 in the form
% Rf(x)= (2sin^2(x/2))/x^2, for decreasing values of x from 10^(-1) and
% 10^(-8)

disp(sprintf('\n\nTable:\n'));
disp(sprintf('x \t f(x) \t \t Rf(x)'));
for i=1:8,x=10^(-i);
    disp(sprintf('%g \t %0.10f \t %0.10f',x,((4+x)^(1/2) -2)/x,(2*(sin(x/2))^2)/x^2))
end

% Compute f(x) = (1-cos(x))/x^2 for decreasing values of x from 10^(-1) and
% 10^(-8)
disp(sprintf('\n\nTable:\n'));
disp(sprintf('x \t f(x)'));
for i=1:8,x=10^(-i);
    disp(sprintf('%g \t %0.10f',x,((4+x)^(1/2) -2)/x))
end
% Compute a reformulation of f(x) = (1-cos(x))/x^2 in the form
% Rf(x)= (2sin^2(x/2))/x^2, for decreasing values of x from 10^(-1) and
% 10^(-8)

disp(sprintf('\n\nTable:\n'));
disp(sprintf('x \t f(x) \t \t Rf(x)'));
for i=1:8,x=10^(-i);
    disp(sprintf('%g \t %0.10f \t %0.10f',x,((4+x)^(1/2) -2)/x,(2*(sin(x/2))^2)/x^2))
end

% Compute f(x) = (1-cos(x))/x^2 for decreasing values of x from 10^(-1) and
% 10^(-8)
disp(sprintf('\n\nTable:\n'));
disp(sprintf('x \t f(x)'));
for i=1:8,x=10^(-i);
    disp(sprintf('%g \t %0.10f',x,(1 - exp(1)^(-x))/x))
end
% Compute a reformulation of f(x) = (1-cos(x))/x^2 in the form
% Rf(x)= (2sin^2(x/2))/x^2, for decreasing values of x from 10^(-1) and
% 10^(-8)

disp(sprintf('\n\nTable:\n'));
disp(sprintf('x \t f(x) \t \t Rf(x)'));
for i=1:8,x=10^(-i);
    disp(sprintf('%g \t %0.10f \t %0.10f',x,(1 - exp(1)^(-x))/x,(2*(sin(x/2))^2)/x^2))
end