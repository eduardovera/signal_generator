function [ N, signal ] = Signal03()
    N = 1000;
    signal = zeros(N);
    for (i = 1:N)
        signal(i) = exp((-(i-400)^2) / 200) * cos (pi * (i - 400) / 5) + exp((-(i - 425)^2) / 600) * cos((pi * (i - 425)) / 7.2) + exp((-(i - 440)^2) / 400) * cos((pi * (i - 400)) / 5.3);
    end
end
