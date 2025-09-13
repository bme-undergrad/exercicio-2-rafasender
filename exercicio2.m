function [blendA, blendB] = exercicio2(NG)

% NG: 3

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Vetor de custos (funcao objetivo)
c = [10; (2 * NG)];

% 2. Matriz de restricoes de desigualdade (A*x <= b)
A = [-0.30, -0.20;  % Restricao de Polietileno
     -0.20, -0.25;  % Restricao de PLA
     -0.25, -0.30]; % Restricao de Polipropileno

% 3. Vetor de limites das restricoes de desigualdade
b = [-15; -10; -12];

% 4. Limites inferiores para as variaveis (x1 >= 0, x2 >= 0)
lb = [0; 0];

% 5. Resolvendo o problema de programacao linear
% A correção está aqui: adicionamos '[]' para o argumento 'ub' (limite superior)
x = linprog(c, A, b, [], [], lb, []);

% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
