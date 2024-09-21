clear

limit = 15;

t = 0 : 0.01 : 4;
espectro = zeros(100);
frecsvalidas = zeros(100);

k = 1;
w = pi;

x = sin(w * t);

espectro(1) = 1;
frecsvalidas(1) = w / (2*pi);


while (k + 1) / 2 < limit

    k = k + 2;
    x = x + (1 / k) .* sin (k * w * t);

    espectro(k / 2 + 0.5) = 1 / k;
    frecsvalidas(k / 2 + 0.5) = k * w / (2*pi);

end

x = (4 / pi) .* x;
espectro = espectro .* (4 / pi);

subplot(1, 2, 1); plot(t, x)
subplot(1, 2, 2); stem(frecsvalidas, espectro)
