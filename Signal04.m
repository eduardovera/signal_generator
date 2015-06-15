function [ signal ] = Signal04()
    N = 4096;
    signal = zeros(N);
    for (i = 1:N)
      t = 0.000244140625*i;
      signal(i) = sin(10./t)/(t);
    end
end

