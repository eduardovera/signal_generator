function [ output ] = generateInternalSignal( x, omega, fourier_transform, signalA)
%recebe um valor x e um omega, junto com um sinal e sua transformada de
%fourier e retorna como output a função sintonizada.
[N, ~] = size(signalA);
output = zeros(N);
magnitude = abs(fourier_transform);
phase = angle(fourier_transform);
for (k = 1:N)
    output(k) = exp(-1i * phase(omega)) * exp(-(k - x)^2 / (2 * magnitude(omega)^2)) * signalA(k);
end

