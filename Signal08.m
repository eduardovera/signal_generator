function [N, signal ] = Signal08()
    N = 1000;
    signal = zeros(N);
    for (i = 1:62)
        signal(i) = cos((2 * pi * i * 6 / 128));

    end
     for (i = 63:N)
        signal(i) = cos((2 * pi * i * 25 / 128));

     end
     
     for (i = 20:29)
        signal(i) = signal(i) + 0.5*cos((2 * pi * i * 52 / 128));

    end
    
end

