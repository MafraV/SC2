Ra = 10;
Kt = 50;
Kce = 2;
Jm = 12;
Dm = 10;

num = [Kt/(Ra*Jm)];
den = [1 (Dm +((Kt*Kce)/Ra))/Jm];

Gs = tf(num,den)
step(Gs,stepDataOptions('StepAmplitude',2));
