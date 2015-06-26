function [ N, signal ] = Signal01()
    N = 2000;
    signal = zeros(N);
    for (i = 1:214)
        signal(i) = 1 * cos((2 * pi * i / 50));
    end
    for (i = 215:1815)
        signal(i) = 1 * cos((2 * pi * i * (i - 215) / 72000) + pi);
    end
    signal(1043) = 2;
    for (i = 1815:N)
        signal(i) = 1 * cos(2 * pi * (i - 1815) / 50);
    end
end

