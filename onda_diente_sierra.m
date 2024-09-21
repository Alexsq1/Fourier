clear

limit = 30;

t = 0 : 0.01 : 4;
espectro = zeros(100);
frecsvalidas = zeros(100);

k = 1;
w = pi;

x = sin(w * t);

espectro(1) = 1;
frecsvalidas(1) = w / (pi);


while k < limit

    k = k + 1;
    x = x + power(-1, (k+1)) * (1 / k) .* sin (k * w * t);

    espectro(k) = power(-1, (k+1)) / k;
    frecsvalidas(k) = k * w / (pi);

end

x = (2 / pi) .* x;
espectro = espectro .* (2 / pi);

subplot(1, 2, 1); plot(t, x)
subplot(1, 2, 2); stem(frecsvalidas, espectro)
