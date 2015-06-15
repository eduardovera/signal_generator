function [N, signal ] = Signal07()
    N = 1000;
    signal = zeros(N);
    for (i = 1:N)
        signal(i) = cos((2 * pi * i / 100)) + sin((2 * pi * i / 100))*1i;

    end
    
end

