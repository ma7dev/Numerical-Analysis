% MTH-351: Lab-0

% Mazen Alotaibi

%% Problem A:

% Problem 1 (Answer):
tut1 = zeros(3,5)
tut2 = ones(3,5)

% Problem 2 (Answer):
size(tut1)
size(tut2)
%% Problem B:

% Problem 1 (Answer):
ones_set = ones(1,5);
ones_diag = diag(ones_set)

% Problem 2 (Answer):
even_me = [6:2:25]
%% Problem C:

% Problem 1 (Answer):
fdj = [ 1 2 3;5 4 3; 6 5 8 ];
a = fdj+3
% Explain: adding 3 to each enteries
b = fdj-6
% Explain: substracting 6 from each enteries
c = fdj/2
% Explain: dividing each enteries by 2

% Problem 2 (Answer):
abc = 1:10
% Explain: make a row vector from 1 to 10
def = 5:14
% Explain: make a row vector from 5 to 14
ghi = 3*abc + def
% Explain: multiply matrix 'abc' by 3, then add matrix 'def' to it

% Problem 3 (Answer):
abc = [1 2 3 4;5 6 7 8]
% Explain: make 2x4 matrix that its first row contains 1, 2, 3, and 4, and
%         and the second row cotains 5, 6, 7, and 8

def = [4 3 2 1;8 7 6 5]
% Explain: make 2x4 matrix that its first row contains 4, 3, 2, and 1, and
%         and the second row cotains 8, 7, 6, and 5

abc + def
% Explain: add matrix 'abc' and matrix 'def' together

% Problem 4 (Answer):
tut1 .* tut2
% Explain: multiply matrix 'tut1', which contains only zeros, by matrix
%         'tut2', which contains only  ones, so it displays all zeros

tut2 .* tut1
% Explain: multiply matrix 'tut2', which contains only ones, by matrix
%         'tut1', which contains only  zeros, so it displays all zeros

tut1 ./ tut2
% Explain: divide matrix 'tut1', which contains only zeros, by matrix
%         'tut2', which contains only ones, so it displays all zeros

tut2 ./ tut1
% Explain: divide matrix 'tut2', which contains only ones, by matrix
%         'tut1', which contains only zeros, so it displays all Infinity

tut1 .^ 2
% Explain: matrix 'tut1', which contains all zeros, raised to the power of
%         two, so it displays all zeros

%% Problem D:

% Problem 1 (Answer):
% tut1 * tut2
% Explain: Syntax Error, it should be (tut1 .* tut2), as this is a matrix
%         mulitplication, can't because (3x5) * (3x5) can't happen

% tut2 * tut1
% Explain: Syntax Error, it should be (tut2 .* tut1), as this is a matrix
%         mulitplication, can't because (3x5) * (3x5) can't happen

tut1 * tut2'
% Explain: Complex conjugate transpose (3x5) * (5x3) = (3x3) matrix 

tut2' * tut1
% Explain: Complex conjugate transpose (5x3) * (3x5) = (5x5) matrix

% tut1 ^ 2;
% Explain: Syntax Error, it should be (tut1 .^ 2), as this is a matrix
%         power, can't because (3x5) * (3x5) can't happen

(tut2' * tut1)^2
% Explain: [(5x3) * (3x5)] * [(5x3) * (3x5)] = [(5x5)] * [(5x5)] = [(5x5)]

% Problem 2 (Answer):
x = 1:123;
x*ones(1,123)'
x = 1:10;
x*ones(1,10)'

% Problem 3 (Answer):
[1:100]*ones(1,100)'

% Problem 4 (Answer):
[2:2:1001]*ones(1,500)'

%% Problem E:

% Problem 1 (Answer):
figure;
x = linspace(-5, 5, 9); % 10 intervals means 9 parts
y=x./(1+x.^2);
plot(x, y)
figure;
x = linspace(-5, 5, 99);
y=x./(1+x.^2);
plot(x, y)

% Problem 2 (Answer):
figure;
theta = 0 : 0.05 : 2*pi;
hold on
axis('square')
plot(cos(theta),sin(theta))

% Explain: Shape before changes = circle, changing hold off = egg shaped,
%         changing axis('normal') = egg shaped

% Problem 3 (Answer):
figure;
theta = 0 : 0.1 : 2*pi;
r = sin(3*theta);
plot(r .* cos(theta), r .* sin(theta))
%% Problem F:

% Problem 1 (Answer):
help mesh
% Explain: mesh(X, Y, Z) draws a wirefram mesh with color determined by Z

% Problem 2 (Answer):
figure;
X = -10:0.2:10;
Y = -10:0.2:10;
[x y] = meshgrid(X,Y);
z=cos(2*(x+y));
surf(x,y,z)
