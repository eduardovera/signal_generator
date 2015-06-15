function [ N, signal ] = Signal06()
    N = 1000;
    signal = zeros(N);
    x=1;
    for (i = 1:30:N)
        signal(i)=1;
    end
end