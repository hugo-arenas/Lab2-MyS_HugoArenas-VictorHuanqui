%% Parte 1
% Graficar las respuestas de lazo abierto y lazo cerrado para las
% siguientes funciones:

%% 1.1) 6y'(t) + 2y(t) = 8u'(t)
% aplicando la transformada de laplace en 1.1
% 6[sY(s) − y(0)] + 2Y(s) = sU(s) − u(0)
% 6sY(s) − 6y(0) + 2Y(s) = sU(s) − u(0)
% Y(s)[6s + 2] = sU(s) − u(0) + 6y(0)
% Y(s) = [sU(s) − u(0) + 6y(0)]/[6s + 2]
% Y(s) = sU(s)/[6s + 2]