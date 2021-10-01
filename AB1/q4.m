% Sabendo que 
%           y''' + 6y'' + 11y' + 6y = 6u   => G(s) = 6/(s^3+ 6s^2+11s+6)

[A,B,C,D] = tf2ss([6],[1 6 11 6])
At = jordan(A)
