%% - Parte 2
% Se definen las funciones de cada sistema:
s = tf('s');
%syms s
U = 1/s;
H1 = 4*s/(10*s^2 + 4);
H2 = 3/(6*s + 16);
H3 = (4*s + 10)/(4*s^3 + 4*s^2 +5*s);
H4 = 1/(7*s + 10);
H5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
H6 = (3*s + 2)/(5*s^2 + 7*s + 10);

% Utilizando el método de mazon para obtener H:
% 1-. Identificar lazos Li
L1 = H3;

% 2-. Identificar lazos disjuntos Li^d
% No hay ningún lazo disjunto.

% 3-. Identificar trayectos directos
T1 = H1;
T2 = H2;
T3 = H3*H4*H6;
T4 = H3*H5*H6;

% 4-. Calcular cofactores delta_i = 1 - Li^t,
% (Li^t = suma de lazos restantes al eliminar trayecto Ti):
delta_1 = 1 - L1;
delta_2 = 1 - L1;
delta_3 = 1;
delta_4 = 1;

%5-. Calcular determinante delta = 1 - Sumatoria_Li + Sumatoria_Li^d:
delta = 1 - L1;

%Calcular función de transferencia H = (Sumatoria_(Ti*delta_i))/delta:
H = minreal((T1*delta_1 + T2*delta_2 + T3*delta_3 + T4*delta_4)/delta);
% Reemplazando, quedaría H = (H1(1 - H3)+H2(1 - H3) + H3H4H6 + H3H5H6)/(1 - H3)
% -> H = H1 + H2 + H3H6(H4 + H5)/(1 - H3);
% Por tanto, La función respuesta al escalón es: Y = H*U.
% Para ver su gráfico, se hace lo siguiente:
step(H);

%La función de transferencia H obtenida es:
H