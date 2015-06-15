function [ N, signal ] = Signal09()
    N = 255;
    signal = zeros(N);
    for (i = 1:N)
        signal(i) = cos(2 * pi * (10 + i/7) * i / 256) + cos (2 * pi * (256/2.8 - i/6) * i/256);
    end

    for (i = 114:122) 
        signal(i) = signal(i) + cos (2 * pi * i * 0.42);
    end
    
    for (i = 134: 142)
        signal(i) = signal(i) + cos (2 * pi * i * 0.42);
    end
end
