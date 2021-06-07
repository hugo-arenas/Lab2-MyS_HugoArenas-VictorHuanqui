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

%% 1.2) y''(t) + 6y'(t) + 3y(t) = 5u''(t) + 7u'(t) + u(t)
% aplicando la transformada de laplace en 1.2
% [s^2*Y(s) − s*y(0) - y'(0)] + 6[sY(s) − y(0)] + 3Y(s) = 5[s^2*U(s) − s*u(0) - u'(0)]
% + 7[sU(s) − u(0)] + U(s)
%
% Y(s)[s^2 + 6s + 3] - s*y(0) - y'(0) − 6y(0) = U(s)[5s^2 + 7s + 1] -
% 5s*u(0) - 5u'(0) - 7u(0)
%
% Y(s)[s^2 + 6s + 3] = U(s)[5s^2 + 7s + 1] - 5s*u(0) - 5u'(0) - 7u(0) + s*y(0) + y'(0) + 6y(0)
% Y(s) = U(s)[5s^2 + 7s + 1]/[s^2 + 6s + 3]