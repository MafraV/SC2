num = [25.04 5.008];
den = [1 5.03247 25.1026 5.008];

[A,B,C,D] = tf2ss(num,den);
Co = ctrb(A,B)
rank(Co)

% o sistema é controlável, pois a matriz de contrabilidade 
% tem rank 3 e o sistema é de 3ª ordem

Ob = obsv(A,C)
rank(Ob)

% o modelo é observável, pois a matriz de observabilidade 
% tem rank 3 e o sistema é de 3ª ordem
