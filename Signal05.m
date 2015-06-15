function [ signal ] = Signal05()
    N = 1000;
    signal = zeros(N);
    PI=pi;
    for (i = 1:N)
      t = 0.01*i;
      signal(i) = cos(8*PI*t) + cos(16*PI*t);
    end
end