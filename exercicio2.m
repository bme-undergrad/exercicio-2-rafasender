function [blendA, blendB] = exercicio2(NG)

% NG: 3

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sistema de equações baseado nos requisitos
A = [0.30, 0.20; 
     0.20, 0.25; 
     0.25, 0.30];
b = [15; 10; 12];

% Resolver o sistema de equações
x = A \ b;


% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
