function [blendA, blendB] = exercicio2(NG)

% NG: 3

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% digite seu codigo aqui
% 1. Vetor de custos (funcao objetivo)
c = [10; (2 * NG)];

% 2. Matriz de restricoes de desigualdade (A*x <= b)
% Note que multiplicamos por -1 para inverter o sinal de >= para <=
A = [-0.30, -0.20;  % Restricao de Polietileno
     -0.20, -0.25;  % Restricao de PLA
     -0.25, -0.30]; % Restricao de Polipropileno

% 3. Vetor de limites das restricoes de desigualdade
b = [-15; -10; -12];

% 4. Limites inferiores para as variaveis (x1 >= 0, x2 >= 0)
lb = [0; 0];

% 5. Resolvendo o problema de programacao linear
% Nao temos restricoes de igualdade (Aeq, beq) nem limites superiores (ub)
% A funcao linprog retorna o vetor 'x' com as quantidades otimas
x = linprog(c, A, b, [], [], lb);

% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
