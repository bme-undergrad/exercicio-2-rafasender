function [blendA, blendB] = exercicio2(NG)

% NG: 3

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

f = [10, NG*2]'; #' vetor é coluna
x0 = [1,1];

A = [0.3, 0.2;
     0.2, 0.25;
     0.25, 0.3];

b=[15;
  10;
  12];

Aeq = zeros(1,2);
beq = 0;
x_min_valores = zeros(2,1);
x_max_valores = [20; 50];

[x] = linprog(f, -A, -b, Aeq, beq, lb=x_min_valores, ub=x_max_valores)


% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);


%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
