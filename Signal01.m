function [ signal ] = Signal01()
    N = 1000;
    signal = zeros(N);
    for (i = 1:199)
        signal(i) = 1 * sin((2 * pi * i / 40));
    end
    for (i = 200:400)
        signal(i) = 2 * sin((2 * pi * i / 40));
    end
    for (i = 400:600)
        signal(i) = 0;
    end
    for (i = 600:800)
        signal(i) = 1 * sin((2 * pi * i / 20)) + 2 * sin((2 * pi * i / 60));
    end
end

