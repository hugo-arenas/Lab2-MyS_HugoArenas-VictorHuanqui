%% Parte 1
% Graficar las respuestas de lazo abierto y lazo cerrado para las
% siguientes funciones:
%
%% 1.1) 6y'(t) + 2y(t) = 8u'(t)
% aplicando la transformada de laplace en 1.1
% 6[sY(s) − y(0)] + 2Y(s) = sU(s) − u(0)
% 6sY(s) − 6y(0) + 2Y(s) = sU(s) − u(0)
% Y(s)[6s + 2] = sU(s) − u(0) + 6y(0)
% Y(s) = [sU(s) − u(0) + 6y(0)]/[6s + 2]
% por lo tanto:
% H(s) = s/[6s + 2]
s = tf ('s');
H1s = s/(6*s + 2);
H1s_cerrado = feedback(H1s, 1);

% graficando H1(s) lazo abierto
figure(1);
step(H1s)
title ('H1(s) Lazo Abierto');
ylabel ('Amplitud');
xlabel ('Tiempo');
grid on;

% graficando H1(s) lazo cerrado
figure(2);
step(H1s_cerrado)
title ('H1(s) Lazo Cerrado');
ylabel ('Amplitud');
xlabel ('Tiempo');
grid on;

% gráfico comparativo entre H1(s) abierto y cerrado
figure(3);
step(H1s);
hold on
step(H1s_cerrado);
hold off
title ('Comparación H1(s) Lazo abierto-cerrado');
ylabel ('Amplitud');
xlabel ('Tiempo');
grid on;

% cuadro comparativo entre los valores de ganancia estática, tiempo de
% estabilización, cero y polos para el lazo cerrado y lazo abierto para H1 
damp(H1s)
damp(H1s_cerrado)
%% 1.2) y''(t) + 6y'(t) + 3y(t) = 5u''(t) + 7u'(t) + u(t)
% aplicando la transformada de laplace en 1.2
% [s^2*Y(s) − s*y(0) - y'(0)] + 6[sY(s) − y(0)] + 3Y(s) = 5[s^2*U(s) −
%  s*u(0) - u'(0)] + 7[sU(s) − u(0)] + U(s)
%
% Y(s)[s^2 + 6s + 3] - s*y(0) - y'(0) − 6y(0) = U(s)[5s^2 + 7s + 1] -
% 5s*u(0) - 5u'(0) - 7u(0)
%
% Y(s)[s^2 + 6s + 3] = U(s)[5s^2 + 7s + 1] - 5s*u(0) - 5u'(0) - 7u(0) + s*y(0) + y'(0) + 6y(0)
% Y(s) = U(s)[5s^2 + 7s + 1]/[s^2 + 6s + 3]
% por lo tanto:
% H(s) = (5s^2 + 7*s + 1)/[s^2 + 6s + 3]
Hs2 = (5*s^2 + 7*s + 1)/(s^2 + 6*s + 3);
Hs2_cerrado = feedback(Hs2, 1);

% graficando H2(s) lazo abierto
figure(4);
step(Hs2)
title ('H2(s) Lazo Abierto');
ylabel ('Amplitud');
xlabel ('Tiempo');
grid on;

% graficando H2(s) lazo cerrado
figure(5);
step(Hs2_cerrado)
title ('H2(s) Lazo Cerrado');
ylabel ('Amplitud');
xlabel ('Tiempo');
grid on;

% gráfico comparativo entre H2(s) abierto y cerrado
figure(6);
step(Hs2);
hold on
step(Hs2_cerrado);
hold off
title ('Comparación H2(s) Lazo abierto-cerrado');
ylabel ('Amplitud');
xlabel ('Tiempo');
grid on;

% cuadro comparativo entre los valores de ganancia estática, tiempo de
% estabilización, cero y polos para el lazo cerrado y lazo abierto para H2
damp(Hs2)
damp(Hs2_cerrado)