% Sabendo que i(t) � a entrada e y(t) � a sa�da, temos:
% dy(t)/dt = v(t) => y(t) = x1, dy(t)/dt = x1'
% v(t) = x2 = x1'

A = [1 0;-K2 -K1];
B = [0;1];
C = [1 0];
D = 0;