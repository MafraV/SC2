massa = 1000;
b = 50;

A = -b/massa;
B = 1/massa;
C = 1;
D = 0;

sys = ss(A,B,C,D)
step(sys,stepDataOptions('StepAmplitude',500))