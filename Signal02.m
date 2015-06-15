function [ N, signal ] = Signal02()
    N = 300;
    signal = zeros(N);
    for (i = 1:N)
        signal(i) = 0.95*sin(2*pi*i/35);
        if (i>=110 && i<=210) signal(i)= signal(i)+ sin(2*pi*i*20/35)* 0.2*exp(-0.01*(i-110));
    end
end

